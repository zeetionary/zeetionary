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

//     // Listen to states: playing, paused, stopped
//     audioPlayer.onPlayerStateChanged.listen((state) {
//       setState(() {
//         isPlaying = state == PlayerState.playing;
//       });

//       /// Listen to audio duration
//       audioPlayer.onDurationChanged.listen((newDuration) {
//         setState(() {
//           duration = newDuration;
//         });

//         /// Listen to audio position
//         audioPlayer.onAudioPositionChanged.listen((newPosition) {
//           setState(() {
//             position = newPosition;
//           });
//         });
//       });
//     });
//   }

//   Future setAudio() async {
//     // Repeat song when completed
//     audioPlayer.setReleaseMode(ReleaseMode.loop);

//     /// Load audio from Assets (assets/audio.mp3)
//     final player = AudioCache(prefix: 'assets/');
//     final url = await player.load('audio.mp3');
//     audioPlayer.setUrl(url.path, isLocal: true);
//   }

//   @override
//   void dispose() {
//     audioPlayer.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Mini Player Example'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Slider(
//               min: 0,
//               max: duration.inSeconds.toDouble(),
//               value: position.inSeconds.toDouble(),
//               onChanged: (value) async {
//                 final position = Duration(
//                   seconds: value.toInt(),
//                 );
//                 await audioPlayer.seek(position);

//                 await audioPlayer.resume();
//               },
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(formatTime(position)),
//                   Text(
//                     formatTime(duration - position),
//                   ),
//                 ],
//               ),
//             ),
//             CircleAvatar(
//               radius: 35,
//               child: IconButton(
//                 icon: Icon(
//                   isPlaying ? Icons.pause : Icons.play_arrow,
//                 ),
//                 iconSize: 50,
//                 onPressed: () async {
//                   if (isPlaying) {
//                     await audioPlayer.pause();
//                   } else {
//                     await audioPlayer.resume();
//                   }
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
