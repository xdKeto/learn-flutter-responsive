import 'package:flutter/material.dart';
import 'package:reponsive_dashboard/responsive/desktop_scaffold.dart';
import 'package:reponsive_dashboard/responsive/mobile_scaffold.dart';
import 'package:reponsive_dashboard/responsive/responsive_layout.dart';
import 'package:reponsive_dashboard/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: ResponsiveLayout(
            mobileScaffold: MobileScaffold(),
            tabletScaffold: TabletScaffold(),
            desktopScaffold: DesktopScaffold()));
  }
}
