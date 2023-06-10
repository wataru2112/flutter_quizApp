import '../importer.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.deepPurple),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Learn Fullter title fun way!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  side: const BorderSide(color: Colors.black),
                ),
                child: const Text('StartQuiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
