import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        )),
        IconButton(
          icon: const Icon(Icons.cast),
          color: Colors.white,
          onPressed: () {
            print('cast');
          },
        ),
        IconButton(
          icon: const Icon(Icons.search),
          color: Colors.white,
          onPressed: () {
            print('search');
          },
        ),
      ],
    );
  }
}
