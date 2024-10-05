// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:youtube_player_iframe/youtube_player_iframe.dart';
// import 'package:zeetionary/quiz/quiz_screen.dart';
// import 'package:zeetionary/quiz/quiz_screen_three/quiz_question.dart';

// class QuestionsYoutubePlayer extends StatefulWidget {
//   final Question question;

//   const QuestionsYoutubePlayer({super.key, required this.question});

//   @override
//   QuestionsYoutubePlayerState createState() => QuestionsYoutubePlayerState();
// }

// class QuestionsYoutubePlayerState extends State<QuestionsYoutubePlayer> {
//   late YoutubePlayerController _youtubeController;
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();
//     _initializePlayer();
//     _startPlaybackTimer();
//   }

//   void _initializePlayer() {
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

//   void _startPlaybackTimer() {
//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
//       final currentTime = await _youtubeController.currentTime;

//       // Check if current time exceeds end seconds
//       if (currentTime >= widget.question.end!.toDouble()) {
//         reloadVideo();
//       }
//     });
//   }

//   void reloadVideo() {
//     if ((widget.question.type == QuestionType.videoFillInBlank ||
//             widget.question.type == QuestionType.videoOptions) &&
//         widget.question.videoId != null &&
//         widget.question.start != null &&
//         widget.question.end != null) {
//       _youtubeController.loadVideoById(
//         videoId: widget.question.videoId!,
//         startSeconds: widget.question.start!.toDouble(),
//         endSeconds: widget.question.end!.toDouble(),
//       );
//     }
//   }

//   @override
//   void dispose() {
//     _timer?.cancel(); // Cancel the timer when disposing
//     _youtubeController.close();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: QuestionsYouTubeVideosScaffold(
//         controller: _youtubeController,
//         onReloadVideo: reloadVideo,
//       ),
//     );
//   }
// }

// //

// ///
// ///
// ///
// ///
// ///
// ///
// ///
// ///
// ///
// ///
// ///

// class QuestionsYouTubeVideosScaffold extends StatelessWidget {
//   final YoutubePlayerController controller;
//   final VoidCallback onReloadVideo;

//   const QuestionsYouTubeVideosScaffold({
//     super.key,
//     required this.controller,
//     required this.onReloadVideo,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StatefulBuilder(
//         builder: (context, setState) {
//           return YouTubeVideosContainerEnd(
//             controller: controller,
//             onReloadVideo: onReloadVideo,
//           );
//         },
//       ),
//     );
//   }
// }

// class YouTubeVideosContainerEnd extends StatelessWidget {
//   final YoutubePlayerController controller;
//   final VoidCallback onReloadVideo;

//   const YouTubeVideosContainerEnd({
//     super.key,
//     required this.controller,
//     required this.onReloadVideo,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           Container(
//             margin: const EdgeInsets.only(top: 2.0, left: 2, right: 2),
//             padding: const EdgeInsets.all(2.0),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(12.0),
//               child: YoutubePlayer(
//                 controller: controller,
//                 aspectRatio: 16 / 9,
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: onReloadVideo,
//             child: Icon(
//               Icons.replay,
//               color: Theme.of(context).primaryColor,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }