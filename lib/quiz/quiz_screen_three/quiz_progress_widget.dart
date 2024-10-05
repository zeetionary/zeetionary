// // widgets\progress_widget.dart

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:zeetionary/quiz/quiz_screen_three/quiz_providers.dart';

// class ProgressWidget extends ConsumerWidget {
//   const ProgressWidget({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return const Padding(
//       padding: EdgeInsets.all(16.0),
//       child: Column(
//         children: [
//           // Statistics Row
//           TotalPointsAndAnswers(),
//           SizedBox(height: 10),
//           // Reset Button
//           ClearPointsWidgets(),
//         ],
//       ),
//     );
//   }
// }

// class TotalPointsAndAnswers extends ConsumerWidget {
//   const TotalPointsAndAnswers({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final answeredQuestions = ref.watch(answeredQuestionsProvider);
//     ref.watch(storageServiceProvider);

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         _buildStat('Total', answeredQuestions.length.toString(), Colors.blue),
//         const SizedBox(
//           width: 20,
//         ),
//         _buildStat(
//             'Correct',
//             ref
//                 .watch(answeredQuestionsProvider.notifier)
//                 .getCorrectAnswers()
//                 .toString(),
//             Colors.green),
//         const SizedBox(
//           width: 20,
//         ),
//         _buildStat(
//             'Wrong',
//             ref
//                 .watch(answeredQuestionsProvider.notifier)
//                 .getWrongAnswers()
//                 .toString(),
//             Colors.red),
//       ],
//     );
//   }

//   Widget _buildStat(String label, String count, Color color) {
//     return Column(
//       children: [
//         Text(
//           count,
//           style: TextStyle(
//               fontSize: 18, color: color, fontWeight: FontWeight.bold),
//         ),
//         Text(
//           label,
//           style: TextStyle(fontSize: 14, color: color),
//         ),
//       ],
//     );
//   }
// }

// class ClearPointsWidgets extends ConsumerWidget {
//   const ClearPointsWidgets({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return ElevatedButton.icon(
//       onPressed: () {
//         // Show confirmation dialog
//         showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             title: const Text('Reset Progress'),
//             content:
//                 const Text('Are you sure you want to reset your progress?'),
//             actions: [
//               TextButton(
//                 onPressed: () => Navigator.pop(context),
//                 child: const Text('Cancel'),
//               ),
//               TextButton(
//                 onPressed: () {
//                   ref.read(answeredQuestionsProvider.notifier).reset();
//                   Navigator.pop(context);
//                 },
//                 child: const Text('Reset'),
//               ),
//             ],
//           ),
//         );
//       },
//       icon: const Icon(Icons.refresh),
//       label: const Text('Reset Progress'),
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.redAccent,
//       ),
//     );
//   }
// }