import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syllabusapp/screens/subjects.dart';
import 'package:syllabusapp/screens/utils/mycolors.dart';
import 'package:syllabusapp/screens/utils/mytexts.dart';
import '../model/data.dart';


class Semesters extends StatelessWidget {

  //late SemList semesterlistobj;
  final Branch branch;

  Semesters(this.branch);

  @override
  Widget build(BuildContext context) {

  //  final index = ModalRoute.of(context)?.settings.arguments as int;
  //  semesterlistobj = semesters[index];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.appbarcolor,
        title: Text("Semester",
          style: MyTexts.title
        ),
      ),

      body: ListView.builder(
          itemCount: branch.semesters.length,
          itemBuilder: (context,index){
            return Card(
              color: MyColors.backGround,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: const Icon(Icons.library_books),
                  title: Text(branch.semesters[index].name,
                    style: MyTexts.bodytext),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Subjects(branch.semesters[index],branch.docname!),
                      ),
                    );
                  },
                ),
              ),

            );
          }),
    );
  }
}
