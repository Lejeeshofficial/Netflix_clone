import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});
  final String img2 =
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/cvhNj9eoRBe5SxjCbQTkh05UP5K.jpg';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(img2),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtonWidget(icon: Icons.add, title: 'My List'),
                _PlayButton(),
                const CustomButtonWidget(
                    icon: Icons.info_outline_rounded, title: 'info'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  TextButton _PlayButton() {
    return TextButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          kwhitecolor,
        ),
      ),
      onPressed: () {},
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Play',
          style: TextStyle(
            fontSize: 20,
            color: kBlackColorBlack,
          ),
        ),
      ),
      icon: const Icon(
        Icons.play_arrow,
        size: 25,
        color: kBlackColorBlack,
      ),
    );
  }
}
