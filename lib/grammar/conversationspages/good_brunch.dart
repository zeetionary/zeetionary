

// import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';

// class ConversationsGoodBrunch extends StatefulWidget {
//   const ConversationsGoodBrunch({super.key});

//   @override
//   _ConversationsGoodBrunchState createState() =>
//       _ConversationsGoodBrunchState();
// }

// class _ConversationsGoodBrunchState extends State<ConversationsGoodBrunch> {
//   final AudioPlayer _player = AudioPlayer();
//   Duration? _duration;

//   @override
//   void initState() {
//     super.initState();

//     _player.setAsset('conversations/audio.mp3').then((duration) {
//       setState(() {
//         _duration = duration;
//       });
//     }).catchError((error) {
//       print("Error loading audio: $error");
//     });
//   }

//   @override
//   void dispose() {
//     _player.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Audio Player SnackBar Example')),
//       body: const Center(child: Text('Your main content here')),
//       bottomSheet: Container(
//         color: Colors.grey[800],
//         height: 60,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             children: [
//               IconButton(
//                 icon: const Icon(Icons.play_arrow, color: Colors.white),
//                 onPressed: () => _player.play(),
//               ),
//               IconButton(
//                 icon: const Icon(Icons.pause, color: Colors.white),
//                 onPressed: () => _player.pause(),
//               ),
//               Expanded(
//                 child: StreamBuilder<Duration?>(
//                   stream: _player.positionStream,
//                   builder: (context, snapshot) {
//                     final position = snapshot.data ?? Duration.zero;
//                     return Slider(
//                       value: position.inSeconds.toDouble(),
//                       onChanged: (value) {
//                         _player.seek(Duration(seconds: value.toInt()));
//                       },
//                       min: 0,
//                       max: (_duration?.inSeconds ?? 0).toDouble(),
//                     );
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

// // import 'package:zeetionary/constants.dart';
// // import 'package:styled_text/styled_text.dart';

// // class ConversationsGoodBrunch extends StatelessWidget {
// //   const ConversationsGoodBrunch({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return SelectionArea(
// //       child: Scaffold(
// //         appBar: const ZeetionaryAppbar(),
// //         body: Center(
// //           child: SingleChildScrollView(
// //             padding: const EdgeInsets.symmetric(vertical: 32),
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: <Widget>[
// //                 StyledText(
// //                   text: 'Text with <red>red</red> action inside.',
// //                   tags: {
// //                     'red': StyledTextTag(
// //                       style: const TextStyle(color: Colors.red),
// //                     ),
// //                   },
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
