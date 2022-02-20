import 'package:flutter/material.dart';
import 'package:n_flix/core/contants/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
            currentIndex: newIndex,
            elevation: 0,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(
              color: Colors.white,
            ),
            unselectedIconTheme: const IconThemeData(
              color: Colors.grey,
            ),
            backgroundColor: backgroundColor,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.collections),
                label: 'New & Hot',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions_rounded),
                label: 'Fast Laugh',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.download),
                label: 'Downloads',
              ),
            ],
          );
        });
  }
}
