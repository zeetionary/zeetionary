import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycup extends StatefulWidget {
  const EnglishEntrycup({super.key});

  @override
  State<EnglishEntrycup> createState() => _EnglishEntrycupState();
}

class _EnglishEntrycupState extends State<EnglishEntrycup> {
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
    return const EntryTitle(word: "cup");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: cup");
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
    return const IPAofEnglish(text: "IpaUK: /kʌp/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcup(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cup"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcup("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kʌp/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcup(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cup"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcup("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcups1(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He filled the cup with water."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups2(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Customers don't like drinking out of plastic cups."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups3(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was so thirsty that she drained her cup."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups4(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She drank the whole cup."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups5(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Would you like a cup of tea?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups6(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I drink about ten cups of coffee a day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups7(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Who won the cup?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups8(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He lifted the cup for the fifth time this year."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups9(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They lost to Portugal in the World Cup quarter finals."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups10(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The team are ready for next week's World Cup clash with Italy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups11(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Evenly fill the cups with the batter."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups12(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "\"What size bra do you wear?\" \"I wear a C cup.\""); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups13(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She held the bird gently in cupped hands."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups14(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He cupped her face in his hands and kissed her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups15(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcups1500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups16(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcups1600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups17(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcups1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups18(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcups1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups19(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcups1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups20(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcups2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups21(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcups2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcups22(String languageCode) async {
    // DOPSUM: CHANGE speakcup
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcups2200"); // DOPSUM: CHANGE TEXT
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
کوردی: پیاڵە، کۆتک، کاس، بایە، تاسولکە، جام، قاپ،	ئایەرە، لیوان،	جام یان کاس (لە پێشبڕکێ، خەڵات و ھتد)،	خواردنەوە،	پڕپیاڵەیێ،	شاخ، کەڵەشاخ (بۆ خوێن‌گرتن)،	بەش، پشک،	(ڕووەک‌ناسی) کاسە، کڵاوە، پیاڵە، جام
"""),
          const DefinitionKurdish(
              text: "١. (ناو) پیاڵە بۆ خواردنەوەی چا، قاوە، ھتد"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He filled the cup with water."),
                    ExampleSentenceKurdish(text: "پیاڵەکەی پڕکرد لە ئاو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "cup", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcups1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcups1("en-US"),
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
                            "Customers don't like drinking out of plastic cups."),
                    ExampleSentenceKurdish(
                        text:
                            "موشتەرییەکان حەزیان لە خواردنەوە نییە لە ناو پەرداخی پلاستیکیدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcups2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcups2("en-US"),
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
                        text: "She was so thirsty that she drained her cup."),
                    ExampleSentenceKurdish(
                        text: "ھێندە تینوو بوو کە پەرداخەکەی بەتاڵ کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcups3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcups3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) ئەو بڕەی لە ناوی پیاڵەیەک یان پەرداخێکدایە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "She drank the whole cup."),
                    ExampleSentenceKurdish(text: "تەواوی پیاڵەکەی خواردەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcups4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcups4("en-US"),
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
                        text: "Would you like a cup of tea?"),
                    ExampleSentenceKurdish(text: "حەز بە پیاڵەیەک چا دەکەیت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcups5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcups5("en-US"),
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
                        text: "I drink about ten cups of coffee a day."),
                    ExampleSentenceKurdish(
                        text: "ڕۆژانە نزیکەی ١٠ پیاڵە قاوە دەخۆمەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcups6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcups6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) جامی پاڵەوانێتی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Who won the cup?"),
                    ExampleSentenceKurdish(text: "کێ جامەکەی بردەوە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcups7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcups7("en-US"),
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
                            "He lifted the cup (= won) for the fifth time this year."),
                    ExampleSentenceKurdish(
                        text: "بۆ پێنجەم جار لەم ساڵدا جامەکەی بەرزکردەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcups8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcups8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) پاڵەوانێتییەکی وەرزشی کە تێیدا جامێک وەک خەڵات دەدرێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "They lost to Portugal in the World Cup quarter finals."),
                    ExampleSentenceKurdish(
                        text:
                            "لە چارەکی کۆتاییدا لە جامی جیھانی دۆڕاندیان بەرامبەر پرتوگال."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcups9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcups9("en-US"),
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
                            "The team are ready for next week's World Cup clash with Italy."),
                    ExampleSentenceKurdish(
                        text:
                            "تیمەکە ئامادەیە بۆ ڕووبەڕووبوونەوەی ھەفتەی داھاتووی جامی جیھانی بەرامبەر ئیتالیا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcups10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcups10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ناو) یەکەیەکی پێوانەکردن لە خواردن درووستکردندا کە کە بەشێوەیەکی سەرەکی لە ئەمریکا بەکاردێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Add 2 cups (of) flour and half a cup (of) sugar."),
                    ExampleSentenceKurdish(
                        text: "دوو کووپ ئارد و نیو کووپ شەکر زیاد بکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcups1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcups1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ناو) شتێک کە شێوەی کوپێکی ھەیە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Evenly fill the cups with the batter."),
                    ExampleSentenceKurdish(
                        text: "بە یەکسانی کوپەکان پڕ بکە لە ھەویر."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcups11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcups11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (ناو) یەکێک لەو بەشانەی ستیان کە مەمک دادەپۆشێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "\"What size bra do you wear?\" \"I wear a C cup.\""),
                    ExampleSentenceKurdish(
                        text:
                            "'چی قەبارەیەکی ستیان لەبەر دەکەیت؟' 'قەبارەی مەمکبەندی C دەبەستم.'"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcups12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcups12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) دانانی دەست لە شێوەی دەفرێکدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She held the bird gently in cupped hands."),
                    ExampleSentenceKurdish(
                        text:
                            "باڵندەکەی بەھێمنی گرت لە شێوەی دەستی وەک دەفرێک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcups13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcups13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (کردار) گرتنی شتێک کە دەستت لە شێوەی دەفرێکدایە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He cupped her face in his hands and kissed her."),
                    ExampleSentenceKurdish(
                        text: "ڕووخساری لە دەستیدا گرت و ماچی کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcups14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcups14("en-US"),
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
- Noun: cup (derived forms: cups)
1. A small open container usually used for drinking; usually has a handle
"he put the cup back in the saucer"; "the handle of the cup was missing"
 
2. The quantity a cup will hold (= cupful)
"he borrowed a cup of sugar"; "he drank a cup of coffee";
 
3. Any cup-shaped concavity
"bees filled the waxen cups with honey"; "he wore a jock strap with a metal cup"; "the cup of her bra"
 
4. A United States liquid unit equal to 8 fluid ounces
 
5. Cup-shaped plant organ
 
6. A punch served in a pitcher instead of a punch bowl
 
7. The hole (or metal container in the hole) on a golf green
"he swore as the ball rimmed the cup and rolled away"; "put the flag back in the cup"
 
8. A large metal vessel with two handles that is awarded as a trophy to the winner of a competition (= loving cup)
"the school kept the cups in a special glass case";
 
9. A contest for which a cup is awarded to the winner

- Verb: cup (derived forms: cups, cupping, cupped)
1. Form into the shape of a cup
"She cupped her hands"
 
5. Put into a cup
"cup the milk"
 
6. (medicine) treat by applying evacuated cups to the patient's skin (= transfuse)
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
    videoId: 'DPZzrlFCD_I',
    startSeconds: 226,
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
    videoId: 'lVoGZiL-kns',
    startSeconds: 187,
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
    videoId: 'tXjHb5QmDV0',
    startSeconds: 431,
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
    videoId: 'lGSOWwUvJiU',
    startSeconds: 1271,
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
    videoId: 'XlHzvTEstz8',
    startSeconds: 728,
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
    videoId: 'a9m3GD0DbPY',
    startSeconds: 403,
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
    videoId: 'dXt1ftcdxNg',
    startSeconds: 232,
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