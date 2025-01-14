// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:reponsive_dashboard/constants.dart';
import 'package:reponsive_dashboard/util/mybox.dart';
import 'package:reponsive_dashboard/util/mytile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
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
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
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
