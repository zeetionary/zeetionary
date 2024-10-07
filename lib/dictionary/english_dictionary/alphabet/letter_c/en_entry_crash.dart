import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycrash extends StatefulWidget {
  const EnglishEntrycrash({super.key});

  @override
  State<EnglishEntrycrash> createState() => _EnglishEntrycrashState();
}

class _EnglishEntrycrashState extends State<EnglishEntrycrash> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 90,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EntryAndIPA(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                bottom: CustomTabBarNew(
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
              // const TitleOfEntryAlso(),
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
    return const EntryTitle(word: "crash");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crash");
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
    return const IPAofEnglish(text: "IpaUK: /kræʃ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrash(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("crash");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrash("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kræʃ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrash(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("crash");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrash("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrashs1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A man has been arrested in connection with a fatal crash.");
  }

  Future<void> speakcrashs2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It is not clear what caused the crash.");
  }

  Future<void> speakcrashs3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("34 people died in the train crash.");
  }

  Future<void> speakcrashs4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Mechanical failures were to blame for the crash of the helicopter.");
  }

  Future<void> speakcrashs5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The tree fell with a great crash.");
  }

  Future<void> speakcrashs6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She heard the crash of shattering glass as the vehicles collided.");
  }

  Future<void> speakcrashs7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Some economists have been predicting another crash for years.");
  }

  Future<void> speakcrashs8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Many investors lost substantial amounts of money during the 2008 stock market crash.");
  }

  Future<void> speakcrashs9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Users won't lose important data if a hardware problem causes a crash.");
  }

  Future<void> speakcrashs10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We're going to crash, aren't we?");
  }

  Future<void> speakcrashs11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "A truck went out of control and crashed into the back of a bus.");
  }

  Future<void> speakcrashs12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A brick crashed through the window.");
  }

  Future<void> speakcrashs13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The huge tree came crashing down during the storm.");
  }

  Future<void> speakcrashs14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Waves crashed against the shore.");
  }

  Future<void> speakcrashs15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Thunder crashed overhead.");
  }

  Future<void> speakcrashs16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Share prices crashed to an all-time low yesterday.");
  }

  Future<void> speakcrashs17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The company crashed with debts of £50 million.");
  }

  Future<void> speakcrashs18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Files can be lost if the system suddenly crashes.");
  }

  Future<void> speakcrashs19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Their website crashed repeatedly on Tuesday.");
  }

  Future<void> speakcrashs20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The team crashed to their worst defeat this season.");
  }

  Future<void> speakcrashs21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I was so tired I crashed out on the sofa.");
  }

  Future<void> speakcrashs22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The company undertook a crash programme of machine replacement.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: دەنگی شکان، تەق‌وکوت، تەقەتەق، زرمە، ترپە، ھاڕە، شریخە، گرمە،	لێکدان، پێکادان، پیاکەوتن،	وردوخاش‌بوون،	کەوتنەخوارەوە، بەربوونەوە،	دابەزین، ھاتنەخوارەوە، داشکان
"""),
          const DefinitionKurdish(
              text: "١. (ناو) پێکدادان و تێکشکانی ئۆتۆمبێل، فڕۆکە، ھتد"),
          SentencesRow(
            englishText:
                "A man has been arrested in connection with a fatal crash.",
            kurdishText:
                "کەسێک دەستگیرکراوە پەیوەندیدار بە پێکدادانەکە کوشندەکە.",
            onPressedBritish: () => speakcrashs1("en-GB"),
            onPressedAmerican: () => speakcrashs1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "It is not clear what caused the crash.",
            kurdishText: "ڕوون نییە چی بوو بەھۆی پێکدادانەکە.",
            onPressedBritish: () => speakcrashs2("en-GB"),
            onPressedAmerican: () => speakcrashs2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "34 people died in the train crash.",
            kurdishText:
                "٣٤ کەس لە پێکدادانی شەمەندەفەرەکەدا گیانیان لەدەستدا.",
            onPressedBritish: () => speakcrashs3("en-GB"),
            onPressedAmerican: () => speakcrashs3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Mechanical failures were to blame for the crash of the helicopter.",
            kurdishText:
                "کێشەی میکانیکی بەرپرسی کەوتنەخوارەوەی ھەلیکۆپتەرەکە بوون.",
            onPressedBritish: () => speakcrashs4("en-GB"),
            onPressedAmerican: () => speakcrashs4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) دەنگێکی بەرز کە درووست دەبێت بەھۆی کەوتنەخوارەوە یان پێکدادانی شتێک"),
          SentencesRow(
            englishText: "The tree fell with a great crash.",
            kurdishText: "درەختەکە بە زرمەیەکی بەرزەوە کەوت.",
            onPressedBritish: () => speakcrashs5("en-GB"),
            onPressedAmerican: () => speakcrashs5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She heard the crash of shattering glass as the vehicles collided.",
            kurdishText:
                "گوێی لە تەق‌وکوتی گڵاسی شکاو بوو کە ئۆتۆمبێلەکان بە یەکیاندا دا.",
            onPressedBritish: () => speakcrashs6("en-GB"),
            onPressedAmerican: () => speakcrashs6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) دابەزینی لەناکاوی نرخی شتێک"),
          SentencesRow(
            englishText:
                "Some economists have been predicting another crash for years.",
            kurdishText:
                "ژمارەیەک ئانووریناس بۆ چەند ساڵێک دەبێت پێشبینی داڕووخانێکیان کردووە.",
            onPressedBritish: () => speakcrashs7("en-GB"),
            onPressedAmerican: () => speakcrashs7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Many investors lost substantial amounts of money during the 2008 stock market crash.",
            kurdishText:
                "زۆر وەبەرھێنەر ڕێژەیەکی زۆر لە پارەیان لەدەستدا لە داڕووخانی بازاڕی بۆرسە لە ساڵی ٢٠٠٨.",
            onPressedBritish: () => speakcrashs8("en-GB"),
            onPressedAmerican: () => speakcrashs8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) لەکارکەوتنی لەناکاوی ئامێرێک یان سیستەمێک"),
          SentencesRow(
            englishText:
                "Users won't lose important data if a hardware problem causes a crash.",
            kurdishText:
                "بەکارھێنەران زانیاری گرنگ لەدەست نادەن ئەگەر کێشەیەکی ھاردوێر ببێتە ھۆی لەکارکەوتنێک.",
            onPressedBritish: () => speakcrashs9("en-GB"),
            onPressedAmerican: () => speakcrashs9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) پێکدادان یان تێکشکانی ئۆتۆمبێل یان شەمەندەفەر"),
          SentencesRow(
            englishText: "We're going to crash, aren't we?",
            kurdishText: "تووشی تێکشکان دەبین، وانییە؟",
            onPressedBritish: () => speakcrashs10("en-GB"),
            onPressedAmerican: () => speakcrashs10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "A truck went out of control and crashed into the back of a bus.",
            kurdishText: "بارھەڵگرێک کۆنترۆڵی نەما و کێشای بە پشتەوەی پاسێکدا.",
            onPressedBritish: () => speakcrashs11("en-GB"),
            onPressedAmerican: () => speakcrashs11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (کردار) کێشان بە سەختی بە شتێکدا"),
          SentencesRow(
            englishText: "A brick crashed through the window.",
            kurdishText: "خشتێک کێشای بە پەنجەرەکەدا.",
            onPressedBritish: () => speakcrashs12("en-GB"),
            onPressedAmerican: () => speakcrashs12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The huge tree came crashing down during the storm.",
            kurdishText: "دارە گەورەکە داڕووخا لە کاتی زریانەکەدا.",
            onPressedBritish: () => speakcrashs13("en-GB"),
            onPressedAmerican: () => speakcrashs13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Waves crashed against the shore.",
            kurdishText: "شەپۆلەکان دەیان کێشا بە کەنارەکەدا.",
            onPressedBritish: () => speakcrashs14("en-GB"),
            onPressedAmerican: () => speakcrashs14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (کردار) درووستکردنی دەنگێکی بەرز"),
          SentencesRow(
            englishText: "Thunder crashed overhead.",
            kurdishText: "چەخماخە لە سەرەوەمانەوە گرمەی دەھات.",
            onPressedBritish: () => speakcrashs15("en-GB"),
            onPressedAmerican: () => speakcrashs15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (کردار) لەدەستدانی نرخ یان لەناکاو شکستھێنان بە خێرایی"),
          SentencesRow(
            englishText: "Share prices crashed to an all-time low yesterday.",
            kurdishText: "دوێنێ ھەندێک نرخ بۆ نزمترین ئاست دابەزین.",
            onPressedBritish: () => speakcrashs16("en-GB"),
            onPressedAmerican: () => speakcrashs16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The company crashed with debts of £50 million.",
            kurdishText: "کۆمپانیاکە بە قەرزی ٥٠ ملیۆن پاوەندەوە داڕووخا.",
            onPressedBritish: () => speakcrashs17("en-GB"),
            onPressedAmerican: () => speakcrashs17("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (کردار) لەکارکەوتنی کۆمپیوتەرێک"),
          SentencesRow(
            englishText: "Files can be lost if the system suddenly crashes.",
            kurdishText:
                "ئەگەر سیستەمەکە لەناکاو لەکاربکەوێت دەکرێت فایل لەدەست بچن.",
            onPressedBritish: () => speakcrashs18("en-GB"),
            onPressedAmerican: () => speakcrashs18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Their website crashed repeatedly on Tuesday.",
            kurdishText: "وێبسایتەکەیان بەردەوام لە ڕۆژی سێشەممە لەکار دەکەوت.",
            onPressedBritish: () => speakcrashs19("en-GB"),
            onPressedAmerican: () => speakcrashs19("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٠. (کردار) دۆڕان زۆر بە خراپی"),
          SentencesRow(
            englishText: "The team crashed to their worst defeat this season.",
            kurdishText: "تیمەکە تووشی خراپترین دۆڕانیان بوون لەم وەرزەدا.",
            onPressedBritish: () => speakcrashs20("en-GB"),
            onPressedAmerican: () => speakcrashs20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١١. (کردار) لەناکاو خەوتن، یان لە شوێنێک کە زۆرجار ناخەویت تێیدا"),
          SentencesRow(
            englishText: "I was so tired I crashed out on the sofa.",
            kurdishText: "زۆر ماندوو بووم کە لەسەر قەنەفەکە خەو بردمیەوە.",
            onPressedBritish: () => speakcrashs21("en-GB"),
            onPressedAmerican: () => speakcrashs21("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (ھاوەڵناو) لەخۆگرتنی کاری قورس و ھەوڵی زۆر لە ماوەیەکی کەمدا بۆ بەدەستھێنانی زۆر"),
          SentencesRow(
            englishText:
                "The company undertook a crash programme of machine replacement.",
            kurdishText:
                "کۆمپانیاکە پڕۆگرامێکی خەست‌وخۆڵی دەستپێکرد بۆ جێگرتنەوەی ئامێرەکان.",
            onPressedBritish: () => speakcrashs22("en-GB"),
            onPressedAmerican: () => speakcrashs22("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: crash (derived forms: crashes)
1. A serious accident (usually involving one or more vehicles) (= wreck [N. Amer])
"they are still investigating the crash of the TWA plane";
 
2. A loud resonant repeating noise (= clang, clangor [US], clangour [Brit, Cdn], clangoring [US], clank, clash, clangouring [Brit, Cdn])
"he could hear the crash of distant bells";
 
3. A sudden large decline of business or the prices of stocks (especially one that causes additional failures) (= collapse)
 
4. The act of colliding with something (= smash)
"his crash through the window";
 
5. (computing) an event that causes a computer system to become inoperative
"the crash occurred during a thunderstorm and the system has been down ever since"

- Verb: crash (derived forms: crashes, crashing, crashed)
1. Undergo damage or destruction on impact (= ram)
"the plane crashed into the ocean"; "The car crashed into the lamp post";
 
2. Fall or come down violently
"The branch crashed down on my car"; "The plane crashed in the sea"
 
3. Move with, or as if with, a crashing noise
"The car crashed through the glass door"
 
4. Move violently as through a barrier
"The terrorists crashed the gate"
 
5. Break violently or noisily; smash (= break up, break apart)
 
6. Make a sudden loud sound
"the waves crashed on the shore and kept us awake all night"
 
7. [informal] Enter uninvited or without permission (= barge in [informal], gatecrash)
"let's crash the party!"; "let's gate-crash the party!";
 
8. Cause to collide with something destructively
"The terrorists crashed the plane into the palace"; "Mother crashed the motorbike into the lamppost"
 
9. Hurl or thrust violently (= dash)
"He crashed the plate against the wall";
 
10. Undergo a sudden and severe downturn
"the economy crashed"; "will the stock market crash again?"
 
11. Stop operating (= go down)
"My computer crashed last night";
 
12. [informal] Sleep in a convenient place (= doss [Brit, informal], doss down [Brit, informal], crash out [informal])
"You can crash here, though it's not very comfortable";
 
13. [informal] Occupy, usually uninvited
"My son's friends crashed our house last weekend"
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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

  final String _videoId = 'Co2q0w-HZvs';
  final double _startSeconds = 685;

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

  final String _videoId = 'CKs8ZNhwFT0';
  final double _startSeconds = 51;

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

  final String _videoId = 'EKXfDVrDpPE';
  final double _startSeconds = 940;

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

  final String _videoId = 'C0LRlST-xp8';
  final double _startSeconds = 9;

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

  final String _videoId = 'zbeBQ-m_YKM';
  final double _startSeconds = 165;

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

  final String _videoId = 'pFEB0chiuJA';
  final double _startSeconds = 278;

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

  final String _videoId = 'DKC_hHjCQhg';
  final double _startSeconds = 15;

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