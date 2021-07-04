import 'package:flutter/material.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({
    Key? key,
    required this.textTheme,
    required this.accentColor,
    required this.title,
    required this.hintText,
  }) : super(key: key);

  final TextTheme textTheme;
  final Color accentColor;
  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textTheme.subtitle1!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          TextField(
            style: textTheme.body1!.copyWith(color: Colors.white),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: textTheme.body1!.copyWith(color: Colors.white),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: accentColor),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: accentColor),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: accentColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
