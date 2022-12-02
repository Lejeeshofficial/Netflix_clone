import 'dart:math';

import 'package:flutter/material.dart';

import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/main_page/commanWidgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [
    kwidth,
    const _smartdownloads(),
    Section2(),
    const Secton3(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final h1 = size.width * .75;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: 'Downloads',
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) => _widgetList[index],
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemCount: _widgetList.length,
      ),
    );
  }
}

class _smartdownloads extends StatelessWidget {
  const _smartdownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: kwhitecolor,
        ),
        kwidth,
        Text('Smart Downloads')
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  final List img = [
    'https://www.themoviedb.org/t/p/w220_and_h330_face/tegBpjM5ODoYoM1NjaiHVLEA0QM.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/h3zAzTMs5EP3cKusOxFNGSFE1WI.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/8KGvYHQNOamON6ufQGjyhkiVn1V.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final h1 = size.width * .75;
    return Column(
      children: [
        const Text(
          'Introducing Download for you',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kwhitecolor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          "We'll download a personalised selection of\nmovies and shows for you there's\n always something to watch on your\n device",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        kheight,
        SizedBox(
          width: size.width,
          height: size.height * .45,
          //  color: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * .39,
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),
              Positioned(
                child: downloadsimgewidget(
                  img: img[0],
                  margin: EdgeInsets.only(left: 160, bottom: 30),
                  angle: 20,
                  a: .4,
                  b: .73,
                ),
              ),
              Positioned(
                child: downloadsimgewidget(
                  img: img[1],
                  margin: EdgeInsets.only(right: 160, bottom: 30),
                  angle: -20,
                  a: .4,
                  b: .73,
                ),
              ),
              Positioned(
                bottom: 40,
                child: downloadsimgewidget(
                  img: img[2],
                  margin: EdgeInsets.only(left: 0, bottom: 0),
                  a: .43,
                  b: .85,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Secton3 extends StatelessWidget {
  const Secton3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 340,
          child: MaterialButton(
            color: kButtonColorsblue,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                    color: kButtonColorswhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          color: kButtonColorswhite,
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: kBlackColorBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class downloadsimgewidget extends StatelessWidget {
  const downloadsimgewidget({
    Key? key,
    required this.img,
    this.angle = 0,
    required this.margin,
    required this.a,
    required this.b,
  }) : super(key: key);

  final EdgeInsets margin;
  final String img;
  final double angle;
  final double a;
  final double b;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final h1 = size.width * .75;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * a,
        height: h1 * b,
        decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
              image: NetworkImage(
                img,
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
