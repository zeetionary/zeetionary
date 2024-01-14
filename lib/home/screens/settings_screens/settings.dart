import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:zeetionary/theme/pallete.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/constants.dart';
// import 'dart:ui' as ui; // Add this import

// Theme Provider (zee; created system follow theme) https://chat.openai.com/c/e0708e57-3dee-4ffb-91b0-2b6358190057

// Theme Provider
final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) {
  return ThemeNotifier();
});

class ThemeNotifier extends StateNotifier<ThemeMode> {
  ThemeNotifier() : super(ThemeMode.system) {
    _loadTheme();
  }

  void setThemeMode(ThemeMode themeMode) {
    state = themeMode;
    _saveTheme(themeMode);
  }

  Future<void> _saveTheme(ThemeMode themeMode) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('theme', themeMode.toString());
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final savedTheme = prefs.getString('theme');

    if (savedTheme != null) {
      state = ThemeMode.values.firstWhere(
        (mode) => mode.toString() == savedTheme,
        orElse: () => ThemeMode.system,
      );
    }
  }
}

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
    final themeNotifier = ref.read(themeProvider.notifier);
    final themeMode = ref.watch(themeProvider);

    return Scaffold(
      appBar: const ZeetionaryAppbar(),
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
          const SizedBox(
            height: 20,
          ),
          ExpansionTile(
            title: const Text('Select Theme'),
            initiallyExpanded: false,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: ThemeMode.values.map((mode) {
                    return ElevatedButton(
                      onPressed: () {
                        themeNotifier.setThemeMode(mode);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: themeMode == mode ? Colors.blue : null,
                      ),
                      child: Text(_getThemeDisplayName(mode)),
                    );
                  }).toList(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  String _getThemeDisplayName(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.system:
        return 'System';
      case ThemeMode.light:
        return 'Light';
      case ThemeMode.dark:
        return 'Dark';
      default:
        return '';
    }
  }
}

// Provider for managing slider expansion state
final isSliderExpandedProvider = StateProvider<bool>((ref) => false);
