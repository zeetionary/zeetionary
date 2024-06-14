import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydear extends StatefulWidget {
  const EnglishEntrydear({super.key});

  @override
  State<EnglishEntrydear> createState() => _EnglishEntrydearState();
}

class _EnglishEntrydearState extends State<EnglishEntrydear> {
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
    return const EntryTitle(word: "dear");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dear");
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
    return const IPAofEnglish(text: "IpaUK: /dɪə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdear(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dear"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdear("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪr/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdear(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dear"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdear("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdears1(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Dear Mrs Jones"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears2(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He's one of my dearest friends."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears3(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her daughter is very dear to her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears4(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They lost everything that was dear to them."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears5(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Take my advice, dear reader."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears6(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Everything's so dear now, isn't it?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears7(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There was a shortage of potatoes, and they became dear."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears8(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Oh dear! I think I've lost my purse!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears9(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Oh dear! What a shame."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears10(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Isn't he a dear?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears11(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Be a dear and fetch me my coat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears12(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Would you like a drink, dear?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears13(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Come here, my dear."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears14(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What's your name, dear?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears15(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The art of trading relies on knowing when to buy cheap and sell dear."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears16(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdears1600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears17(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdears1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears18(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdears1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears19(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdears1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears20(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdears2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears21(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdears2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears22(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdears2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears23(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdears2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears24(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdears2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears25(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdears2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears26(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdears2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears27(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdears2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdears28(String languageCode) async {
    // DOPSUM: CHANGE speakdear
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdears2800"); // DOPSUM: CHANGE TEXT
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
کوردی: ئازیز، خۆشەویست، لەبەردڵان، ژیکەڵە، دەلال، جوان، نازدار،	(لە نامەدا) خۆشەویست، بەڕێز، ئازیز، ھێژا، گران، گرانبایی، زۆربڕ،	مرۆی ژیکەڵە، لەبەردڵان،	(لە بانگ‌کردن‌دا) گیانەکەم! دنیاودینەکەم! خۆشەویستەکەم! ئازیزەکەم! کەس‌وکارەکەم! گیانی‌گیان! ئاخ! بەزیادم نەکرد! ئەح!
"""),
          const DefinitionKurdish(
              text:
                  "١. (ھاوەڵناو) لە نامەیەکدا لە پێش ناوی ئەو کەسە بەکاردێت کە نامەکەی بۆ دەنێریت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Dear Mrs Jones"),
                    ExampleSentenceKurdish(text: "بەڕێز خاتوو جەونز."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "dear", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdears1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdears1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵناو) ئازیر یان خۆشەویست لای کەسێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He's one of my dearest friends."),
                    ExampleSentenceKurdish(
                        text: "یەکێک لە ئازیترین ھاوڕێکانمە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdears2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdears2("en-US"),
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
                        text: "Her daughter is very dear to her."),
                    ExampleSentenceKurdish(text: "کچەکەی زۆر ئازیزە لای."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdears3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdears3("en-US"),
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
                        text: "They lost everything that was dear to them."),
                    ExampleSentenceKurdish(
                        text:
                            "ھەموو ئەو شتانەیان لەدەستدا کە خۆشەویست بوو لایان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdears4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdears4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) بۆ بانگکردنی کەسێک بە ڕێزەوە یان ھاوڕێیانە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Take my advice, dear reader."),
                    ExampleSentenceKurdish(
                        text: "ئامۆژگاریم وەربگرە، خوێنەری خۆشەویست."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdears5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdears5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ھاوەڵناو) گران"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Everything's so dear now, isn't it?"),
                    ExampleSentenceKurdish(
                        text: "ھەموو شتێک ئێستا زۆر گرانە، وانییە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdears6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdears6("en-US"),
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
                            "There was a shortage of potatoes, and they became dear."),
                    ExampleSentenceKurdish(
                        text: "کەمی پەتاتە ھەبوو، و زۆر گران بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdears7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdears7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (سەرسوڕمان) بۆ پیشاندانی سەرسامی، نیگەرانی، بێزاری، ھتد"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Oh dear! I think I've lost my purse!"),
                    ExampleSentenceKurdish(
                        text: "بەزیادم نەکرد! پێموایە جزدانەکەم ونکردووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdears8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdears8("en-US"),
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
                    ExampleSentenceEnglish(text: "Oh dear! What a shame."),
                    ExampleSentenceKurdish(text: "ئای خوایە! چی شەرمێکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdears9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdears9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ناو) کەسێکی میھرەبان"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Isn't he a dear?"),
                    ExampleSentenceKurdish(text: "میھرەبان نییە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdears10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdears10("en-US"),
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
                        text: "Be a dear and fetch me my coat."),
                    ExampleSentenceKurdish(
                        text: "بەخشندە بە و قەمسەڵەکەم بۆ بێنە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdears11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdears11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (ناو) بۆ قسەکردن لەگەڵ کەسێک کە خۆشت دەوێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Would you like a drink, dear?"),
                    ExampleSentenceKurdish(
                        text: "حەزت بە خواردنەوەیەک، گیانەکەم؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdears12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdears12("en-US"),
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
                    ExampleSentenceEnglish(text: "Come here, my dear."),
                    ExampleSentenceKurdish(text: "وەرە ئێرە، جەرگەکەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdears13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdears13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (ناو) بەکاردێت لەکاتی قسەکردن بەشێوەیەکی ھاوڕێیانە، بەتایبەتی لەکاتی قسەکردنی کەسێکی گەورە لەگەڵ کەسێکی بچووک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "What's your name, dear?"),
                    ExampleSentenceKurdish(text: "ناوت چییە، شیرینم؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdears14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdears14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (ھاوەڵکار) بە نرخێکی زۆر"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The art of trading relies on knowing when to buy cheap and sell dear."),
                    ExampleSentenceKurdish(
                        text:
                            "ھونەری بازرگانی پشت بە زانینی ئەوە دەبەستێت چۆن بکڕیت بە ھەرزان و بفرۆشیت بە گران."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdears15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdears15("en-US"),
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
- Adjective: dear (derived forms: dearer, dearest)
1. Dearly loved (= beloved, darling)
 
2. With or in a close or intimate relationship (= good, near)
"my sisters and brothers are near and dear";
 
3. Sincerely intended and with strong feeling (= devout, earnest, heartfelt)
"one's dearest wish";
 
4. Having a high price (= costly, high-priced, pricey, pricy, spendy [N. Amer, informal])
"much too dear for my pocketbook";
 
5. A formal way of addressing somebody at the beginning of a letter or email

- Noun: dear (derived forms: dears)
1. Someone who is loved (used as term of endearment) (= beloved, dearest, honey [informal], love, darling, sweetheart, sugar [informal], baby [informal], duck [Brit, informal], hon [informal])
 
2. A sweet innocent mild-mannered person (especially a child) (= lamb)

- Adverb: dear 
1. With affection (= dearly, affectionately)
"she loved him dear";
 
2. At a great cost (= dearly)
"this cost him dear";

- Interjection: dear 
1. Used to express shock, dismay, disappointment, sympathy, etc. (= oh dear, dear me, dearie me [informal], Lordy [informal], good grief [informal])
"Oh dear; I was so miserable !"; "Oh, dear me, dear me, what shall I do?";
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
    videoId: 'Kou7ur5xt_4',
    startSeconds: 424,
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
    videoId: '3YltYCrPZos',
    startSeconds: 166,
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
    videoId: 'nRafaCcfrcI',
    startSeconds: 192,
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
    videoId: 'KJy7T24rhg0',
    startSeconds: 69,
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
    videoId: 'zqllxbPWKNI',
    startSeconds: 607,
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
    videoId: 'NDjNX3nEfYo',
    startSeconds: 606,
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
    videoId: 'QLq6GEiHqR8',
    startSeconds: 572,
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