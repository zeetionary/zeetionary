import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycrazy extends StatefulWidget {
  const EnglishEntrycrazy({super.key});

  @override
  State<EnglishEntrycrazy> createState() => _EnglishEntrycrazyState();
}

class _EnglishEntrycrazyState extends State<EnglishEntrycrazy> {
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
    return const EntryTitle(word: "crazy");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crazy");
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
    return const IPAofEnglish(text: "IpaUK: /ˈkreɪzi/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrazy(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crazy"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrazy("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈkreɪzi/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrazy(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crazy"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrazy("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrazys1(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Are you crazy? We could get killed doing that."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys2(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'd never do anything like that. That's just crazy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys3(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What a crazy idea!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys4(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Love makes you do crazy things."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys5(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I know it sounds crazy but it just might work."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys6(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Marie says he went crazy, and smashed the room up."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys7(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("That noise is driving me crazy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys8(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Doesn't it make you crazy when people don't reply to your emails?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys9(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The crowd went crazy when the band came on stage."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys10(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's football-crazy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys11(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I've been crazy about him since the first time I saw him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys12(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'd go crazy if I lived here."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys13(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There are a lot of crazies out there."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys14(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("My job continues to be crazy busy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys15(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrazys1500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys16(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrazys1600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys17(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrazys1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys18(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrazys1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys19(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrazys1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys20(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrazys2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys21(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrazys2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys22(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrazys2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys23(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrazys2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys24(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrazys2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys25(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrazys2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys26(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrazys2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys27(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrazys2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrazys28(String languageCode) async {
    // DOPSUM: CHANGE speakcrazy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrazys2800"); // DOPSUM: CHANGE TEXT
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
کوردی: شێت، دەلوو،	سوورەوەبوو، تووڕە،	کەر، نەفام، گەوجانە،	سەوداسەر، مردووی، کوشتەی،	سەیروسەمەرە، مرۆی شێت
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) گەمژانە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Are you crazy? We could get killed doing that."),
                    ExampleSentenceKurdish(
                        text: "شێت بوویتە؟ دەکرێت بمرین ئەوە بکەین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "crazy", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrazys1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrazys1("en-US"),
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
                            "I'd never do anything like that. That's just crazy."),
                    ExampleSentenceKurdish(
                        text: "هەرگیز شتێکی وەها ناکەم. شێتانەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrazys2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrazys2("en-US"),
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
                            ExampleSentenceEnglish(text: "What a crazy idea!"),
                            ExampleSentenceKurdish(
                                text: "چی بیرۆکەیەکی شێتانەیە!"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrazys3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrazys3("en-US"),
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
                                text: "Love makes you do crazy things."),
                            ExampleSentenceKurdish(
                                text:
                                    "خۆشەویستی وات لێ دەکات کاری شێتانە بکەیت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrazys4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrazys4("en-US"),
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
                                    "I know it sounds crazy but it just might work."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئەزانم شێتانە دیارە، بەڵام ئەگەری هەیە کاربکات."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrazys5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrazys5("en-US"),
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
          const DefinitionKurdish(text: "٢. (ھاوەڵناو) زۆر تووڕە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Marie says he went crazy, and smashed the room up."),
                    ExampleSentenceKurdish(
                        text:
                            "ماری دەڵێت زۆر تووڕە بوو و ژوورەکەی دا بەسەر یەکدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrazys6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrazys6("en-US"),
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
                        text: "That noise is driving me crazy."),
                    ExampleSentenceKurdish(
                        text: "ئەو ژاوەژاوە خەریکە شێتم دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrazys7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrazys7("en-US"),
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
                            "Doesn't it make you crazy when people don't reply to your emails?"),
                    ExampleSentenceKurdish(
                        text:
                            "ئەوە تووڕەت ناکات کە خەڵکی وەڵامی ئیمەیڵەکانت نادەنەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrazys8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrazys8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) زۆر بەجۆش سەبارەت بە شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The crowd went crazy when the band came on stage."),
                    ExampleSentenceKurdish(
                        text:
                            "جەماوەرەکە خرۆشان کە باندەکە هاتنە سەر ستەیجەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrazys9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrazys9("en-US"),
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
                    ExampleSentenceEnglish(text: "She's football-crazy."),
                    ExampleSentenceKurdish(text: "ئاشقێکی تۆپی‌پێیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrazys10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrazys10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ھاوەڵناو) حەزکردنی زۆر لە کەسێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I've been crazy about him since the first time I saw him."),
                    ExampleSentenceKurdish(
                        text: "ئەوینداری بوومە لەوەتەی یەکەم جار دیم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrazys11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrazys11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ھاوەڵناو) هەبوونی نەخۆشی دەروونی کە کێشە بۆ بیرکردنەوەی ئاسایی درووست دەکات"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I'd go crazy if I lived here."),
                    ExampleSentenceKurdish(
                        text: "شێت دەبووم ئەگەر لێرە ژیابام."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrazys12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrazys12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ناو) کەسێک کە بیرۆکەی نامۆی هەیە یان لە ڕووی دەروونییەوە تەواو نییە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "There are a lot of crazies out there."),
                    ExampleSentenceKurdish(
                        text: "ژمارەیەکی زۆر شێت (لەوێ) هەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrazys13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrazys13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (ھاوەڵکار) ئێجگار زۆر"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "My job continues to be crazy busy."),
                    ExampleSentenceKurdish(
                        text:
                            "کارەکەم بەردەوامە لەوەی تەواو لە سەرقاڵیدا بێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrazys14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrazys14("en-US"),
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
- Adjective: crazy (Derived forms: crazier, craziest)
1. Affected with madness or insanity (= brainsick, demented, disturbed, mad, sick, unbalanced, unhinged)
"a man who had gone crazy";
 
2. Foolish; totally unsound (= half-baked [informal], screwball [informal], softheaded, wiggy [US, informal], crackpot [informal], nutty [informal])
"a crazy scheme";
 
3. Possessed by inordinate excitement
"the crowd went crazy"; "was crazy to try his new bicycle"
 
4. Bizarre or fantastic
"had a crazy dream"; "wore a crazy hat"
 
5. Intensely enthusiastic about or preoccupied with (= wild, dotty [informal], gaga [informal])
"crazy about cars and racing";

- Noun: crazy (Derived forms: crazies)
Usage: N. Amer, informal
1. An insane person (= lunatic, madman, maniac, loony [informal], looney [informal], nutcase [informal], headcase [informal])
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
    videoId: 'https://youtu.be/hFZFjoX2cGg?t=',
    startSeconds: 1012,
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
    videoId: 'https://youtu.be/hS2x1zl4rn0?t=',
    startSeconds: 296,
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
    videoId: 'https://youtu.be/w98l2EFR6dE?t=',
    startSeconds: 28,
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
    videoId: 'https://youtu.be/FHJ3CMWnVxY?t=',
    startSeconds: 19,
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
    videoId: 'https://youtu.be/_wNsZEqpKUA?t=',
    startSeconds: 385,
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
    videoId: 'https://youtu.be/HDntl7yzzVI?t=',
    startSeconds: 638,
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
    videoId: 'https://youtu.be/-HyHZsa79LU?t=',
    startSeconds: 371,
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