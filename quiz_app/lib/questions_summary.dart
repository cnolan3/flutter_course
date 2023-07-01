import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(children: [
          for (var data in summaryData)
            Row(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(((data['question_index'] as int) + 1).toString(),
                      style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 250, 243, 255),
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          background: Paint()
                            ..color = Colors.blue
                            ..strokeWidth = 20
                            ..strokeJoin = StrokeJoin.round
                            ..strokeCap = StrokeCap.round
                            ..style = PaintingStyle.stroke)),
                ],
              ),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['question'] as String,
                          style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 250, 243, 255),
                              fontSize: 16,
                              fontWeight: FontWeight.normal)),
                      const SizedBox(height: 5),
                      Text(data['user_answer'] as String,
                          style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 226, 182, 255),
                              fontSize: 14,
                              fontWeight: FontWeight.normal)),
                      Text(data['correct_answer'] as String,
                          style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 151, 213, 255),
                              fontSize: 14,
                              fontWeight: FontWeight.normal)),
                    ]),
              )
            ])
        ]),
      ),
    );
  }
}
