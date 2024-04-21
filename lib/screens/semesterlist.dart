import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syllabusapp/screens/subjects.dart';
import 'package:syllabusapp/screens/utils/mycolors.dart';
import 'package:syllabusapp/screens/utils/mytexts.dart';

class Semester extends StatelessWidget {

  List sem = [
    "1","2","3","4","5","6","7","8"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.appbarcolor,
        title: Text("Semester",
          style: MyTexts.title
        ),
      ),

      body: ListView.builder(
          itemCount: sem.length,
          itemBuilder: (context,index){
            return Card(

              color: MyColors.backGround,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(Icons.library_books),
                  title: Text(sem[index],
                    style: MyTexts.bodytext),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Subjects()));
                  },
                ),
              ),

            );
          }),
    );
  }
}
