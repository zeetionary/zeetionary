import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydifficult extends StatefulWidget {
  const EnglishEntrydifficult({super.key});

  @override
  State<EnglishEntrydifficult> createState() => _EnglishEntrydifficultState();
}

class _EnglishEntrydifficultState extends State<EnglishEntrydifficult> {
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
    return const EntryTitle(word: "difficult");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: difficult");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdɪfɪkəlt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdifficult(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("difficult"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdifficult("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdɪfɪkəlt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdifficult(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("difficult"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdifficult("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdifficults1(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The competition judges were given a very difficult task."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults2(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Asking for help is extremely difficult for some people."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults3(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's really difficult to read your writing."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults4(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is difficult to imagine a woman in the 1950s behaving like this."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults5(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She finds it very difficult to get up early."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults6(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It has become increasingly difficult for young people to buy a house."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults7(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is getting more and more difficult to find a job."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults8(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The fog made driving very difficult."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults9(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He finds French pronunciation quite difficult."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults10(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She is confronted with a difficult choice."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults11(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The exam questions were particularly difficult."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults12(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I found myself in a difficult situation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults13(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'd had a difficult time and needed a break."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults14(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "My boss is making life very difficult for me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults15(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They had to set up camp in extremely difficult conditions."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults16(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His presence there put me in a very difficult position."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults17(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The next few months were quite difficult."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults18(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Don't pay any attention to her—she's just being difficult."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults19(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Roger was always a difficult child."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults20(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdifficults_2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults21(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdifficults2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdifficults22(String languageCode) async {
    // DOPSUM: CHANGE speakdifficult
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdifficults2200"); // DOPSUM: CHANGE TEXT
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
کوردی: سەخت، گران، پڕئەرک، ئاسێ، کەرژاڵ، دژوار، چەتوون، ئاریش،	سەخت، قیرسیچمە، سەختگر، درەنگ‌ڕازی(بوو)، پڕچاوەڕوانی، عیناد، سەرڕەق، مانگرتوو، کەلەڕەق، سەرسەخت، هەرۆک، لاڕێ، لەنجباز
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) سەخت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The competition judges were given a very difficult task."),
                    ExampleSentenceKurdish(
                        text:
                            "دادوەرەکانی ڕکابەرییەکە ئەرکێکی زۆر قورسیان پێدرا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "difficult", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdifficults1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdifficults1("en-US"),
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
                            "Asking for help is extremely difficult for some people."),
                    ExampleSentenceKurdish(
                        text: "داواکردنی یارمەتی تەواو سەزتە بۆ هەندێک کەس."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdifficults2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdifficults2("en-US"),
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
                      text: "It's really difficult to read your writing.",
                      note:
                          "Similar: Your writing is really difficult to read.",
                    ),
                    ExampleSentenceKurdish(
                        text: "خوێندنەوەی نووسینت تەواو سەختە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdifficults3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdifficults3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
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
                                    "It is difficult to imagine a woman in the 1950s behaving like this."),
                            ExampleSentenceKurdish(
                                text:
                                    "سەختە خەیاڵی ئەوە بکەیت کە ژنێک لە ١٩٥٠ ـیەکان بەم شێوەیە ڕەفتار بکات."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdifficults4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdifficults4("en-US"),
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
                                    "She finds it very difficult to get up early."),
                            ExampleSentenceKurdish(
                                text:
                                    "زۆر بە سەختی دەبینێت زوو لە خەو هەستێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdifficults5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdifficults5("en-US"),
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
                                    "It has become increasingly difficult for young people to buy a house."),
                            ExampleSentenceKurdish(
                                text:
                                    "زیاتر و زیاتر سەخت بووە بۆ گەنجان کە خانوویەک بکڕن."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdifficults6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdifficults6("en-US"),
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
                                    "It is getting more and more difficult to find a job."),
                            ExampleSentenceKurdish(
                                text:
                                    "زیاتر و زیاتر سەخت بووە کارێک بدۆزیتەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdifficults7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdifficults7("en-US"),
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
                                text: "The fog made driving very difficult."),
                            ExampleSentenceKurdish(
                                text: "تەمەکە لێخوڕینی سەخت کرد."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdifficults8("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdifficults8("en-US"),
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
                                    "He finds French pronunciation quite difficult."),
                            ExampleSentenceKurdish(
                                text: "گۆکردنی فەرەنسی بە تەواو سەخت دەبینێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdifficults9("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdifficults9("en-US"),
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
                                    "She is confronted with a difficult choice."),
                            ExampleSentenceKurdish(
                                text: "ڕووبەڕووی هەڵبژاردەیەکی سەخت بووە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdifficults10("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdifficults10("en-US"),
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
                                    "The exam questions were particularly difficult."),
                            ExampleSentenceKurdish(
                                text:
                                    "پرسیارەکانی تاقیکردنەوە بەتایبەتی سەخت بوون."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdifficults11("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdifficults11("en-US"),
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
          const DefinitionKurdish(text: "٢. (ھاوەڵناو) پڕ لە کێشە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I found myself in a difficult situation."),
                    ExampleSentenceKurdish(
                        text: "خۆم لە دۆخێکی سەخت بینییەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdifficults12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdifficults12("en-US"),
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
                        text: "I'd had a difficult time and needed a break."),
                    ExampleSentenceKurdish(
                        text:
                            "کاتێکی سەختم هەبووبوو و پێویستیم بە پشوویەک بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdifficults13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdifficults13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
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
                                    "My boss is making life very difficult for me."),
                            ExampleSentenceKurdish(
                                text: "سەرپەرشتەکەم ژیانی سەخت کردووم."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdifficults14("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdifficults14("en-US"),
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
                                    "They had to set up camp in extremely difficult conditions."),
                            ExampleSentenceKurdish(
                                text:
                                    "پێویست بوو کەمپ هەڵبدەن لە دۆخێکی زۆر سەختدا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdifficults15("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdifficults15("en-US"),
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
                                    "His presence there put me in a very difficult position."),
                            ExampleSentenceKurdish(
                                text: "بوونی لەوێ خستمیە دۆخێکی زۆر سەختەوە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdifficults16("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdifficults16("en-US"),
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
                                    "The next few months were quite difficult."),
                            ExampleSentenceKurdish(
                                text: "چەند مانگی دواتر تەواو سەخت بوون."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakdifficults17("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakdifficults17("en-US"),
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
              text: "٣. (ھاوەڵناو) کەسێک کە بە ئاسانی ڕازی نابێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Don't pay any attention to her—she's just being difficult."),
                    ExampleSentenceKurdish(
                        text: "هیچ سەرنجی پێمەدە ـ تەنها خۆی عیناد کردووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdifficults18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdifficults18("en-US"),
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
                        text: "Roger was always a difficult child."),
                    ExampleSentenceKurdish(
                        text: "ڕۆجەر هەمیشە منداڵێکی کەلەڕەق بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdifficults19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdifficults19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdifficults_2000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdifficults20("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdifficults20("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdifficults2100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdifficults21("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdifficults21("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdifficults2200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdifficults22("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdifficults22("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
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
- Adjective: difficult 
1. Not easy; requiring great physical or mental effort to accomplish or comprehend or endure (= hard)
"a difficult task"; "nesting places on the cliffs are difficult of access"; "difficult times";
 
2. Hard to control (= unmanageable)
"a difficult child";
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
    videoId: 'https://youtu.be/DPZzrlFCD_I?t=',
    startSeconds: 3,
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
    videoId: 'https://youtu.be/e09xig209cQ?t=',
    startSeconds: 63,
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
    videoId: 'https://youtu.be/a3WnvDtDD2M?t=',
    startSeconds: 198,
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
    videoId: 'https://youtu.be/ozsgl_sLnHQ?t=',
    startSeconds: 530,
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
    videoId: 'https://youtu.be/wV-NcNwXqcA?t=',
    startSeconds: 90,
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
    videoId: 'https://youtu.be/t1shnJT8NCY?t=',
    startSeconds: 42,
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
    videoId: 'https://youtu.be/vN5UCHdgTLA?t=',
    startSeconds: 45,
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