// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields, unused_field, non_constant_identifier_names, prefer_interpolation_to_compose_strings, avoid_print, must_be_immutable

import 'package:flutter/material.dart';

class ShowButton extends StatelessWidget {
  ShowButton({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.5),
      ),
      height: 50,
      width: 80,
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
