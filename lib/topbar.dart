import 'dart:html';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zypherion/mainstories.dart';

 Future<FilePickerResult?>? result;
class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    //TODO top bar
    return   Row(
      children: [
        SizedBox(width: 2,),
        Container(

          height: 70,
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/natural.jpg"),),
                Positioned(
                    bottom: -12,
                    left: 2,
                    child: IconButton(onPressed: ()async{
                 result=    FilePicker.platform.pickFiles(
                     type: FileType.image
                 );
                 setState(() {

                 });

                 if(result.isNull){}
                 else{
                   MainStories();
                 }

                    }, icon: Icon(Icons.add_circle_rounded,color: Colors.green,)))
              ],
            ),
          ),
        ),
        SizedBox(width: 2,),
        SizedBox(
          width: 500,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            )),
      ],
    );
  }
}
