// // services\storage_service.dart

// import 'package:shared_preferences/shared_preferences.dart';

// class StorageService {
//   static const String answeredQuestionsKey = 'answered_questions';
//   static const String correctAnswersKey = 'correct_answers';
//   static const String wrongAnswersKey = 'wrong_answers';
//   static const String totalAnsweredKey = 'total_answered';

//   Future<Set<int>> getAnsweredQuestions() async {
//     final prefs = await SharedPreferences.getInstance();
//     final ids = prefs.getStringList(answeredQuestionsKey) ?? [];
//     return ids.map(int.parse).toSet();
//   }

//   Future<void> addAnsweredQuestion(int id, bool isCorrect) async {
//     final prefs = await SharedPreferences.getInstance();
//     final ids = prefs.getStringList(answeredQuestionsKey) ?? [];
//     if (!ids.contains(id.toString())) {
//       ids.add(id.toString());
//       await prefs.setStringList(answeredQuestionsKey, ids);
//     }

//     // Update correct/wrong counts
//     if (isCorrect) {
//       final correct = prefs.getInt(correctAnswersKey) ?? 0;
//       await prefs.setInt(correctAnswersKey, correct + 1);
//     } else {
//       final wrong = prefs.getInt(wrongAnswersKey) ?? 0;
//       await prefs.setInt(wrongAnswersKey, wrong + 1);
//     }

//     // Update total answered
//     final total = prefs.getInt(totalAnsweredKey) ?? 0;
//     await prefs.setInt(totalAnsweredKey, total + 1);
//   }

//   Future<int> getCorrectAnswers() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getInt(correctAnswersKey) ?? 0;
//   }

//   Future<int> getWrongAnswers() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getInt(wrongAnswersKey) ?? 0;
//   }

//   Future<int> getTotalAnswered() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getInt(totalAnsweredKey) ?? 0;
//   }

//   Future<void> reset() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.remove(answeredQuestionsKey);
//     await prefs.remove(correctAnswersKey);
//     await prefs.remove(wrongAnswersKey);
//     await prefs.remove(totalAnsweredKey);
//   }
// }
