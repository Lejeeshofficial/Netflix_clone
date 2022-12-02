import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';
import 'package:netflix/presentation/home/widgets/number_title_card.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  final String img1 =
      'https://www.themoviedb.org/t/p/w220_and_h330_face/juah27ARLXRqbkgvlzilCs13s9S.jpg';

  final String img2 =
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/cvhNj9eoRBe5SxjCbQTkh05UP5K.jpg';

  final String netflixlogo = 'lib/assets/netflix_logo-removebg-preview.png';

  ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              // print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    BackgroundCard(),
                    kheight,
                    Main_title_card(
                        img1: img1, title: 'Released in the past year'),
                    kheight,
                    Main_title_card(img1: img1, title: 'Treanding Now'),
                    kheight,
                    Number_title_card(
                        img1: img1, title: 'Top 10 Tv Shows In India Today'),
                    kheight,
                    Main_title_card(img1: img1, title: 'Tense Dramas'),
                    kheight,
                    Main_title_card(img1: img1, title: 'South Indian Cinemas'),
                  ],
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        width: double.infinity,
                        height: 90,
                        color: Colors.black.withOpacity(0.3),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  netflixlogo,
                                  width: 60,
                                  height: 60,
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                kwidth,
                                Container(
                                  width: 30,
                                  height: 30,
                                  color: Colors.blue,
                                ),
                                kwidth,
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Tv Shows', style: kstyle),
                                Text('Movies', style: kstyle),
                                Text('Categories', style: kstyle),
                              ],
                            ),
                          ],
                        ),
                      )
                    : kheight
              ],
            ),
          );
        },
      ),
    );
  }
}
