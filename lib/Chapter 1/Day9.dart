// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields, unused_field, non_constant_identifier_names, prefer_interpolation_to_compose_strings, avoid_print, must_be_immutable, prefer_const_constructors_in_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:ytapp/MyWidgets/MyDialog.dart';
import 'package:ytapp/MyWidgets/TodoTile.dart';
import 'package:ytapp/MyWidgets/TodoTile2.dart';

class Day9 extends StatefulWidget {
  Day9({super.key});

  @override
  State<Day9> createState() => _Day9State();
}

// Day9
// Drawer
// how to load image from assets
// how to load image from network
// there is no exit button in Day9 its in Day10
// I Have Also Seperated The DrawerFile as MyDrawer

class _Day9State extends State<Day9> {
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
    });
  }

  // onCheckBoxTap Function
  void onCheckBoxTap(int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  // controller
  TextEditingController controllerx = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/me.png"),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Shoaib Hamza",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )),

                // other content
                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.note),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Notes",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )),
                // other content

                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.exit_to_app),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Back",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ))
              ],
            ),
            backgroundColor: Colors.yellow[200]),
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
                  // specially created for day 8 and 9

                  onDelete: (context) => onDelete(index),
                  onChanged: (x) {
                    onCheckBoxTap(index);
                  },
                  text: toDoList[index][0],
                  isCompleted: toDoList[index][1]);
            }));
  }
}
