import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:syllabusapp/screens/branches.dart';
import 'package:syllabusapp/screens/semesterlist.dart';
import 'package:syllabusapp/screens/splashpage.dart';
import 'package:syllabusapp/screens/subjects.dart';
import 'package:syllabusapp/screens/universitylist.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.android
  );
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

  /*    routes: {
        'branchDetails' : (context) => Branches(),
        "subjectDetails": (context) => Subjects(),
        'semDetails'    : (context) => Semester()
       }, */

    );
  }

}