import 'package:flutter/material.dart';

class ButtonAppBar extends StatelessWidget {
  final String title;
  final bool isBackgroundColor;
  final Color textColor;

  ButtonAppBar(
      {required this.title,
      required this.isBackgroundColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor:
              isBackgroundColor ? Color(0xFFF3EBFE) : Colors.transparent,
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Text(
            title,
            style: textTheme.button!.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
