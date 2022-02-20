import 'package:flutter/material.dart';
import 'package:n_flix/presentation/widgets/app_bar_widget.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          child: AppBarWidget(title: "New and Hot"),
          preferredSize: Size.fromHeight(50)),
      body: Center(
        child: Text('New & Hot Screen'),
      ),
    );
  }
}
