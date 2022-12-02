import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';

import '../../../core/colors/constants.dart';

class NumberCard extends StatelessWidget {
  final String img1;
  final int index;
  const NumberCard({super.key, required this.img1, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 50,
              height: 200,
            ),
            Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: kBorderRadius,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    img1,
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 13,
          bottom: -30,
          child: BorderedText(
            strokeColor: Colors.white,
            strokeWidth: 10.0,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                fontSize: 130,
                color: kBlackColorBlack,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                //decorationColor: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
