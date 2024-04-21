import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syllabusapp/screens/semesterlist.dart';
import 'package:syllabusapp/screens/utils/mycolors.dart';
import 'package:syllabusapp/screens/utils/mytexts.dart';

class Branches extends StatelessWidget {

  List branches = [
    "Electronics and Communication",
    "Electrical and Electronics",
    "Mechanical Engineering",
    "Civil Engineering",
    "Computer Science",
    "Industrial Engineering",
    "Applied Electronics and Instrumentation",
    "Chemical Engineering",
    "Aerospace Engineering"
    "Information Technology",
    "Biotechnology"

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.appbarcolor,
        title: Text("Branches",
          style: MyTexts.title
        ),
      ),
      body: ListView.builder(
          itemCount: branches.length,
          itemBuilder: (context,index){
            return Card(

              color: MyColors.backGround,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(Icons.library_books),
                  title: Text(branches[index],
                    style: MyTexts.optiontext),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Semester()));
                  },
                ),
              ),

            );
          }),
    );
  }
}
