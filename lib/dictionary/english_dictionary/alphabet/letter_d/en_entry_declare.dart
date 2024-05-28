import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydeclare extends StatefulWidget {
  const EnglishEntrydeclare({super.key});

  @override
  State<EnglishEntrydeclare> createState() => _EnglishEntrydeclareState();
}

class _EnglishEntrydeclareState extends State<EnglishEntrydeclare> {
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
    return const EntryTitle(word: "declare");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: declare");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈkleə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeclare(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("declare"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdeclare("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈkler/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeclare(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("declare"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdeclare("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeclares1(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Germany declared war on France on 1 August 1914."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares2(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government has declared war on illiteracy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares3(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He will probably have to declare bankruptcy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares4(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Neither side was able to declare victory."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares5(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She declared her intention of running for the presidency."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares6(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The court declared that strike action was illegal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares7(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In the end, they were both declared winners of the tournament."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares8(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The area has been declared a national park."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares9(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He declared that he was in love with her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares10(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Few people dared to declare their opposition to the regime."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares11(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He declared his true feelings to her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares12(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Only two candidates have declared themselves so far."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares13(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was the first gay player in a professional sports team to declare himself openly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares14(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("All income must be declared."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares15(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Do you have anything to declare?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares16(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclares1600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares17(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclares1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares18(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclares1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares19(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclares1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares20(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclares2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares21(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclares2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares22(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclares2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares23(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclares2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares24(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclares2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares25(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclares2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares26(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclares2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares27(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclares2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdeclares28(String languageCode) async {
    // DOPSUM: CHANGE speakdeclare
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdeclares2800"); // DOPSUM: CHANGE TEXT
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
کوردی: ڕاگەیاندن، وتن، پەیڤین، ئاگادار کردن
"""),
          const DefinitionKurdish(
              text: "١. (کردار) گوتنی شتێک بە فەرمی یان گشتی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Germany declared war on France on 1 August 1914."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەڵمانیا لە ١ ـی ئابی ١٩١٤ جەنگی دژ بە فەرەنسا ڕاگەیاند."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "declare", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclares1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclares1("en-US"),
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
                            "The government has declared war on (= officially stated its intention to stop) illiteracy."),
                    ExampleSentenceKurdish(
                        text: "حکومەت جەنگی دژ بە نەخوێندەواری ڕاگەیاندووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclares2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclares2("en-US"),
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
                        text: "He will probably have to declare bankruptcy."),
                    ExampleSentenceKurdish(
                        text: "ئەگەری هەیە ناچاربێت مایەپووچی ڕابگەیەنێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclares3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclares3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "Neither side was able to declare victory."),
                            ExampleSentenceKurdish(
                                text:
                                    "هیچ لایەنێکیان نەیدەتوانی سەرکەوتن ڕابگەنێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdeclares4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdeclares4("en-US"),
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
                                    "She declared her intention of running for the presidency."),
                            ExampleSentenceKurdish(
                                text: "نیازی بۆ پێشبڕکێی سەرۆکایەتی ڕاگەیاند."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdeclares5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdeclares5("en-US"),
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
                                    "The court declared that strike action was illegal."),
                            ExampleSentenceKurdish(
                                text:
                                    "دادگا ڕایگەیاند هەڵمەتی مانگرتنەکە نایاسایی بوو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdeclares6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdeclares6("en-US"),
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
                                    "In the end, they were both declared winners of the tournament."),
                            ExampleSentenceKurdish(
                                text:
                                    "لە کۆتاییدا هەردووکیان بە براوەی پاڵەوانێتییەکە دانران."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdeclares7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdeclares7("en-US"),
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
                                    "The area has been declared a national park."),
                            ExampleSentenceKurdish(
                                text:
                                    "ناوچەکە وەک پارکێکی نیشتیمانی ڕاگەیەندراوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdeclares8("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdeclares8("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) گوتنی شتێک بە ڕوونی و تەواوی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He declared that he was in love with her."),
                    ExampleSentenceKurdish(
                        text: "ڕایگەیاند کە لە خۆشەویستیدایە لەگەڵیدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclares9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclares9("en-US"),
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
                            "Few people dared to declare their opposition to the regime."),
                    ExampleSentenceKurdish(
                        text:
                            "کەم کەس بوێری ئەوەیان کرد دژبەری خۆیان بە ڕژێمەکە ڕابگەیەنن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclares10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclares10("en-US"),
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
                        text: "He declared his true feelings to her."),
                    ExampleSentenceKurdish(
                        text: "هەستە ڕاستەقینەکانیی بۆی ڕاگەیاند."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclares11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclares11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) بە ڕوونی ڕاگەیاندنی ئەوەی کە کێیت و نیازت چییە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Only two candidates have declared themselves so far."),
                    ExampleSentenceKurdish(
                        text: "تەنها دوو بەربژێر تا ئێستا خۆیان ڕاگەیاندووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclares12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclares12("en-US"),
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
                            "He was the first gay player in a professional sports team to declare himself openly."),
                    ExampleSentenceKurdish(
                        text:
                            "یەکەم یاریزانی گەی بوو لە تیمێکی وەرزشی پڕۆفیشناڵدا کە بە ڕاشکاوی خۆی بەیان بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclares13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclares13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) گوتن بە بەرپرسانی باجگر کە چەندت قازانج کردووە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "All income must be declared."),
                    ExampleSentenceKurdish(
                        text: "هەموو داهاتێک دەبێت ڕابگەیەندرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclares14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclares14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) ئاماژەکردن بەو شتانەی کە باج دەیانگرێتەوە لە گومرکدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Do you have anything to declare?"),
                    ExampleSentenceKurdish(text: "هیچ شتێکت پێیە ڕایبگەیەنیت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdeclares15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdeclares15("en-US"),
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

// DOPSUM: ENGLISH MEANING

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
    // Extract text from EnglishMeaningConst and store it in textToSpeak
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
- Verb: declare (derived forms: declaring, declares, declared)
1. State emphatically and authoritatively (= pronounce)
"He declared that he needed more money to carry out the task he was charged with";
 
2. Announce publicly or officially (= announce)
"The President declared war";
 
3. State firmly that something is true
"He declared that he was innocent"
 
4. Judge or state to be (= adjudge, hold)
"She was declared incompetent";
 
5. Authorize payments of
"declare dividends"
 
6. (bridge) designate (a trump suit or no-trump) with the final bid of a hand
 
7. Make a declaration (of dutiable goods) to a customs official
"Do you have anything to declare?"
 
8. Proclaim one's support, sympathy, or opinion for or against
"His wife declared at once for moving to the West Coast"
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Using the EnglishButtonTTS class
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

class YoutubeEmbeddedend extends StatelessWidget {
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'zqllxbPWKNI',
    startSeconds: 398,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'tsxmyL7TUJg',
    startSeconds: 1661,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'sAiTuitN5b8',
    startSeconds: 151,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'g9QneAV4fVo',
    startSeconds: 1198,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'YwOMc-4OEWg',
    startSeconds: 599,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'gghRXOXY820',
    startSeconds: 1097,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'LJNtfyq3TDE',
    startSeconds: 516,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
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
    return YouTubeScroller(
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