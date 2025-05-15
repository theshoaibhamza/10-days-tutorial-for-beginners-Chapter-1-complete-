// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields, unused_field, non_constant_identifier_names, prefer_interpolation_to_compose_strings, avoid_print, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:ytapp/MyWidgets/TodoTile.dart';

class Day5 extends StatefulWidget {
  Day5({super.key});

  @override
  State<Day5> createState() => _Day5State();
}

// List
// ListView.Builder
// How onCheckBoxTap Updates for List

class _Day5State extends State<Day5> {
  void onCheckBoxTap(int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  // The Notes List

  List toDoList = [
    ["Do Exercise", false],
    ["Do Flutter", false],
  ];

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
        body: ListView.builder(
            itemCount: toDoList.length,
            itemBuilder: (context, index) {
              return ToDoTile(
                  onChanged: (x) {
                    onCheckBoxTap(index);
                  },
                  text: toDoList[index][0],
                  isCompleted: toDoList[index][1]);
            })

        // i saved this code for reference

        // Column(
        //   children: [
        //     ToDoTile(
        //         text: "I Need To Create Flutter Lecture No 6",
        //         onChanged: (x) {
        //           onCheckBoxTap();
        //         },
        //         isCompleted: isDoneTracker),
        //   ],
        // ),
        );
  }
}
