// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields, unused_field, non_constant_identifier_names, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';

class Day3 extends StatefulWidget {
  const Day3({super.key});

  @override
  State<Day3> createState() => _Page2State();
}

// User Input
// TextFormField
// TextEditingController
// Row Rivision
// ElevatedButton Rivision

class _Page2State extends State<Day3> {
  TextEditingController _Username = TextEditingController();
  TextEditingController _Password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 3")),
      backgroundColor: Colors.white70,
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              Text(
                "Username",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          TextFormField(
            controller: _Username,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          SizedBox(width: 0.0, height: 10.0),
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              Text(
                "Password ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          TextFormField(
            controller: _Password,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),

          SizedBox(
            height: 20,
          ),
          // Button
          ElevatedButton(
              onPressed: () {
                print("Username : " + _Username.text.toString());
                print("Password : " + _Password.text.toString());
              },
              child: Text("Submit")),
        ]),
      ),
    );
  }
}
