import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';

// void main() {
//   runApp(GeographyQuizApp());
// }

// class GeographyQuizApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Geography Quiz',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: QuizScreen(),
//     );
//   }
// }

// class QuizScreen extends StatefulWidget {
//   const QuizScreen({super.key});

//   @override
//   _QuizScreenState createState() => _QuizScreenState();
// }

// class _QuizScreenState extends State<QuizScreen> {

class QuizScreen extends ConsumerStatefulWidget {
  const QuizScreen({super.key});

  @override
  // _QuizScreenState createState() => _QuizScreenState();
  ConsumerState<ConsumerStatefulWidget> createState() => _QuizScreenState();
}

class _QuizScreenState extends ConsumerState<QuizScreen> {
  List<Question> questions = [
    Question("What is the capital of France?",
        ["Paris", "Berlin", "Madrid", "Rome"], "Paris"),
    Question("What is the capital of Japan?",
        ["Beijing", "Seoul", "Tokyo", "Bangkok"], "Tokyo"),
    Question("What is the capital of Brazil?",
        ["Buenos Aires", "Lima", "Santiago", "Brasilia"], "Brasilia"),
    // Question(
    //     "Question?",
    //     ["Option_one", "Option_two", "Option_three", "Option_four"],
    //     "correct_answer"),
    // Question(
    //     "Question?",
    //     ["Option_one", "Option_two", "Option_three", "Option_four"],
    //     "correct_answer"),
    // Question(
    //     "Question?",
    //     ["Option_one", "Option_two", "Option_three", "Option_four"],
    //     "correct_answer"),
    // Question(
    //     "Question?",
    //     ["Option_one", "Option_two", "Option_three", "Option_four"],
    //     "correct_answer"),
    // Question(
    //     "Question?",
    //     ["Option_one", "Option_two", "Option_three", "Option_four"],
    //     "correct_answer"),
    // Question(
    //     "Question?",
    //     ["Option_one", "Option_two", "Option_three", "Option_four"],
    //     "correct_answer"),
  ];

  int currentQuestionIndex = 0;
  int correctAnswers = 0;
  int wrongAnswers = 0;
  late SharedPreferences prefs;
  bool timerEnded = false;
  int _timeRemaining = 45;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _loadData();
    _startTimer();
  }

  void _loadData() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      currentQuestionIndex = prefs.getInt('currentQuestionIndex') ?? 0;
      correctAnswers = prefs.getInt('correctAnswers') ?? 0;
      wrongAnswers = prefs.getInt('wrongAnswers') ?? 0;
    });
  }

  void _startTimer() {
    _timeRemaining = 45; // Timer set to 45 seconds
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_timeRemaining > 0) {
          _timeRemaining--;
        } else {
          timerEnded = true;
          _showBottomSheet(null);
          _timer.cancel();
        }
      });
    });
  }

  void _answerQuestion(String selectedAnswer) {
    if (_timer.isActive) _timer.cancel();

    bool isCorrect = selectedAnswer == questions[currentQuestionIndex].answer;

    setState(() {
      if (isCorrect) {
        correctAnswers++;
      } else {
        wrongAnswers++;
      }
      _saveData();
    });

    _showBottomSheet(isCorrect);
  }

  void _confirmAnswer(String selectedAnswer) {
    final textSize = ref.watch(textSizeProvider);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Ensures the sheet adjusts to content height
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Wrap(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Confirm your answer:',
                      style: TextStyle(
                        fontSize: textSize + 2,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "\"$selectedAnswer\"",
                      style: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontSize: textSize,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            _answerQuestion(selectedAnswer);
                          },
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                              fontSize: textSize,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // void _confirmAnswer(String selectedAnswer) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     builder: (BuildContext context) {
  //       return SingleChildScrollView(
  //         child: Container(
  //           padding: const EdgeInsets.all(16.0),
  //           child: IntrinsicHeight(
  //             child: Column(
  //               mainAxisSize: MainAxisSize.min,
  //               children: [
  //                 const Text(
  //                   'Confirm your answer:',
  //                   style: TextStyle(fontSize: 20.0),
  //                 ),
  //                 const SizedBox(height: 10),
  //                 Text(
  //                   "\"$selectedAnswer\"",
  //                   style: const TextStyle(
  //                     fontSize: 18.0,
  //                     fontWeight: FontWeight.bold,
  //                   ),
  //                 ),
  //                 const SizedBox(height: 20),
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                   children: [
  //                     ElevatedButton(
  //                       onPressed: () {
  //                         Navigator.of(context).pop();
  //                       },
  //                       child: const Text('Cancel'),
  //                     ),
  //                     ElevatedButton(
  //                       onPressed: () {
  //                         Navigator.of(context).pop();
  //                         _answerQuestion(selectedAnswer);
  //                       },
  //                       child: const Text('Confirm'),
  //                     ),
  //                   ],
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  void _showBottomSheet(bool? isCorrect) {
    final textSize = ref.watch(textSizeProvider) + 2;

    String message = isCorrect == null
        ? "Time's up!"
        : isCorrect
            ? "Correct!"
            : "Wrong!";

    Color messageColor = isCorrect == null
        ? Colors.red
        : isCorrect
            ? Colors.green
            : Colors.red;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Ensures full width and height control
      builder: (context) {
        return Container(
          width: double.infinity, // Takes up the full width of the screen
          padding: const EdgeInsets.all(16.0),
          height: 200, // Fixed height; can be adjusted if needed
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                message,
                style: TextStyle(
                  fontSize: textSize,
                  color: messageColor,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _nextQuestion,
                child: Text(
                  'Next Question',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: textSize,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _nextQuestion() {
    Navigator.of(context).pop();

    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
        _startTimer();
      } else {
        currentQuestionIndex = 0;
      }
      timerEnded = false;
      _saveData();
    });
  }

  void _saveData() {
    prefs.setInt('currentQuestionIndex', currentQuestionIndex);
    prefs.setInt('correctAnswers', correctAnswers);
    prefs.setInt('wrongAnswers', wrongAnswers);
  }

  void _resetQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      correctAnswers = 0;
      wrongAnswers = 0;
      timerEnded = false;
      _saveData();
      _startTimer();
    });
  }

  void _confirmReset() {
    final textSize = ref.watch(textSizeProvider) + 2;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Reset Quiz",
            style: TextStyle(
              fontSize: textSize + 3,
            ),
          ),
          content: Text(
            "Are you sure you want to clear your points?",
            style: TextStyle(
              fontSize: textSize + 1,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                "Cancel",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: textSize,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(
                "Reset",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: textSize,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                _resetQuiz();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  // Widget build(BuildContext context) {
  Widget build(BuildContext context) {
    // final currentTheme = ref.watch(themeNotifierProvider);
    final textSize = ref.watch(textSizeProvider);
    return Scaffold(
      appBar: const ZeetionaryAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: ConstantContainer(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total: ${correctAnswers + wrongAnswers}',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: textSize + 1,
                              ),
                            ),
                            Text(
                              'Correct: $correctAnswers',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: textSize + 1,
                              ),
                            ),
                            Text(
                              'Wrong: $wrongAnswers',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: textSize + 1,
                              ),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                    Theme.of(context).scaffoldBackgroundColor),
                              ),
                              onPressed: _confirmReset,
                              child: Text(
                                'Clear points',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: textSize + 1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: ConstantContainer(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 60.0,
                        horizontal: 18,
                      ),
                      child: Text(
                        '$_timeRemaining',
                        style: TextStyle(
                          fontSize: textSize + 1,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            ConstantContainer(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        questions[currentQuestionIndex].question,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: textSize + 3,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    for (var option in questions[currentQuestionIndex].options)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: ConstantContainer(
                          child: ElevatedButton(
                            onPressed: timerEnded
                                ? null
                                : () => _confirmAnswer(option),
                            style: ElevatedButton.styleFrom(
                              // backgroundColor: Colors.blue,
                              backgroundColor: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.05),
                            ),
                            child: Text(
                              option,
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: textSize + 2,
                                // backgroundColor: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: ConstantContainer(
      //   child: CustomFloatingActionButton(
      //     onPressed: _confirmReset,
      //   ),
      // ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}

class Question {
  final String question;
  final List<String> options;
  final String answer;

  Question(this.question, this.options, this.answer);
}
