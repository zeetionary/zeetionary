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
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                automaticallyImplyLeading: false,
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
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
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
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
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
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A man has been arrested in connection with a fatal crash.");
  }

  Future<void> speakcrashs2(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It is not clear what caused the crash.");
  }

  Future<void> speakcrashs3(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("34 people died in the train crash.");
  }

  Future<void> speakcrashs4(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Mechanical failures were to blame for the crash of the helicopter.");
  }

  Future<void> speakcrashs5(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The tree fell with a great crash.");
  }

  Future<void> speakcrashs6(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She heard the crash of shattering glass as the vehicles collided.");
  }

  Future<void> speakcrashs7(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Some economists have been predicting another crash for years.");
  }

  Future<void> speakcrashs8(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Many investors lost substantial amounts of money during the 2008 stock market crash.");
  }

  Future<void> speakcrashs9(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Users won't lose important data if a hardware problem causes a crash.");
  }

  Future<void> speakcrashs10(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We're going to crash, aren't we?");
  }

  Future<void> speakcrashs11(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A truck went out of control and crashed into the back of a bus.");
  }

  Future<void> speakcrashs12(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A brick crashed through the window.");
  }

  Future<void> speakcrashs13(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The huge tree came crashing down during the storm.");
  }

  Future<void> speakcrashs14(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Waves crashed against the shore.");
  }

  Future<void> speakcrashs15(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Thunder crashed overhead.");
  }

  Future<void> speakcrashs16(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Share prices crashed to an all-time low yesterday.");
  }

  Future<void> speakcrashs17(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The company crashed with debts of £50 million.");
  }

  Future<void> speakcrashs18(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Files can be lost if the system suddenly crashes.");
  }

  Future<void> speakcrashs19(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Their website crashed repeatedly on Tuesday.");
  }

  Future<void> speakcrashs20(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The team crashed to their worst defeat this season.");
  }

  Future<void> speakcrashs21(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I was so tired I crashed out on the sofa.");
  }

  Future<void> speakcrashs22(String languageCode) async {
    // DOPSUM: CHANGE speakcrash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company undertook a crash programme of machine replacement.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: دەنگی شکان، تەق‌وکوت، تەقەتەق، زرمە، ترپە، ھاڕە، شریخە، گرمە،	لێکدان، پێکادان، پیاکەوتن،	وردوخاش‌بوون،	کەوتنەخوارەوە، بەربوونەوە،	دابەزین، ھاتنەخوارەوە، داشکان
"""),
          const DefinitionKurdish(
              text: "١. (ناو) پێکدادان و تێکشکانی ئۆتۆمبێل، فڕۆکە، ھتد"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "A man has been arrested in connection with a fatal crash."),
                    ExampleSentenceKurdish(
                        text:
                            "کەسێک دەستگیرکراوە پەیوەندیدار بە پێکدادانەکە کوشندەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "crash", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "It is not clear what caused the crash."),
                    ExampleSentenceKurdish(
                        text: "ڕوون نییە چی بوو بەھۆی پێکدادانەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "34 people died in the train crash."),
                    ExampleSentenceKurdish(
                        text:
                            "٣٤ کەس لە پێکدادانی شەمەندەفەرەکەدا گیانیان لەدەستدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Mechanical failures were to blame for the crash of the helicopter."),
                    ExampleSentenceKurdish(
                        text:
                            "کێشەی میکانیکی بەرپرسی کەوتنەخوارەوەی ھەلیکۆپتەرەکە بوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) دەنگێکی بەرز کە درووست دەبێت بەھۆی کەوتنەخوارەوە یان پێکدادانی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The tree fell with a great crash."),
                    ExampleSentenceKurdish(
                        text: "درەختەکە بە زرمەیەکی بەرزەوە کەوت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She heard the crash of shattering glass as the vehicles collided."),
                    ExampleSentenceKurdish(
                        text:
                            "گوێی لە تەق‌وکوتی گڵاسی شکاو بوو کە ئۆتۆمبێلەکان بە یەکیاندا دا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) دابەزینی لەناکاوی نرخی شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Some economists have been predicting another crash for years."),
                    ExampleSentenceKurdish(
                        text:
                            "ژمارەیەک ئانووریناس بۆ چەند ساڵێک دەبێت پێشبینی داڕووخانێکیان کردووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Many investors lost substantial amounts of money during the 2008 stock market crash."),
                    ExampleSentenceKurdish(
                        text:
                            "زۆر وەبەرھێنەر ڕێژەیەکی زۆر لە پارەیان لەدەستدا لە داڕووخانی بازاڕی بۆرسە لە ساڵی ٢٠٠٨."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) لەکارکەوتنی لەناکاوی ئامێرێک یان سیستەمێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Users won't lose important data if a hardware problem causes a crash."),
                    ExampleSentenceKurdish(
                        text:
                            "بەکارھێنەران زانیاری گرنگ لەدەست نادەن ئەگەر کێشەیەکی ھاردوێر ببێتە ھۆی لەکارکەوتنێک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) پێکدادان یان تێکشکانی ئۆتۆمبێل یان شەمەندەفەر"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "We're going to crash, aren't we?"),
                    ExampleSentenceKurdish(
                        text: "تووشی تێکشکان دەبین، وانییە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "A truck went out of control and crashed into the back of a bus."),
                    ExampleSentenceKurdish(
                        text:
                            "بارھەڵگرێک کۆنترۆڵی نەما و کێشای بە پشتەوەی پاسێکدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (کردار) کێشان بە سەختی بە شتێکدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "A brick crashed through the window."),
                    ExampleSentenceKurdish(text: "خشتێک کێشای بە پەنجەرەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The huge tree came crashing down during the storm."),
                    ExampleSentenceKurdish(
                        text: "دارە گەورەکە داڕووخا لە کاتی زریانەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Waves crashed against the shore."),
                    ExampleSentenceKurdish(
                        text: "شەپۆلەکان دەیان کێشا بە کەنارەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (کردار) درووستکردنی دەنگێکی بەرز"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Thunder crashed overhead."),
                    ExampleSentenceKurdish(
                        text: "چەخماخە لە سەرەوەمانەوە گرمەی دەھات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (کردار) لەدەستدانی نرخ یان لەناکاو شکستھێنان بە خێرایی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Share prices crashed to an all-time low yesterday."),
                    ExampleSentenceKurdish(
                        text: "دوێنێ ھەندێک نرخ بۆ نزمترین ئاست دابەزین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The company crashed with debts of £50 million."),
                    ExampleSentenceKurdish(
                        text:
                            "کۆمپانیاکە بە قەرزی ٥٠ ملیۆن پاوەندەوە داڕووخا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (کردار) لەکارکەوتنی کۆمپیوتەرێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Files can be lost if the system suddenly crashes."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەگەر سیستەمەکە لەناکاو لەکاربکەوێت دەکرێت فایل لەدەست بچن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Their website crashed repeatedly on Tuesday."),
                    ExampleSentenceKurdish(
                        text:
                            "وێبسایتەکەیان بەردەوام لە ڕۆژی سێشەممە لەکار دەکەوت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٠. (کردار) دۆڕان زۆر بە خراپی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The team crashed to their worst defeat this season."),
                    ExampleSentenceKurdish(
                        text:
                            "تیمەکە تووشی خراپترین دۆڕانیان بوون لەم وەرزەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١١. (کردار) لەناکاو خەوتن، یان لە شوێنێک کە زۆرجار ناخەویت تێیدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I was so tired I crashed out on the sofa."),
                    ExampleSentenceKurdish(
                        text:
                            "زۆر ماندوو بووم کە لەسەر قەنەفەکە خەو بردمیەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (ھاوەڵناو) لەخۆگرتنی کاری قورس و ھەوڵی زۆر لە ماوەیەکی کەمدا بۆ بەدەستھێنانی زۆر"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The company undertook a crash programme of machine replacement."),
                    ExampleSentenceKurdish(
                        text:
                            "کۆمپانیاکە پڕۆگرامێکی خەست‌وخۆڵی دەستپێکرد بۆ جێگرتنەوەی ئامێرەکان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrashs22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrashs22("en-US"),
                  ),
                ],
              ),
            ],
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

    // Update the state to reflect that TTS is in progress
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
          const DividerDefinition(),

          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatefulWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  State<YoutubeEmbeddedend> createState() => _YoutubeEmbeddedendState();
}

class _YoutubeEmbeddedendState extends State<YoutubeEmbeddedend> {
  late YoutubePlayerController _controller;
  final String _videoId = 'Co2q0w-HZvs';
  final double _startSeconds = 685;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
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
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
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
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
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
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
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
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
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
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatefulWidget {
  const YoutubeEmbeddedsix({super.key});

  @override
  State<YoutubeEmbeddedsix> createState() => _YoutubeEmbeddedsixState();
}

class _YoutubeEmbeddedsixState extends State<YoutubeEmbeddedsix> {
  late YoutubePlayerController _controller;
  final String _videoId = 'DKC_hHjCQhg';
  final double _startSeconds = 15;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
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