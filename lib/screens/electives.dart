import 'package:flutter/material.dart';
import 'package:syllabusapp/screens/syllabus.dart';
import 'package:syllabusapp/screens/utils/mycolors.dart';
import 'package:syllabusapp/screens/utils/mytexts.dart';

import '../model/data.dart';

class Electives extends StatelessWidget {
  final List<Elective> electives;

  Electives(this.electives);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: MyColors.appbarcolor,
          title: Text('Electives',style: MyTexts.title)),
      body: ListView.builder(
        itemCount: electives.length,
        itemBuilder: (context, index) {
          return Card(
            color: MyColors.backGround,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: const Icon(Icons.library_books),
                title: Text(electives[index].elective,
                    style: MyTexts.optiontext),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Syllabus(),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}