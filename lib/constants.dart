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
