import 'package:flutter/material.dart';

import '../../core/colors/constants.dart';

class MainCardHome extends StatelessWidget {
  const MainCardHome({
    Key? key,
    required this.img1,
  }) : super(key: key);

  final String img1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: 150,
        height: 250,
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
    );
  }
}
