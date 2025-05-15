// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields, unused_field, non_constant_identifier_names, prefer_interpolation_to_compose_strings, avoid_print, must_be_immutable, prefer_const_constructors_in_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:ytapp/MyWidgets/MyDialog.dart';
import 'package:ytapp/MyWidgets/TodoTile.dart';

class Day7 extends StatefulWidget {
  Day7({super.key});

  @override
  State<Day7> createState() => _Day7State();
}

// StateFul Widget Rivision
// SetState Rivision
// Seprating our Functions To Septerate Widget Files
// How To Pass Data To Customized Widget
// How To Access data from stateful widget (For Example : widget.onSave)

class _Day7State extends State<Day7> {
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
              return ToDoTile(
                  onChanged: (x) {
                    onCheckBoxTap(index);
                  },
                  text: toDoList[index][0],
                  isCompleted: toDoList[index][1]);
            }));
  }
}
