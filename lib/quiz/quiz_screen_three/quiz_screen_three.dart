// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:routemaster/routemaster.dart';
// import 'package:zeetionary/quiz/quiz_screen.dart';
// import 'package:zeetionary/quiz/quiz_screen_three/quiz_progress_widget.dart';
// import 'package:zeetionary/quiz/quiz_screen_three/quiz_providers.dart';
// import 'package:zeetionary/quiz/quiz_screen_three/quiz_question_widget.dart';
// import 'package:zeetionary/quiz/quiz_screen_three/quiz_timer_widget.dart';

// class QuizScreen extends ConsumerStatefulWidget {
//   const QuizScreen({super.key});

//   @override
//   _QuizScreenState createState() => _QuizScreenState();
// }

// class _QuizScreenState extends ConsumerState<QuizScreen> {
//   late List<Question> _filteredQuestions;
//   int _currentIndex = 0;
//   bool _isLoading = true;
//   bool _hasAnswered =
//       false; // Flag to track if the question has been answered or time is up

//   @override
//   void initState() {
//     super.initState();
//     _loadQuestions();
//   }

//   Future<void> _loadQuestions() async {
//     final questions = await ref.read(questionsProvider.future);
//     final selectedTags = ref.read(selectedTagsProvider);

//     // Filter questions based on selected tags and not answered
//     final answered = ref.read(answeredQuestionsProvider);
//     _filteredQuestions = questions
//         .where((q) =>
//             q.tags.any((tag) => selectedTags.contains(tag)) &&
//             !answered.contains(q.id))
//         .toList();

//     // Shuffle the questions
//     _filteredQuestions.shuffle();

//     setState(() {
//       _isLoading = false;
//     });
//   }

//   void _handleAnswer(Question question, String userAnswer) {
//     if (_hasAnswered) return; // Prevent multiple answers
//     _hasAnswered = true; // Set the flag to prevent further answers

//     bool isCorrect =
//         userAnswer.trim().toLowerCase() == question.answer.trim().toLowerCase();

//     // Update storage and progress
//     ref
//         .read(answeredQuestionsProvider.notifier)
//         .addAnsweredQuestion(question.id, isCorrect);

//     // Show bottom sheet with feedback
//     showModalBottomSheet(
//       context: context,
//       isDismissible: false, // Correct parameter
//       enableDrag: false, // Prevent dragging to dismiss
//       builder: (context) => Container(
//         padding: const EdgeInsets.all(16),
//         height: 300,
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               isCorrect ? Icons.check_circle : Icons.cancel,
//               color: isCorrect ? Colors.green : Colors.red,
//               size: 60,
//             ),
//             const SizedBox(height: 10),
//             Text(
//               isCorrect ? 'Correct!' : 'Wrong!',
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             Wrap(
//               children: [
//                 const Text(
//                   'The correct answer is: ',
//                   style: TextStyle(
//                     fontSize: 18,
//                   ),
//                 ),
//                 Text(
//                   '${question.answer}',
//                   style: const TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             const Spacer(),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//                 _nextQuestion();
//               },
//               child: const Text('Next Question'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _nextQuestion() {
//     if (_currentIndex < _filteredQuestions.length - 1) {
//       setState(() {
//         _currentIndex++;
//         _hasAnswered = false; // Reset the flag for the next question
//       });
//     } else {
//       // Quiz completed
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: const Text('Quiz Completed'),
//           content: const Text('You have answered all selected questions.'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//                 Routemaster.of(context).pop();
//               },
//               child: const Text('OK'),
//             ),
//           ],
//         ),
//       );
//     }
//   }

//   void _onTimeUp() {
//     if (_hasAnswered) return; // Prevent multiple triggers
//     _hasAnswered = true; // Set the flag to prevent further answers

//     final currentQuestion = _filteredQuestions[_currentIndex];
//     // Show bottom sheet for time up
//     showModalBottomSheet(
//       context: context,
//       isDismissible: false,
//       enableDrag: false,
//       builder: (context) => Container(
//         padding: const EdgeInsets.all(16),
//         height: 300,
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Icon(
//               Icons.timer_off,
//               color: Colors.red,
//               size: 60,
//             ),
//             const SizedBox(height: 10),
//             const Text(
//               'Time is up!',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               'The correct answer is: ${currentQuestion.answer}',
//               style: const TextStyle(fontSize: 18),
//             ),
//             const Spacer(),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context);
//                 _nextQuestion();
//               },
//               child: const Text('Next Question'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_isLoading) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text('Quiz'),
//           // Removed ProgressWidget from AppBar
//         ),
//         body: const Center(child: CircularProgressIndicator()),
//       );
//     }

//     if (_filteredQuestions.isEmpty) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text('Quiz'),
//           // Removed ProgressWidget from AppBar
//         ),
//         body: const Center(
//           child: Text('No more questions available.'),
//         ),
//       );
//     }

//     final currentQuestion = _filteredQuestions[_currentIndex];

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Quiz'),
//         // Removed ProgressWidget from AppBar
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Move ProgressWidget inside Scaffold
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment
//                     .spaceBetween, // This will space out the widgets
//                 children: [
//                   // TotalPointsAndAnswers will be on the left
//                   const TotalPointsAndAnswers(),

//                   // TimerWidget will be on the right
//                   TimerWidget(
//                     key: ValueKey(currentQuestion.id),
//                     duration: 4500,
//                     onTimeUp: _onTimeUp,
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 20),
//             Expanded(
//               child: AbsorbPointer(
//                 absorbing:
//                     _hasAnswered, // Disable interactions if answered or time is up
//                 child: QuestionWidget(
//                   question: currentQuestion,
//                   onAnswer: (answer) => _handleAnswer(currentQuestion, answer!),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
