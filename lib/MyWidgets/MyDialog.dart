// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields, unused_field, non_constant_identifier_names, prefer_interpolation_to_compose_strings, avoid_print, must_be_immutable, prefer_const_constructors_in_immutables, sort_child_properties_last, sized_box_for_whitespace, camel_case_types

import 'package:flutter/material.dart';
import 'package:ytapp/MyWidgets/ShowButton.dart';

class showDialogBoxx extends StatelessWidget {
  VoidCallback onSave;
  VoidCallback onCancel;
  TextEditingController controllerx;

  showDialogBoxx(
      {super.key,
      required this.onSave,
      required this.onCancel,
      required this.controllerx});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: TextFormField(
              controller: controllerx,
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
                    onSave();
                    Navigator.pop(context);
                  },
                  //
                  child: ShowButton(text: "Add"),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    //
                    onCancel();
                  },
                  child: ShowButton(text: "Cancel"),
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
  }
}
