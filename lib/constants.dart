import 'package:zeetionary/questions/question_screen.dart';
import 'package:zeetionary/quiz/quiz_screen.dart';
import 'package:zeetionary/grammar/grammar_screen.dart';
import 'package:zeetionary/dictionary/dictionary.dart';

class Constants {
  static const logo1Path = 'assets/images/zeetionary_one.png';
  static const logo2Path = 'assets/images/zeetionary_two.png';
  static const loginZeetionaryPath = 'assets/images/zeetionary_three.png';
  static const googlePath = 'assets/images/google.png';

  static const tabWidgets = [
    DictionaryScreen(),
    GrammarScreen(),
    QuestionScreen(),
    QuizScreen(),
  ];
}