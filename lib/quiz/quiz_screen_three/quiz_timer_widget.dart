// import 'dart:async';
// import 'package:flutter/material.dart';

// class TimerWidget extends StatefulWidget {
//   final int duration; // in seconds
//   final VoidCallback onTimeUp;

//   const TimerWidget({
//     super.key,
//     required this.duration,
//     required this.onTimeUp,
//   });

//   @override
//   _TimerWidgetState createState() => _TimerWidgetState();
// }

// class _TimerWidgetState extends State<TimerWidget>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Timer _timer;
//   late int _remaining;

//   @override
//   void initState() {
//     super.initState();
//     _remaining = widget.duration;
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: widget.duration),
//     )..addListener(() {
//         setState(() {});
//       });

//     _controller.forward();

//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       if (_remaining <= 0) {
//         timer.cancel();
//         widget.onTimeUp(); // Invoke the callback when time is up
//       } else {
//         setState(() {
//           _remaining--;
//         });
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     _timer.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.center,
//       children: [
//         // Animated Circular Progress Indicator
//         SizedBox(
//           width: 50,
//           height: 50,
//           child: CircularProgressIndicator(
//             value: 1.0 - _controller.value,
//             strokeWidth: 6,
//             valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
//           ),
//         ),
//         // Remaining Time Text
//         Text(
//           '$_remaining',
//           style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }
// }
