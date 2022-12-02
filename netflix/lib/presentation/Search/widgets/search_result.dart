import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/Search/widgets/searchi_deal.dart';
import 'package:netflix/presentation/Search/widgets/title.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  final imgUrl =
      'https://www.themoviedb.org/t/p/w220_and_h330_face/h3zAzTMs5EP3cKusOxFNGSFE1WI.jpg';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Movies & TV'),
        kheight,
        Expanded(
            child: GridView.count(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          crossAxisCount: 3,
          shrinkWrap: true,
          childAspectRatio: 1 / 1.4,
          children: List.generate(20, (index) {
            return const MainCard();
          }),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(img1),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
