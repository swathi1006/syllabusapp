import 'package:flutter/material.dart';
import 'package:syllabusapp/firebase_options.dart';
import 'package:syllabusapp/screens/utils/mycolors.dart';
import 'package:syllabusapp/screens/utils/mytexts.dart';
import '../model/data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class SubjectDetailScreen extends StatefulWidget {
  final int i;
  final Subject subject;
  final String subcname;
  final String docname;

  SubjectDetailScreen(this.subject, this.i, this.subcname, this.docname,);

  @override
  State<SubjectDetailScreen> createState() => _SubjectDetailScreenState();
}

class _SubjectDetailScreenState extends State<SubjectDetailScreen> {


  //late CollectionReference _syllabusCollection;
  late CollectionReference _subCollectionReference;

  @override
  void initState() {
    // _syllabusCollection = FirebaseFirestore.instance.collection("sem1");
    CollectionReference mainCollection = FirebaseFirestore.instance.collection("btech");
    DocumentReference documentReference = mainCollection.doc(widget.docname); // Replace with your document ID
    _subCollectionReference = documentReference.collection(widget.subcname); //
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.appbarcolor,
          title: Text(widget.subject.name,
      style: const TextStyle(fontSize: 17,color: Colors.white),)
      ),
      body: Container(
            width: double.infinity,
        decoration: BoxDecoration(
          color: MyColors.backGround,
          image: const DecorationImage(
            opacity: 0.5,
            image: AssetImage('assets/images/doodle4.png',),
            fit: BoxFit.cover,

          ),
          // backgroundBlendMode: BlendMode.lighten,
        ),

        child: StreamBuilder<QuerySnapshot>(
            stream: readsyllabus(),
            builder: (context, AsyncSnapshot snapshot){
              if(snapshot.hasError){
                return Center(child: Text("Error : ${snapshot.error}"));
              }
              if(snapshot.connectionState == ConnectionState.waiting){
                return const Center(child: CircularProgressIndicator());
              }
              // final dsyllabus = snapshot.data!.docs;
              final dsyllabus = snapshot.data!.docs;

              final syll = dsyllabus[widget.subject.i];
              final module1 = syll['module1'];
              final m1syll = syll['m1syll'];
              final module2 = syll['module2'];
              final m2syll = syll['m2syll'];
              final module3 = syll['module3'];
              final m3syll = syll['m3syll'];
              final module4 = syll['module4'];
              final m4syll = syll['m4syll'];
              final module5 = syll['module5'];
              final m5syll = syll['m5syll'];

              return Padding(
                  padding: const EdgeInsets.all(28.0),
                  child:
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(widget.subject.name,
                          style: const TextStyle(fontSize: 17),),
                        const SizedBox(height: 15,),

                        Text(module1, style:  MyTexts.Heading,),
                        const SizedBox(height: 20,),
                        Text(m1syll,
                          style: MyTexts.bodytext,
                          textAlign: TextAlign.justify,),
                        const SizedBox(height: 30,),

                        Text(module2,style:  MyTexts.Heading,),
                        const SizedBox(height: 20,),
                        Text(m2syll,
                          style: MyTexts.bodytext,
                          textAlign: TextAlign.justify,),
                        const SizedBox(height: 30,),

                        Text(module3,style:  MyTexts.Heading,),
                        const SizedBox(height: 20,),
                        Text(m3syll,
                          style: MyTexts.bodytext,
                          textAlign: TextAlign.justify,),
                        const SizedBox(height: 30,),

                        Text(module4,style:  MyTexts.Heading,),
                        const SizedBox(height: 20,),
                        Text(m4syll,
                          style: MyTexts.bodytext,
                          textAlign: TextAlign.justify,),
                        const SizedBox(height: 30,),

                        Text(module5,style:  MyTexts.Heading,),
                        const SizedBox(height: 20,),
                        Text(m5syll,
                          style: MyTexts.bodytext,
                          textAlign: TextAlign.justify,),
                      ],
                    ),
                  )

              );
            }),
      ),
    );
  }

  Stream<QuerySnapshot> readsyllabus(){
    // return _syllabusCollection.snapshots();
    return _subCollectionReference.snapshots();
  }
}