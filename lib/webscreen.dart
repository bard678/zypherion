import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zypherion/maindrawer.dart';
import 'package:zypherion/mainstories.dart';
import 'package:zypherion/topbar.dart';


class WebScreenLayout extends StatefulWidget {
 final  String email;
  const WebScreenLayout({super.key,required this.email});

  @override
  State<WebScreenLayout> createState() => _WebScreenLayoutState();
}

class _WebScreenLayoutState extends State<WebScreenLayout> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: MainDrawer(),

      floatingActionButton: FloatingActionButton(onPressed: ()async{FilePickerResult? result = await FilePicker.platform.pickFiles();},child: Icon(Icons.add),),
      appBar:
      AppBar(
      toolbarHeight: 70,
      backgroundColor:Colors.black87,
      // title: Text("Zypherion${widget.email}"),
        title: Text("Zypherion"),
      // leading: Padding(
      //   padding: const EdgeInsets.all(4),
      //   child: CircleAvatar(
      //
      //     backgroundImage: AssetImage("assets/natural.jpg"),),
      // ),
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
    ),body:
    SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
        children: [

      TopBar(),
      MainStories(),
      SizedBox(
      height: MediaQuery.of(context).size.height,
        child: ListView.builder(itemBuilder: (context,index){
      return Shimmer(
        period: Duration(seconds: 10),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
             Padding(
               padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
               child: Container(
                width: MediaQuery.of(context).size.width/3,
                           height: 50,
                           decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
                           color: Colors.black
                           ),
                           ),
             ),
            Container(
              width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            color: Colors.black
            ),
            ),
          ],
        ),
      ), gradient: LinearGradient(colors: [Colors.grey.shade600,Colors.black]));
        },itemCount: 10,),
      )
      ],
      ),
    ),
      
    );
  }
}




