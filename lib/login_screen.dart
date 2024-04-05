import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

        Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Email"
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: TextField(  decoration: InputDecoration(
              hintText: "Password"
          ),),
        ),
        Center(
          child: Container(
            child: Padding(
              padding:  EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/4, 8, 0, 8),
              child: Row(
                children: [
                  Icon(Icons.lock_open,),
                  SizedBox(width: 20,),
                  Text("Sign in",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            height: 50,
            width: MediaQuery.of(context).size.width/1.5,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20)

            ),
          ),
        )

      ],),
    );
  }
}
