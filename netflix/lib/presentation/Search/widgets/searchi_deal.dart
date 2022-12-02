import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/Search/widgets/title.dart';

final img1 =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/kpUre8wWSXn3D5RhrMttBZa6w1v.jpg';

class SearchIdeal extends StatelessWidget {
  const SearchIdeal({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchTextTitle(title: 'Top Searches'),
          kheight,
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => TopSearchItemTile(),
            separatorBuilder: (context, index) => kheight1,
            itemCount: 10,
          ),
        ],
      ),
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final Screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: Screenwidth * .35,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                img1,
              ),
            ),
          ),
        ),
        kwidth,
        const Text(
          'Movie Name',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: kwhitecolor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const Spacer(),
        const CircleAvatar(
          backgroundColor: kwhitecolor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kBlackColorBlack,
            radius: 23,
            child: Center(
              child: Icon(
                CupertinoIcons.play_fill,
                color: kwhitecolor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
