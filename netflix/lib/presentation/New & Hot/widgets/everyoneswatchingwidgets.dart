import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/New%20&%20Hot/widgets/video_widget.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';

class EveryOnesWatchingWidgets extends StatelessWidget {
  const EveryOnesWatchingWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const Text(
          'Friends',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        const Text(
          '''This hit sitcom follows the merry misadventures of six 
20- something pals as they navigate the pitfalls of
work,life and love in 1990 s Manhattan''',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        kheight45,
        const VideoWidget(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              icon: Icons.send,
              title: 'Share',
              iconsize: 25,
              textsize: 16,
            ),
            kwidth,
            CustomButtonWidget(
              icon: Icons.add,
              title: 'My list',
              iconsize: 25,
              textsize: 16,
            ),
            kwidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: 'Play',
              iconsize: 25,
              textsize: 16,
            ),
            kwidth,
          ],
        )
      ],
    );
  }
}
