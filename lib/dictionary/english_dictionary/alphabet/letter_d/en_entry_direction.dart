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
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
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
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
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
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They headed in the direction of the village.");
  }

  Future<void> speakdirections2(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She pointed in my direction.");
  }

  Future<void> speakdirections3(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They hit a truck coming in the opposite direction.");
  }

  Future<void> speakdirections4(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The road was blocked in both directions.");
  }

  Future<void> speakdirections5(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The aircraft was flying in a northerly direction.");
  }

  Future<void> speakdirections6(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When the police arrived, the crowd scattered in all directions.");
  }

  Future<void> speakdirections7(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Has the wind changed direction?");
  }

  Future<void> speakdirections8(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let's stop and ask for directions.");
  }

  Future<void> speakdirections9(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A farmer gave us directions to the town.");
  }

  Future<void> speakdirections10(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("With all pesticides, follow the directions for use carefully.");
  }

  Future<void> speakdirections11(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The exhibition provides evidence of several new directions in her work.");
  }

  Future<void> speakdirections12(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I am very unhappy with the direction the club is taking.");
  }

  Future<void> speakdirections13(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He wants to take the company in a different direction.");
  }

  Future<void> speakdirections14(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Do you feel your career is heading/headed in the right direction?");
  }

  Future<void> speakdirections15(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's only a small improvement, but at least it's a step in the right direction.");
  }

  Future<void> speakdirections16(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Support came from an unexpected direction.");
  }

  Future<void> speakdirections17(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Let us approach the subject from a different direction.");
  }

  Future<void> speakdirections18(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We are looking for somebody with a clear sense of direction.");
  }

  Future<void> speakdirections19(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Once again her life felt lacking in direction.");
  }

  Future<void> speakdirections20(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There seems to be no clear direction in his policy.");
  }

  Future<void> speakdirections21(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She was entrusted with the direction of the project.");
  }

  Future<void> speakdirections22(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All work was produced by the students under the direction of John Williams.");
  }

  Future<void> speakdirections23(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("All such research is under government direction.");
  }

  Future<void> speakdirections24(String languageCode) async {
    // DOPSUM: CHANGE speakdirection
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The new workers need direction from a supervisor.");
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
کوردی: لا، ئالی، لایەن، دەست، قۆڵ، بەر، ڕوو، حاست، ئاست، ئاراستە،	ڕێگا، ڕێ، ڕێڕەو، شوێن، ئاقار، ئاست، ئاراستە، سیلە،	مەیل، ویست، تێندێنسی،	بەڕێوەبەرایەتی، ھەڵسووڕاندن، چاودێری،	دەستوور،	ڕێ‌پیشان‌دان، ڕێنوێنی،	(سینەما) دەرھێنان، دەرھێنەری، دەستووری کار، دەستوورنامە، ڕێنوێنی، دەستوور،	نێونیشان
"""),
          const DefinitionKurdish(
              text: "١. (ناو) ئاراستەی گشتی جوڵەی کەسێک یان شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "They headed in the direction of the village."),
                    ExampleSentenceKurdish(text: "بە ئاراستەی گوندەکە چوون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "direction", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirections1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirections1("en-US"),
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
                        text: "She pointed in my direction."),
                    ExampleSentenceKurdish(text: "بە ئاراستەی من ئاماژەی کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirections2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirections2("en-US"),
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
                                    "They hit a truck coming in the opposite direction."),
                            ExampleSentenceKurdish(
                                text:
                                    "کێشایان بە بارھەڵگرێکدا کە بە ئاراستەی پێچەوانەوە دەھات."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdirections3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdirections3("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "The road was blocked in both directions."),
                            ExampleSentenceKurdish(
                                text: "ڕێگاکە لە ھەردوو ئاراستەوە گیرابوو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdirections4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdirections4("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "The aircraft was flying in a northerly direction."),
                            ExampleSentenceKurdish(
                                text: "فڕۆکەکە بە ئاراستەی باکووردا دەچوو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdirections5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdirections5("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "When the police arrived, the crowd scattered in all directions."),
                            ExampleSentenceKurdish(
                                text:
                                    "کە پۆلیس گەشت، خەڵکەکە بە ھەموو ئاراستەکاندا ھەڵھاتن."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdirections6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdirections6("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text: "Has the wind changed direction?"),
                            ExampleSentenceKurdish(
                                text: "بایەکە ئارستەی گۆڕیەو؟"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdirections7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdirections7("en-US"),
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
              text:
                  "٢. (ناو) ڕێنمایی سەبارەت بە کردنی شتێک، ڕۆشتن بۆ شوێنێک، ھتد"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Let's stop and ask for directions."),
                    ExampleSentenceKurdish(
                        text: "با بوەستین و پرسیار بۆ ناونیشان بکەیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirections8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirections8("en-US"),
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
                        text: "A farmer gave us directions to the town."),
                    ExampleSentenceKurdish(
                        text: "جوتیارێک ناونیشانی شارۆچکەکەی پێداین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirections9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirections9("en-US"),
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
                            "With all pesticides, follow the directions for use carefully."),
                    ExampleSentenceKurdish(
                        text:
                            "بۆ ھەموو مێرووکوژێک، بەوریاییەوە شوێن ڕێنماییەکانی بەکارھێنان بکەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirections10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirections10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) ئاراستەی بەرەوپێشچوونی کەس/شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The exhibition provides evidence of several new directions in her work."),
                    ExampleSentenceKurdish(
                        text:
                            "پێشانگاکە بەڵگەی ژمارەیەک ئاقاری تازە لە کارەکەیدا پیشان دەدات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirections11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirections11("en-US"),
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
                            "I am very unhappy with the direction the club is taking."),
                    ExampleSentenceKurdish(
                        text: "زۆر دڵتەنگم بەو ئاقارەی یانەکە پێیدا دەڕوات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirections12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirections12("en-US"),
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
                                    "He wants to take the company in a different direction."),
                            ExampleSentenceKurdish(
                                text:
                                    "دەیەوێت کۆمپانیاکە بە ئاراستەیەکی جیاوازدا ببات."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdirections13("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdirections13("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "Do you feel your career is heading/headed in the right direction?"),
                            ExampleSentenceKurdish(
                                text:
                                    "پێتوایە کارەکەت بە ئاقارێکی گونجاودا دەچێت؟"),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdirections14("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdirections14("en-US"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // const DividerDefinition(),
                  // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
                  const DividerSentences(),
                  Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            ExampleSentenceEnglish(
                                text:
                                    "It's only a small improvement, but at least it's a step in the right direction."),
                            ExampleSentenceKurdish(
                                text:
                                    "تەنھا بەرەوپێشچوونێکی بچووکە، بەڵام ھیچ نەبێت ھەنگاوێکە بە ئاراستەی گونجاودا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdirections15("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdirections15("en-US"),
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
              text:
                  "٤. (ناو) شوێنی گشتی کە کەسێک یان شتێک لێیەوە دێت یان گەشە دەکات"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Support came from an unexpected direction."),
                    ExampleSentenceKurdish(
                        text: "پشتیوانی لە بەرەیەکی چاوەڕوان نەکراوەوە ھات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirections16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirections16("en-US"),
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
                            "Let us approach the subject from a different direction."),
                    ExampleSentenceKurdish(
                        text: "با لە باباتەکە بگەین لە ئاراستەیەکی جیاوازەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirections17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirections17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) مەبەست؛ ئامانج"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "We are looking for somebody with a clear sense of direction."),
                    ExampleSentenceKurdish(
                        text: "بۆ کەسێک دەگەڕێین کە ئامانجی ڕوونی ھەبێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirections18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirections18("en-US"),
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
                        text: "Once again her life felt lacking in direction."),
                    ExampleSentenceKurdish(
                        text:
                            "جارێکی دیکە ژیانی وا دەردەکەوت کە ئامانجی نەبێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirections19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirections19("en-US"),
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
                            "There seems to be no clear direction in his policy."),
                    ExampleSentenceKurdish(
                        text:
                            "وا دەردەکەوێت کە ھیچ ئامانجێکی ڕوون لە سیاسەتیدا نەبێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirections20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirections20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (ناو) ھونەری بەڕێوەبردن و ئاراستەکردنی شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She was entrusted with the direction of the project."),
                    ExampleSentenceKurdish(
                        text: "متمانەی بەڕێوەبردنی پڕۆژەکەی پێدرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirections21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirections21("en-US"),
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
                            "All work was produced by the students under the direction of John Williams."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەموو کارەکان لەلایەن خوێندکارانەوە لەژێر سەرپەرشتی جۆن ویلیامز ئەنجام درا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirections22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirections22("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "All such research is under government direction."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەموو لێکۆڵینەوەیەکی وەھا لەژێر سەرپەرشتی حکومەت دەکرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirections23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirections23("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The new workers need direction from a supervisor."),
                    ExampleSentenceKurdish(
                        text:
                            "کرێکارە تازەکان پێویستیان بە ڕێنماییە لە سەرپەرشتیارێکەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdirections24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdirections24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // directions2500"),
          // speakdirections25
          // directions25("en-US"),
          // directions2600"),
          // speakdirections26
          // directions26("en-US"),
          // directions2700"),
          // speakdirections27
          // directions27("en-US"),
          // directions2800"),
          // speakdirections28
          // directions28("en-US"),
          // directions2900"),
          // speakdirections29
          // directions29("en-US"),
          // directions_3000"),
          // speakdirections30
          // directions30("en-US"),
          // directions3100"),
          // speakdirections31
          // directions31("en-US"),
          // directions3200"),
          // speakdirections32
          // directions32("en-US"),
          // directions3300"),
          // speakdirections33
          // directions33("en-US"),
          // directions3400"),
          // speakdirections34
          // directions34("en-US"),
          // directions3500"),
          // speakdirections35
          // directions35("en-US"),
          // directions3600"),
          // speakdirections36
          // directions36("en-US"),
          // directions3700"),
          // speakdirections37
          // directions37("en-US"),
          // directions3800"),
          // speakdirections38
          // directions38("en-US"),
          // directions3900"),
          // speakdirections39
          // directions39("en-US"),
          // directions_4000"),
          // speakdirections40
          // directions40("en-US"),
          // directions4100"),
          // speakdirections41
          // directions41("en-US"),
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
          // Speaker icon for American English
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
  final double _startSeconds = 343;

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

  final String _videoId = 'tXjHb5QmDV0';
  final double _startSeconds = 276;

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

  final String _videoId = '2fOWFfpLYW0';
  final double _startSeconds = 822;

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

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 238;

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

  final String _videoId = 'DWmGArQBtFI';
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

  final String _videoId = 'CXvG2CBJ3SE';
  final double _startSeconds = 336;

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