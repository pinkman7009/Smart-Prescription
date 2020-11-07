import 'package:file_upload/PdfFirebase/FirstPage.dart';
import 'package:flutter/material.dart';
import 'package:file_upload/PdfFirebase/splash_screen.dart';
import 'package:file_upload/PdfFirebase/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart-Prescription',
      theme: ThemeData.light().copyWith(primaryColor: k_primary_app_color),
      home: Splash_Screen(),
    );
  }
}
