// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields, unused_field, non_constant_identifier_names, prefer_interpolation_to_compose_strings, avoid_print, must_be_immutable, prefer_const_constructors_in_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:ytapp/MyWidgets/TodoTile.dart';

class Day6 extends StatefulWidget {
  Day6({super.key});

  @override
  State<Day6> createState() => _Day6State();
}

// how user will be able to add a note?
// Floating Action Button
// Icons
// showDialog
// Buttons
// showDialog File
// Buttons File

class _Day6State extends State<Day6> {
  void onCheckBoxTap(int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  // controller for adding new note

  final TextEditingController _controller = TextEditingController();

  // The Notes List

  List toDoList = [
    ["Do Exercise", false],
    ["Do Flutter", false],
  ];

  ShowButton(String TextValue) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.5),
      ),
      height: 50,
      width: 80,
      child: Center(child: Text(TextValue)),
    );
  }

  showDialogbox() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                        hintText: "Enter Note",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            toDoList.add([_controller.text.toString(), false]);
                          });
                          Navigator.pop(context);
                        },
                        child: ShowButton("Add"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: ShowButton("Cancel"),
                      )
                    ],
                  )
                ],
              ),
              height: 200,
              width: 200,
            ),
            backgroundColor: Colors.yellow,
          );
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialogbox();
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
