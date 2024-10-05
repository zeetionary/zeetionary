// // lib/widgets/question_widget.dart

// import 'package:flutter/material.dart';
// import 'package:youtube_player_iframe/youtube_player_iframe.dart';
// import 'package:zeetionary/quiz/quiz_screen.dart';
// import 'package:zeetionary/quiz/quiz_screen_three/quiz_question.dart';

// class QuestionWidget extends StatefulWidget {
//   final Question question;
//   final Function(String?) onAnswer;
//   final bool isLocked;

//   const QuestionWidget({
//     super.key,
//     required this.question,
//     required this.onAnswer,
//     this.isLocked = false,
//   });

//   @override
//   _QuestionWidgetState createState() => _QuestionWidgetState();
// }

// class _QuestionWidgetState extends State<QuestionWidget> {
//   final TextEditingController _textController = TextEditingController();
//   String? _userInput;
//   YoutubePlayerController? _youtubeController;

//   @override
//   void initState() {
//     super.initState();
//     if ((widget.question.type == QuestionType.videoFillInBlank ||
//             widget.question.type == QuestionType.videoOptions) &&
//         widget.question.videoId != null &&
//         widget.question.start != null &&
//         widget.question.end != null) {
//       _youtubeController = YoutubePlayerController.fromVideoId(
//         videoId: widget.question.videoId!,
//         startSeconds: widget.question.start!.toDouble(),
//         endSeconds: widget.question.end!.toDouble(),
//         autoPlay: true,
//         params: const YoutubePlayerParams(
//           enableCaption: false,
//           captionLanguage: 'en',
//           loop: true,
//           enableKeyboard: false,
//           mute: false,
//           showFullscreenButton: false,
//           showVideoAnnotations: false,
//           showControls: false,
//           strictRelatedVideos: false,
//         ),
//       );
//     }
//   }

//   @override
//   void dispose() {
//     _textController.dispose();
//     _youtubeController?.close();
//     super.dispose();
//   }

//   void _submitAnswer(String? answer) {
//     if (widget.isLocked) return;
//     widget.onAnswer(answer);
//     _textController.clear();
//     _userInput = null;
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (widget.question.type == QuestionType.multipleChoice) {
//       final options = List<String>.from(widget.question.options!);
//       options.shuffle();

//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(widget.question.question,
//               style:
//                   const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//           const SizedBox(height: 20),
//           Expanded(
//             child: ListView.builder(
//               itemCount: options.length,
//               itemBuilder: (context, index) {
//                 final option = options[index];
//                 return GestureDetector(
//                   onTap: widget.isLocked ? null : () => _submitAnswer(option),
//                   child: Card(
//                     elevation: 2,
//                     margin: const EdgeInsets.symmetric(vertical: 8),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8)),
//                     child: Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: Text(option,
//                           style: TextStyle(
//                               fontSize: 18,
//                               color: widget.isLocked
//                                   ? Colors.grey
//                                   : Colors.black)),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       );
//     } else if (widget.question.type == QuestionType.fillInBlank) {
//       return _buildFillInBlank();
//     } else if (widget.question.type == QuestionType.videoFillInBlank) {
//       return _buildVideoFillInBlank();
//     } else if (widget.question.type == QuestionType.videoOptions) {
//       return _buildVideoOptions();
//     } else {
//       return const SizedBox.shrink();
//     }
//   }

//   Widget _buildFillInBlank() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(widget.question.question,
//             style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//         const SizedBox(height: 20),
//         TextField(
//           controller: _textController,
//           decoration: const InputDecoration(
//               labelText: 'Your Answer', border: OutlineInputBorder()),
//           enabled: !widget.isLocked,
//           onChanged: (value) {
//             if (!widget.isLocked) {
//               setState(() {
//                 _userInput = value;
//               });
//             }
//           },
//           onSubmitted:
//               widget.isLocked ? null : (value) => _submitAnswer(_userInput),
//         ),
//         const SizedBox(height: 10),
//         ElevatedButton(
//           onPressed: (widget.isLocked ||
//                   _userInput == null ||
//                   _userInput!.trim().isEmpty)
//               ? null
//               : () => _submitAnswer(_userInput),
//           style: ElevatedButton.styleFrom(
//               minimumSize: const Size(double.infinity, 50)),
//           child: const Text('Submit'),
//         ),
//       ],
//     );
//   }

//   Widget _buildVideoFillInBlank() {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             widget.question.question,
//             style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 20),
//           TextField(
//             controller: _textController,
//             decoration: const InputDecoration(
//               labelText: 'Your Answer',
//               border: OutlineInputBorder(),
//             ),
//             enabled: !widget.isLocked,
//             onChanged: (value) {
//               if (!widget.isLocked) {
//                 setState(() {
//                   _userInput = value;
//                 });
//               }
//             },
//             onSubmitted:
//                 widget.isLocked ? null : (value) => _submitAnswer(_userInput),
//           ),
//           const SizedBox(height: 10),
//           ElevatedButton(
//             onPressed: (widget.isLocked ||
//                     _userInput == null ||
//                     _userInput!.trim().isEmpty)
//                 ? null
//                 : () => _submitAnswer(_userInput),
//             style: ElevatedButton.styleFrom(
//               minimumSize: const Size(double.infinity, 50),
//             ),
//             child: const Text('Submit'),
//           ),
//           const SizedBox(height: 20),
//           if (_youtubeController != null)
//             SizedBox(
//               height: 300,
//               width: double.infinity,
//               child: QuestionsYoutubePlayer(
//                 key: ValueKey(widget.question.videoId),
//                 question: widget.question,
//               ),
//             ),
//         ],
//       ),
//     );
//   }

//   Widget _buildVideoOptions() {
//     final options = List<String>.from(widget.question.options!);
//     options.shuffle(); // Shuffle options for this question type

//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             widget.question.question,
//             style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 20),
//           ListView.builder(
//             itemCount: options.length,
//             shrinkWrap: true, // Important to avoid height issues
//             physics:
//                 const NeverScrollableScrollPhysics(), // Disable inner scrolling
//             itemBuilder: (context, index) {
//               final option = options[index];
//               return GestureDetector(
//                 onTap: widget.isLocked ? null : () => _submitAnswer(option),
//                 child: Card(
//                   elevation: 2,
//                   margin: const EdgeInsets.symmetric(vertical: 8),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Text(
//                       option,
//                       style: TextStyle(
//                         fontSize: 18,
//                         color: widget.isLocked ? Colors.grey : Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//           const SizedBox(height: 20),
//           if (_youtubeController != null)
//             SizedBox(
//               height: 300,
//               width: double.infinity,
//               child: QuestionsYoutubePlayer(
//                 key: ValueKey(widget.question
//                     .videoId), // Change this to your unique identifier for videos
//                 question: widget.question,
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }