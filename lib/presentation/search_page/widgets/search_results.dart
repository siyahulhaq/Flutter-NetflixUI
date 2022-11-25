import 'package:flutter/material.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        childAspectRatio: 1 / 1.3,
        children: List.generate(20, (index) => const GridItem()),
      ),
    );
  }
}

const image =
    "https://www.themoviedb.org/t/p/w440_and_h660_face/1X4h40fcB4WWUmIBK0auT4zRBAV.jpg";

class GridItem extends StatelessWidget {
  const GridItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(image),
        ),
      ),
    );
  }
}
