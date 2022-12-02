import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/main_page/commanWidgets/app_bar_widget.dart';
import 'package:netflix/presentation/New%20&%20Hot/widgets/comingsoonwidget.dart';
import 'package:netflix/presentation/New%20&%20Hot/widgets/everyoneswatchingwidgets.dart';
import 'package:netflix/presentation/New%20&%20Hot/widgets/video_widget.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';

const String img1 =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/rjlG7C5GZfXutoVoE3BJaYGUhk4.jpg';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            title: const Text(
              'New & Hot',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            actions: [
              const Icon(
                Icons.cast,
                color: Colors.white,
                size: 30,
              ),
              kwidth,
              Container(
                width: 30,
                // height: h1 * 0,
                color: Colors.blue,
              ),
              kwidth,
            ],
            bottom: TabBar(
              isScrollable: true,
              unselectedLabelColor: kwhitecolor,
              labelColor: kBlackColorBlack,
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              indicator: BoxDecoration(
                color: kwhitecolor,
                borderRadius: kBorderRadius30,
              ),
              tabs: const [
                Tab(text: '🍿 Coming Soon'),
                Tab(text: "👀 Everyone's Watching")
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildcomingsoon(),
            _buildEveryoneswatching(),
          ],
        ),
      ),
    );
  }

  _buildcomingsoon() {
    return ListView.builder(
      itemBuilder: (context, index) => ComingSoonWidget(),
      itemCount: 10,
    );
  }

  _buildEveryoneswatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const EveryOnesWatchingWidgets(),
    );
  }
}
