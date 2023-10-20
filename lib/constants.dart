import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:zeetionary/questions/question_screen.dart';
import 'package:zeetionary/quiz/quiz_screen.dart';
import 'package:zeetionary/grammar/grammar_screen.dart';
import 'package:zeetionary/dictionary/english_dictionary/english_dictionary.dart';
import 'package:zeetionary/dictionary/kurdish_dictionary/kurdish_dictionary.dart';

class Constants {
  static const logo1Path = 'assets/images/zeetionary_one.png';
  static const logo2Path = 'assets/images/zeetionary_two.png';
  static const loginZeetionaryPath = 'assets/images/zeetionary_three.png';
  static const googlePath = 'assets/images/google.png';
  static const uk1Path = 'assets/images/uk_one.png';
  static const kurd1Path = 'assets/images/kurd_one.png';

  static var tabWidgets = [
    const DictionaryScreenEnglish(),
    const DictionaryScreenKurdish(),
    const GrammarScreen(),
    const QuestionsScreen(),
    const QuizScreen(),
  ];
}

class ZeetionaryAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // centerTitle: true,
      title: ShaderMask(
        shaderCallback: (Rect bounds) {
          return const LinearGradient(
            colors: [
              Color.fromARGB(255, 142, 154, 215),
              Color.fromARGB(255, 219, 84, 84)
            ], // Define your gradient colors here
            tileMode: TileMode.clamp,
          ).createShader(bounds);
        },
        child: const Text(
          'Zeetionary',
          style: TextStyle(
            fontSize: 24.0, // Adjust font size as needed
            fontWeight: FontWeight.bold, // Adjust font weight as needed
            color: Colors.white, // Text color (will be masked by the gradient)
          ),
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_rounded),
        onPressed: () {
          Routemaster.of(context).pop();
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class ZeetionaryAppbarStyle extends StatelessWidget {
  const ZeetionaryAppbarStyle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          colors: [
            Color.fromARGB(255, 142, 154, 215),
            Color.fromARGB(255, 219, 84, 84)
          ], // Define your gradient colors here
          tileMode: TileMode.clamp,
        ).createShader(bounds);
      },
      child: const Text(
        'Zeetionary',
        style: TextStyle(
          fontSize: 24.0, // Adjust font size as needed
          fontWeight: FontWeight.bold, // Adjust font weight as needed
          color: Colors.white, // Text color (will be masked by the gradient)
        ),
      ),
    );
  }
}
