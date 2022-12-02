import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

const String img1 =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/rjlG7C5GZfXutoVoE3BJaYGUhk4.jpg';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            img1,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(.5),
            radius: 22,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off,
                color: kwhitecolor,
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
