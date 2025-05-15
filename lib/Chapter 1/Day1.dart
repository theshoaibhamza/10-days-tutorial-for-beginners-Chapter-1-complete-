// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';

class Day1 extends StatelessWidget {
  const Day1({super.key});
  // stateless widget
  // Column
  // Row
  // Container
  // Stack
  // Text
  // Margin
  // Icons
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 1")),
      backgroundColor: Colors.purple,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // container 1

          Stack(
            children: [
              Container(
                color: Colors.black,
                height: 200,
                width: 200,
              ),
              Container(
                margin: EdgeInsets.only(left: 40, top: 40),
                color: Colors.white,
                height: 100,
                width: 100,
                child: Icon(
                  Icons.favorite,
                  size: 40,
                  color: Colors.red,
                ),
              ),
            ],
          ),

          Center(
            child: Container(
                margin: EdgeInsets.only(left: 40, top: 150),
                color: Colors.white,
                height: 100,
                width: 300,
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    "Flutter is Coming...",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ),

          Center(
            child: Container(
                margin: EdgeInsets.only(left: 40, top: 10),
                color: Colors.white,
                height: 100,
                width: 300,
                child: Center(
                  child: Text(
                    "@Big Brains",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
