import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syllabusapp/screens/syllabus.dart';
import 'package:syllabusapp/screens/utils/mycolors.dart';
import 'package:syllabusapp/screens/utils/mytexts.dart';

import '../model/data.dart';
import 'detailedSyllabus.dart';
import 'electives.dart';

class Subjects extends StatelessWidget {

//late SubjectList subjects2;
  final Semester semester;
  final String docname;

  Subjects(this.semester,this.docname);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.appbarcolor,
        title: Text("Subjects",
          style: MyTexts.title),
      ),
      body: ListView.builder(
          itemCount: semester.subjects.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 5,bottom: 5),
              child: Card(
                color: MyColors.backGround,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: const Icon(Icons.library_books),
                    title: Text(semester.subjects[index].name,
                      style: MyTexts.optiontext),
                    onTap: (){
                    //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Syllabus()));
                      if (semester.subjects[index].electives != null && semester.subjects[index].electives!.isNotEmpty){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Electives(semester.subjects[index].electives!),
                          ),
                        );
                      }else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SubjectDetailScreen(semester.subjects[index],semester.subjects[index].i!,semester.subcname!,docname),
                          ),
                        );
                      }

                    },
                  ),
                ),

              ),
            );
          }),
    );
  }
}
