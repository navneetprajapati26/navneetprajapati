import 'package:flutter/material.dart';
import 'package:navneetprajapati26/device_body/desktop_body.dart';
import 'package:navneetprajapati26/device_body/mobile_body.dart';
import 'package:navneetprajapati26/device_body/tablet_body.dart';
import 'package:navneetprajapati26/rsponsiv/responsiv.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navneet Prajapati',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveLayout(
        mobileBody: DesktopBody(),
        desktopBody: MobileBody(),
        tabletBody: TabletBody(),
      ),
    );
  }
}

