import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/theme/pallete.dart';
// import 'package:zeetionary/constants.dart';

// class QuizScreen extends ConsumerWidget {
//   const QuizScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Wrap(
//       children: [
//         Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//           elevation: 96,
//           child: const Center(
//             child: Icon(Icons.filter_b_and_w_rounded),
//           ),
//         ),
//       ],
//     );
//   }
// }

class QuizScreen extends ConsumerStatefulWidget {
  final ThemeData currentTheme;

  // (zee): https://chat.openai.com/c/fd57b2af-b7b6-472a-98fd-aea0551587d1

  const QuizScreen({super.key, required this.currentTheme});

  @override
  // _QuizScreenState createState() => _QuizScreenState();
  ConsumerState<ConsumerStatefulWidget> createState() => _QuizScreenState();
}

class _QuizScreenState extends ConsumerState<QuizScreen> {
  int currentIndex = 0;
  List<Question> questions = [
    Question("What is the capital of France?",
        ["Paris", "Berlin", "Madrid", "Rome"], "Paris"),
    Question("What is the capital of Japan?",
        ["Beijing", "Seoul", "Tokyo", "Bangkok"], "Tokyo"),
    Question("What is the capital of Brazil?",
        ["Buenos Aires", "Lima", "Santiago", "Brasilia"], "Brasilia"),
  ];
  List<bool?> userAnswers = [];

  @override
  void initState() {
    super.initState();
    shuffleQuestions();
  }

  void shuffleQuestions() {
    questions.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    final currentTheme = ref.watch(themeNotifierProvider);

    return Scaffold(
      appBar: const ZeetionaryAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  border:
                      Border.all(color: currentTheme.primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: QuestionCard(
                  question: questions[currentIndex],
                  onAnswerSelected: (answer) => checkAnswer(answer),
                  currentTheme: currentTheme,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(color: currentTheme.primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(Icons.close, color: Colors.red),
                    Text(
                        '${userAnswers.where((answer) => answer == false).length}',
                        style:
                            const TextStyle(fontSize: 20, color: Colors.red)),
                    const Icon(Icons.check, color: Colors.green),
                    Text(
                        '${userAnswers.where((answer) => answer == true).length}',
                        style:
                            const TextStyle(fontSize: 20, color: Colors.green)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checkAnswer(String selectedAnswer) {
    bool isCorrect = questions[currentIndex].correctAnswer == selectedAnswer;
    userAnswers.add(isCorrect);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: isCorrect
              ? const Text(
                  'بژیت 👍',
                  style: TextStyle(fontSize: 26),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                )
              : const Text(
                  'بەداخەوە 😥',
                  style: TextStyle(fontSize: 26),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                ),
          content: isCorrect
              ? const Icon(Icons.check, color: Colors.green, size: 50)
              : const Icon(Icons.close, color: Colors.red, size: 50),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                moveToNextQuestion();
              },
              child: const Center(
                child: Text(
                  'پرسیاری دواتر',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void moveToNextQuestion() {
    setState(() {
      currentIndex = (currentIndex + 1) % questions.length;
      if (currentIndex == 0) {
        // All questions answered, shuffle again for a new round
        shuffleQuestions();
      }
    });
  }
}

class Question {
  final String questionText;
  final List<String> options;
  final String correctAnswer;

  Question(this.questionText, this.options, this.correctAnswer);
}

class QuestionCard extends ConsumerStatefulWidget {
  final Question question;
  final Function(String) onAnswerSelected;
  final ThemeData currentTheme;

  const QuestionCard(
      {required this.question,
      required this.onAnswerSelected,
      required this.currentTheme,
      super.key});

  @override
  ConsumerState<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends ConsumerState<QuestionCard> {
  @override
  Widget build(BuildContext context) {
    final currentTheme = ref.watch(themeNotifierProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Text(
              widget.question.questionText,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: currentTheme.primaryColor),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Column(
          children: widget.question.options.map((option) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: currentTheme.primaryColor.withOpacity(0.8),
                      width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ElevatedButton(
                  onPressed: () => widget.onAnswerSelected(option),
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12.0),
                      alignment: Alignment.center,
                      child: Text(
                        option,
                        style: TextStyle(
                          fontSize: 16,
                          color: currentTheme.primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
