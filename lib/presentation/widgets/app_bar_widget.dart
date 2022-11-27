import 'package:flutter/material.dart';
import 'package:n_flix/presentation/main_page/widgets/bottom_navigation_bar.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
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
              indexChangeNotifier.value = 3;
            },
          ),
        ],
      ),
    );
  }
}
