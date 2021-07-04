import 'package:flutter/material.dart';

class ClassList extends StatelessWidget {
  ClassList({
    Key? key,
    required this.textTheme,
    required this.accentColor,
    required this.imageAssets,
    required this.price,
    required this.month,
    required this.date,
    required this.title,
    required this.description,
    required this.onTap,
  }) : super(key: key);

  final TextTheme textTheme;
  final Color accentColor;
  final String imageAssets;
  final String price;
  final String month;
  final String date;
  final String title;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 360,
        height: 430,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      imageAssets,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      price,
                      style: textTheme.body2!.copyWith(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        month,
                        style:
                            textTheme.subtitle1!.copyWith(color: accentColor),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        date,
                        style: textTheme.subtitle1!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  Container(
                    height: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: 242,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              title,
                              style: textTheme.subtitle1!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 45,
                          width: 242,
                          child: Text(
                            description,
                            overflow: TextOverflow.visible,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
