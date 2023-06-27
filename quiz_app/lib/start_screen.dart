import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  final void Function() showQuestionScreen;

  const StartScreen(this.showQuestionScreen, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text('Learn Flutter the fun way!',
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 226, 182, 255),
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
        ),
        OutlinedButton.icon(
            onPressed: showQuestionScreen,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'))
      ],
    ));
  }
}
