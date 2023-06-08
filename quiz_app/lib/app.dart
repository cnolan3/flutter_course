import 'package:flutter/material.dart';

import 'package:quiz_app/start_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var curScreen;

  _MyAppState() {
    curScreen = const StartScreen();
  }

  void setScreen(Widget screen) {
    setState(() {
      curScreen = screen;
    });
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
