import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycry extends StatefulWidget {
  const EnglishEntrycry({super.key});

  @override
  State<EnglishEntrycry> createState() => _EnglishEntrycryState();
}

class _EnglishEntrycryState extends State<EnglishEntrycry> {
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
    return const EntryTitle(word: "cry");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: cry");
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
    return const IPAofEnglish(text: "IpaUK: /kraɪ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcry(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cry");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcry("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kraɪ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcry(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cry");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcry("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrys1(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's all right. Don't cry.");
  }

  Future<void> speakcrys2(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I just couldn't stop crying.");
  }

  Future<void> speakcrys3(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The little boy fell over and started to cry.");
  }

  Future<void> speakcrys4(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The baby was crying for its mother.");
  }

  Future<void> speakcrys5(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There's nothing to cry about.");
  }

  Future<void> speakcrys6(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She threw her arms around his neck crying tears of joy.");
  }

  Future<void> speakcrys7(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That night she cried herself to sleep.");
  }

  Future<void> speakcrys8(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She ran to the window and cried for help.");
  }

  Future<void> speakcrys9(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He cried for help as the fire spread.");
  }

  Future<void> speakcrys10(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Seagulls followed the boat, crying loudly.");
  }

  Future<void> speakcrys11(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A pair of eagles cried out to each other as they circled above the trees.");
  }

  Future<void> speakcrys12(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He fell to the ground with a cry.");
  }

  Future<void> speakcrys13(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was too weak to raise even the smallest of cries.");
  }

  Future<void> speakcrys14(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He gave a loud cry of despair.");
  }

  Future<void> speakcrys15(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("With a cry of ‘Stop thief!’ he ran after the boy.");
  }

  Future<void> speakcrys16(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her answer was greeted with cries of outrage.");
  }

  Future<void> speakcrys17(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She heard cries in the distance.");
  }

  Future<void> speakcrys18(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The eagle gave a cry as it circled overhead.");
  }

  Future<void> speakcrys19(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her behaviour at school was really a cry for help.");
  }

  Future<void> speakcrys20(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We need a new leader who's ready to hear the cry of the people.");
  }

  Future<void> speakcrys21(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I felt a lot better after a good long cry.");
  }

  Future<void> speakcrys22(String languageCode) async {
    // DOPSUM: CHANGE speakcry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You'll feel better when you've had a good cry.");
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
کوردی: ھەرا، نەڕە، گوڕە، بانگ، گازی، ھاوار، زریوەزریو، بۆڕە، قاو، قیژە، زیکە، جیکە، زیقە،	گریان، ماوەی گریان،	لوورە،	جاڕ، بانگەواز،	دروشم،	داخوازی، داوا،	سکاڵا، شکات
"""),
          const DefinitionKurdish(text: "١. (کردار) گریان"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "It's all right. Don't cry."),
                    ExampleSentenceKurdish(text: "ھیچ نییە، مەگری."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "cry", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrys1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrys1("en-US"),
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
                        text: "I just couldn't stop crying."),
                    ExampleSentenceKurdish(text: "نەمدەتوانی لە گریان بوەستم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrys2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrys2("en-US"),
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
                                    "The little boy fell over and started to cry."),
                            ExampleSentenceKurdish(
                                text:
                                    "کوڕە بچووکەکە کەوت و دەستیکرد بە گریان."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrys3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrys3("en-US"),
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
                                    "The baby was crying for (= because it wanted) its mother."),
                            ExampleSentenceKurdish(
                                text: "منداڵەکە بۆ دایکی دەگریا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrys4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrys4("en-US"),
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
                                text: "There's nothing to cry about."),
                            ExampleSentenceKurdish(
                                text: "ھیچ شتێک نییە لەسەری بگریت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrys5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrys5("en-US"),
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
                                    "She threw her arms around his neck crying tears of joy."),
                            ExampleSentenceKurdish(
                                text: "دەستی لە ملی کرد و فرمێسکی شادیی ڕشت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrys6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrys6("en-US"),
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
                                text: "That night she cried herself to sleep."),
                            ExampleSentenceKurdish(
                                text: "ئەو شەوە بە گریانە خەوت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrys7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrys7("en-US"),
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
          const DefinitionKurdish(text: "٢. (کردار) ھاوارکردن بە دەنگی بەرز"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She ran to the window and cried for help."),
                    ExampleSentenceKurdish(
                        text:
                            "بەرەو پەنجەرەکە ڕایکرد و ھاواری کرد بۆ یارمەتی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrys8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrys8("en-US"),
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
                        text: "He cried for help as the fire spread."),
                    ExampleSentenceKurdish(
                        text: "کە ئاگرەکە بڵاوبوویەوە قیژاندی بۆ یارمەتی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrys9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrys9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) درووستکردنی دەنگێکی بەرز لەلایەن ئاژەڵێکەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Seagulls followed the boat, crying loudly."),
                    ExampleSentenceKurdish(
                        text:
                            "نەورەس شوێنی بەلەمەکە کەوتن و بە بەرزی دەیانقڕیواند."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrys10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrys10("en-US"),
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
                            "A pair of eagles cried out to each other as they circled above the trees."),
                    ExampleSentenceKurdish(
                        text:
                            "جووتێک داڵ بۆ یەکتری دەیانزیقاند کە بە دەوری دارەکاندا دەسووڕانەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrys11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrys11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ناو) ھاوارێکی بەرز"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He fell to the ground with a cry."),
                    ExampleSentenceKurdish(
                        text: "بە ھاوارێکی بەرزەوە دای بە زەویدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrys12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrys12("en-US"),
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
                            "He was too weak to raise even the smallest of cries."),
                    ExampleSentenceKurdish(
                        text:
                            "زۆر لاواز بوو کە تەنانەت بچووکترین ھاواریش بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrys13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrys13("en-US"),
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
                        text: "He gave a loud cry of despair."),
                    ExampleSentenceKurdish(
                        text: "ھاوارێکی بەرزی لە نائومێدیدا کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrys14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrys14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) ھاوارکردنێکی بەرز"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "With a cry of ‘Stop thief!’ he ran after the boy."),
                    ExampleSentenceKurdish(
                        text:
                            "بە ھاوارکردنی 'بوەستە دز!' ڕایکرد بە دوای کوڕەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrys15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrys15("en-US"),
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
                        text: "Her answer was greeted with cries of outrage."),
                    ExampleSentenceKurdish(
                        text:
                            "وەڵامەکەی بە ھاوارکردنی تووڕەییەوە پێشوازی لێکرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrys16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrys16("en-US"),
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
                        text: "She heard cries in the distance."),
                    ExampleSentenceKurdish(
                        text: "گوێی لە ھاوارکردن بوو لە دوورەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrys17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrys17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ناو) دەنگی باڵندە یان ئاژەڵێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The eagle gave a cry as it circled overhead."),
                    ExampleSentenceKurdish(
                        text:
                            "داڵەکە زیقەیەکی کرد لە کە لەسەرەوە دەسووڕایەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrys18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrys18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (ناو) داوا یان داخوازی بۆ شتێک کە زوو پێویستە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Her behaviour at school was really a cry for help."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕەفتاری لە قوتابخانە تەواو داوایەک بوو بۆ یارمەتی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrys19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrys19("en-US"),
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
                            "We need a new leader who's ready to hear the cry of the people."),
                    ExampleSentenceKurdish(
                        text:
                            "پێویستیمان بە سەرکردەیەکی تازەیە کە ئامادەیە گوێ لە ھاواری خەڵکی بگرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrys20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrys20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (ناو) گریان یان ماوەیەک لە گریان"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I felt a lot better after a good long cry."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەستم زۆر بە باشتر کرد لە دوای ماوەیەک لە گریان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrys21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrys21("en-US"),
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
                        text: "You'll feel better when you've had a good cry."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەست زۆر بە باشتر دەکەیت لە دوای ئەوەی ماوەیەک بە باشی گریاویت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrys22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrys22("en-US"),
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
- Verb: cry (derived forms: cried, crying, cries)
1. Utter a sudden loud cry (= shout, shout out, call, yell, scream, holler [informal], hollo [non-standard], squall)
"she cried with pain when the doctor inserted the needle";
 
2. Shed tears because of sadness, rage, or pain (= weep)
"She cried bitterly when she heard the news of his death";
 
3. Utter aloud; often with surprise, horror, or joy (= exclaim, cry out, outcry, call out, shout)
"'Help!' she cried"; "'I won!' he cried out";
 
4. Proclaim or announce in public (= blazon out)
"He cried his merchandise in the market square"; "before we had newspapers, a town crier would cry the news";
 
5. Demand immediate action
"This situation is crying for attention"
 
6. Utter a characteristic sound
"The cat was crying"
 
7. Bring into a particular state by crying
"The little boy cried himself to sleep"

- Noun: cry (derived forms: cries)
1. A loud utterance; often in protest or opposition (= outcry, call, yell, shout, vociferation)
"the speaker was interrupted by loud cries from the rear of the audience";
 
2. A loud utterance of emotion (especially when inarticulate) (= yell)
"a cry of rage";
 
3. A slogan used to rally support for a cause (= war cry, rallying cry, battle cry, watchword)
"a cry to arms"; "a war cry to arms"; "a rallying cry to arms"; "a battle cry to arms";
 
4. A fit of weeping
"had a good cry"
 
5. The characteristic utterance of an animal
"animal cries filled the night"
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
  final String _videoId = '_spuxXnul0U';
  final double _startSeconds = 109;

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

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 423;

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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 267;

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

  final String _videoId = 'R_fZjGm2OrM';
  final double _startSeconds = 197;

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

  final String _videoId = 'NCLZi2Rn_ug';
  final double _startSeconds = 82;

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

  final String _videoId = 'ozsgl_sLnHQ';
  final double _startSeconds = 1782;

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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'nITZooG6ij8';
  final double _startSeconds = 19;

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