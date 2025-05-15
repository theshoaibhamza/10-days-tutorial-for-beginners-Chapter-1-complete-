// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields, unused_field, non_constant_identifier_names, prefer_interpolation_to_compose_strings, avoid_print, sort_child_properties_last, must_be_immutable, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// in this i will explain the nested container concept
// checkbox
// lineThrough on text
// Day 8 is about deleting a note for this we need a delete function as well

class ToDoTile2 extends StatelessWidget {
  final void Function(bool?) onChanged;
  void Function(BuildContext)? onDelete;

  String text;
  bool isCompleted;
  ToDoTile2(
      {super.key,
      required this.onDelete,
      required this.onChanged,
      required this.text,
      required this.isCompleted});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 20),
              height: 80,
              width: 180,
              child: SlidableAction(
                borderRadius: BorderRadius.circular(20),
                backgroundColor: Colors.red,
                onPressed: onDelete,
                icon: Icons
                    .delete, // icon is mandatory otherwise it will give error
              ),
            ),
          ),
        ]),
        child: Container(
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
                  margin:
                      EdgeInsets.only(left: 3, right: 20, top: 10, bottom: 10),
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
              color: Colors.yellow[500],
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
