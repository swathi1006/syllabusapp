import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syllabusapp/screens/courses.dart';
import 'package:syllabusapp/screens/utils/mycolors.dart';
import 'package:syllabusapp/screens/utils/mytexts.dart';

class UniversityList extends StatelessWidget {

  List universities = [
    "KTU",
    "Calicut University",
    "Kannur University",
    "Kerala University",
    "Mahatma Gandhi University"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.appbarcolor,
        title: Text("Universities",
        style: MyTexts.title
        ),
      ),

      body: ListView.builder(
          itemCount: universities.length,
          itemBuilder: (context,index){
             return Card(

                     color: MyColors.backGround,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(Icons.school),
                      title: Text(universities[index],
                      style: MyTexts.optiontext),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Courses()));
                      },
                    ),
                  ),

             );
          }),
    );
  }
}
