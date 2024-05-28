import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydip extends StatefulWidget {
  const EnglishEntrydip({super.key});

  @override
  State<EnglishEntrydip> createState() => _EnglishEntrydipState();
}

class _EnglishEntrydipState extends State<EnglishEntrydip> {
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
    return const EntryTitle(word: "dip");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dip");
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
    return const IPAofEnglish(text: "IpaUK: /dɪp/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdip(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dip"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdip("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪp/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdip(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dip"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdip("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdips1(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He dipped the brush into the paint."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips2(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Dip your hand in to see how hot the water is."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips3(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The fruit had been dipped in chocolate."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips4(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The sun dipped below the horizon."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips5(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The road dipped suddenly as we approached the town."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips6(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The plane dipped its wings."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips7(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Let's go for a dip before breakfast."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips8(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Share prices have taken a slight dip."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips9(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The nation is experiencing an economic dip."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips10(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The village lay in a dip among the hills."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips11(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She made a creamy dip for the chips."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips12(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The dip effectively killed the lice on the sheep."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips13(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A brief dip into history confirms this view."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips14(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He gave a dip of his head."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips15(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdips1500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips16(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdips1600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips17(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdips1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips18(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdips1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips19(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdips1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips20(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdips_2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips21(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdips2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdips22(String languageCode) async {
    // DOPSUM: CHANGE speakdip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdips2200"); // DOPSUM: CHANGE TEXT
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
کوردی: تێ‌هەڵکێشان، وەردان، تێ‌خستن،	سووکەمەلێ، مەلە، مەلێی پشیلەشۆرانە،	سەرەوخواری، لێژ،	کەم‌بوونەوە، داخزان، داشکان، نزم‌بوونەوە، هاتنەخوارەوە،	سۆس،	گیراوەی خاوێن‌کردنەوەی مەڕ،	(نافەرمی، ئەمریکا) کەسێکی گەوج،	(ئاڵا) خوارەوەهاتوویی، هاتنەخوارەوە، داگیراوی
"""),
          const DefinitionKurdish(
              text:
                  "١. (کردار) بە خێرایی ژەندنی شتێک بە شلەدا و دووبارە دەرکردنی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He dipped the brush into the paint."),
                    ExampleSentenceKurdish(text: "فڵچەکەی ژەند بە بۆیەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "dip", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdips1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdips1("en-US"),
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
                        text: "Dip your hand in to see how hot the water is."),
                    ExampleSentenceKurdish(
                        text: "پەنجەت بژەنە ناویدا و بزانە ئاوەکە چەند گەرمە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdips2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdips2("en-US"),
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
                        text: "The fruit had been dipped in chocolate."),
                    ExampleSentenceKurdish(text: "میوەکە ژەندراوە بە چکلێتدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdips3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdips3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) چوونە خوارەوە یان ئاستێکی نزمتر"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The sun dipped below the horizon."),
                    ExampleSentenceKurdish(text: "خۆر دابەزییە خوار ئاسۆ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdips4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdips4("en-US"),
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
                            "The road dipped suddenly as we approached the town."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕێگاکە لەناکاو لێژبوویەوە کە نزیکی شارۆچکەکە بووینەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdips5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdips5("en-US"),
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
                    ExampleSentenceEnglish(text: "The plane dipped its wings."),
                    ExampleSentenceKurdish(text: "فڕۆکەکە باڵەکانی شۆڕکردەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdips6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdips6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) مەلەیەکی خێرا"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Let's go for a dip before breakfast."),
                    ExampleSentenceKurdish(
                        text: "با پێش نانی بەیانی بچین بۆ سووکەمەلێیەک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdips7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdips7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) کەمبوونەوەیەک لە بڕ یان سەرکەوتنی شتێک، زۆرجار بە کاتی"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Share prices have taken a slight dip."),
                    ExampleSentenceKurdish(
                        text: "نرخی پشکەکان کەمێک داشکانیان بینیوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdips8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdips8("en-US"),
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
                        text: "The nation is experiencing an economic dip."),
                    ExampleSentenceKurdish(
                        text: "وڵاتەکە ڕووبەڕووی داشکانێکی ئابووری بووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdips9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdips9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ناو) شوێنێک کە ڕووەکەی لەناکاو دادەبەزێت و دووبارە بەرز دەبێتەوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The village lay in a dip among the hills."),
                    ExampleSentenceKurdish(
                        text: "گوندەکە لە لێژییەک لە گردەکاندا هەڵکەوتووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdips10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdips10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ناو) تێکەڵەیەک کە پارچە خواردن دەژەنرێتە ناوی پێش خواردن"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She made a creamy dip for the chips."),
                    ExampleSentenceKurdish(
                        text: "تێکەڵەیەکی کرێمداری بۆ چیپسەکە ئامادەکرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdips11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdips11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (ناو) شلەیەک مادەی کیمیایی تێدایە و مەڕ و ئاژەڵی دیکەی تێدەخرێت بۆ ئەوەی مێرووی سەر لەشیان بکوژێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The dip effectively killed the lice on the sheep."),
                    ExampleSentenceKurdish(
                        text:
                            "گیراوە خاوێنکەرەوەکە بە کاریگەری ئەسپێکانی لەسەر مەڕەکە کوشت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdips12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdips12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (ناو) سەیرکردنێکی خێرای شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "A brief dip into history confirms this view."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕوانینێکی خێرا لە مێژوو ئەم دیدە پشتڕاست دەکاتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdips13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdips13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (ناو) لەقاندنی شتێک بۆ سەرەوە و خوارەوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "He gave a dip of his head."),
                    ExampleSentenceKurdish(text: "سەرەلەقەیەکی کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdips14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdips14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdips1500"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdips15("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdips15("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdips1600"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdips16("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdips16("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdips1700"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdips17("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdips17("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdips1800"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdips18("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdips18("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdips1900"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdips19("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdips19("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdips_2000"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdips20("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdips20("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdips2100"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdips21("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdips21("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdips2200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdips22("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdips22("en-US"),
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
- Verb: dip (derived forms: dipping, dipped, dips)
1. Immerse briefly into a liquid so as to wet, coat, or saturate (= dunk, souse, plunge, douse)
"dip the brush into the paint";
 
2. (of food) put into a liquid to absorb some of it (= dunk)
"She dipped the piece of bread in the sauce";
 
3. Go down momentarily
"Prices dipped"
 
4. Stain an object by immersing it in a liquid
 
5. Take a small amount from
"I had to dip into my savings to buy him this present"
 
6. Switch (a car's headlights) from a higher to a lower beam (= dim)
 
7. Lower briefly
"She dipped her knee"
 
8. Appear to move downward (= sink)
"The sun dipped below the horizon";
 
9. Slope downwards
"Our property dips towards the river"
 
10. Immerse into a liquid (= douse, duck)
"He dipped into the pool";
 
11. Place (candle wicks) into hot, liquid wax
 
12. Immerse in a disinfectant solution
"dip the sheep"
 
13. Plunge (one's hand or a receptacle) into a container
"He dipped into his pocket"
 
14. Scoop up by plunging one's hand or a ladle below the surface
"dip water out of a container"

- Noun: dip (derived forms: dips)
1. A depression in an otherwise level surface
"there was a dip in the road"
 
2. (physics) the angle that a magnetic needle makes with the plane of the horizon (= angle of dip, magnetic dip, magnetic inclination, inclination)
 
3. A thief who steals from the pockets or purses of others in public places (= pickpocket, cutpurse)
 
4. Tasty mixture or liquid into which bite-sized foods are dipped
 
5. A brief immersion
 
6. A sudden sharp decrease in some quantity (= drop, fall, free fall)
"a dip in prices";
 
7. A candle that is made by repeated dipping in a pool of wax or tallow
 
9. A brief swim in water (= plunge)
 
10. A gymnastic exercise on the parallel bars in which the body is lowered and raised by bending and straightening the arms
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
    videoId: '2GsK5feFt1U',
    startSeconds: 31,
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
    videoId: 'DesEUpFgGrQ',
    startSeconds: 352,
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
    videoId: 'gmr41ht2Sq4',
    startSeconds: 118,
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
    videoId: 'R8MAW6N1Jhk',
    startSeconds: 59,
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
    videoId: '7V71_7X-DAo',
    startSeconds: 6,
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
    videoId: '1SO0uvexcew',
    startSeconds: 580,
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
    videoId: 'hFZFjoX2cGg',
    startSeconds: 589,
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