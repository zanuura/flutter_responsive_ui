import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/responsive/dekstop_scaffold.dart';
import 'package:flutter_responsive_ui/responsive/mobile_scaffold.dart';
import 'package:flutter_responsive_ui/responsive/responsive_layout.dart';
import 'package:flutter_responsive_ui/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'responsive ui',
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        dekstopScaffold: DekstopScaffold(),
      ),
    );
  }
}
