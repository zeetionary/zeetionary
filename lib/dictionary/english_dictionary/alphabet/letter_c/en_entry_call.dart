import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycall extends StatelessWidget {
// blank divider
  EnglishEntrycall({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcall(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("call");
  }

  Future<void> speakcalls1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They decided to call the baby Mark.");
  }

  Future<void> speakcalls2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His name's Hiroshi but everyone calls him Hiro.");
  }

  Future<void> speakcalls3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What's their son called?");
  }

  Future<void> speakcalls4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I don't know anyone called Scott.");
  }

  Future<void> speakcalls5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I got a message to call home immediately.");
  }

  Future<void> speakcalls6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll call again later.");
  }

  Future<void> speakcalls7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Someone called the police.");
  }

  Future<void> speakcalls8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll call a taxi for you.");
  }

  Future<void> speakcalls9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I wouldn't call German an easy language.");
  }

  Future<void> speakcalls10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Are you calling me a liar?");
  }

  Future<void> speakcalls11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She now calls Southern California home.");
  }

  Future<void> speakcalls12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Would you call it blue or green?");
  }

  Future<void> speakcalls13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Call yourself a friend? So why won't you help me, then?");
  }

  Future<void> speakcalls14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's no right to call herself a feminist.");
  }

  Future<void> speakcalls15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She called out to her father for help.");
  }

  Future<void> speakcalls16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Someone called to him to wait.");
  }

  Future<void> speakcalls17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Did somebody call my name?");
  }

  Future<void> speakcalls18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Will you call the kids in for lunch?");
  }

  Future<void> speakcalls19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He heard me call him and came to the door.");
  }

  Future<void> speakcalls20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Several candidates were called for a second interview.");
  }

  Future<void> speakcalls21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The ambassador was called back to London by the prime minister.");
  }

  Future<void> speakcalls22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You may be called to give evidence.");
  }

  Future<void> speakcalls23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The prime minister has called an election for 8 June.");
  }

  Future<void> speakcalls24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll call round and see you on my way home.");
  }

  Future<void> speakcalls25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let's call on John.");
  }

  Future<void> speakcalls26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The cuckoo called across the trees to its mate.");
  }

  Future<void> speakcalls27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The result of this election is going to be too close to call.");
  }

  Future<void> speakcalls28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Most media pundits called it for the Conservatives.");
  }

  Future<void> speakcalls29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll take the call upstairs.");
  }

  Future<void> speakcalls30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I left a message but he didn't return my call.");
  }

  Future<void> speakcalls31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She could hear calls for help from inside the burning building.");
  }

  Future<void> speakcalls32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The whale has a very distinctive call.");
  }

  Future<void> speakcalls33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcalls3333");
  }

  Future<void> speakcalls34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The mosque was sounding the call to prayer.");
  }

  Future<void> speakcalls35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The charity issued a call for donations to assist victims of the earthquake.");
  }

  Future<void> speakcalls36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There was no call for you to go upsetting everyone like that.");
  }

  Future<void> speakcalls37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There's not much call for fur coats these days.");
  }

  Future<void> speakcalls38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She is a busy woman with many calls on her time.");
  }

  Future<void> speakcalls39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The doctor has five calls to make this morning.");
  }

  Future<void> speakcalls40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm afraid this isn't a social call.");
  }

  Future<void> speakcalls41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Seeing the flag waving always feels like the call of my homeland.");
  }

  Future<void> speakcalls42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He felt the call to the priesthood early on in his life.");
  }

  Future<void> speakcalls43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That's a tough call.");
  }

  Future<void> speakcalls44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcalls4444");
  }

  Future<void> speakcalls45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcalls4545");
  }

  Future<void> speakcalls46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcalls4646");
  }

  Future<void> speakcalls47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcalls4747");
  }

  Future<void> speakcalls48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcalls4848");
  }

  Future<void> speakcalls49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcalls4949");
  }

  Future<void> speakcalls50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcalls5050");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            EntryTitle(word: "call"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kɔːl/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcall("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kɔːl/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcall("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const CustomTabBar(
                tabs: [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: بانگ، جاڕ، ھەرا، قاو، قیژە، ھاوار، دەنگ، گازی، بانگەواز، بانگێشت، بانگەشە، بانگھێشتن، لێ‌گێڕانەوە، پەیام، دەنگ‌وباس، ھەواڵ، تەلەفون، قسەکردنی تەلەفونی، پێوەندی تەلەفونی، دیدار، سەرلێدان، سەردان، ھاوبینی، بڕیاری یەکتربینین یان سەردان، داوا، داخوازی، خۆستەک، داواکاری، داواکردن، بانگ یان دەنگی ئاسمانی، پێداویستی، (نۆرەی) خوێندنەوە، سەرنج‌ڕاکێشان، ڕاکێشان، بالکێشی، گیرایی
"""),
                          const DefinitionKurdish(
                              text: """١. (کردار) ناوھێنان، ناونان"""),
                          SentencesRow(
                            englishText: "They decided to call the baby Mark.",
                            kurdishText:
                                "بڕیاریاندا منداڵەکە ناوبنێن مارک.", // call
                            onPressedBritish: () => speakcalls1("en-GB"),
                            onPressedAmerican: () => speakcalls1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "His name's Hiroshi but everyone calls him Hiro.",
                            kurdishText:
                                "ناوی ھیرۆشییە بەڵام ھەمووان پێی دەڵێن ھیرۆ.",
                            onPressedBritish: () => speakcalls2("en-GB"),
                            onPressedAmerican: () => speakcalls2("en-US"),
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
                                                    "What's their son called?"),
                                            ExampleSentenceKurdish(
                                                text: "کوڕەکەیان ناوی چییە؟"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcalls3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcalls3("en-US"),
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
                                                    "I don't know anyone called Scott."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "کەس بە ناوی سکۆت ناناسم."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcalls4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcalls4("en-US"),
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
                              text: "٢. (کردار) پەیوەندی کردن بە تەلەفۆن"),
                          SentencesRow(
                            englishText:
                                "I got a message to call home immediately.",
                            kurdishText:
                                "پەیامێکم پێ‌گەیشت کە بەپەلە پەیوەندی بە ماڵەوە بکەم.",
                            onPressedBritish: () => speakcalls5("en-GB"),
                            onPressedAmerican: () => speakcalls5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "I'll call again later.",
                            kurdishText: "دواتر پەیوەندی دەکەمەوە.",
                            onPressedBritish: () => speakcalls6("en-GB"),
                            onPressedAmerican: () => speakcalls6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٣. (کردار) بانگکردن"),
                          SentencesRow(
                            englishText: "Someone called the police.",
                            kurdishText: "کەسێک بانگی پۆلیسی کرد.",
                            onPressedBritish: () => speakcalls7("en-GB"),
                            onPressedAmerican: () => speakcalls7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "I'll call a taxi for you.",
                            kurdishText: "بانگی تەکسییەک دەکەم بۆت.",
                            onPressedBritish: () => speakcalls8("en-GB"),
                            onPressedAmerican: () => speakcalls8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) ناساندنی کەسێک/شتێک بەشێوەیەکی دیاریکراو"),
                          SentencesRow(
                            englishText:
                                "I wouldn't call German an easy language.",
                            kurdishText:
                                "زمانی ئەڵمانی بە زمانێکی ئاسان ناو نابەم.",
                            onPressedBritish: () => speakcalls9("en-GB"),
                            onPressedAmerican: () => speakcalls9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Are you calling me a liar?",
                            kurdishText: "بە درۆزن ناوم دەبەیت؟",
                            onPressedBritish: () => speakcalls10("en-GB"),
                            onPressedAmerican: () => speakcalls10("en-US"),
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
                                                    "She now calls Southern California home (= she lives there)."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لە ئێستادا لە باشووری کالیفۆرنیا دەژی."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcalls11("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcalls11("en-US"),
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
                                                    "Would you call it blue or green?"),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بە شین یان سەوز دەیبینیت؟"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcalls12("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcalls12("en-US"),
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
                                  "٥. (کردار) بانگەشەکردنی ئەوەی کە کەسێک جۆرێکی دیاریکراوە"),
                          SentencesRow(
                            englishText:
                                "Call yourself a friend? So why won't you help me, then?",
                            kurdishText:
                                "خۆت بە ھاوڕێ دادەنێیت؟ دەی کەوایە بۆ یارمەتیم نادەیت؟",
                            onPressedBritish: () => speakcalls13("en-GB"),
                            onPressedAmerican: () => speakcalls13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She's no right to call herself a feminist.",
                            kurdishText:
                                "ھیچ مافێکی نییە خۆت بە فێمێنیست ناو ببات.",
                            onPressedBritish: () => speakcalls14("en-GB"),
                            onPressedAmerican: () => speakcalls14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) ھاوارکردن یان وتن بە دەنگی بەرز بۆ ڕاکێشانی سەرنجی کەسێک"),
                          SentencesRow(
                            englishText:
                                "She called out to her father for help.",
                            kurdishText: "ھاواری بۆباوکی کرد بۆ یارمەتی.",
                            onPressedBritish: () => speakcalls15("en-GB"),
                            onPressedAmerican: () => speakcalls15("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Someone called to him to wait.",
                            kurdishText: "کەسێک بانگی کرد بوەستێت.",
                            onPressedBritish: () => speakcalls16("en-GB"),
                            onPressedAmerican: () => speakcalls16("en-US"),
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
                                                    "Did somebody call my name?"),
                                            ExampleSentenceKurdish(
                                                text: "کەسێک بانگی کردم؟"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcalls17("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcalls17("en-US"),
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
                              text: "٧. (کردار) بانگکردنی کەسێک بۆ ئەوەی بێت"),
                          SentencesRow(
                            englishText: "Will you call the kids in for lunch?",
                            kurdishText:
                                "بانگی منداڵەکان دەکەیت بۆ نانی نیوەڕۆ؟",
                            onPressedBritish: () => speakcalls18("en-GB"),
                            onPressedAmerican: () => speakcalls18("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He heard me call him and came to the door.",
                            kurdishText:
                                "گوێی لە بانگکردنم بوو و ھات بۆ لای دەرگاکە.",
                            onPressedBritish: () => speakcalls19("en-GB"),
                            onPressedAmerican: () => speakcalls19("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) داواکردن لە کەسێک بۆ ئەوەی بێت بۆ شوێنێک"),
                          SentencesRow(
                            englishText:
                                "Several candidates were called for a second interview.",
                            kurdishText:
                                "ژمارەیەک بەربژێر بۆ چاوپێکەوتنی دووەم بانگکرانەوە.",
                            onPressedBritish: () => speakcalls20("en-GB"),
                            onPressedAmerican: () => speakcalls20("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The ambassador was called back to London by the prime minister.",
                            kurdishText:
                                "باڵیۆزەکە بانگکرایەوە لەندەن لەلایەن سەرۆک وەزیرانەوە.",
                            onPressedBritish: () => speakcalls21("en-GB"),
                            onPressedAmerican: () => speakcalls21("en-US"),
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
                                                    "You may be called to give evidence."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ڕەنگە بانگ بکرێیت بۆ پێدانی بەڵگە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcalls22("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcalls22("en-US"),
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
                              text: "٩. (کردار) بڕیاردان لە ڕوودانی شتێک"),
                          SentencesRow(
                            englishText:
                                "The prime minister has called an election for 8 June.",
                            kurdishText:
                                "سەرۆک وەزیران بڕیاری ھەڵبژاردنی داوە لە ٨ی حوزەیران.",
                            onPressedBritish: () => speakcalls23("en-GB"),
                            onPressedAmerican: () => speakcalls23("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) ئەنجامدانی سەردانێکی کورت بۆ شوێنێک یان لای کەسێک"),
                          SentencesRow(
                            englishText:
                                "I'll call round and see you on my way home.",
                            kurdishText: "دێم و لەسەر ڕێگام دەتبینم.",
                            onPressedBritish: () => speakcalls24("en-GB"),
                            onPressedAmerican: () => speakcalls24("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Let's call on John.",
                            kurdishText: "با سەردانی جۆن بکەین.",
                            onPressedBritish: () => speakcalls25("en-GB"),
                            onPressedAmerican: () => speakcalls25("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (کردار) دەرکردنی دەنگێک لەلایەن ئاژەڵێک یان باڵندەیەکەوە"),
                          SentencesRow(
                            englishText:
                                "The cuckoo called across the trees to its mate.",
                            kurdishText:
                                "کوکووەکە بە دارەکاندا بانگی دۆستەکەی کرد.",
                            onPressedBritish: () => speakcalls26("en-GB"),
                            onPressedAmerican: () => speakcalls26("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٢. (کردار) پێشبینیکردنی ئەنجامی شتێک"),
                          SentencesRow(
                            englishText:
                                "The result of this election is going to be too close to call.",
                            kurdishText:
                                "ئەنجامی ئەم ھەڵبژاردنە زۆر نزیک دەبێت تا پێشبینی بکرێت.",
                            onPressedBritish: () => speakcalls27("en-GB"),
                            onPressedAmerican: () => speakcalls27("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Most media pundits called it for the Conservatives.",
                            kurdishText:
                                "زۆر لە شارەزایانی میدیا بۆ پارتی پارێزگاران پێشبینی کرد (ئەوەی کە پارێزگاران ھەڵبژاردنەکە دەبەنەوە).",
                            onPressedBritish: () => speakcalls28("en-GB"),
                            onPressedAmerican: () => speakcalls28("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٣. (ناو) پەیوەندی تەلەفۆنی"),
                          SentencesRow(
                            englishText:
                                "I'll take (= answer) the call upstairs.",
                            kurdishText:
                                "وەڵامی تەلەفۆنەکەی (نھۆمی) سەرەوە دەدەمەوە.",
                            onPressedBritish: () => speakcalls29("en-GB"),
                            onPressedAmerican: () => speakcalls29("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I left a message but he didn't return my call.",
                            kurdishText: "پەیامێکم جێھێشت بەڵام وەڵامی نەبوو.",
                            onPressedBritish: () => speakcalls30("en-GB"),
                            onPressedAmerican: () => speakcalls30("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٤. (ناو) ھاوار و بانگکردن"),
                          SentencesRow(
                            englishText:
                                "She could hear calls for help from inside the burning building.",
                            kurdishText:
                                "گوێ لە ھاواری بانگکردن بۆ یارمەتی بوو لەناو بینا گڕگرتووەکەدا.",
                            onPressedBritish: () => speakcalls31("en-GB"),
                            onPressedAmerican: () => speakcalls31("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٥. (ناو) دەنگی بەرزی ئاژەڵ یان باڵندە"),
                          SentencesRow(
                            englishText:
                                "The whale has a very distinctive call.",
                            kurdishText: "نەھەنگ دەنگێکی زۆر تایبەتمەندی ھەیە.",
                            onPressedBritish: () => speakcalls32("en-GB"),
                            onPressedAmerican: () => speakcalls32("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٦. (ناو) داوا یان فرمانێک لە کەسێک بۆ کردنی شتێک یان چوونە شوێنێک"),
                          SentencesRow(
                            englishText:
                                "The government has resisted the calls of the international community.",
                            kurdishText:
                                "حکومەت بەرەنگاری داواکانی کۆمەڵگای نێودەوڵەتی کردووە.",
                            onPressedBritish: () => speakcalls33("en-GB"),
                            onPressedAmerican: () => speakcalls33("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The mosque was sounding the call to prayer.",
                            kurdishText:
                                "مزگەوتەکە بانگی دەدا بۆ چوون بۆ نوێژ.",
                            onPressedBritish: () => speakcalls34("en-GB"),
                            onPressedAmerican: () => speakcalls34("en-US"),
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
                                                    "The charity issued a call for donations to assist victims of the earthquake."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ڕێکخراوەکە داوای بەخشینی کرد بۆ بەھاناوەچوونی قوربانیانی بومەلەرزەکە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcalls35("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcalls35("en-US"),
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
                              text: "١٧. (ناو) ھۆکار یان خواست"),
                          SentencesRow(
                            englishText:
                                "There was no call for you to go upsetting everyone like that.",
                            kurdishText:
                                "ھیچ ھۆکارێک نەبوو بۆت کە بچیت ھەمووان بەو شێوەیە بێزار بکەیت.",
                            onPressedBritish: () => speakcalls36("en-GB"),
                            onPressedAmerican: () => speakcalls36("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There's not much call for fur coats these days.",
                            kurdishText:
                                "ئەم ڕۆژانە ھێندە خواست نییە بۆ قەمسەڵەی فەروودار.",
                            onPressedBritish: () => speakcalls37("en-GB"),
                            onPressedAmerican: () => speakcalls37("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٨. (ناو) خواست یان فشار کە لەسەر کەسێک/شتێک دادەنرێت"),
                          SentencesRow(
                            englishText:
                                "She is a busy woman with many calls on her time.",
                            kurdishText:
                                "ژنێکی سەرقاڵە و داوای زۆر ھەیە بۆ کاتی.",
                            onPressedBritish: () => speakcalls38("en-GB"),
                            onPressedAmerican: () => speakcalls38("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٩. (ناو) سەردانێکی کورت بۆ ماڵی کەسێک"),
                          SentencesRow(
                            englishText:
                                "The doctor has five calls to make this morning.",
                            kurdishText:
                                "دکتۆرەکە ئەم بەیانییە پێنج سەردانی ھەیە بۆ کردن.",
                            onPressedBritish: () => speakcalls39("en-GB"),
                            onPressedAmerican: () => speakcalls39("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "I'm afraid this isn't a social call.",
                            kurdishText:
                                "بەداخەوەم کە ئەمە سەردانێکی کۆمەڵایەتی نییە.",
                            onPressedBritish: () => speakcalls40("en-GB"),
                            onPressedAmerican: () => speakcalls40("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٠. (ناو) ھەستێکی تایبەتی سەرنجڕاکێشی کە شوێنێک لات ھەیەتی"),
                          SentencesRow(
                            englishText:
                                "Seeing the flag waving always feels like the call of my homeland.",
                            kurdishText:
                                "بینینی شەکانەوەی ئاڵاکە خۆشەویستیی نیشتیمانم بیردێنێتەوە.",
                            onPressedBritish: () => speakcalls41("en-GB"),
                            onPressedAmerican: () => speakcalls41("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢١. (ناو) ھەستێکی بەھێز بۆ کردنی شتێک"),
                          SentencesRow(
                            englishText:
                                "He felt the call to the priesthood early on in his life.",
                            kurdishText:
                                "ھەستی بە حەزی بوون بە قەشە کرد لە سەرەتای تەمەنیدا.",
                            onPressedBritish: () => speakcalls42("en-GB"),
                            onPressedAmerican: () => speakcalls42("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢٢. (ناو) بڕیارێک"),
                          SentencesRow(
                            englishText: "That's a tough call.",
                            kurdishText: "بڕیارێکی دژوارە.",
                            onPressedBritish: () => speakcalls43("en-GB"),
                            onPressedAmerican: () => speakcalls43("en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(),
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
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
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
- Verb: call (derived forms: called, calling, calls)
1. Assign a specified (usually proper) name to (= name, know as, be known as, christen)
"They called their son David";

2. Ascribe a quality to or give a name of a common noun that reflects a quality
"He called me a bastard"; "She called her children lazy and ungrateful"
 
3. Get or try to get into communication (with someone) by telephone (= telephone, call up, phone, ring)
"I tried to call you all night"; "Take two aspirin and call me in the morning";
 
4. Utter a sudden loud cry (= shout, shout out, cry, yell, scream, holler [informal], hollo [non-standard], squall)
"she called with pain when the doctor inserted the needle";
 
5. Order, request, or command to come (= send for)
"She was called into the director's office"; "Call the police!";
 
6. Pay a brief visit (= visit, call in)
"The mayor likes to call on some of the prominent citizens";
 
7. Call a meeting; invite or command to meet
"The Wannsee Conference was called to discuss the 'Final Solution'"; "The new dean calls meetings every week"
 
8. Read aloud to check for omissions or absentees
"Call roll"
 
9. (telecommunication) send a message or attempt to reach someone by radio, phone, etc.; make a signal to in order to transmit a message
"Hawaii is calling!"; "A transmitter in Samoa was heard calling"
 
10. Utter a characteristic note or cry
"bluejays called to one another"
 
11. Stop or postpone because of adverse conditions, such as bad weather
"call a football game"
 
12. Greet, as with a prescribed form, title, or name (= address)
"Call me Mister"; "She calls him by first name";

13. Make a stop in a harbour
"The ship will call in Honolulu tomorrow"
 
14. Demand payment of (a loan) (= call in)
"Call a loan"; "call in a loan";
 
15. (card game) make a demand, as for a card or a suit or a show of hands (= bid)
"He called his trump";

16. Give the calls (to the dancers) for a square dance (= call off)
 
17. (sport) indicate a decision in regard to
"call balls and strikes behind the plate"
 
18. Make a prediction about; tell in advance (= predict, foretell, prognosticate, forebode, anticipate, promise)
"Call the outcome of an election";

19. Present for redemption before maturation
"Call a bond"
 
20. Challenge (somebody) to make good on a statement; charge with or censure for an offence
"He deserves to be called on that"
 
21. Declare in the capacity of an umpire or referee
"call a runner out"
 
22. Lure by imitating the characteristic call of an animal
"Call ducks"
 
23. Order, request or give a command for
"The unions called a general strike for Sunday"
 
24. Order, summon, or request for a specific duty or activity, work, role
"He was already called 4 times for jury duty"; "They called him to active military duty"
 
25. Utter in a loud voice or announce
"He called my name"; "The auctioneer called the bids"
 
26. Challenge the sincerity or truthfulness of
"call the speaker on a question of fact"
 
27. Consider or regard as being
"I would not call her beautiful"
 
28. Rouse somebody from sleep with a call
"I was called at 5 A.M. this morning"

- Noun: call (derived forms: calls)
1. A method of contacting a person by phone (= phone call, telephone call)
"she reported several anonymous calls"; "he placed a phone call to London"; "he heard the phone ringing but didn't want to take the call";
 
2. A loud utterance; often in protest or opposition (= cry, outcry, yell, shout, vociferation)
"the speaker was interrupted by loud calls from the rear of the audience";
 
3. A moral duty or demand (= claim)
 
4. The characteristic sound produced by a bird (= birdcall, birdsong, song)
"a bird will not learn its call unless it hears it at an early age";
 
5. A brief social visit
"senior professors' wives no longer make afternoon calls on newcomers"; "the characters in Henry James' novels are forever paying calls on each other, usually in the parlour of some residence"
 
6. A demand by a broker that a customer deposit enough to bring his margin up to the minimum requirement (= margin call)
 
7. A demand for a show of hands in a card game
"after two raises there was a call"
 
8. A request
"many calls for Christmas stories"; "not many calls for buggywhips"
 
9. An instruction that interrupts the program being executed
"Pascal performs calls by simply giving the name of the routine to be executed"
 
10. A visit in an official or professional capacity
"the pastor's calls on his parishioners"; "the salesman's call on a customer"
 
11. (sport) the decision made by an umpire or referee
"he was ejected for protesting the call"
 
12. The option to buy a given stock (or stock index or commodity future) at a given price before a given date (= call option)

- Noun: Call
1. A special disposition (as if from a divine source) to pursue a particular course
"he was disappointed that he had not heard the Call"
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
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 362;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 302;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'FHJ3CMWnVxY';
  final double _startSeconds = 106;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'mqqft2x_Aa4';
  final double _startSeconds = 35;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 185;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'O3nyadYevuY';
  final double _startSeconds = 9;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'dhgEpr87Yac';
  final double _startSeconds = 224;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = '1G-6jhYa7mw';
  final double _startSeconds = 171;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'd51KcOXd2D4';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'jSHzYkV9Kqw';
  final double _startSeconds = 112;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'qaHLd8de6nM';
  final double _startSeconds = 75;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB
