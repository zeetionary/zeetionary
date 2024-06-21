import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryclean extends StatelessWidget {
  // blank divider
  EnglishEntryclean({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclean(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("clean");
  }

  Future<void> speakcleans1(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Are your hands clean?");
  }

  Future<void> speakcleans2(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She wiped all the surfaces clean.");
  }

  Future<void> speakcleans3(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It is your responsibility to keep the room clean and tidy.");
  }

  Future<void> speakcleans4(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The hotel was spotlessly clean.");
  }

  Future<void> speakcleans5(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I scrubbed the floor to get it clean.");
  }

  Future<void> speakcleans6(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's almost clean. I just have to wipe the table.");
  }

  Future<void> speakcleans7(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You're supposed to keep your room clean.");
  }

  Future<void> speakcleans8(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cats are very clean animals.");
  }

  Future<void> speakcleans9(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Thousands were left without food or clean drinking water.");
  }

  Future<void> speakcleans10(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Electric buses are a clean, environmentally friendly way to travel.");
  }

  Future<void> speakcleans11(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The water was lovely and clean.");
  }

  Future<void> speakcleans12(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Take a clean sheet of paper.");
  }

  Future<void> speakcleans13(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Keep the jokes clean please!");
  }

  Future<void> speakcleans14(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can't you think of any clean jokes?");
  }

  Future<void> speakcleans15(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The judge took the defendant's clean record into account when passing sentence.");
  }

  Future<void> speakcleans16(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The police searched her but she was clean.");
  }

  Future<void> speakcleans17(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's been clean for three weeks.");
  }

  Future<void> speakcleans18(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It was a tough but clean game.");
  }

  Future<void> speakcleans19(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A sharp knife makes a clean cut.");
  }

  Future<void> speakcleans20(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The plane made a clean take-off.");
  }

  Future<void> speakcleans21(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I do my utmost to produce clean copy, but occasionally a mistake slips in.");
  }

  Future<void> speakcleans22(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The wine has a clean taste and a lovely golden colour.");
  }

  Future<void> speakcleans23(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I spent all day cooking and cleaning.");
  }

  Future<void> speakcleans24(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His mother told him to clean his room.");
  }

  Future<void> speakcleans25(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He gently cleaned the wound and dressed it.");
  }

  Future<void> speakcleans26(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Have you cleaned your teeth?");
  }

  Future<void> speakcleans27(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This oven cleans easily.");
  }

  Future<void> speakcleans28(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This coat is filthy. I'll have it cleaned.");
  }

  Future<void> speakcleans29(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Clean the fish and remove the backbone.");
  }

  Future<void> speakcleans30(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I clean forgot about calling him.");
  }

  Future<void> speakcleans31(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The house needed a good clean.");
  }

  Future<void> speakcleans32(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Why don’t you give the carpet a clean?");
  }

  Future<void> speakcleans33(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans3300");
  }

  Future<void> speakcleans34(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans3400");
  }

  Future<void> speakcleans35(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans3500");
  }

  Future<void> speakcleans36(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans3600");
  }

  Future<void> speakcleans37(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans3700");
  }

  Future<void> speakcleans38(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans3800");
  }

  Future<void> speakcleans39(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans3900");
  }

  Future<void> speakcleans40(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans4000");
  }

  Future<void> speakcleans41(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans4100");
  }

  Future<void> speakcleans42(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans4200");
  }

  Future<void> speakcleans43(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans4300");
  }

  Future<void> speakcleans44(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans4400");
  }

  Future<void> speakcleans45(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans4500");
  }

  Future<void> speakcleans46(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans4600");
  }

  Future<void> speakcleans47(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans4700");
  }

  Future<void> speakcleans48(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans4800");
  }

  Future<void> speakcleans49(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans4900");
  }

  Future<void> speakcleans50(String languageCode) async {
    // DOPSUM: CHANGE speakclean
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcleans5000");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          // EdgeInsets.zero,
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
                            EntryTitle(word: "clean"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kliːn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclean("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kliːn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclean("en-US"),
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: پاک، خاوێن، تەمیز، بێ‌زیان، بێ‌پەڵە، پاقژ،	بێ‌لکە، بێ‌پەڵە،	تازە، نەو، نوێ،	سپی، نەنووسراو، بێ‌نیشان، بەکارنەھێنراو (کاغز)،	بەڕەوشتانە، بەئابڕووانە، ناھەرزانە،	دیار، ئاشکرا، ڕۆشن، ڕوون،	حەڵاڵ، حەڵاڵ گۆشت،	ڕێک‌وپێک، سادە، ساف، تەخت، لووس، ڕێک، تەکوز،	قانوونی،	دادپەروەرانە، جوامێرانە، پیاوانە،	بێ‌فڕوفێڵ، بێ‌خەوش، بێ‌گەرد، بێ‌ھەڵە، باش، پاک، بێ‌گوناھـ، بێ‌سووچ،	وەستایانە، شارەزایانە،	تەواو، ڕەبەق،	بێ‌تیشکدانەوەی ڕادیۆئەکتیڤ یان کەم‌بەرھەم‌ھێنەری تیشکە چالاکەکان (ڕادیۆئەکتیڤ یان چەک‌وچۆڵی ناوکی)،	لەبار، گونجاو،	بەبۆن و بەرام، بۆن‌خۆش، بەتام، بەتەواوەتی، تەواو، پاکی، خاوێنی، تەمیزی، پاقژی، خاوێن‌کردنەوە، سڕین، تەمیزکردن
"""),
                          const DefinitionKurdish(text: "١. (ھاوەڵناو) پاک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Are your hands clean?"),
                                    ExampleSentenceKurdish(
                                        text: "دەستەکانی پاکن؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "clean", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans1("en-US"),
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
                                            "She wiped all the surfaces clean."),
                                    ExampleSentenceKurdish(
                                        text: "تەواوی ڕووەکانم پاککردەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans2("en-US"),
                                  ),
                                ],
                              ),
                            ],
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
                                                    "It is your responsibility to keep the room clean and tidy."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەوە ئەرکی تۆیە کە ژوورەکان بە پاکی و ڕێکوپێکی بھێڵیتەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcleans3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcleans3("en-US"),
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
                                                    "The hotel was spotlessly (= extremely) clean."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھوتێلەکە تەواو پاک بوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcleans4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcleans4("en-US"),
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
                                                    "I scrubbed the floor to get it clean."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "زەوییەکەم سڕی بۆ ئەوەی خاوێن بێتەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcleans5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcleans5("en-US"),
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
                                                    "It's almost clean. I just have to wipe the table."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "خەریکە تەواو پاک دەبێت. تەنھا پێویستە مێزەکە بسڕم."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcleans6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcleans6("en-US"),
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
                                                    "You're supposed to keep your room clean."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "چاوەڕێی ئەوەت لێ دەکرێت ژوورەکەت خاوێن ڕابگریت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcleans7("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcleans7("en-US"),
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
                                  "٢. (ھاوەڵناو) ھەبوونی شێوەیەکی جوان و ژیانکردن لە دۆخی خاوێندا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Cats are very clean animals."),
                                    ExampleSentenceKurdish(
                                        text: "پشیلە ئاژەڵێکی زۆر خاوێنە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ھاوەڵناو) خاوێن لە مادەی زیانبەخش"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Thousands were left without food or clean drinking water."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەزاران کەس بەبێ خواردن و ئاوی خواردنەوەی پاک مانەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans9("en-US"),
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
                                            "Electric buses are a clean, environmentally friendly way to travel."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پاسی ئەلیکترۆنی ڕێگایەکی خاوێن ژینگەدۆستن بۆ گەشتنکردن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans10("en-US"),
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
                                            "The water was lovely and clean."),
                                    ExampleSentenceKurdish(
                                        text: "ئاوەکە خۆش و خاوێن بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) کاغەزێک کە ھیچی لەسەر نەنووسراوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Take a clean sheet of paper."),
                                    ExampleSentenceKurdish(
                                        text: "کاغەزێکی پاک دەربێنە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ھاوەڵناو) قسە، نوکتە، ھتد کە ناشرین نین و باسی سێکس ناکەن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Keep the jokes clean please!"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تکایە نوکتەکان بە پاکی بھێڵنەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans13("en-US"),
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
                                            "Can't you think of any clean jokes?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ناتوانی بیر لە نوکتەیەکی ناھەرزانە بکەیتەوە؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ھاوەڵناو) نەبوونی ھیچ پێشینەیەکی تاوانکاری"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The judge took the defendant's clean record (= the absence of previous involvement in crime) into account when passing sentence."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دادوەرەکە پێشینەی پاکی تاوانکاریی تاوانبارەکەی لەبەرچاوگرت لەکاتی سزادانەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ھاوەڵناو) نەبوونی ھیچ شتێکی نایاسایی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The police searched her but she was clean."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پۆلیس پشکنییان بەڵام ھێچی (نایاسایی) پێنەبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ھاوەڵناو) نەبوون یان نەخواردنەوەی کحوول یان مەدەی ھۆشبەر"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He's been clean for three weeks."),
                                    ExampleSentenceKurdish(
                                        text: "بۆ سێ ھەفتەیە نەیخواردووەتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ھاوەڵناو) شتێک کە بەپێی یاساکان کراوە و بە دادپەروەری کراوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "It was a tough but clean game."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "یارییەکی سەخت بەڵام بێگەرد بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans18("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ھاوەڵناو) ھەبوونی قەراغێک، ڕوویەک، یان شێوەیەکی لووس کە خواروخێچ نییە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "A sharp knife makes a clean cut."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چەقۆیەکی تیژ بڕینێکی ڕێک‌وپێک دەکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (ھاوەڵناو) کردن بە شارەزایی و ڕێک‌وپێکی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The plane made a clean take-off."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فڕۆکەکە فڕینێکی درووستی ئەنجامدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٢. (ھاوەڵناو) بەبێ گۆڕان و ھەڵە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I do my utmost to produce clean copy, but occasionally a mistake slips in."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەمیشە ھەموو شتێک دەکەم بۆ ئەوەی کۆپییەکی بێ‌خەوش ھەڵبگرم، بەڵام ماوەماوە ھەڵەیەکی تێدەکەوێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans21("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (ناو) ھەبوون تام یان بۆنێکی خۆش و تازە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The wine has a clean taste and a lovely golden colour."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مەیەکە تامێکی خۆش و ڕەنگێکی ئاڵتوونی جوانی ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans22("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٤. (کردار) پاککردنەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I spent all day cooking and cleaning."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەواوی ڕۆژەکەم بە خواردن لێنان و پاککردنەوە بەسەربرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans23("en-US"),
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
                                            "His mother told him to clean his room."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دایکی پێی گوت کەوا ژوورەکەی پاکبکاتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans24("en-US"),
                                  ),
                                ],
                              ),
                            ],
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
                                                    "He gently cleaned the wound and dressed it."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بەوریاییەوە برینەکەی پاککردەوە و پێچای."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcleans25("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcleans25("en-US"),
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
                                                    "Have you cleaned your teeth?"),
                                            ExampleSentenceKurdish(
                                                text: "ددانت خاوێنکردووەتەوە؟"),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcleans26("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcleans26("en-US"),
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
                              text: "١٥. (کردار) پاکبوونەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This oven cleans easily (= is easy to clean)."),
                                    ExampleSentenceKurdish(
                                        text: "فڕنەکە ئاسان پاکدەبێتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans27("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans27("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٦. (کردار) پاککردنەوەی جلوبەرگ بە مادەی کیمیایی وەک لە ئاو بە تەنھا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This coat is filthy. I'll have it cleaned."),
                                    ExampleSentenceKurdish(
                                        text: "ئەم پاڵتاوە پیسە. دەیشۆم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans28("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans28("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٧. (کردار) لابردنی بەشی ناوەوەی ماسی، مریشک، ھتد پێش لێنان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Clean the fish and remove the backbone."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ماسییەکە پاک بکە و بڕبڕەی دەربێنە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans29("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans29("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٨. (کردار) بۆ جەختکردنەوە لەوەی شتێک بە تەواوی ڕوویدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I clean forgot about calling him."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە تەواوی بیرمچوو پەیوەندی پێوە بکەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans30("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans30("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٩. (ناو) کاری پاککردنەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "The house needed a good clean."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خانووەکە پێویستی بە پاککردنەوەیەکی تەواو بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans31("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans31("en-US"),
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
                                            "Why don’t you give the carpet a clean?"),
                                    ExampleSentenceKurdish(
                                        text: "بۆچی ڕایەخەکە پاک ناکەیتەوە؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcleans32("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcleans32("en-US"),
                                  ),
                                ],
                              ),
                            ],
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
- Verb: clean (derived forms: cleaned, cleans, cleaning)
1. Make clean by removing dirt, filth, or unwanted substances from (= make clean)
"Clean the stove!"; "The dentist cleaned my teeth";
 
2. Remove unwanted substances from, such as feathers or pits (= pick)
"Clean the turkey";
 
3. Clean and tidy up the house (= houseclean, clean house [N. Amer])
"She cleans house every week";
 
4. Clean one's body or parts thereof, as by washing (= cleanse)
"clean up before you see your grandparents"; "clean your fingernails before dinner";
 
5. Be cleanable
"This stove cleans easily"
 
6. Deprive wholly of money in a gambling game, robbery, etc.
"The other players cleaned him completely"
 
7. Remove all contents or possessions from, or empty completely (= strip)
"The boys cleaned the sandwich platters"; "The trees were cleaned of apples by the storm";
 
8. Remove while making clean
"Clean the spots off the rug"
 
9. (chemistry) remove impurities from, esp. by a chemical reaction (= scavenge)
 
10. Remove shells or husks from
"clean grain before milling it"

- Adjective: clean (derived forms: cleanest, cleaner)
1. Free from dirt or impurities; or having clean habits
"children with clean shining faces"; "clean white shirts"; "clean dishes"; "a spotlessly clean house"; "cats are clean animals"
 
2. Free from restrictions or qualifications (= clear)
"a clean bill of health";
 
3. (of sound or colour) free from anything that dulls or dims (= clear, light, unclouded)
"efforts to obtain a clean bass in orchestral recordings";
 
4. Free from impurities (= fresh)
"clean water";
 
5. (of a record) having no marks of discredit or offence
"a clean voting record"; "a clean driver's licence"
 
6. Free from sepsis or infection (= uninfected)
"a clean wound";
 
7. Morally pure (= clean-living)
"led a clean life";
 
8. (of a manuscript) having few alterations or corrections (= fair)
"a clean manuscript";
 
9. (of a surface) not written or printed on (= blank, white)
"a clean page";
 
10. Exhibiting or calling for sportsmanship or fair play (= sporting, sporty, sportsmanlike)
"a clean fight";
 
11. Without difficulties or problems
"a clean test flight"
 
12. Thorough and without qualification
"a clean getaway"; "a clean sweep"; "a clean break"
 
13. [informal] Not carrying concealed weapons
 
14. Free from clumsiness; precisely or deftly executed (= neat)
"he landed a clean left on his opponent's cheek"; "a clean throw";
 
15. [informal] Free of drugs
"after a long dependency on heroin she has been clean for 4 years"
 
16. (religion) ritually clean or pure
 
17 Not spreading pollution or contamination; especially radioactive contamination (= uncontaminating)
"a clean fuel"; "cleaner and more efficient engines"; "the tactical bomb is reasonably clean";
 
18. (of behaviour or especially language) free from objectionable elements; fit for all observers (= unobjectionable)
"a clean joke"; "good clean fun";

- Noun: clean (derived forms: cleans)
1. The act of making something clean (= cleaning, cleansing, cleanup)
"he gave his shoes a good clean";
 
2. A weightlift in which the barbell is lifted to shoulder height and then jerked overhead (= clean and jerk)

- Adverb: clean 
1. [informal] Completely; used as an intensifier (= plumb, plum)
"clean forgot the appointment"; "I'm clean tuckered out";
 
2. In conformity with the rules or laws and without fraud or cheating (= fairly, fair)
"they played clean";
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

class YoutubeEmbeddedend extends StatefulWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  State<YoutubeEmbeddedend> createState() => _YoutubeEmbeddedendState();
}

class _YoutubeEmbeddedendState extends State<YoutubeEmbeddedend> {
  late YoutubePlayerController _controller;
  final String _videoId = 'pexBibWa2b4';
  final double _startSeconds = 38;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainerEnd(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatefulWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  State<YoutubeEmbeddedone> createState() => _YoutubeEmbeddedoneState();
}

class _YoutubeEmbeddedoneState extends State<YoutubeEmbeddedone> {
  late YoutubePlayerController _controller;
  final String _videoId = '1YBtsQz2RwA';
  final double _startSeconds = 49;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatefulWidget {
  const YoutubeEmbeddedtwo({super.key});

  @override
  State<YoutubeEmbeddedtwo> createState() => _YoutubeEmbeddedtwoState();
}

class _YoutubeEmbeddedtwoState extends State<YoutubeEmbeddedtwo> {
  late YoutubePlayerController _controller;
  final String _videoId = 'MGZipqcsen4';
  final double _startSeconds = 31;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatefulWidget {
  const YoutubeEmbeddedthree({super.key});

  @override
  State<YoutubeEmbeddedthree> createState() => _YoutubeEmbeddedthreeState();
}

class _YoutubeEmbeddedthreeState extends State<YoutubeEmbeddedthree> {
  late YoutubePlayerController _controller;
  final String _videoId = 'Fajh6SthpTM';
  final double _startSeconds = 91;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatefulWidget {
  const YoutubeEmbeddedfour({super.key});

  @override
  State<YoutubeEmbeddedfour> createState() => _YoutubeEmbeddedfourState();
}

class _YoutubeEmbeddedfourState extends State<YoutubeEmbeddedfour> {
  late YoutubePlayerController _controller;
  final String _videoId = 'WotUwfMr20Q';
  final double _startSeconds = 35;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatefulWidget {
  const YoutubeEmbeddedfive({super.key});

  @override
  State<YoutubeEmbeddedfive> createState() => _YoutubeEmbeddedfiveState();
}

class _YoutubeEmbeddedfiveState extends State<YoutubeEmbeddedfive> {
  late YoutubePlayerController _controller;
  final String _videoId = 'rdmx_oD25C8';
  final double _startSeconds = 70;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatefulWidget {
  const YoutubeEmbeddedsix({super.key});

  @override
  State<YoutubeEmbeddedsix> createState() => _YoutubeEmbeddedsixState();
}

class _YoutubeEmbeddedsixState extends State<YoutubeEmbeddedsix> {
  late YoutubePlayerController _controller;
  final String _videoId = 'P7gpZmbtboo';
  final double _startSeconds = 1907;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedseven extends StatefulWidget {
  const YoutubeEmbeddedseven({super.key});

  @override
  State<YoutubeEmbeddedseven> createState() => _YoutubeEmbeddedsevenState();
}

class _YoutubeEmbeddedsevenState extends State<YoutubeEmbeddedseven> {
  late YoutubePlayerController _controller;
  final String _videoId = '47MNn4bsmSw';
  final double _startSeconds = 3082;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

// end WORD_WEB