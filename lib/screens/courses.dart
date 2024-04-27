import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syllabusapp/screens/branches.dart';
import 'package:syllabusapp/screens/utils/mycolors.dart';
import 'package:syllabusapp/screens/utils/mytexts.dart';

class Courses extends StatelessWidget {
  List courses = [
    "B.Tech",
    "B.Arch",
    "B.Des"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.appbarcolor,
        title: Text("Courses",
          style: MyTexts.title),
      ),
      body: ListView.builder(
          itemCount: courses.length,
          itemBuilder: (context,index){
            return InkWell(

              onTap: () => Navigator.pushNamed(
                context,
                'branchDetails',
                arguments: index ),

              child: Card(

                color: MyColors.backGround,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Icon(Icons.school),
                    title: Text(courses[index],
                      style: MyTexts.optiontext),

                  ),
                ),

              ),
            );
          }),
    );
  }
}
