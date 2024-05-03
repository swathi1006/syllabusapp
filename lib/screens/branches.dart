import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syllabusapp/screens/semesterlist.dart';
import 'package:syllabusapp/screens/utils/mycolors.dart';
import 'package:syllabusapp/screens/utils/mytexts.dart';

import '../model/branchlist.dart';

class Branches extends StatelessWidget {


late BranchList branchlist;

  @override
  Widget build(BuildContext context) {

    final index = ModalRoute.of(context)?.settings.arguments as int;
    branchlist = branches[index];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.appbarcolor,
        title: Text("Branches",
          style: MyTexts.title
        ),
      ),
      body: ListView.builder(
          itemCount: branchlist.l,
          itemBuilder: (context,index){
            return InkWell(

              onTap: () => Navigator.pushNamed(
                  context,
                  'semDetails',
                arguments: index
              ),

              child: Card(

                color: MyColors.backGround,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Icon(Icons.library_books),
                    title: Text(branchlist.bracnches2[index],
                      style: MyTexts.optiontext),

                  ),
                ),

              ),
            );
          }),
    );
  }
}
