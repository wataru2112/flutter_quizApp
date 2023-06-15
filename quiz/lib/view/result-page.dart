import 'package:quiz/data/question.dart';
import 'package:quiz/importer.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    required this.choosenAnswers,
    super.key,
  });

  final List<String> choosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < choosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i],
          'correct_answer': questions[i].answers,
          'user_answer': choosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('data'),
            const SizedBox(
              height: 30,
            ),
            const SingleChildScrollView(),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('restart'),
            )
          ],
        ),
      ),
    );
  }
}
