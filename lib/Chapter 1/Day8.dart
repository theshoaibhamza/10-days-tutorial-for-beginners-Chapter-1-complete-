// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields, unused_field, non_constant_identifier_names, prefer_interpolation_to_compose_strings, avoid_print, must_be_immutable, prefer_const_constructors_in_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:ytapp/MyWidgets/MyDialog.dart';
import 'package:ytapp/MyWidgets/TodoTile.dart';
import 'package:ytapp/MyWidgets/TodoTile2.dart';

class Day8 extends StatefulWidget {
  Day8({super.key});

  @override
  State<Day8> createState() => _Day8State();
}

// Day8
// how to delete the note
// flutter_slidable dependency
// explaination of new file toDoList2 for Day8

class _Day8State extends State<Day8> {
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

  // onSave Function
  onSave() {
    setState(() {
      toDoList.add([controllerx.text.toString(), false]);
      controllerx.clear();
    });
  }

  // onCancel Function
  onCancel() {
    Navigator.pop(context);
    controllerx.clear();
  }

  // onDelete Function
  onDelete(int index) {
    setState(() {
      toDoList.removeAt(index);
      print("object");
    });
  }

  // controller
  TextEditingController controllerx = TextEditingController();
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              showDialog(
                  context: context,
                  builder: (context) {
                    return showDialogBoxx(
                        onSave: onSave,
                        onCancel: onCancel,
                        controllerx: controllerx);
                  });
            });
          },
          backgroundColor: Colors.yellow,
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
            itemCount: toDoList.length,
            itemBuilder: (context, index) {
              return ToDoTile2(

                  // specially created for day 8
                  onDelete: (context) => onDelete(index),
                  onChanged: (x) {
                    onCheckBoxTap(index);
                  },
                  text: toDoList[index][0],
                  isCompleted: toDoList[index][1]);
            }));
  }
}
