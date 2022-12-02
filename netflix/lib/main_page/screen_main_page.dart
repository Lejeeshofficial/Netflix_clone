import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/main_page/widgets/bottom_nav.dart';
import 'package:netflix/presentation/Fast%20Laughs/screenfastlaughs.dart';
import 'package:netflix/presentation/New%20&%20Hot/screennewandhot.dart';
import 'package:netflix/presentation/Search/screensearch.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';
import 'package:netflix/presentation/home/screen_home.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final pages = [
    ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaughs(),
    const ScreenSearch(),
    ScreenDownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexchangenotifier,
          builder: (context, index, child) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
