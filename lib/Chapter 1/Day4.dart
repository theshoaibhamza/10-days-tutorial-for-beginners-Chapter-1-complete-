// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields, unused_field, non_constant_identifier_names, prefer_interpolation_to_compose_strings, avoid_print, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:ytapp/MyWidgets/TodoTile.dart';

class Day4 extends StatefulWidget {
  Day4({super.key});

  @override
  State<Day4> createState() => _Day4State();
}

// app bar rivison
// function rivison
// custom widget
// explaination of TodoTile Custom Widget

class _Day4State extends State<Day4> {
  bool isDoneTracker = false; // Initial state should be false

  void onCheckBoxTap() {
    setState(() {
      if (isDoneTracker == false) {
        isDoneTracker = true;
      } else {
        isDoneTracker = false;
      }   
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Center(
            child: Text(
          "To Do App",
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [


          ToDoTile(
              text: "Hello Today i need to do flutter",
              onChanged: (x) {
                onCheckBoxTap();
              },
              isCompleted: isDoneTracker),
        
        
        
        ],
      ),
    );
  }
}
