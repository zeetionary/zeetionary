import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// class UniversalTextSize extends ConsumerWidget {
//   // ignore: use_super_parameters
//   const UniversalTextSize({Key? key, required this.text}) : super(key: key);

//   final String text;

//   // (zee)  https://bard.google.com/chat/9a338e9ac8e0ad22

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final textSize =
//         ref.watch(textSizeProvider) + 5; // Add 5 to the base text size
//     return Text(text, style: TextStyle(fontSize: textSize));
//   }
// }

// final textSizeProvider = StateProvider<double>((ref) => 16.0);

final textSizeProvider =
    StateProvider<double>((ref) => 13.0); // Default value now 16

// Function to update text size
void updateTextSize(WidgetRef ref, double newSize) {
  ref.read(textSizeProvider.notifier).state = newSize;
}

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textSize = ref.watch(textSizeProvider);
    final isSliderExpanded = ref.watch(isSliderExpandedProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          ExpansionTile(
            title: const Text('Text Size'),
            initiallyExpanded: isSliderExpanded,
            onExpansionChanged: (expanded) =>
                ref.read(isSliderExpandedProvider.notifier).state = expanded,
            children: [
              SliderTheme(
                data: SliderThemeData(
                  activeTrackColor: Colors.blue,
                  inactiveTrackColor: Colors.grey[300],
                  thumbColor: Colors.blue,
                  overlayColor: Colors.blue.withOpacity(0.2),
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 12),
                ),
                child: Slider(
                  value: textSize,
                  min: 10,
                  max: 18,
                  divisions: 20, // Add divisions for numbered marks
                  label: textSize
                      .toStringAsFixed(1), // Show current value as a label
                  onChanged: (newSize) => updateTextSize(ref, newSize),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Provider for managing slider expansion state
final isSliderExpandedProvider = StateProvider<bool>((ref) => true);
