import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syllabusapp/model/subjectlist.dart';
import 'package:syllabusapp/screens/syllabus.dart';
import 'package:syllabusapp/screens/utils/mycolors.dart';
import 'package:syllabusapp/screens/utils/mytexts.dart';

class Subjects extends StatelessWidget {

late SubjectList subjects2;

  @override
  Widget build(BuildContext context) {

    final index = ModalRoute.of(context)?.settings.arguments as int;
    subjects2 = subjects[index];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.appbarcolor,
        title: Text("Subjects",
          style: MyTexts.title),
      ),
      body: ListView.builder(
          itemCount: subjects2.l,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 5,bottom: 5),
              child: Card(

                color: MyColors.backGround,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Icon(Icons.library_books),
                    title: Text(subjects2.allsubject[index],
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
