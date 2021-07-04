import 'package:flutter/material.dart';
import 'package:gunita/config/app_theme.dart';
import 'package:gunita/pages/landing_page/landing_page.dart';

void main() {
  runApp(Gunita());
}

class Gunita extends StatefulWidget {
  const Gunita({Key? key}) : super(key: key);

  @override
  _GunitaState createState() => _GunitaState();
}

class _GunitaState extends State<Gunita> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: LandingPage(),
    );
  }
}
