import 'package:flutter/material.dart';
import 'package:gunita/pages/landing_page/local_widget/button_appbar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final accentColor = Theme.of(context).accentColor;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 200),
          child: Text(
            'Gunita',
            style: textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0,
        actions: [
          ButtonAppBar(
            title: 'Login',
            isBackgroundColor: false,
            textColor: Colors.black,
          ),
          SizedBox(width: 20),
          ButtonAppBar(
            title: 'Sign Up',
            isBackgroundColor: true,
            textColor: accentColor,
          ),
          SizedBox(width: 200),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 50, left: 50, top: 50),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
