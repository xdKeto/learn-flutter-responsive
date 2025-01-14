// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:reponsive_dashboard/constants.dart';
import 'package:reponsive_dashboard/util/mybox.dart';
import 'package:reponsive_dashboard/util/mytile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      body: Row(
        children: [
          // drawer
          myDrawer,
          // drawer
          Expanded(
            flex: 2,
            child: Column(
              children: [
                // 4 box on top
                AspectRatio(
                  //berguna untuk responsive soalnya kotak auto ganti
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return Mybox();
                      },
                    ),
                  ),
                ),
                // tiles below
                Expanded(
                    child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Mytile();
                  },
                ))
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.pink,
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
