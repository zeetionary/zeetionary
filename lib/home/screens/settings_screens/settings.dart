// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
// import 'package:zeetionary/theme/pallete.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/firebase/core/utils.dart';
import 'package:zeetionary/firebase/features/auth/controller/auth_controller.dart';
// import 'dart:ui' as ui; // Add this import

//
//
//
//
//
//
//
//

// Define supported languages
enum AppLanguage { english, kurdish }

// LanguageNotifier manages the current language state
// LanguageNotifier manages the current language state and saves to SharedPreferences
class LanguageNotifier extends StateNotifier<AppLanguage> {
  LanguageNotifier() : super(AppLanguage.english) {
    _loadLanguageFromPrefs(); // Load the language from SharedPreferences on init
  }

  Future<void> _loadLanguageFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? languageCode = prefs.getString('app_language');

    if (languageCode != null) {
      state =
          languageCode == 'english' ? AppLanguage.english : AppLanguage.kurdish;
    }
  }

  Future<void> _saveLanguageToPrefs(AppLanguage language) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('app_language',
        language == AppLanguage.english ? 'english' : 'kurdish');
  }

  void setLanguage(AppLanguage language) {
    state = language;
    _saveLanguageToPrefs(language); // Save to SharedPreferences
  }
}

// Define a provider for the LanguageNotifier
final languageProvider = StateNotifierProvider<LanguageNotifier, AppLanguage>(
  (ref) => LanguageNotifier(),
);

//
//
//
//
//
//
//
//

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
    return Slider.adaptive(
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

  Future<void> deleteAccount(BuildContext context, WidgetRef ref) async {
    final user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      try {
        await user.delete();
        if (!context.mounted) return;
        showSnackBar(context, "Account deleted successfully");
        Routemaster.of(context).replace('/');
      } catch (e) {
        showSnackBar(context, "Failed to delete account: $e");
      }
    }
  }

  void showDeleteConfirmationDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final textSize = ref.watch(textSizeProvider) + 2;

        final language = ref.watch(languageProvider);
        final isKurdish = language == AppLanguage.kurdish;

        Alignment alignment = language == AppLanguage.english
            ? Alignment.topLeft
            : Alignment.topRight;

        // Determine text direction based on language
        TextDirection textDirection = language == AppLanguage.english
            ? TextDirection.ltr
            : TextDirection.rtl;

        return Align(
          alignment: alignment,
          child: Directionality(
            textDirection: textDirection,
            child: AlertDialog(
              title: Text(
                isKurdish ? 'هەژمار بسڕەوە' : 'Delete Account',
                style: TextStyle(
                  fontSize: textSize + 2,
                ),
              ),
              content: Text(
                isKurdish
                    ? 'سڕینەوەی هەژمار هەمیشەییە. کڕینی ئەپەکە لەدەست دەدەیت'
                    : """Account deletion is permanent. You will lose your purchase of the app.""",
                style: TextStyle(
                  fontSize: textSize,
                ),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    isKurdish ? 'مەیسڕەوە' : 'Do not delete',
                    style: TextStyle(
                      fontSize: textSize,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.of(context).pop();
                    deleteAccount(context, ref);
                    // Routemaster.of(context).pop("/settings-screen");
                    Routemaster.of(context).replace("/");
                  },
                  child: Text(
                    isKurdish ? 'بیسڕەوە' : 'Delete it',
                    style: TextStyle(
                      fontSize: textSize,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final textSize = ref.watch(textSizeProvider);
    final isSliderExpanded = ref.watch(isSliderExpandedProvider);
    final isLogoutExpanded = ref.watch(isLogoutExpandedProvider);
    final themeNotifier = ref.read(themeProvider.notifier);
    final themeMode = ref.watch(themeProvider);
    final textSize = ref.watch(textSizeProvider);

    final language = ref.watch(languageProvider);
    final isKurdish = language == AppLanguage.kurdish;

    Alignment alignment = language == AppLanguage.english
        ? Alignment.topLeft
        : Alignment.topRight;

    // Determine text direction based on language
    TextDirection textDirection =
        language == AppLanguage.english ? TextDirection.ltr : TextDirection.rtl;

    // Alignment alignmenttwo = language == AppLanguage.english
    //     ? Alignment.topRight
    //     : Alignment.topLeft;

    // Language options
    // final languages = {
    //   AppLanguage.english: 'English',
    //   AppLanguage.kurdish: 'کوردی',
    // };

    // Define the drawer
    // final drawer = AppDrawer();

    // // Language options
    // final languages = {
    //   AppLanguage.english: 'English',
    //   AppLanguage.kurdish: 'کوردی',
    // };

    return Scaffold(
      appBar: const ZeetionaryAppbar(),
      body: Column(
        children: [
          Align(
            alignment: alignment,
            child: Directionality(
              textDirection: textDirection,
              child: ExpansionTile(
                iconColor: Theme.of(context).primaryColor,
                leading: Icon(
                  Icons.text_increase,
                  // Icons.text_fields,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  isKurdish ? 'قەبارەی وشە' : 'Text Size',
                  style: TextStyle(
                    fontSize: textSize + 2,
                  ),
                ),
                initiallyExpanded: isSliderExpanded,
                onExpansionChanged: (expanded) => ref
                    .read(isSliderExpandedProvider.notifier)
                    .state = expanded,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: Colors.blue.withOpacity(0.8),
                      inactiveTrackColor:
                          Theme.of(context).primaryColor.withOpacity(0.3),
                      thumbColor:
                          Theme.of(context).primaryColor.withOpacity(0.7),
                      overlayColor:
                          Theme.of(context).primaryColor.withOpacity(0.6),
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
            ),
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          Align(
            alignment: alignment,
            child: Directionality(
              textDirection: textDirection,
              child: ExpansionTile(
                iconColor: Theme.of(context).primaryColor,
                leading: Icon(
                  Icons.dark_mode,
                  // Icons.wb_sunny,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  isKurdish ? 'دۆخ هەڵبژێرە' : 'Select Theme',
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
                            _getThemeDisplayName(mode, language),
                            style: TextStyle(
                              fontSize: textSize - 2,
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.9),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //
          //
          //
          //
          Align(
            alignment: alignment,
            child: Directionality(
              textDirection: textDirection,
              child: ExpansionTile(
                iconColor: Theme.of(context).primaryColor,
                leading: Icon(
                  Icons.text_increase,
                  // Icons.text_fields,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  isKurdish ? 'زمان' : 'Language',
                  style: TextStyle(
                    fontSize: textSize + 2,
                  ),
                ),
                initiallyExpanded: isSliderExpanded,
                onExpansionChanged: (expanded) => ref
                    .read(isSliderExpandedProvider.notifier)
                    .state = expanded,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: AppLanguage.values.map((lang) {
                        return ElevatedButton(
                          onPressed: () {
                            ref
                                .read(languageProvider.notifier)
                                .setLanguage(lang);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: language == lang
                                ? (lang == AppLanguage.english
                                    ? Colors.blue.withOpacity(0.4)
                                    // : null)
                                    : Colors.blue.withOpacity(0.4))
                                : null,
                          ),
                          child: Text(
                            lang == AppLanguage.english ? 'English' : 'کوردی',
                            style: TextStyle(
                              fontSize: textSize - 2,
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.9),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // const SizedBox(
          //   height: 30,
          // ),
          Align(
            alignment: alignment,
            child: Directionality(
              textDirection: textDirection,
              child: ExpansionTile(
                iconColor: Theme.of(context).primaryColor,
                leading: Transform(
                  alignment: Alignment.center,
                  transform: isKurdish
                      ? Matrix4.rotationY(3.14159)
                      : Matrix4.identity(),
                  child: const Icon(
                    Icons.logout,
                    color: Colors.red,
                  ),
                ),
                title: Text(
                  isKurdish
                      ? 'بچۆ دەرەوە یان هەژمارەکەت بسڕەوە'
                      : 'Log Out or Delete Account',
                  style: TextStyle(
                    fontSize: textSize + 2,
                    color: Colors.red,
                  ),
                ),
                initiallyExpanded: isLogoutExpanded,
                onExpansionChanged: (expanded) => ref
                    .read(isLogoutExpandedProvider.notifier)
                    .state = expanded,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Text(
                      isKurdish
                          ? 'ئێرە دابگرە بۆ چوونە دەرەوە'
                          : 'Tap to log out',
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
                  ListTile(
                    title: Text(
                      isKurdish
                          ? "ئێرە دابگرە بۆ سڕینەوەی هەژمار"
                          : 'Tap to delete account',
                      style: TextStyle(
                        fontSize: textSize,
                        color: Colors.red,
                      ),
                    ),
                    onTap: () => showDeleteConfirmationDialog(context, ref),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // String _getThemeDisplayName(ThemeMode mode) {
  //   switch (mode) {
  //     case ThemeMode.system:
  //       return 'System';
  //     case ThemeMode.light:
  //       return 'Light';
  //     case ThemeMode.dark:
  //       return 'Dark';
  //     default:
  //       return '';
  //   }
  // }

  String _getThemeDisplayName(ThemeMode mode, AppLanguage language) {
    switch (mode) {
      case ThemeMode.system:
        return language == AppLanguage.english ? 'System' : 'سیستەم';
      case ThemeMode.light:
        return language == AppLanguage.english ? 'Light' : 'ڕۆشن';
      case ThemeMode.dark:
        return language == AppLanguage.english ? 'Dark' : 'تاریک';
      default:
        return '';
    }
  }
}

// Provider for managing slider expansion state
final isSliderExpandedProvider = StateProvider<bool>((ref) => true);
final isLogoutExpandedProvider = StateProvider<bool>((ref) => false);
