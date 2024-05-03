class BranchList{

  List<String> bracnches2;
  int? l;

  BranchList({ this.l,required this.bracnches2});

}

List<BranchList> branches = [

  BranchList(
    bracnches2: [

   "Electronics and Communication",
      "Electrical and Electronics",
       "Mechanical Engineering",
       "Civil Engineering",
       "Computer Science",
       "Industrial Engineering",
      "Applied Electronics and Instrumentation",
   "Chemical Engineering",
       "Aerospace Engineering",
      "Information Technology",
      "Biotechnology",
    ],
      l:11
  ),
  BranchList(
    bracnches2: ["B.Arch"],

    l: 1
  ),
  BranchList(

    l: 1,
      bracnches2: ["B.Des"]
  )
];