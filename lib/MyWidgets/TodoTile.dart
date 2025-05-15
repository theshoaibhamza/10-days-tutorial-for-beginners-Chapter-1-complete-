// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields, unused_field, non_constant_identifier_names, prefer_interpolation_to_compose_strings, avoid_print, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';

// in this i will explain the nested container concept
// checkbox
// lineThrough on text
// Day 8 is about deleting a note for this we need a delete function as well

class ToDoTile extends StatelessWidget {
  final void Function(bool?)? onChanged;
  String text;
  bool isCompleted;
  ToDoTile(
      {super.key,
      required this.onChanged,
      required this.text,
      required this.isCompleted});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Checkbox(
            value: isCompleted,
            onChanged: onChanged,
            checkColor: Colors.white,
            activeColor: Colors.black,
            shape: StadiumBorder(side: BorderSide()),
          ),
          Container(
              height: 100,
              width: 300,
              margin: EdgeInsets.only(left: 3, right: 20, top: 10, bottom: 10),
              child: Center(
                  child: Text(
                text,
                style: TextStyle(
                  decoration: isCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ))),
        ],
      ),
      margin: EdgeInsets.all(20),
      height: 80,
      width: 411,
      decoration: BoxDecoration(
          color: Colors.yellow[500], borderRadius: BorderRadius.circular(20)),
    );
  }
}
