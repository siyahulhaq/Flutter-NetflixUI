import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:n_flix/core/contants/dimensions.dart';
import 'package:n_flix/presentation/search_page/widgets/search_results.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CupertinoSearchTextField(
                  autofocus: true,
                  prefixIcon: const Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                  suffixIcon: const Icon(
                    CupertinoIcons.xmark_circle_fill,
                    color: Colors.grey,
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.grey.shade600.withOpacity(0.6),
                ),
                kHeight,
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
                  child: Text(
                    "Recent Searches",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                kHeight,
                const SearchResults(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
