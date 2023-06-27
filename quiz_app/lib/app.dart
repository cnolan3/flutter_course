import 'package:flutter/material.dart';

import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/data/questions.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<String> selectedAnswers = [];
  Widget? curScreen;

  @override
  void initState() {
    super.initState();
    curScreen = StartScreen(setQuestionScreen);
  }

  void setScreen(Widget screen) {
    setState(() {
      curScreen = screen;
    });
  }

  void setQuestionScreen() {
    setScreen(QuestionScreen(onSelectAnswer: chooseAnswer));
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setScreen(const ResultsScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Quiz App',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: Scaffold(
            body: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Colors.purple.shade900,
                      Colors.purple.shade800
                    ])),
                child: curScreen)));
  }
}
