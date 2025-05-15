// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields, unused_field, non_constant_identifier_names, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';
import 'package:ytapp/Chapter%201/Day2.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // ignore: sort_child_properties_last
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
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
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
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
            ),

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
                )),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Day2()));
                },
                child: Text("Move To Day2 "))
          ],
        ),
        backgroundColor: Colors.yellow[400]);
  }
}
