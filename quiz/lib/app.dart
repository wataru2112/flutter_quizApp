import 'package:quiz/data/question.dart';
import 'package:quiz/view/question_page.dart';
import 'package:quiz/view/result-page.dart';
import 'package:quiz/view/start_page.dart';

import 'importer.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  List<String> selectedAnswers = [];
  String activePage = 'start-page';

  void switchPage() {
    setState(
      () {
        activePage = 'question-page';
      },
    );
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activePage = 'question-page';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activePage = 'result-page';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartPage(switchPage);
    if (activePage == 'question-page') {
      screenWidget = QuestionPage(
        onSelectedAnswer: chooseAnswer,
      );
    } else if (activePage == 'result-page') {
      screenWidget = ResultPage(
        choosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 88, 27, 193),
                Color.fromARGB(255, 129, 84, 207),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // child: activePage,
          child: screenWidget,
        ),
      ),
    );
  }
}
