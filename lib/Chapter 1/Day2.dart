// ignore_for_file: unused_import, prefer_const_constructors, file_names, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Day2 extends StatefulWidget {
  const Day2({super.key});

  @override
  State<Day2> createState() => _Day2State();
}
// Stateful vs Stateless widget rivision
// App bar
// Variables
// Increment/Decrement
// Set State
// Sizebox
// ElevatedButton
// Alignment

class _Day2State extends State<Day2> {
  // count variable
  int count = 0;

  // increment funtion
  void Increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 2")),
      backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "You Have Pressed The Button Following Times ",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 20,
          ),
          Text(
            count.toString(),
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: Increment, child: Text("Touch Me"))
        ],
      ),
    );
  }
}
