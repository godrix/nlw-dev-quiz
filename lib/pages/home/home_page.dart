import 'package:dev_quiz/pages/home/widgets/app_bar/main.dart';
import 'package:dev_quiz/pages/home/widgets/level_button/level_button_widget.dart';
import 'package:dev_quiz/pages/home/widgets/quiz_card/quiz_card_widget.dart';
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
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Wrap(
                direction: Axis.vertical,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LevelButtonWidget(
                        label: 'Fácil',
                      ),
                      LevelButtonWidget(
                        label: 'Médio',
                      ),
                      LevelButtonWidget(
                        label: 'Difícil',
                      ),
                      LevelButtonWidget(
                        label: 'Perito',
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                ],
              ))
            ],
          )),
    );
  }
}
