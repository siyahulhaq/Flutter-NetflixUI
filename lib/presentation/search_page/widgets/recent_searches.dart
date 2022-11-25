import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:n_flix/core/contants/dimensions.dart';

class RecentSearches extends StatelessWidget {
  const RecentSearches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        shrinkWrap: true,
        separatorBuilder: (context, index) => kHeight20,
        itemBuilder: (BuildContext context, int index) =>
            const SearchItemTile(),
      ),
    );
  }
}

const image =
    "https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/etj8E2o0Bud0HkONVQPjyCkIvpv.jpg";

class SearchItemTile extends StatelessWidget {
  const SearchItemTile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: 80,
          width: screenWidth * 0.35,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                8.0,
              ),
            ),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                image,
              ),
            ),
          ),
        ),
        kWidth,
        const Expanded(
          child: Text(
            "Movie Name",
          ),
        ),
        const Icon(
          CupertinoIcons.play_circle_fill,
          color: Colors.white,
          size: 32,
        ),
      ],
    );
  }
}
