import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final double iconsize;
  final double textsize;
  const CustomButtonWidget({
    Key? key,
    this.iconsize = 30,
    this.textsize = 18,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhitecolor,
          size: iconsize,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: textsize,
          ),
        ),
      ],
    );
  }
}
