// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:zeetionary/constants.dart';

// // Key for storing text size in SharedPreferences
// const String textSizeKey = 'textSize';

// class TextSizeState extends StateNotifier<double> {
//   TextSizeState() : super(15.0); // Default text size

//   void updateTextSize(double newSize) {
//     state = newSize;
//     _saveTextSize(newSize); // Save text size to SharedPreferences
//   }

//   // Load text size from SharedPreferences
//   Future<void> loadTextSize() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final stringValue = prefs.getString(textSizeKey);

//       if (stringValue != null) {
//         state = double.parse(stringValue);
//       } else {
//         // If the saved value is null, use the default text size
//         state = 15.0;
//       }
//     } catch (error) {
//       // If an error occurs, print it and set the state to the default text size
//       print('Error loading text size: $error');
//       state = 15.0;
//     }
//   }

//   // Save text size to SharedPreferences
//   Future<void> _saveTextSize(double size) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString(textSizeKey, size.toString());
//   }
// }

// // Default value for text size
// final textSizeProvider = StateNotifierProvider<TextSizeState, double>((ref) {
//   final textSizeState = TextSizeState();
//   textSizeState.loadTextSize(); // Load text size from SharedPreferences
//   return textSizeState;
// });

// // Function to update text size
// void updateTextSize(WidgetRef ref, double newSize) {
//   final textSizeState = ref.read(textSizeProvider.notifier);
//   textSizeState.updateTextSize(newSize);
// }

// class TextSizeSlider extends StatefulWidget {
//   final double value;
//   final ValueChanged<double> onChanged;

//   const TextSizeSlider({
//     Key? key,
//     required this.value,
//     required this.onChanged,
//   }) : super(key: key);

//   @override
//   _TextSizeSliderState createState() => _TextSizeSliderState();
// }

// class _TextSizeSliderState extends State<TextSizeSlider> {
//   late double _value;

//   @override
//   void initState() {
//     super.initState();
//     _value = widget.value;
//   }

//   void setValue(double newValue) {
//     setState(() {
//       _value = newValue;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Slider(
//       value: _value,
//       min: 10,
//       max: 20,
//       divisions: 20,
//       onChanged: (newValue) {
//         widget.onChanged(newValue);
//         setValue(newValue);
//       },
//     );
//   }
// }

// class SettingsPage extends ConsumerWidget {
//   const SettingsPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final isSliderExpanded = ref.watch(isSliderExpandedProvider);

//     return Scaffold(
//       appBar: const ZeetionaryAppbar(),
//       body: Column(
//         children: [
//           ExpansionTile(
//             title: const Text('Text Size'),
//             initiallyExpanded: isSliderExpanded,
//             onExpansionChanged: (expanded) =>
//                 ref.read(isSliderExpandedProvider.notifier).state = expanded,
//             children: [
//               const SizedBox(
//                 height: 10,
//               ),
//               SliderTheme(
//                 data: SliderThemeData(
//                   activeTrackColor: Colors.blue.withOpacity(0.8),
//                   inactiveTrackColor:
//                       Theme.of(context).primaryColor.withOpacity(0.3),
//                   thumbColor: Theme.of(context).primaryColor.withOpacity(0.7),
//                   overlayColor: Theme.of(context).primaryColor.withOpacity(0.6),
//                   thumbShape:
//                       const RoundSliderThumbShape(enabledThumbRadius: 8),
//                 ),
//                 child: TextSizeSlider(
//                   value: ref.watch(textSizeProvider),
//                   onChanged: (newSize) => updateTextSize(ref, newSize),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Provider for managing slider expansion state
// final isSliderExpandedProvider = StateProvider<bool>((ref) => true);

