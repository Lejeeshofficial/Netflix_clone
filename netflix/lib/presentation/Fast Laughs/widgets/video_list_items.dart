import 'package:flutter/material.dart';

import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/Search/widgets/searchi_deal.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //left side
                  CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(.5),
                    radius: 30,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_off,
                        color: kwhitecolor,
                        size: 30,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(img1),
                        ),
                      ),
                      const VideoActionWidget(
                          icon: Icons.emoji_emotions, title: "LOL"),
                      const VideoActionWidget(
                          icon: Icons.add, title: "My list"),
                      const VideoActionWidget(
                          icon: Icons.share, title: "Share"),
                      const VideoActionWidget(
                          icon: Icons.play_arrow, title: "Play"),
                    ],
                  ),
                ]),
          ),
        ),
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({required this.icon, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: kwhitecolor,
            ),
          ),
        ],
      ),
    );
  }
}
