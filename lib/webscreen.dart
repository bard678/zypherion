import 'package:flutter/material.dart';


class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({super.key});

  @override
  State<WebScreenLayout> createState() => _WebScreenLayoutState();
}

class _WebScreenLayoutState extends State<WebScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
      toolbarHeight: 70,
      backgroundColor:Colors.black87,
      title: Text("Zypherion"),
      leading: Padding(
        padding: const EdgeInsets.all(4),
        child: CircleAvatar(radius: 10,backgroundImage: AssetImage("assets/natural.jpg"),),
      ),
      actions: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width/2,
          child: TextField(

            decoration: InputDecoration(
              hintText: "Search",
             enabledBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.black)
                 ,borderRadius: BorderRadius.circular(30)
             ),

         disabledBorder:OutlineInputBorder(
             borderSide: BorderSide(color: Colors.black)
             ,borderRadius: BorderRadius.circular(10)
         ) ,
         border: OutlineInputBorder(
           borderSide: BorderSide(color: Colors.black)
               ,borderRadius: BorderRadius.circular(30)
         ),
enabled: true
            ),
          ),
        ),
        SizedBox(width: 30,),
        IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined)), SizedBox(width: 30,),
        IconButton(onPressed: (){}, icon: Icon(Icons.message)),  SizedBox(width: 30,),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),  SizedBox(width: 20,),

      ],
    ),);
  }
}
