import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydamn extends StatefulWidget {
  const EnglishEntrydamn({super.key});

  @override
  State<EnglishEntrydamn> createState() => _EnglishEntrydamnState();
}

class _EnglishEntrydamnState extends State<EnglishEntrydamn> {
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
    return const EntryTitle(word: "damn");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: damn");
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
    return const IPAofEnglish(text: "IpaUK: /dæm/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdamn(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("damn"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdamn("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dæm/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdamn(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("damn"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdamn("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdamns1(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Oh damn! I forgot he was coming."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns2(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's broken! Damn!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns3(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Damn, I've spilled coffee down my blouse!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns4(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Where's that damn book!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns5(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The damned thing won't start!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns6(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It's none of your damn business!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns7(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's a damn nuisance!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns8(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What a damn shame!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns9(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Damn you! I'm not going to let you bully me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns10(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Damn this machine! Why won't it work?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns11(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "As a child she was taught that she would be damned for her sins."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns12(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The film was damned by the critics for its mindless violence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns13(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't be so damn silly!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns14(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("What a damn stupid question!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns15(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We got out pretty damned fast!"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns16(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'm damn sure she had no idea."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns17(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns18(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns19(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns20(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns21(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns22(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns23(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns24(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns25(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns26(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns27(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns28(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns29(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns30(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns31(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns32(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns33(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdamns34(String languageCode) async {
    // DOPSUM: CHANGE speakdamn
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdamns3400"); // DOPSUM: CHANGE TEXT
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
کوردی: لەعنەت، نەفرەت، جنێو، سخێف، ناونیتکە، حەح! ئەح! بەزیادم نەکرد! ئەهـ! تەیڕیم
"""),
          const DefinitionKurdish(
              text:
                  "١. (سەرسوڕمان) وشەیەکی جنێودان کە خەڵکی بەکاریدێنن کە تووڕەن"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Oh damn! I forgot he was coming."),
                    ExampleSentenceKurdish(
                        text: "ئاه نەفرەت! بیرم چوو ئەو دێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "damn", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamns1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamns1("en-US"),
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
                    ExampleSentenceEnglish(text: "It's broken! Damn!"),
                    ExampleSentenceKurdish(text: "شکاوە! بە نەفرەت بێت!."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamns2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamns2("en-US"),
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
                        text: "Damn, I've spilled coffee down my blouse!"),
                    ExampleSentenceKurdish(
                        text: "بە زیادم نەکرد، قاوەم ڕژاند بە بلووزەکەمدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamns3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamns3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵناو) جنێوێک کە لە کاتی تووڕەیی بەکاردێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Where's that damn book!"),
                    ExampleSentenceKurdish(
                        text: "ئەو کتێبە نەفرەتییە لەکوێیە!"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamns4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamns4("en-US"),
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
                        text: "The damned thing won't start!"),
                    ExampleSentenceKurdish(
                        text: "ئەو شتە نەفرەتییە دەستپێ ناکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamns5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamns5("en-US"),
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
                        text: "It's none of your damn business!"),
                    ExampleSentenceKurdish(
                        text: "هیچ پەیوەندییەکی لەعنەتی بە تۆوە نییە!"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamns6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamns6("en-US"),
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
                    ExampleSentenceEnglish(text: "He's a damn nuisance!"),
                    ExampleSentenceKurdish(text: "بێزارکەرێکی نەفرەتییە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamns7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamns7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) بۆ جەختکردنەوە لەوەی دەیڵێیت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "What a damn shame!"),
                    ExampleSentenceKurdish(text: "چی شەرمێکی گەورەیە!"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamns8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamns8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) بەکاردێت لەکاتی جنێودان"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Damn you! I'm not going to let you bully me."),
                    ExampleSentenceKurdish(
                        text: "بە نەفرەت بیت! ناهێڵم ببیت بە کەڵەگا لێم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamns9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamns9("en-US"),
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
                        text: "Damn this machine! Why won't it work?"),
                    ExampleSentenceKurdish(
                        text: "نەفرەت لەم ئامێرە! بۆچی کار ناکات؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamns10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamns10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (کردار) خستنە دۆزەخ"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "As a child she was taught that she would be damned for her sins."),
                    ExampleSentenceKurdish(
                        text:
                            "وەک منداڵێک فێرکرا کە دەخرێتە دۆزەخ بۆ تاوانەکانی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamns11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamns11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (کردار) سەرزەنشت کردنی توند"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The film was damned by the critics for its mindless violence."),
                    ExampleSentenceKurdish(
                        text:
                            "فیلمەکە لەلایەن ڕەخنەگرانەوە ڕەخنەی لێ گیردرا بۆ توندوتیژی بێ هەستانەی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamns12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamns12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (ھاوەڵکار) جنێوێک کە بەکاردێت بۆ دەربڕینی تووڕەیی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Don't be so damn silly!"),
                    ExampleSentenceKurdish(text: "هێندە لەعنەتی گەمژە مەبە!"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamns13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamns13("en-US"),
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
                        text: "What a damn stupid question!"),
                    ExampleSentenceKurdish(text: "چی پرسیارێکی هیچی گەمژانە!"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamns14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamns14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (ھاوەڵکار) بۆ جەختکردنەوە لەوەی دەیڵێتر"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "We got out pretty damned fast!"),
                    ExampleSentenceKurdish(text: "زۆر بەخێرایی دەرچووین!"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamns15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamns15("en-US"),
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
                        text: "I'm damn sure she had no idea."),
                    ExampleSentenceKurdish(
                        text: "تەواو دڵنیام لەوەی هیچ نازانێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdamns16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdamns16("en-US"),
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
- Adjective: damn 
1. Used as an expletive (= goddamn)
"oh, damn!";
 
2. Expletive used informally as an intensifier (= blasted, blame [N. Amer], blamed, blessed, damned, darned, deuced, goddam, goddamn, goddamned, infernal, dashed [Brit, informal], doggone [N. Amer, informal])
"he's a damn (or goddam or goddamned) fool";

- Verb: damn (Derived forms: damns, damning, damned)
1. Wish harm upon; invoke evil upon (= curse, beshrew [archaic], bedamn [archaic], anathemize, anathemise [Brit], imprecate, maledict [archaic], doggone [N. Amer, informal], dang [N. Amer, informal])
"The bad witch damned the child";
 
2. [informal] Find fault with; express criticism of; point out real or perceived flaws (= knock [informal], criticize, criticise [Brit], pick apart)
 
3. Condemn as being bad, harmful, immoral, etc.
"the report damned the clubs more for their disregard of the existing rules"

- Adverb: damn 
1. Extremely (= bloody, all-fired, all-firedly [US, informal])
"you are damn right";

- Noun: damn (Derived forms: damns)
1. Something of little value (= darn, hoot, red cent [N. Amer], shucks, tinker's damn [US, informal], tinker's dam [US, informal])
"his promise is not worth a damn";

- Interjection: damn 
1. Exclamation of annoyance (= blast, bother [Brit], botheration, bummer [informal], curses, dang [N. Amer, informal], damnation, dammit [informal], damn it [informal], darn [informal], dash [Brit, informal], durn [US, dialect], drat [informal], hang [informal], tarnation [N. Amer, informal], shoot [N. Amer, informal])
"He is a captain in the army, damn it, and all day he does nothing but call out orders";
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
    videoId: 'https://youtu.be/XZVHmRvfDHM',
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
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/tuqqRnej8vo?t=',
    startSeconds: 261,
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
    videoId: 'https://youtu.be/G4BxOhJOmUw?t=',
    startSeconds: 401,
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
    videoId: 'https://youtu.be/Pto9L7kjuSM?t=',
    startSeconds: 80,
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
    videoId: 'https://youtu.be/j-zCKl_eda4?t=',
    startSeconds: 52,
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
    videoId: 'https://youtu.be/8wewPn7TZfs?t=',
    startSeconds: 172,
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
    videoId: 'https://youtu.be/Xtwar56r4Lg?t=',
    startSeconds: 255,
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