import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycrush extends StatefulWidget {
  const EnglishEntrycrush({super.key});

  @override
  State<EnglishEntrycrush> createState() => _EnglishEntrycrushState();
}

class _EnglishEntrycrushState extends State<EnglishEntrycrush> {
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
    return const EntryTitle(word: "crush");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crush");
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
    return const IPAofEnglish(text: "IpaUK: /krʌʃ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrush(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crush"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrush("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /krʌʃ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrush(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("crush"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrush("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrushs1(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The car was completely crushed under the truck."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs2(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His hand was badly crushed in the accident."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs3(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was crushed beneath a bus."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs4(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Add two cloves of crushed garlic."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs5(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Crush the biscuits finely before adding them to the mixture."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs6(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She was crushed against the wall."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs7(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Over twenty prisoners were crushed into a small dark cell."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs8(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She crushed the scrap of paper in her hand."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs9(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The army was sent in to crush the rebellion."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs10(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Attempts to crush serious popular unrest led to civil war."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs11(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She felt completely crushed by the teacher's criticism."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs12(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I couldn't find a way through the crush."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs13(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "66 fans died in the crush on the steps of the stadium."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs14(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It's only a schoolgirl crush, it'll pass."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs15(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I had a huge crush on her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs16(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He thought you were flirting with his crush."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs17(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrushs1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs18(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrushs1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs19(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrushs1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs20(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrushs2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs21(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrushs2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs22(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrushs2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs23(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrushs2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs24(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrushs2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcrushs25(String languageCode) async {
    // DOPSUM: CHANGE speakcrush
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcrushs2500"); // DOPSUM: CHANGE TEXT
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
کوردی: کۆمەڵ، دەستە، گروپ، خەڵک،	چڕەبەندان، قەرەباڵغی، شانەچرکێ، پاڵەپەستۆ، شانەترنجێ، شلووقایی، تێ‌ڕژاوی، گوڕمۆرە، جەنجاڵ، ئاپۆرە،	خۆشاو، شەربەت،	مایەدانان، خاترویستن،	حەز یان دڵداری کورت‌ماوە،	ئاوی میوە، خۆشاو
"""),
          const DefinitionKurdish(
              text:
                  "١. (کردار) پەستان خستنە سەر شتێک بەشێوەیەک کە زیانی پێدەگات یان شێوەی دەگۆڕێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The car was completely crushed under the truck."),
                    ExampleSentenceKurdish(
                        text:
                            "ئۆتۆمبێلەکە بە تەواوی لەژێر بارهەڵگرەکەدا تلیقا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "crush", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrushs1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrushs1("en-US"),
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
                        text: "His hand was badly crushed in the accident."),
                    ExampleSentenceKurdish(
                        text: "دەستەکانی بەخراپی لە ڕووداوەکەدا فلیقان."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrushs2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrushs2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He was crushed beneath a bus."),
                    ExampleSentenceKurdish(text: "لەژێر پاسەکەدا جلیقایەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrushs3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrushs3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) شکاندن بۆ پارچەی بچووک یان کردن بە هاڕاوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Add two cloves of crushed garlic."),
                    ExampleSentenceKurdish(
                        text: "دوو سەلکی وردکراوی سیر زیاد بکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrushs4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrushs4("en-US"),
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
                            "Crush the biscuits finely before adding them to the mixture."),
                    ExampleSentenceKurdish(
                        text:
                            "بسکیتەکان بە باشی ورد بکە پێش ئەوەی زیادیان بکەیت بۆ تێکەڵەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrushs5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrushs5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) پاڵنان یان پەستاندنە ناو شوێنێکی بچووک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She was crushed against the wall."),
                    ExampleSentenceKurdish(text: "پاڵنرایە دیوارەکەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrushs6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrushs6("en-US"),
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
                            "Over twenty prisoners were crushed into a small dark cell."),
                    ExampleSentenceKurdish(
                        text:
                            "زیاد لە بیست زیندانی پەستێنرانە ناو بەندێکی بچووکی تاریک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrushs7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrushs7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) وابکەیت شتێک پڕ لە چرچ و لۆچی بێت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She crushed the scrap of paper in her hand."),
                    ExampleSentenceKurdish(
                        text: "پارچە کاغەزەکەی لۆچ کرد لە دەستیدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrushs8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrushs8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) بەکارهێنانی ڕێگای توندوتیژانە بۆ بەزاندنی کەسێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The army was sent in to crush the rebellion."),
                    ExampleSentenceKurdish(
                        text: "سوپا نێردرا بۆ ئەوەی شۆڕشەکە سەرکوت بکات."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrushs9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrushs9("en-US"),
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
                            "Attempts to crush serious popular unrest led to civil war."),
                    ExampleSentenceKurdish(
                        text:
                            "هەوڵەکان بۆ دامرکاندنەوەی پشێوەی ڕای گشتی گەشت بە شەڕی ناوخۆ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrushs10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrushs10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) لەناوبردنی متمانە و خۆشبەختی کەسێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She felt completely crushed by the teacher's criticism."),
                    ExampleSentenceKurdish(
                        text:
                            "تەواو هەستی بە تێکشکاوی کرد بەهۆی سەرزەنشتی مامۆستاکەی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrushs11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrushs11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (ناو) ژمارەیەک خەڵکی کە پێکەوە لە شوێنێکی تەنگدا کۆکراونەتەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I couldn't find a way through the crush."),
                    ExampleSentenceKurdish(
                        text:
                            "نەمتوانی ڕێگایەک بەناو قەرەباڵغییەکەدا بدۆمەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrushs12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrushs12("en-US"),
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
                            "66 fans died in the crush on the steps of the stadium."),
                    ExampleSentenceKurdish(
                        text:
                            "٦٦ هاندەر مردن لە جەنجاڵیدا لەسەر پلەکانی یاریگاکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrushs13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrushs13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (کردار) هەستێکی خۆشەویستی کە بۆ کەسێکت هەیە و زۆر ناخایەنێت؛ کەسێک کە ئەم جۆرە خۆشەویستییە هەیە بۆی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "It's only a schoolgirl crush, it'll pass."),
                    ExampleSentenceKurdish(
                        text:
                            "تەنها  دڵدارییە بۆ کچە قوتابییەک، زوو تێدەپەڕێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrushs14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrushs14("en-US"),
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
                    ExampleSentenceEnglish(text: "I had a huge crush on her."),
                    ExampleSentenceKurdish(
                        text: "ئەویندارییەکی زۆرم بۆی هەبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrushs15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrushs15("en-US"),
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
                        text: "He thought you were flirting with his crush."),
                    ExampleSentenceKurdish(
                        text: "وای بیردەکردەوە لەگەڵ دڵدارەکەی ڕادەبوێریت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcrushs16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcrushs16("en-US"),
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
- Verb: crush (Derived forms: crushed, crushing, crushes)
1. Use force to compress, making out of normal shape or condition (= squash, squelch, mash, squeeze, squidge [informal], squish [informal])
"crush an aluminium can";
 
2. Dominate or subjugate by unjust use of one's authority and power (= oppress, suppress)
"The government crushes political activists";
 
3. Come out better in a competition, race, or conflict (= beat, beat out, shell, trounce, vanquish)
 
4. Break into small pieces
"The car crushed the toy"
 
5. Humiliate or depress completely (=smash)
"She was crushed by his refusal of her invitation";
 
6. Hurt or bruise with a squashing force (= jam)
"crush a toe";
 
7. Make ineffective (= break down)
"Martin Luther King tried to crush racial discrimination";
 
8. Become injured, broken, or distorted by pressure
"The plastic bottle crushed against the wall"

- Noun: crush (Derived forms: crushes)
1. Leather that has had its grain pattern accentuated (= crushed leather)
 
2. A dense crowd of people (= jam, press)
 
3. [informal] Temporary love of an adolescent (= puppy love, calf love, infatuation)
 
4. The act of crushing (= crunch, compaction)
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
    videoId: 'https://youtu.be/tK-tq3OfPF8?t=',
    startSeconds: 134,
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
    videoId: 'https://youtu.be/zqllxbPWKNI?t=',
    startSeconds: 1485,
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
    videoId: 'https://youtu.be/lsFPbgK1v9I?t=',
    startSeconds: 325,
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
    videoId: 'https://youtu.be/Cqbleas1mmo?t=',
    startSeconds: 968,
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
    videoId: 'https://youtu.be/AwhBTrzzqeg?t=',
    startSeconds: 53,
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
    videoId: 'https://youtu.be/xVQxvthAcLU?t=',
    startSeconds: 820,
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
    videoId: 'https://youtu.be/10FiSsim_a4?t=',
    startSeconds: 271,
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