import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class Number_title_card extends StatelessWidget {
  final String title;
  const Number_title_card({
    Key? key,
    required this.img1,
    required this.title,
  }) : super(key: key);

  final String img1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              20,
              (index) => NumberCard(img1: img1, index: index),
            ),
          ),
        ),
      ],
    );
  }
}
