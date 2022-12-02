import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class Main_title_card extends StatelessWidget {
  const Main_title_card({
    Key? key,
    required this.title,
    required this.img1,
  }) : super(key: key);

  final String img1;
  final String title;

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
              (index) => MainCardHome(img1: img1),
            ),
          ),
        ),
      ],
    );
  }
}
