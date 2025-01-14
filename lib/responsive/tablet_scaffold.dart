// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:reponsive_dashboard/constants.dart';
import 'package:reponsive_dashboard/util/mybox.dart';
import 'package:reponsive_dashboard/util/mytile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
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
    );
  }
}
