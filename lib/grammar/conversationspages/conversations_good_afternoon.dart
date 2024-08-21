// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

// class ConversationsGoodAfternoon extends StatefulWidget {
//   const ConversationsGoodAfternoon({super.key});

//   @override
//   _ConversationsGoodAfternoonState createState() =>
//       _ConversationsGoodAfternoonState();
// }

// class _ConversationsGoodAfternoonState
//     extends State<ConversationsGoodAfternoon> {
//   final audioPlayer = AudioPlayer();

//   bool isPlaying = false;
//   Duration duration = Duration.zero;
//   Duration position = Duration.zero;

//   @override
//   void initState() {
//     super.initState();

//     setAudio();

//     // Listen to the player state changes
//     audioPlayer.onPlayerStateChanged.listen((state) {
//       setState(() {
//         isPlaying = state == PlayerState.playing;
//       });
//     });

//     // Listen to the duration changes
//     audioPlayer.onDurationChanged.listen((newDuration) {
//       setState(() {
//         duration = newDuration;
//       });
//     });

//     // Listen to the position changes
//     audioPlayer.onPositionChanged.listen((newPosition) {
//       setState(() {
//         position = newPosition;
//       });
//     });
//   }

//   Future setAudio() async {
//     audioPlayer.setReleaseMode(ReleaseMode.stop);

//     final player = AudioCache(prefix: 'assets/');
//     final file = await player.load('audio.mp3');
//     audioPlayer.setSourceDeviceFile(file.path);
//   }

//   @override
//   void dispose() {
//     audioPlayer.dispose();
//     super.dispose();
//   }

//   String formatTime(Duration duration) {
//     String twoDigits(int n) => n.toString().padLeft(2, '0');
//     final minutes = twoDigits(duration.inMinutes.remainder(60));
//     final seconds = twoDigits(duration.inSeconds.remainder(60));
//     return '$minutes:$seconds';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Good afternoon'),
//       ),
//       body: const Center(child: Text('Your main content here')),
//       bottomSheet: Container(
//         color: Colors.black,
//         height: 160,
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Slider(
//                 min: 0,
//                 max: duration.inSeconds.toDouble(),
//                 value: position.inSeconds.toDouble(),
//                 onChanged: (value) async {
//                   final newPosition = Duration(seconds: value.toInt());
//                   await audioPlayer.seek(newPosition);

//                   await audioPlayer.resume();
//                 },
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(formatTime(position)),
//                     Text(formatTime(duration - position)),
//                   ],
//                 ),
//               ),
//               CircleAvatar(
//                 radius: 35,
//                 child: IconButton(
//                   icon: Icon(
//                     isPlaying ? Icons.pause : Icons.play_arrow,
//                   ),
//                   iconSize: 50,
//                   onPressed: () async {
//                     if (isPlaying) {
//                       await audioPlayer.pause();
//                     } else {
//                       await audioPlayer.resume();
//                     }
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
