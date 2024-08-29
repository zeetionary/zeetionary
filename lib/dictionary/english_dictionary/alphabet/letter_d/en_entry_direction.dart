import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydirection extends StatefulWidget {
  const EnglishEntrydirection({super.key});

  @override
  State<EnglishEntrydirection> createState() => _EnglishEntrydirectionState();
}

class _EnglishEntrydirectionState extends State<EnglishEntrydirection> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                bottom: TabBar(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    VideoIconForTab(),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              const EnglishMeaning(),
              KurdishMeaning(),
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
  }
}

class EntryAndIPA extends StatelessWidget {
  const EntryAndIPA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TitleOfEntry(),
                ],
              ),
              // TitleOfEntryAlso(),
              IpaUK(),
              IpaUS(),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleOfEntry extends StatelessWidget {
  const TitleOfEntry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const EntryTitle(word: "direction");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: direction");
  }
}

class IpaUK extends StatelessWidget {
  const IpaUK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUK(),
        const IpaUKtext(),
      ],
    );
  }
}

class IpaUKtext extends StatelessWidget {
  const IpaUKtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUK: /dəˈrekʃn/,  /daɪˈrekʃn/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdirection(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("direction");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdirection("en-GB"),
    );
  }
}

class IpaUS extends StatelessWidget {
  const IpaUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUS(),
        const IpaUStext(),
      ],
    );
  }
}

class IpaUStext extends StatelessWidget {
  const IpaUStext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUS: /dəˈrekʃn/,  /daɪˈrekʃn/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdirection(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("direction");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdirection("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdirections1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They headed in the direction of the village.");
  }

  Future<void> speakdirections2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She pointed in my direction.");
  }

  Future<void> speakdirections3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They hit a truck coming in the opposite direction.");
  }

  Future<void> speakdirections4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The road was blocked in both directions.");
  }

  Future<void> speakdirections5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The aircraft was flying in a northerly direction.");
  }

  Future<void> speakdirections6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "When the police arrived, the crowd scattered in all directions.");
  }

  Future<void> speakdirections7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Has the wind changed direction?");
  }

  Future<void> speakdirections8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Let's stop and ask for directions.");
  }

  Future<void> speakdirections9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A farmer gave us directions to the town.");
  }

  Future<void> speakdirections10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("With all pesticides, follow the directions for use carefully.");
  }

  Future<void> speakdirections11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The exhibition provides evidence of several new directions in her work.");
  }

  Future<void> speakdirections12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I am very unhappy with the direction the club is taking.");
  }

  Future<void> speakdirections13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He wants to take the company in a different direction.");
  }

  Future<void> speakdirections14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Do you feel your career is heading/headed in the right direction?");
  }

  Future<void> speakdirections15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "It's only a small improvement, but at least it's a step in the right direction.");
  }

  Future<void> speakdirections16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Support came from an unexpected direction.");
  }

  Future<void> speakdirections17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Let us approach the subject from a different direction.");
  }

  Future<void> speakdirections18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We are looking for somebody with a clear sense of direction.");
  }

  Future<void> speakdirections19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Once again her life felt lacking in direction.");
  }

  Future<void> speakdirections20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There seems to be no clear direction in his policy.");
  }

  Future<void> speakdirections21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She was entrusted with the direction of the project.");
  }

  Future<void> speakdirections22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "All work was produced by the students under the direction of John Williams.");
  }

  Future<void> speakdirections23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("All such research is under government direction.");
  }

  Future<void> speakdirections24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The new workers need direction from a supervisor.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: لا، ئالی، لایەن، دەست، قۆڵ، بەر، ڕوو، حاست، ئاست، ئاراستە،	ڕێگا، ڕێ، ڕێڕەو، شوێن، ئاقار، ئاست، ئاراستە، سیلە،	مەیل، ویست، تێندێنسی،	بەڕێوەبەرایەتی، ھەڵسووڕاندن، چاودێری،	دەستوور،	ڕێ‌پیشان‌دان، ڕێنوێنی،	(سینەما) دەرھێنان، دەرھێنەری، دەستووری کار، دەستوورنامە، ڕێنوێنی، دەستوور،	نێونیشان
"""),
          const DefinitionKurdish(
              text: "١. (ناو) ئاراستەی گشتی جوڵەی کەسێک یان شتێک"),
          SentencesRow(
            englishText: "They headed in the direction of the village.",
            kurdishText: "بە ئاراستەی گوندەکە چوون.",
            onPressedBritish: () => speakdirections1("en-GB"),
            onPressedAmerican: () => speakdirections1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She pointed in my direction.",
            kurdishText: "بە ئاراستەی من ئاماژەی کرد.",
            onPressedBritish: () => speakdirections2("en-GB"),
            onPressedAmerican: () => speakdirections2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        "They hit a truck coming in the opposite direction.",
                    kurdishText:
                        "کێشایان بە بارھەڵگرێکدا کە بە ئاراستەی پێچەوانەوە دەھات.",
                    onPressedBritish: () => speakdirections3("en-GB"),
                    onPressedAmerican: () => speakdirections3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The road was blocked in both directions.",
                    kurdishText: "ڕێگاکە لە ھەردوو ئاراستەوە گیرابوو.",
                    onPressedBritish: () => speakdirections4("en-GB"),
                    onPressedAmerican: () => speakdirections4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "The aircraft was flying in a northerly direction.",
                    kurdishText: "فڕۆکەکە بە ئاراستەی باکووردا دەچوو.",
                    onPressedBritish: () => speakdirections5("en-GB"),
                    onPressedAmerican: () => speakdirections5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "When the police arrived, the crowd scattered in all directions.",
                    kurdishText:
                        "کە پۆلیس گەشت، خەڵکەکە بە ھەموو ئاراستەکاندا ھەڵھاتن.",
                    onPressedBritish: () => speakdirections6("en-GB"),
                    onPressedAmerican: () => speakdirections6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "Has the wind changed direction?",
                    kurdishText: "بایەکە ئارستەی گۆڕیەو؟",
                    onPressedBritish: () => speakdirections7("en-GB"),
                    onPressedAmerican: () => speakdirections7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) ڕێنمایی سەبارەت بە کردنی شتێک، ڕۆشتن بۆ شوێنێک، ھتد"),
          SentencesRow(
            englishText: "Let's stop and ask for directions.",
            kurdishText: "با بوەستین و پرسیار بۆ ناونیشان بکەیت.",
            onPressedBritish: () => speakdirections8("en-GB"),
            onPressedAmerican: () => speakdirections8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "A farmer gave us directions to the town.",
            kurdishText: "جوتیارێک ناونیشانی شارۆچکەکەی پێداین.",
            onPressedBritish: () => speakdirections9("en-GB"),
            onPressedAmerican: () => speakdirections9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "With all pesticides, follow the directions for use carefully.",
            kurdishText:
                "بۆ ھەموو مێرووکوژێک، بەوریاییەوە شوێن ڕێنماییەکانی بەکارھێنان بکەوە.",
            onPressedBritish: () => speakdirections10("en-GB"),
            onPressedAmerican: () => speakdirections10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) ئاراستەی بەرەوپێشچوونی کەس/شتێک"),
          SentencesRow(
            englishText:
                "The exhibition provides evidence of several new directions in her work.",
            kurdishText:
                "پێشانگاکە بەڵگەی ژمارەیەک ئاقاری تازە لە کارەکەیدا پیشان دەدات.",
            onPressedBritish: () => speakdirections11("en-GB"),
            onPressedAmerican: () => speakdirections11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I am very unhappy with the direction the club is taking.",
            kurdishText: "زۆر دڵتەنگم بەو ئاقارەی یانەکە پێیدا دەڕوات.",
            onPressedBritish: () => speakdirections12("en-GB"),
            onPressedAmerican: () => speakdirections12("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        "He wants to take the company in a different direction.",
                    kurdishText:
                        "دەیەوێت کۆمپانیاکە بە ئاراستەیەکی جیاوازدا ببات.",
                    onPressedBritish: () => speakdirections13("en-GB"),
                    onPressedAmerican: () => speakdirections13("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "Do you feel your career is heading/headed in the right direction?",
                    kurdishText: "پێتوایە کارەکەت بە ئاقارێکی گونجاودا دەچێت؟",
                    onPressedBritish: () => speakdirections14("en-GB"),
                    onPressedAmerican: () => speakdirections14("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "It's only a small improvement, but at least it's a step in the right direction.",
                    kurdishText:
                        "تەنھا بەرەوپێشچوونێکی بچووکە، بەڵام ھیچ نەبێت ھەنگاوێکە بە ئاراستەی گونجاودا.",
                    onPressedBritish: () => speakdirections15("en-GB"),
                    onPressedAmerican: () => speakdirections15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) شوێنی گشتی کە کەسێک یان شتێک لێیەوە دێت یان گەشە دەکات"),
          SentencesRow(
            englishText: "Support came from an unexpected direction.",
            kurdishText: "پشتیوانی لە بەرەیەکی چاوەڕوان نەکراوەوە ھات.",
            onPressedBritish: () => speakdirections16("en-GB"),
            onPressedAmerican: () => speakdirections16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Let us approach the subject from a different direction.",
            kurdishText: "با لە باباتەکە بگەین لە ئاراستەیەکی جیاوازەوە.",
            onPressedBritish: () => speakdirections17("en-GB"),
            onPressedAmerican: () => speakdirections17("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) مەبەست؛ ئامانج"),
          SentencesRow(
            englishText:
                "We are looking for somebody with a clear sense of direction.",
            kurdishText: "بۆ کەسێک دەگەڕێین کە ئامانجی ڕوونی ھەبێت.",
            onPressedBritish: () => speakdirections18("en-GB"),
            onPressedAmerican: () => speakdirections18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Once again her life felt lacking in direction.",
            kurdishText: "جارێکی دیکە ژیانی وا دەردەکەوت کە ئامانجی نەبێت.",
            onPressedBritish: () => speakdirections19("en-GB"),
            onPressedAmerican: () => speakdirections19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "There seems to be no clear direction in his policy.",
            kurdishText:
                "وا دەردەکەوێت کە ھیچ ئامانجێکی ڕوون لە سیاسەتیدا نەبێت.",
            onPressedBritish: () => speakdirections20("en-GB"),
            onPressedAmerican: () => speakdirections20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (ناو) ھونەری بەڕێوەبردن و ئاراستەکردنی شتێک"),
          SentencesRow(
            englishText: "She was entrusted with the direction of the project.",
            kurdishText: "متمانەی بەڕێوەبردنی پڕۆژەکەی پێدرا.",
            onPressedBritish: () => speakdirections21("en-GB"),
            onPressedAmerican: () => speakdirections21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "All work was produced by the students under the direction of John Williams.",
            kurdishText:
                "ھەموو کارەکان لەلایەن خوێندکارانەوە لەژێر سەرپەرشتی جۆن ویلیامز ئەنجام درا.",
            onPressedBritish: () => speakdirections22("en-GB"),
            onPressedAmerican: () => speakdirections22("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "All such research is under government direction.",
            kurdishText:
                "ھەموو لێکۆڵینەوەیەکی وەھا لەژێر سەرپەرشتی حکومەت دەکرێت.",
            onPressedBritish: () => speakdirections23("en-GB"),
            onPressedAmerican: () => speakdirections23("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The new workers need direction from a supervisor.",
            kurdishText:
                "کرێکارە تازەکان پێویستیان بە ڕێنماییە لە سەرپەرشتیارێکەوە.",
            onPressedBritish: () => speakdirections24("en-GB"),
            onPressedAmerican: () => speakdirections24("en-US"),
          ),
        ],
      ),
    );
  }
}

class EnglishMeaning extends StatefulWidget {
  const EnglishMeaning({super.key});

  @override
  State<EnglishMeaning> createState() => _EnglishMeaningState();
}

class _EnglishMeaningState extends State<EnglishMeaning> {
  FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;

  Future<void> startSpeaking(
      String languageCode, EnglishMeaningConst englishMeaningConst) async {
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    setState(() {
      isSpeaking = true;
    });
  }

// Function to stop TTS
  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: direction (derived forms: directions)
1. A line leading to a place or point (= way)
"he looked the other direction";
 
2. The spatial relation between something and the course along which it points or moves
"he checked the direction and velocity of the wind"
 
3. A general course along which something has a tendency to develop
"I couldn't follow the direction of his thoughts"; "his ideals determined the direction of his career"; "they proposed a new direction for the firm"
 
4. Direction or helpful suggestions regarding a decision or future course of action (= guidance, counsel, counseling [US], counselling [Brit, Cdn])
 
5. The act of managing something (= management)
"is the direction of the economy a function of government?";
 
6. A message describing how something is to be done (= instruction)
"he gave directions faster than she could follow them";
 
7. The act of setting and holding a course (= steering, guidance)
"a new council was installed under the direction of the king";
 
8. A formal statement of a command or injunction to do something (= commission, charge)
"the judge's direction to the jury";
 
9. The concentration of attention or energy on something (= focus, focusing, focussing, focal point, centering [US], centring [Brit, Cdn])
"he had no direction in his life";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 161;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 343;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'tXjHb5QmDV0';
  final double _startSeconds = 276;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = '2fOWFfpLYW0';
  final double _startSeconds = 822;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 238;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'DWmGArQBtFI';
  final double _startSeconds = 109;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'CXvG2CBJ3SE';
  final double _startSeconds = 336;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const YouTubeScroller(
      children: [
        YoutubeEmbeddedone(),
        YoutubeEmbeddedtwo(),
        YoutubeEmbeddedthree(),
        YoutubeEmbeddedfour(),
        YoutubeEmbeddedfive(),
        YoutubeEmbeddedsix(),
        // YoutubeEmbeddedseven(),
        // YoutubeEmbeddedeight(),
        // YoutubeEmbeddednine(),
        // YoutubeEmbeddedten(),
        // YoutubeEmbeddedeleven(),
        // YoutubeEmbeddedtwelve(),
        // YoutubeEmbeddedthirteen(),
        // YoutubeEmbeddeddfourteen(),
        // YoutubeEmbeddedfifteen(),
        // YoutubeEmbeddeddsixteen(),
        // YoutubeEmbeddeddseventeen(),
        // YoutubeEmbeddeddeighteen(),
        // YoutubeEmbeddeddnineteen(),
        // YoutubeEmbeddedtwenty(),
        // YoutubeEmbeddedmulti(),
        YoutubeEmbeddedend(),
      ],
    );
  }
}

// end WORD_WEB