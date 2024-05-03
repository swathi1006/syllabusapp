import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syllabusapp/screens/subjects.dart';
import 'package:syllabusapp/screens/utils/mycolors.dart';
import 'package:syllabusapp/screens/utils/mytexts.dart';

import '../model/semlist.dart';

class Semester extends StatelessWidget {

  late SemList semesterlistobj;

  @override
  Widget build(BuildContext context) {

    final index = ModalRoute.of(context)?.settings.arguments as int;
    semesterlistobj = semesters[index];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.appbarcolor,
        title: Text("Semester",
          style: MyTexts.title
        ),
      ),

      body: ListView.builder(
          itemCount: semesterlistobj.l,
          itemBuilder: (context,index){
            return InkWell(
              onTap: () => Navigator.pushNamed(
                  context,
                  "subjectDetails",
                  arguments: index
              ),


              child: Card(

                color: MyColors.backGround,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Icon(Icons.library_books),
                    title: Text(semesterlistobj.Sems[index],
                      style: MyTexts.bodytext),

                  ),
                ),

              ),
            );
          }),
    );
  }
}
