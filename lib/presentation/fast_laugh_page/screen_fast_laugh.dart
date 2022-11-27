import 'package:flutter/material.dart';

class FastLaughScreen extends StatelessWidget {
  const FastLaughScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            10,
            (index) => FastLaughItem(
              index: index,
            ),
          ),
        ),
      ),
    );
  }
}

final colors = [Colors.red, Colors.green, Colors.blue, Colors.white];

class FastLaughItem extends StatelessWidget {
  final int index;
  const FastLaughItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colors[index % 4],
      child: Stack(children: [
        Positioned(
          bottom: 10,
          left: 10,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.yellowAccent,
              size: 40,
            ),
          ),
        ),
        Positioned(
          top: 350,
          right: 20,
          child: Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  size: 40,
                  color: Colors.white54,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  size: 40,
                  color: Colors.white54,
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
