import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydefend extends StatefulWidget {
  const EnglishEntrydefend({super.key});

  @override
  State<EnglishEntrydefend> createState() => _EnglishEntrydefendState();
}

class _EnglishEntrydefendState extends State<EnglishEntrydefend> {
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
    return const EntryTitle(word: "defend");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: defend");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈfend/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefend(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("defend"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdefend("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈfend/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefend(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("defend"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdefend("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefends1(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The role of the military is to defend the country."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends2(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Troops have been sent to defend the borders."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends3(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The male birds defend their territory against other males."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends4(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All our officers are trained to defend themselves against knife attacks."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends5(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The organization works to defend human rights wherever they are threatened."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends6(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Freedom must always be defended."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends7(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The ruling class will always defend its own interests."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends8(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "People must be vigilant in defending civil liberties regardless of external threats."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends9(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They defended their decision to pull out of the event."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends10(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The minister vigorously defended the policy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends11(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("How can you defend such behaviour?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends12(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The article seeks to defend him against charges of hypocrisy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends13(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her colleagues united in defending her from further personal attacks."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends14(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They were forced to defend for long periods."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends15(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Moody and Moran defended their goal well."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends16(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He is defending champion."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends17(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She will be defending her title at next month's championships."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends18(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He intends to defend his seat in the next election."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends19(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He has employed one of the UK's top lawyers to defend him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends20(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Who's defending?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends21(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdefends2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdefends22(String languageCode) async {
    // DOPSUM: CHANGE speakdefend
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdefends2200"); // DOPSUM: CHANGE TEXT
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
کوردی: بەرگری کردن، لایەنگری کردن، پاراستن
"""),
          const DefinitionKurdish(text: "١. (کردار) پاراستنی کەسێک لە هێرش"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The role of the military is to defend the country."),
                    ExampleSentenceKurdish(
                        text: "ئەرکی سوپا بەرگری کردن لە وڵاتە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "defend", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends1("en-US"),
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
                        text: "Troops have been sent to defend the borders."),
                    ExampleSentenceKurdish(
                        text: "هێز نێردراوە تاوەکو بەرگری لە سنوورەکان بکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends2("en-US"),
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
                            "The male birds defend their territory against other males."),
                    ExampleSentenceKurdish(
                        text:
                            "باڵندە نێرینەکان بەرگری لە سنوورەکانیان دەکەن دژ بە نێرینەکانی دیکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "٤. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "All our officers are trained to defend themselves against knife attacks."),
                    ExampleSentenceKurdish(
                        text:
                            "تەواوی ئەفسەرەکانمان ڕاهێنراون بەرگری لە خۆیان بکەن دژ بە هێرشی چەقۆ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) پاراستنی شتێک کە بەهای هەیە لات و دەیپارێزیت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The organization works to defend human rights wherever they are threatened."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕێکخراوەکە کار بۆ بەرگریکردن لە مافەکانی مرۆڤ دەکات لە هەر شوێنێک هەڕەشەیان لەسەر بێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends5("en-US"),
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
                        text: "Freedom must always be defended."),
                    ExampleSentenceKurdish(
                        text: "هەمیشە دەبێت بەرگری لە ئازادی بکرێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends6("en-US"),
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
                            "The ruling class will always defend its own interests."),
                    ExampleSentenceKurdish(
                        text:
                            "چینی دەسەڵاتدار هەمیشە بەرگری لە بەرژەوەندییەکانی خۆی دەکات.."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends7("en-US"),
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
                            "People must be vigilant in defending civil liberties regardless of external threats."),
                    ExampleSentenceKurdish(
                        text:
                            "خەڵک دەبێت وریا بن لە بەرگریکردن لە ئازادییە مەدەنییەکان بەبێ گوێدانە هەڕەشە دەرەکییەکان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) نووسین یان قسەکردن بۆ بەرگری لە کەسێک/شتێک کە هەڕەشەی لێکراوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "They defended their decision to pull out of the event."),
                    ExampleSentenceKurdish(
                        text:
                            "بەرگریان لە بڕیارەکەیان کرد بۆ کشانەوە لە چالاکییەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends9("en-US"),
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
                        text: "The minister vigorously defended the policy."),
                    ExampleSentenceKurdish(
                        text: "وەزیرەکە بە توندی بەرگری لە سیاسەتەکە کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends10("en-US"),
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
                        text: "How can you defend such behaviour?"),
                    ExampleSentenceKurdish(
                        text: "چۆن دەتوانیت بەرگری لەم جۆرە ڕەفتارانە بکەیت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends11("en-US"),
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
                            "The article seeks to defend him against charges of hypocrisy."),
                    ExampleSentenceKurdish(
                        text:
                            "وتارەکە هەوڵ دەدات بەرگری لێ بکات لە تۆمەتەکانی دووڕووی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends12("en-US"),
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
                            "Her colleagues united in defending her from further personal attacks."),
                    ExampleSentenceKurdish(
                        text:
                            "هاوکارەکانی یەکیان گرت بۆ بەرگری لێی لە هێرشی کەسی زیاتر."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) بەرگری کردن لە یاری وەرزشیدا لەوەی گۆڵ لە تیمەکەت بکرێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "They were forced to defend for long periods."),
                    ExampleSentenceKurdish(
                        text: "ناچارکران بۆ ماوەیەکی زۆر بەرگری بکەن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends14("en-US"),
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
                        text: "Moody and Moran defended their goal well."),
                    ExampleSentenceKurdish(
                        text:
                            "مودی و مۆران بەباشی بەرگرییان لە گۆڵەکەیان کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) بەژداری کردن لە پاڵەوانێتییەک کە جاری پێشووتر بردتەوە و هەوڵ دەدەیت دووبارە بیبەیتەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "He is defending champion."),
                    ExampleSentenceKurdish(
                        text: "بەرگری لە پاڵەوانێتییەکەی دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends16("en-US"),
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
                            "She will be defending her title at next month's championships."),
                    ExampleSentenceKurdish(
                        text:
                            "بەرگری لە پاڵەوانێتییەکەی دەکات لە پاڵەوانێتی مانگی داهاتوودا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends17("en-US"),
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
                            "He intends to defend his seat in the next election."),
                    ExampleSentenceKurdish(
                        text:
                            "نیازی هەیە کورسییەکەی بپارێزێت لە هەڵبژاردنی دواتردا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (کردار) بوون بە پارێزەری کەسێک کە بە تاوانێک تۆمەتبار کراوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He has employed one of the UK's top lawyers to defend him."),
                    ExampleSentenceKurdish(
                        text:
                            "یەکێک لە باشترین پارێزەرەکانی بەریتانیای گرتووە کە بەرگری لێ بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends19("en-US"),
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
                    ExampleSentenceEnglish(text: "Who's defending?"),
                    ExampleSentenceKurdish(text: "کێ بەرگری لێ دەکات؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdefends20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdefends20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdefends2100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdefends21("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdefends21("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdefends2200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdefends22("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdefends22("en-US"),
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
- Verb: defend (derived forms: defending, defends, defended)
1. Argue or speak in defence of (= support, fend for)
"She defended the motion to strike";
 
2. Be on the defensive; act against an attack
 
3. Protect against a challenge or attack (= guard, hold)
"defend that position behind the trees!";
 
4. Fight against or resist strongly (= fight, oppose, fight back, fight down, dispute)
"Don't defend it!";
 
5. Protect or fight for as a champion (= champion)
 
6. Be the defence counsel for someone in a trial (= represent)
"Ms. Smith will defend the defendant";
 
7. State or assert (= maintain)
"He defended his innocence";
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
    videoId: 'DTvS9lvRxZ8',
    startSeconds: 32,
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
    videoId: 'o9zCgPtsups',
    startSeconds: 61,
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
    videoId: 'zqllxbPWKNI',
    startSeconds: 264,
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
    videoId: 'NZ74oFctP_g',
    startSeconds: 46,
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
    videoId: 'tsxmyL7TUJg',
    startSeconds: 1449,
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
    videoId: 'ewLpXw6uN28',
    startSeconds: 905,
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
    videoId: 'yRmOWcWdQAo',
    startSeconds: 853,
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