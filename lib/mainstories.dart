import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zypherion/topbar.dart';



class MainStories extends StatefulWidget {

  const MainStories({super.key});

  @override
  State<MainStories> createState() => _MainStoriesState();
}

class _MainStoriesState extends State<MainStories> {
  @override
  Widget build(BuildContext context) {
    return    Row(

      children: [
        Padding(
          padding: const EdgeInsets.all(2),
          child:
          Column(children: [
            Container(
              width: 100,
              height: 130,
              child:FutureBuilder<FilePickerResult?>(future: result, builder: (context,snapshot){
                if(snapshot.connectionState==ConnectionState.waiting){
                  return Center(child: CircularProgressIndicator());
                }
                else if(snapshot.hasData){
                  final image=snapshot.data;
                  return Image.file(File(image!.files.single.path!));
                }
                else return SizedBox();
              })
                 ,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(10)
              ),
            )
          ],),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: MediaQuery.of(context).size.width-105,
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){

                  return Padding(
                    padding: const EdgeInsets.all(2),
                    // child: Shimmer.fromColors(child:
                    // Column(children: [
                    //   Container(
                    //     width: 100,
                    //     height: 120,
                    //     decoration: BoxDecoration(
                    //         color: Colors.black,
                    //         borderRadius: BorderRadius.circular(10)
                    //     ),
                    //   )
                    // ],),
                    //     baseColor: Colors.grey.shade700, highlightColor: Colors.black),
                  child:  Column(children: [
                    Container(
                      width: 100,
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    )
                  ],),
                  );
                },itemCount: 13,),
            ),
          ),
        ),
      ],
    );
  }
}