import 'package:quiz/component/question_identifier.dart';
import 'package:quiz/importer.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({
    super.key,
    required this.itemData,
  });

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            questionIndex: itemData['question_index'] as int,
            isCorrectAnswer: isCorrectAnswer,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  itemData['user_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 240, 149, 244),
                  ),
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 149, 238, 244),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
