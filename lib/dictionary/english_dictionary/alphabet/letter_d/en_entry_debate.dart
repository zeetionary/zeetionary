import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydebate extends StatefulWidget {
  const EnglishEntrydebate({super.key});

  @override
  State<EnglishEntrydebate> createState() => _EnglishEntrydebateState();
}

class _EnglishEntrydebateState extends State<EnglishEntrydebate> {
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
    return const EntryTitle(word: "debate");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: debate");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈbeɪt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdebate(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("debate"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdebate("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈbeɪt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdebate(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("debate"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdebate("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdebates1(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The minister opened the debate."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates2(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "After a long debate, Congress approved the proposal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates3(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The environmentalists seem to have lost the debate over the building of this road."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates4(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Many of these points were raised during the debate on prison reform."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates5(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The debate focused on who should pay for the changes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates6(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The issue has sparked debate across the industry."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates7(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The theatre's future is a subject of lively public debate."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates8(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There has been heated debate about whether the film should be allowed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates9(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The issue is still under debate."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates10(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Politicians will be debating the bill later this week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates11(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is time to debate the issue of school funding."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates12(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The question of the origin of the universe is still hotly debated (= strongly argued about) by scientists."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates13(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She debated with herself for a while, and then picked up the phone."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates14(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "For a moment he debated going after her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates15(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdebates1500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates16(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdebates1600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates17(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdebates1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates18(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdebates1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates19(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdebates1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates20(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdebates2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates21(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdebates2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates22(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdebates2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates23(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdebates2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates24(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdebates2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates25(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdebates2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates26(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdebates2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates27(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdebates2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdebates28(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdebates2800"); // DOPSUM: CHANGE TEXT
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
کوردی: دیبەیت، دان‌وستان، وت‌ووێژ، مشت‌ومڕ، دمەدمە، دەمەتەقێ، شەڕەقسە، شەڕەچەلەحانێ، مشەرعێن
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) گەنگەشەیەکی فەرمی بابەتێک بەشێوەیەکی گشتی یان لە پەرلەماندا. لە دیبەیتێکدا دوو کەس یان زیاتر قسە لەسەر دوو دیدگای دژبەیەک دەکەن زۆرجار دەنگ دەدرێت لەسەر بابەتەکە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The minister opened the debate (= was the first to speak)."),
                    ExampleSentenceKurdish(
                        text: "وەزیرەکە دیبەیتەکەی دەستپێکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "debate", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdebates1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdebates1("en-US"),
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
                            "After a long debate, Congress approved the proposal."),
                    ExampleSentenceKurdish(
                        text:
                            "لە دوای دیبەیتێکی درێژ، کۆنگرێس پێشنیارەکەی پەسەند کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdebates2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdebates2("en-US"),
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
                            "The environmentalists seem to have lost the debate over the building of this road."),
                    ExampleSentenceKurdish(
                        text:
                            "ژینگەپارێزان واپێدەچوو دەبەیتەکەیان دۆڕاندبێت سەبارەت بە بنیاتنانی ئەم ڕێگایە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdebates3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdebates3("en-US"),
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
                            "Many of these points were raised during the debate on prison reform."),
                    ExampleSentenceKurdish(
                        text:
                            "زۆرێک لەم خاڵانە باسکران لە دەمی دیبەیتی چاکسازی زینداندا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdebates4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdebates4("en-US"),
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
                            "The debate focused on who should pay for the changes."),
                    ExampleSentenceKurdish(
                        text:
                            "دیبەیتەکە سەرنجی لەسەر ئەوە بوو کە کێ دەبێت خەرجییەکان بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdebates5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdebates5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) مشتومڕێک یان باسێک کە بۆچوونی جیاواز لەخۆدەگرێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The issue has sparked debate across the industry."),
                    ExampleSentenceKurdish(
                        text:
                            "بابەتەکە دیبەیتی لە پیشەسازییەکەدا دەستپێکردووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdebates6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdebates6("en-US"),
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
                            "The theatre's future is a subject of lively public debate."),
                    ExampleSentenceKurdish(
                        text: "هۆڵی شانۆکە بابەتی دیبەیتی گەرمی گشتییە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdebates7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdebates7("en-US"),
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
                            "There has been heated debate about whether the film should be allowed."),
                    ExampleSentenceKurdish(
                        text:
                            "مشتومڕی گەرم هەبووە سەبارەت بەوەی ئایا ڕێگا بە فیلمەکە بدرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdebates8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdebates8("en-US"),
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
                        text: "The issue is still under debate."),
                    ExampleSentenceKurdish(
                        text: "بابەتەکە هێشتا لە باسکردندایە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdebates9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdebates9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) باسکردنی شتێک لە پێش بڕیاردانێک یان یان دۆزینەوەی چارەسەر"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Politicians will be debating the bill later this week."),
                    ExampleSentenceKurdish(
                        text:
                            "سیاسییەکان کۆتایی ئەم هەفتەیە گەنگەشەی ئەمە دەکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdebates10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdebates10("en-US"),
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
                            "It is time to debate the issue of school funding."),
                    ExampleSentenceKurdish(
                        text: "کاتی ئەوەیە باسی خەرخی قوتابخانە بکەین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdebates11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdebates11("en-US"),
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
                            "The question of the origin of the universe is still hotly debated (= strongly argued about) by scientists."),
                    ExampleSentenceKurdish(
                        text:
                            "بابەتی بنەچەی گەردوون هێشتا بە گەرمی لەلایەن زانایانەوە گەنگەشە دەکرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdebates12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdebates12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) بە وریایی بیرکردنەوە سەبارەت بە شتێک پێش بڕیاردانێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She debated with herself for a while, and then picked up the phone."),
                    ExampleSentenceKurdish(
                        text:
                            "بۆ ماوەیەک ڕاوێژی لەگەڵ خۆی کرد و دواتر موبایلەکەی هەڵگرت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdebates13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdebates13("en-US"),
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
                        text: "For a moment he debated going after her."),
                    ExampleSentenceKurdish(
                        text:
                            "بۆ ماوەیەک بیری لەوە کردەوە کە ئایا بە دوایدا بچێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdebates14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdebates14("en-US"),
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
- Noun: debate (Derived forms: debates)
1. A discussion in which reasons are advanced for and against some proposition or proposal (= argument, argumentation)
"the debate over foreign aid goes on and on";
 
2. The formal presentation of a stated proposition and the opposition to it (usually followed by a vote) (= disputation, public debate)

- Verb: debate (Derived forms: debating, debated, debates)
1. Argue with one another
"We debated the question of abortion"; "John debated Mary"
 
2. Think about carefully; weigh (= consider, moot, turn over, deliberate)
"They debated the possibility of a strike";
 
3. Discuss the pros and cons of an issue (= deliberate)
 
4. Have an argument about something (= argue, contend, fence)
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
    videoId: 'https://youtu.be/BxWw8AO4ZmI?t=',
    startSeconds: 406,
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
    videoId: 'https://youtu.be/0zwNZJbM-Gw?t=',
    startSeconds: 333,
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
    videoId: 'https://youtu.be/iXLNPzBm0mw?t=',
    startSeconds: 100,
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
    videoId: 'https://youtu.be/YwzXxkMDvL8?t=',
    // startSeconds: 222222222222222,
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
    videoId: 'https://youtu.be/QGbou-gAGd8?t=',
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
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/cFaInkRjqj0?t=',
    startSeconds: 2,
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
    videoId: 'https://youtu.be/Cqbleas1mmo?t=',
    startSeconds: 511,
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