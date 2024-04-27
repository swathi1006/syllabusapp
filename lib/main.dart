import 'package:flutter/material.dart';
import 'package:syllabusapp/screens/branches.dart';
import 'package:syllabusapp/screens/splashpage.dart';
import 'package:syllabusapp/screens/universitylist.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  /// to create widget tree
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: SplashPage(),
      //home: UniversityList(),

      routes: {
        'branchDetails' : (context) => Branches()
      },

    );
  }

}