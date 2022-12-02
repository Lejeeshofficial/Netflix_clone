import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/New%20&%20Hot/widgets/video_widget.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';

const String img1 =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/rjlG7C5GZfXutoVoE3BJaYGUhk4.jpg';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'FEB',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Text(
                '11',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 3),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              kheight1,
              Row(
                children: [
                  const Text(
                    'TALL GIRL 2',
                    style: TextStyle(
                      letterSpacing: -4,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButtonWidget(
                        icon: Icons.notifications_active_outlined,
                        title: "Remaind me",
                        iconsize: 20,
                        textsize: 12,
                      ),
                      kwidth,
                      CustomButtonWidget(
                        icon: Icons.info,
                        title: "info",
                        iconsize: 20,
                        textsize: 12,
                      ),
                      kwidth,
                    ],
                  ),
                ],
              ),
              kheight06,
              Text('Coming on Friday'),
              kheight,
              const Text(
                'Tall Girl 2',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kheight1,
              const Text(
                '''Landing the lead in the school musical is a
dream come true for Jodi, until the pressure
dends her cofidence -- and her relationship --
into a tailspin.''',
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
