import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydash extends StatefulWidget {
  const EnglishEntrydash({super.key});

  @override
  State<EnglishEntrydash> createState() => _EnglishEntrydashState();
}

class _EnglishEntrydashState extends State<EnglishEntrydash> {
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
    return const EntryTitle(word: "dash");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dash");
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
    return const IPAofEnglish(text: "IpaUK: /dæʃ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdash(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dash"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdash("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dæʃ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdash(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dash"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdash("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdashs1(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When the doors opened, there was a mad dash for seats."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs2(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He jumped off the bus and made a dash for the nearest bar."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs3(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We waited for the police to leave then made a dash for it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs4(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The book starts with a quick dash through the country's history."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs5(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Add a dash of lemon juice."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs6(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The rug adds a dash of colour to the room."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs7(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The food is European with a dash of Morocco."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs8(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The use of a dash can add emphasis to a sentence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs9(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is broadcast in Morse code, the series of dots and dashes historically used to transmit information."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs10(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Who won the 100-yard dash?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs11(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He brought youthful energy, dash and charisma to the department."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs12(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I must dash, I'm late."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs13(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He dashed along the platform and jumped on the train."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs14(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The boat was dashed repeatedly against the rocks."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs15(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He dashed her aside."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs16(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdashs1600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs17(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdashs1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs18(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdashs1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs19(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdashs1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs20(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdashs2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs21(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdashs2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdashs22(String languageCode) async {
    // DOPSUM: CHANGE speakdash
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdashs2200"); // DOPSUM: CHANGE TEXT
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
کوردی: بڕێکی کەم، نەختێ، تۆزقاڵێ، نیسکێ، بڕێ،	کۆد یان هێڵی مۆرس،	(ماشێن) داشبۆرد،	هێرش، هوروژم، تێ‌ڕژان، هەڵمەت،	پەلە، تاو، پڕتاو،	هێڵی تیرک، کشتەک، هەنج، بەندەک (ـ)،	وزە، چالاکی، جم‌وجۆڵ، گوڕ،	دەنگی لێک‌کەوتن، دەنگی پیاکێشان، دنگە، دەنگی شڵەقانەوە، شڵقە
"""),
          const DefinitionKurdish(
              text: "١. (ناو) ڕۆشتنە شوێنێک بەخێرایی و لەناکاو"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "When the doors opened, there was a mad dash for seats."),
                    ExampleSentenceKurdish(
                        text:
                            "کە دەرگاکان کرانەوە، تێڕژانێکی شێتانە هەبوو بۆ کورسییەکان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "dash", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdashs1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdashs1("en-US"),
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
                            "He jumped off the bus and made a dash for the nearest bar."),
                    ExampleSentenceKurdish(
                        text:
                            "لە پاسەکە هەڵبەزییە خوارەوە و بەرەو نزیکترین باڕ بۆی دەرچوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdashs2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdashs2("en-US"),
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
                            "We waited for the police to leave then made a dash for it (= left quickly in order to escape)."),
                    ExampleSentenceKurdish(
                        text:
                            "وەستاین تاوەکو پۆلیسەکان چوون و دواتر بۆی دەرچووین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdashs3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdashs3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) کردنی شتێک بە خێرایی بەهۆی ئەوەی کاتی پێویستت نیەی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The book starts with a quick dash through the country's history."),
                    ExampleSentenceKurdish(
                        text:
                            "کتێبەکە دەستپێ دەکات بە چاوخشانێک بە مێژووی وڵاتەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdashs4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdashs4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) ڕێژەیەکی کەم لە شتێک کە بۆ شتێکی دیکە زیاد دەکرێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Add a dash of lemon juice."),
                    ExampleSentenceKurdish(
                        text: "قەترەیەک ئاوی لیمۆ زیاد بکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdashs5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdashs5("en-US"),
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
                        text: "The rug adds a dash of colour to the room."),
                    ExampleSentenceKurdish(
                        text: "ڕایەخەکە نەختێک ڕەنگ بۆ ژوورەکە زیاد دەکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdashs6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdashs6("en-US"),
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
                        text: "The food is European with a dash of Morocco."),
                    ExampleSentenceKurdish(
                        text: "خواردنەکە ئەورووپییە بە بڕێ مەغریبییەوە  ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdashs7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdashs7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) نیشانەی (—) کە بۆ جیاکردنەوەی بەشەکانی ڕستە بەکاردێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The use of a dash can add emphasis to a sentence."),
                    ExampleSentenceKurdish(
                        text:
                            "بەکارهێنانی داش دەکرێت جەختکردنەوە بۆ ڕستە زیاد بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdashs8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdashs8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) ئەو ئاماژەیەی کۆدی مۆرس کە درێژترە لەوەی دیکە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "It is broadcast in Morse code, the series of dots and dashes historically used to transmit information."),
                    ExampleSentenceKurdish(
                        text:
                            "بە کۆدی مۆرس پەخش دەکرێت، ئەو زنجیرەیە لە خاڵ و داش کە لە مێژوودا بەکارهێندراوە بۆ ناردنی زانیاری."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdashs9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdashs9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ناو) پێشبڕکێی ماوە کورت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Who won the 100-yard dash?"),
                    ExampleSentenceKurdish(
                        text: "کێ ڕاکردنە ١٠٠ یاردییەکەی بردەوە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdashs10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdashs10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (ناو) شێوازی ڕەفتارکردن کە جۆشوخرۆشی و متمانە کۆدەکاتەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He brought youthful energy, dash and charisma to the department."),
                    ExampleSentenceKurdish(
                        text:
                            "وزەی گەنجانە و گوڕوتین و کاریزمای هێنا بۆ بەشەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdashs11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdashs11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (کردار) ڕۆشتن بۆ شوێنێک بە خێرایی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I must dash (= leave quickly), I'm late."),
                    ExampleSentenceKurdish(
                        text: "دەبێت بکەومە خۆم، دواکەوتووم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdashs12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdashs12("en-US"),
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
                            "He dashed along the platform and jumped on the train."),
                    ExampleSentenceKurdish(
                        text:
                            "بەسەر سەکۆکەدا ڕایکرد و چووە ناو شەمەندەفەرەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdashs13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdashs13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٤. (کردار) کێشان بە ڕوویەکدا"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The boat was dashed repeatedly against the rocks."),
                    ExampleSentenceKurdish(
                        text:
                            "بەلەمەکە دووبارە و دووبارە کێشای بە تەشەبەردەکاندا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdashs14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdashs14("en-US"),
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
                    ExampleSentenceEnglish(text: "He dashed her aside."),
                    ExampleSentenceKurdish(text: "پاڵی داوە لاوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdashs15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdashs15("en-US"),
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
- Verb: dash (Derived forms: dashed, dashes, dashing)
1. Run or move very quickly or hastily (= dart, scoot [informal], scud, flash, shoot, whip [informal])
"She dashed into the yard";
 
2. Break into pieces, as by striking or knocking over (= smash)
"dash a plate";
 
3. Hurl or thrust violently (= crash)
"Waves were dashing against the rock"; "He dashed the plate against the wall";
 
4. Destroy or break
"dashed ambitions and hopes"
 
5. Cause to lose courage; to be daunted; to be scared away (= daunt, scare off, pall, frighten off, scare away, frighten away, scare)
"dashed by the refusal";
 
6. Add an enlivening or altering element to
"blue paint dashed with white"

- Noun: dash (Derived forms: dashes)
1. Distinctive and stylish elegance (= elan, flair, panache, style, élan)
"he wooed her with the confident dash of a cavalry officer";
 
2. A quick run (= sprint)
 
3. A footrace run at top speed
"he is preparing for the 100-yard dash"
 
4. A punctuation mark (-) used between parts of a compound word or between the syllables of a word when the word is divided at the end of a line of text (= hyphen)
 
5. The longer of the two telegraphic signals used in Morse code (= dah)
 
6. The act of moving with great haste (= bolt)
"he made a dash for the door";
 
7. [informal] Instrument panel on an automobile or aeroplane containing dials and controls (= dashboard, fascia [Brit])
 
8. A small quantity of a liquid, esp. when being added to something else
"add a dash of brandy"

- Interjection: dash 
Usage: Brit, informal
1. Exclamation of annoyance (= blast, bother [Brit], botheration, bummer [informal], curses, dang [N. Amer, informal], damn, damnation, dammit [informal], damn it [informal], darn [informal], durn [US, dialect], drat [informal], hang [informal], tarnation [N. Amer, informal], shoot [N. Amer, informal])
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
    videoId: 'https://youtu.be/QiKZYt9070U?t=',
    startSeconds: 458,
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
    videoId: 'https://youtu.be/s3B-qp3U5G0?t=',
    startSeconds: 618,
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
    videoId: 'https://youtu.be/pTysrwci0pU?t=',
    startSeconds: 1295,
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
    videoId: 'https://youtu.be/oD9BaNAH-eE?t=',
    startSeconds: 821,
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
    videoId: 'https://youtu.be/WUjVPIEtJd0?t=',
    startSeconds: 162,
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
    videoId: 'https://youtu.be/D8tPkb98Fkk?t=',
    startSeconds: 102,
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
    videoId: 'https://youtu.be/1Gxrwh4zGPg?t=',
    startSeconds: 649,
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