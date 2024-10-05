// // screens\home_screen.dart

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:routemaster/routemaster.dart';
// import 'package:zeetionary/quiz/quiz_screen_three/quiz_progress_widget.dart';
// import 'package:zeetionary/quiz/quiz_screen_three/quiz_providers.dart';

// class HomeScreen extends ConsumerWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final questionsAsync = ref.watch(questionsProvider);
//     final answered = ref.watch(answeredQuestionsProvider);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Quiz App'),
//         // Removed ProgressWidget from AppBar
//       ),
//       body: questionsAsync.when(
//         data: (questions) {
//           // Check if all questions have been answered
//           if (answered.length == questions.length) {
//             return Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Show confirmation dialog
//                   showDialog(
//                     context: context,
//                     builder: (context) => AlertDialog(
//                       title: const Text('Reset Progress'),
//                       content: const Text(
//                           'Are you sure you want to reset your progress?'),
//                       actions: [
//                         TextButton(
//                           onPressed: () => Navigator.pop(context),
//                           child: const Text('Cancel'),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             ref
//                                 .read(answeredQuestionsProvider.notifier)
//                                 .reset();
//                             Navigator.pop(context);
//                           },
//                           child: const Text('Reset'),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//                 child: const Text('Reset Progress'),
//               ),
//             );
//           }

//           // Extract unique tags
//           final tags = questions.expand((q) => q.tags).toSet().toList();

//           return Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 // Move ProgressWidget inside Scaffold
//                 const ProgressWidget(),
//                 const SizedBox(height: 10),
//                 Expanded(
//                   child: GridView.builder(
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount:
//                           MediaQuery.of(context).size.width > 600 ? 4 : 2,
//                       mainAxisSpacing: 10,
//                       crossAxisSpacing: 10,
//                       childAspectRatio: 3,
//                     ),
//                     itemCount: tags.length,
//                     itemBuilder: (context, index) {
//                       final tag = tags[index];
//                       final isSelected =
//                           ref.watch(selectedTagsProvider).contains(tag);
//                       return GestureDetector(
//                         onTap: () {
//                           final notifier =
//                               ref.read(selectedTagsProvider.notifier);
//                           if (isSelected) {
//                             notifier.state = List.from(notifier.state)
//                               ..remove(tag);
//                           } else {
//                             notifier.state = List.from(notifier.state)
//                               ..add(tag);
//                           }
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: isSelected
//                                 ? Colors.blueAccent
//                                 : Colors.grey[300],
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           child: Center(
//                             child: Text(
//                               tag.replaceAll('_', ' ').toUpperCase(),
//                               style: TextStyle(
//                                 color: isSelected ? Colors.white : Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: ref.watch(selectedTagsProvider).isEmpty
//                       ? null
//                       : () {
//                           // Navigate to Quiz Screen
//                           Routemaster.of(context).push('/quiz');
//                         },
//                   style: ElevatedButton.styleFrom(
//                     minimumSize: const Size(double.infinity, 50),
//                   ),
//                   child: const Text("Let's Start the Quiz"),
//                 ),
//               ],
//             ),
//           );
//         },
//         loading: () => const Center(child: CircularProgressIndicator()),
//         error: (err, stack) => Center(child: Text('Error: $err')),
//       ),
//     );
//   }
// }
