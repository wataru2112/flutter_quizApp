import 'package:quiz/component/answer_button.dart';
import 'package:quiz/constant/color_constants.dart';

import '../importer.dart';

import '../data/question.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({required this.onSelectedAnswer, super.key});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionPage> createState() {
    return _QuestionPageState();
  }
}

class _QuestionPageState extends State<QuestionPage> {
  int currentQuestionIndex = 0;
  void onTap(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      // 横真ん中
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          // 縦真ん中
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: ColorConstans.purple,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // ...: 配列になっているものを外に出す
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(
                  answerText: answer,
                  onTap: () => onTap(answer),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
