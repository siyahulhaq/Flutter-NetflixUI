import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:n_flix/core/contants/dimensions.dart';
import 'package:n_flix/presentation/widgets/title_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const CardsListWithTitle(
              title: "Release in the past year",
            ),
            kHeight20,
            const CardsListWithTitle(
              title: "Release in this year",
            ),
            kHeight20,
            const CardsListWithTitle(
              title: "Top 10 TV shows in India",
              hasIndex: true,
            ),
          ],
        ),
      ),
    );
  }
}

class CardsListWithTitle extends StatelessWidget {
  final String title;
  final bool hasIndex;
  const CardsListWithTitle(
      {Key? key, required this.title, this.hasIndex = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: title,
        ),
        kHeight20,
        LimitedBox(
          maxHeight: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            separatorBuilder: (context, index) => kWidth,
            itemBuilder: (context, index) => MovieCardItem(
              index: index,
              hasIndex: hasIndex,
            ),
          ),
        )
      ],
    );
  }
}

const image =
    "https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/etj8E2o0Bud0HkONVQPjyCkIvpv.jpg";

class MovieCardItem extends StatelessWidget {
  final int index;
  final bool hasIndex;
  const MovieCardItem({Key? key, required this.index, required this.hasIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            hasIndex
                ? const SizedBox(
                    width: 20,
                    height: 40,
                  )
                : const SizedBox(),
            SizedBox(
              width: 140,
              height: 200,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        hasIndex
            ? Positioned(
                child: BorderedText(
                  strokeWidth: 4,
                  strokeColor: Colors.white,
                  child: Text(
                    "${index + 1}",
                    style: const TextStyle(
                      fontSize: 80,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                    ),
                  ),
                ),
                left: 0,
                bottom: -20)
            : const SizedBox(),
      ],
    );
  }
}
