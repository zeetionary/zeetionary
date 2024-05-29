import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
// import 'package:zeetionary/theme/pallete.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/firebase/features/auth/controller/auth_controller.dart';
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

// control text size
// control text size
// control text size
// control text size
// control text size
// control text size
// control text size

// Key for storing text size in SharedPreferences
const String textSizeKey = 'textSize';

class TextSizeState extends StateNotifier<double> {
  TextSizeState() : super(14.0); // Default text size

  void updateTextSize(double newSize) {
    state = newSize;
    _saveTextSize(newSize); // Save text size to SharedPreferences
  }

  // Load text size from SharedPreferences
  Future<void> loadTextSize() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final stringValue = prefs.getString(textSizeKey);

      if (stringValue != null) {
        state = double.parse(stringValue);
      } else {
        // If the saved value is null, use the default text size
        state = 15.0;
      }
    } catch (error) {
      // If an error occurs, print it and set the state to the default text size
      print('Error loading text size: $error');
      state = 15.0;
    }
  }

  // Save text size to SharedPreferences
  Future<void> _saveTextSize(double size) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(textSizeKey, size.toString());
  }
}

// Default value for text size
final textSizeProvider = StateNotifierProvider<TextSizeState, double>((ref) {
  final textSizeState = TextSizeState();
  textSizeState.loadTextSize(); // Load text size from SharedPreferences
  return textSizeState;
});

// Function to update text size
void updateTextSize(WidgetRef ref, double newSize) {
  final textSizeState = ref.read(textSizeProvider.notifier);
  textSizeState.updateTextSize(newSize);
}

class TextSizeSlider extends StatefulWidget {
  final double value;
  final ValueChanged<double> onChanged;

  const TextSizeSlider({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  // _TextSizeSliderState createState() => _TextSizeSliderState();
  State<TextSizeSlider> createState() => _TextSizeSliderState();
}

class _TextSizeSliderState extends State<TextSizeSlider> {
  late double _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  void setValue(double newValue) {
    setState(() {
      _value = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _value,
      min: 12,
      max: 18,
      divisions: 14,
      onChanged: (newValue) {
        widget.onChanged(newValue);
        setValue(newValue);
      },
    );
  }
}

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  void logOut(WidgetRef ref) {
    ref.read(authControllerProvider.notifier).logout();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final textSize = ref.watch(textSizeProvider);
    final isSliderExpanded = ref.watch(isSliderExpandedProvider);
    final isLogoutExpanded = ref.watch(isLogoutExpandedProvider);
    final themeNotifier = ref.read(themeProvider.notifier);
    final themeMode = ref.watch(themeProvider);
    final textSize = ref.watch(textSizeProvider);

    return Scaffold(
      appBar: const ZeetionaryAppbar(),
      body: Column(
        children: [
          ExpansionTile(
            title: Text(
              'Text Size',
              style: TextStyle(
                fontSize: textSize + 2,
              ),
            ),
            initiallyExpanded: isSliderExpanded,
            onExpansionChanged: (expanded) =>
                ref.read(isSliderExpandedProvider.notifier).state = expanded,
            children: [
              const SizedBox(
                height: 10,
              ),
              SliderTheme(
                data: SliderThemeData(
                  activeTrackColor: Colors.blue.withOpacity(0.8),
                  inactiveTrackColor:
                      Theme.of(context).primaryColor.withOpacity(0.3),
                  thumbColor: Theme.of(context).primaryColor.withOpacity(0.7),
                  overlayColor: Theme.of(context).primaryColor.withOpacity(0.6),
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 8),
                ),
                child: TextSizeSlider(
                  value: ref.watch(textSizeProvider),
                  onChanged: (newSize) => updateTextSize(ref, newSize),
                ),
              ),
            ],
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          ExpansionTile(
            title: Text(
              'Select Theme',
              style: TextStyle(
                fontSize: textSize + 2,
              ),
              // style: TextStyle(
              //   color: Theme.of(context).primaryColor.withOpacity(0.9),
              // ),
            ),
            initiallyExpanded: true,
            children: [
              const SizedBox(
                height: 10,
              ),
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
                        backgroundColor: themeMode == mode
                            ? Colors.blue.withOpacity(0.4)
                            : null,
                        // : Colors.blue.withOpacity(0.2),
                      ),
                      child: Text(
                        _getThemeDisplayName(mode),
                        style: TextStyle(
                          fontSize: textSize - 2,
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.9),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          // const SizedBox(
          //   height: 30,
          // ),
          ExpansionTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
            title: Text(
              'Log Out',
              style: TextStyle(
                fontSize: textSize + 2,
                color: Colors.red,
              ),
            ),
            initiallyExpanded: isLogoutExpanded,
            onExpansionChanged: (expanded) =>
                ref.read(isLogoutExpandedProvider.notifier).state = expanded,
            children: [
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  'Tap to log out',
                  style: TextStyle(
                    fontSize: textSize,
                    color: Colors.red,
                  ),
                ),
                // leading: const Icon(
                //   Icons.logout,
                //   color: Colors.red,
                // ),
                // onTap: () => logOut(ref),
                onTap: () {
                  logOut(ref);
                  Routemaster.of(context).pop("/settings-screen");
                },
              ),
            ],
          ),
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
final isSliderExpandedProvider = StateProvider<bool>((ref) => true);
final isLogoutExpandedProvider = StateProvider<bool>((ref) => false);
