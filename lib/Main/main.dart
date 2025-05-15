// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ytapp/Chapter%201/Day1.dart';
import 'package:ytapp/Chapter%201/Day2.dart';
import 'package:ytapp/Chapter%201/Day3.dart';
import 'package:ytapp/Chapter%201/Day4.dart';
import 'package:ytapp/Chapter%201/Day5.dart';
import 'package:ytapp/Chapter%201/Day6.dart';
import 'package:ytapp/Chapter%201/Day7.dart';
import 'package:ytapp/Chapter%201/Day8.dart';
import 'package:ytapp/Chapter%201/Day9.dart';
import 'package:ytapp/Chapter%201/Day10.dart';
import 'package:ytapp/Template/StartingTemplate.dart';

void main() async {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Day8(),
      debugShowCheckedModeBanner: false,
    );
  }
}
