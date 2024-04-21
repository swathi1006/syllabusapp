import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syllabusapp/screens/utils/mycolors.dart';
import 'package:syllabusapp/screens/utils/mytexts.dart';

class Syllabus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
       // leading: Icon(Icons.keyboard_backspace,color: Colors.white,),
        backgroundColor: MyColors.appbarcolor,
        title: Text(
          "Syllabus",
          style: MyTexts.title,
        ),
      ),
      body: Container(

        decoration: BoxDecoration(
          color: MyColors.backGround,
          image: const DecorationImage(
            opacity: 0.5,
            image: AssetImage('assets/images/doodle4.png',),
            fit: BoxFit.cover,

          ),
         // backgroundBlendMode: BlendMode.lighten,
        ),


        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  "Module 1 (Linear algebra)",
                  style: MyTexts.Heading,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Systems of linear equations, Solution by Gauss elimination, row echelon form and rank of a matrix,"
                  "fundamental theorem for linear systems (homogeneous and "
                  "non-homogeneous, without proof),Eigen values and eigen vectors. Diagonaliztion of matrices,orthogonal transformation, quadratic forms and their canonical forms."
                  ,
                  style: MyTexts.bodytext,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 20,
                ),
                 Text(
                  "Module 2 (Multivariable calculus-Differentiation)",
                  style: MyTexts.Heading,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Concept of limit and continuity of functions of two variables, partial derivatives, Differentials, Local Linear approximations, chain rule, total derivative,"
                  "Relative maxima and minima, Absolute maxima and minima on closed and bounded set.",
                  style: MyTexts.bodytext,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 20,
                ),
                 Text(
                  "Module 3 (Multivariable calculus-Integration)",
                  style: MyTexts.Heading,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Double integrals (Cartesian), reversing the order of integration, Change of coordinates (Cartesian to polar), finding areas and volume using double integrals, mass and centre of gravity of inhomogeneous laminas using double integral. Triple integrals, volume calculated as triple integral,triple integral in cylindrical and spherical coordinates (computations involving spheres, cylinders).",
                  style: MyTexts.bodytext,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 20,
                ),
                 Text(
                  "Module 4 (Sequences and series)",
                  style: MyTexts.Heading,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Convergence of sequences and series, convergence of geometric series and p-series(without proof)test of convergence (comparison, ratio and root tests without proof); Alternating series and Leibnit test, absolute and conditional convergence.",
                  style: MyTexts.bodytext,
                  textAlign: TextAlign.justify,
                ),
            const SizedBox(
              height: 20,
            ),
             Text(
              "Module 5 (Series representation of functions)",
              style: MyTexts.Heading,
            ),
            const SizedBox(
              height: 20,),
                Text("Taylor series (without proof, assuming the possibility of power series expansion in appropriate domains), Binomial series and series representation of exponential, trigonometric, logarithmic functions (without proofs of convergence); Fourier series, Euler formulas, Convergence of Fourierseries (without proof), half range sine and cosine series, Parseval’s theorem (without proof).",
                  style:MyTexts.bodytext,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 20,
                ),
                 Text(
                  "Text Books",
                  style: MyTexts.Heading,
                ),
                const SizedBox(
                  height: 20,),
                Text("1. H. Anton, I. Biven,S.Davis, “Calculus”, Wiley, 10th edition, 2015.\n"
                  "2. Erwin Kreyszig, Advanced Engineering Mathematics, 10thEdition, John Wiley & Sons, 2016.",
                  style: MyTexts.bodytext,
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
