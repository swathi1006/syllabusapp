import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syllabusapp/screens/courses.dart';
import 'package:syllabusapp/screens/universitylist.dart';
import 'package:syllabusapp/screens/utils/mycolors.dart';
import 'package:syllabusapp/screens/utils/mytexts.dart';

class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Courses()));
    });

    return  Scaffold(
         backgroundColor: MyColors.backGround,
         body:  Container(
           
             decoration: BoxDecoration(
               color: MyColors.backGround,
               image: DecorationImage(
                 fit: BoxFit.cover,
                  opacity: 0.3,
                   image: AssetImage("assets/images/doodle4.png",))
             ),
           child: Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 const Image(
                     image: AssetImage("assets/icons/appicon.png",)
                 ,height: 200,
                 width: 200,),
                 Text("MySyllabus",
                 style: MyTexts.appname)
           
               ],
             ),
           ),
         ),
    );
  }
}
