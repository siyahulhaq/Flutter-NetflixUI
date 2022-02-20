import 'package:flutter/material.dart';
import 'package:n_flix/presentation/downloads_page/screen_downloads.dart';
import 'package:n_flix/presentation/fast_laugh_page/screen_fast_laugh.dart';
import 'package:n_flix/presentation/home_page/screen_home.dart';
import 'package:n_flix/presentation/main_page/widgets/bottom_navigation_bar.dart';
import 'package:n_flix/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:n_flix/presentation/search_page/sceen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);

  final _pages = [
    const HomeScreen(),
    const NewAndHotScreen(),
    const FastLaughScreen(),
    const SearchScreen(),
    const DownloadsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int index, _) {
              return _pages[index];
            }),
        bottomNavigationBar: const BottomNavigationBarWidget(),
      ),
    );
  }
}
