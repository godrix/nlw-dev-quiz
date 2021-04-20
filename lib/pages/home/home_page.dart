import 'package:dev_quiz/pages/home/widgets/app_bar/main.dart';
import 'package:dev_quiz/pages/home/widgets/level_button/level_button_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: LevelButtonWidget(
        label: 'Fácil',
      ),
    );
  }
}
