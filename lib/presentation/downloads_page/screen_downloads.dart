import 'dart:math';

import 'package:flutter/material.dart';
import 'package:n_flix/core/contants/colors.dart';
import 'package:n_flix/presentation/widgets/app_bar_widget.dart';

class ImageData {
  final String image;
  final int rotate;
  ImageData(this.image, this.rotate);
}

class DownloadsScreen extends StatelessWidget {
  DownloadsScreen({Key? key}) : super(key: key);
  final images = [
    ImageData(
        "https://www.themoviedb.org/t/p/w1280/meRIRfADEGVo65xgPO6eZvJ0CRG.jpg",
        -25),
    ImageData(
        "https://www.themoviedb.org/t/p/w1280/3cccEF9QZgV9bLWyupJO41HSrOV.jpg",
        25),
    ImageData(
        "https://www.themoviedb.org/t/p/w1280/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
        0),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
            child: AppBarWidget(title: "Downloads"),
            preferredSize: Size.fromHeight(50)),
        body: ListView(
          children: [
            Row(children: const [
              Icon(Icons.settings, color: Colors.grey),
              Text("Smart Download"),
            ]),
            const Text("Introduciing downloads for you"),
            const Text(
                "We will download a personalised list of movies for you, so there is always something to watch on your device."),
            SizedBox(
              width: size.width,
              height: size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: size.width * 0.37,
                    backgroundColor: Colors.grey[700],
                  ),
                  ...images.map((e) => ImageRotateWidget(image: e)).toList(),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: const Text("Set up",
                  style: TextStyle(
                    color: kColorWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              color: kButtonColorBlue,
            ),
            MaterialButton(
              onPressed: () {},
              child: const Text("See What you can Download",
                  style: TextStyle(
                    color: kColorBlack,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              color: kColorWhite,
            ),
          ],
        ));
  }
}

class ImageRotateWidget extends StatelessWidget {
  final ImageData image;
  const ImageRotateWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Transform.translate(
      offset: Offset(image.rotate.toDouble() * 4, image.rotate != 0 ? 15 : 0),
      child: Transform.rotate(
        angle: image.rotate * pi / 180,
        child: Container(
            width: image.rotate != 0 ? size.width * 0.3 : size.width * 0.4,
            height: image.rotate != 0 ? size.width * 0.5 : size.width * 0.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: NetworkImage(image.image), fit: BoxFit.cover),
            )),
      ),
    );
  }
}
