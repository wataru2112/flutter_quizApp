import 'package:quiz/view/question_page.dart';
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
  // Widget? activePage;

  // @override
  // void initState() {
  //   activePage = StartPage(switchPage);
  //   super.initState();
  // }
  String activePage = 'start-page';

  void switchPage() {
    setState(
      () {
        // activePage = const QuestionPage();
        activePage = 'question-page';
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartPage(switchPage);
    if (activePage == 'question-page') {
      screenWidget = const QuestionPage();
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
