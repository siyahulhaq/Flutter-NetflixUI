import 'package:flutter/material.dart';
import 'package:n_flix/presentation/widgets/app_bar_widget.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            child: AppBarWidget(title: "Downloads"),
            preferredSize: Size.fromHeight(50)),
        body: Center(
          child: Text("Downloads"),
        ));
  }
}
