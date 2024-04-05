import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
        width: MediaQuery.of(context).size.width/1.1,
          height:MediaQuery.of(context).size.height/1.1,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                   color: Colors.black38,
                offset: Offset(4, 4)
              ),  BoxShadow(
                color: Colors.white10,
                offset: Offset(-4,- 4)
              ),
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text("Zypherion",style: TextStyle(fontSize: 40,fontFamily: "python"),),
               SizedBox(width: 200,height: 200,
                 child: SvgPicture.asset(

                     "assets/zypherion.svg",height: 200,width: 200,),
               )
                ],
              ),

            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: SizedBox(
                width:MediaQuery.of(context).size.width/2.5,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38)
                    ),
                    border:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black38)
                ),
                    hintText: "Email"
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: SizedBox(
                width:MediaQuery.of(context).size.width/2.5,
                child: TextField(  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black38)
                    ),
                    border:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black38)
                    ),
                    hintText: "Password"
                ),),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_open,),
                        SizedBox(width: 20,),
                        Text("Sign in",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width/3,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)

                    ),
                  ),
                  SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Forgot account ?",style: TextStyle(fontSize: 16,color: Colors.green),),SizedBox(width: 20,),
                    Text("Sign up for Zypherion ?",style: TextStyle(fontSize: 16,color: Colors.green),),
                  ],
                ),SizedBox(height: 50,)
                ],
              ),
            )

          ],),
        ),
      ),
    );
  }
}
