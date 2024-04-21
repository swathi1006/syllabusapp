import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syllabusapp/screens/syllabus.dart';
import 'package:syllabusapp/screens/utils/mycolors.dart';
import 'package:syllabusapp/screens/utils/mytexts.dart';

class Subjects extends StatelessWidget {

  List subjects = [
    "Linear Algebra And Calculus - (MAT101)",
    "Engineering Physics A - (PHT100)",
    "Engineering Chemistry - (CYT100)",
    "Engineering Mechanics - (EST100)",
    "Engineering Graphics - (EST110)",
    "Basics Of Civil & Mechanical Engineering - (EST120)",
    "Basics Of Electrical & Electronics Engineering - (EST130)",
    "Life Skills - (HUN101)",
    "Engineering Physics Lab - (PHL120)",
    "Engineering Chemistry Lab - (CYL120)",
    "Civil & Mechanical Workshop - (ESL120)",
    "Electrical & Electronics Workshop - (ESL130)"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.appbarcolor,
        title: Text("Subjects",
          style: MyTexts.title),
      ),
      body: ListView.builder(
          itemCount: subjects.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 5,bottom: 5),
              child: Card(

                color: MyColors.backGround,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Icon(Icons.library_books),
                    title: Text(subjects[index],
                      style: MyTexts.optiontext),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Syllabus()));
                    },
                  ),
                ),

              ),
            );
          }),
    );
  }
}
