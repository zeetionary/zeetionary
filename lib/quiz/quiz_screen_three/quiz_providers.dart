// // providers\providers.dart

// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'dart:convert';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:zeetionary/quiz/quiz_screen.dart';
// import 'package:zeetionary/quiz/quiz_screen_three/quiz_storage_service.dart';

// // Provider to load questions from JSON
// final questionsProvider = FutureProvider<List<Question>>((ref) async {
//   final String response = await rootBundle.loadString('assets/questions.json');
//   final List<dynamic> data = json.decode(response);
//   return data.map((json) => Question.fromJson(json)).toList();
// });

// // Provider for selected tags
// final selectedTagsProvider = StateProvider<List<String>>((ref) => []);

// // Provider for answered question IDs
// final answeredQuestionsProvider = StateNotifierProvider<AnsweredQuestionsNotifier, Set<int>>((ref) {
//   final storageService = ref.watch(storageServiceProvider);
//   return AnsweredQuestionsNotifier(storageService);
// });

// // Notifier for answered questions
// class AnsweredQuestionsNotifier extends StateNotifier<Set<int>> {
//   final StorageService storageService;
//   int correctAnswers = 0; // Track correct answers
//   int wrongAnswers = 0; // Track wrong answers

//   AnsweredQuestionsNotifier(this.storageService) : super({}) {
//     loadAnsweredQuestions();
//   }

//   Future<void> loadAnsweredQuestions() async {
//     state = await storageService.getAnsweredQuestions();
//   }

//   Future<void> addAnsweredQuestion(int id, bool isCorrect) async {
//     state = {...state, id};
//     await storageService.addAnsweredQuestion(id, isCorrect);

//     // Update the counts based on the correctness
//     if (isCorrect) {
//       correctAnswers++;
//     } else {
//       wrongAnswers++;
//     }
//   }

//   Future<void> reset() async {
//     state = {};
//     correctAnswers = 0; // Reset correct answers count
//     wrongAnswers = 0; // Reset wrong answers count
//     await storageService.reset();
//   }

//   int getCorrectAnswers() => correctAnswers;
//   int getWrongAnswers() => wrongAnswers;
// }

// // Provider for storage service
// final storageServiceProvider = Provider<StorageService>((ref) {
//   return StorageService();
// });
