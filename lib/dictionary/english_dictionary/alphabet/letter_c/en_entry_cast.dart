import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycast extends StatelessWidget {
  // blank divider
  EnglishEntrycast({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcast(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cast"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts1(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I cast an angry look at him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts2(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She cast a quick look in the rear mirror."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts3(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The moon had cast a silvery light on the huts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts4(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The setting sun cast an orange glow over the mountains."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts5(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This latest evidence casts serious doubt on his version of events."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts6(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The entire economic future of the islands was cast into doubt."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts7(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He refused to cast a vote for either candidate."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts8(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The play is being cast in both the US and Britain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts9(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He has cast her as an ambitious lawyer in his latest movie."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts10(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He cast himself as the innocent victim of a hate campaign."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts11(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He cast the line to the middle of the river."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts12(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The priceless treasures had been cast into the Nile."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts13(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The whole cast performs/perform brilliantly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts14(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The film has a great cast."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts15(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The colours he wore emphasized the olive cast of his skin."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts16(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her leg's in a cast."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts17(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts18(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts19(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts20(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts21(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts22(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts23(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts24(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts25(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts26(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts27(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts28(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts29(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts30(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3030"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts31(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3131"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts32(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3232"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts33(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3333"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts34(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3434"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts35(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3535"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts36(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3636"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts37(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3737"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts38(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3838"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts39(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts3939"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts40(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4040"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts41(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4141"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts42(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4242"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts43(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4343"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts44(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4444"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts45(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4545"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts46(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4646"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts47(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4747"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts48(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4848"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts49(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts4949"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcasts50(String languageCode) async {
    // DOPSUM: CHANGE speakcast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcasts5050"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "cast"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kɑːst/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcast("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kæst/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcast("en-US"),
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
کوردی: خستن، ھاویشتن، حەوادان، تووڕدان، دەستەی ھونەرمەند و ئەکتەران، گەچ (شکستەبەندی)، شتی ڕژاو یان داڕێژراو، داڕژاوە، داڕشتە، داڕێژگە، قاڵب، شێوە، بیچم، ڕووکەش، تەرح، تیراوێژ، بەرتیر، ماوەبڕ، لێکدانەوە، مەزندە، مۆرەھەڵخستن، مۆرەھاویشتن، کەراژ، کەراژەمار، جۆر، چەشن، ئاوا، خێلی (کەمێ)، بنەڕەنگ، سووکەڕەنگ
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) سەیرکردن، پێکەنین، ھتد بە ئاراستەیەکی دیاریکراودا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I cast an angry look at him."),
                                    ExampleSentenceKurdish(
                                        text: "نیگایەکی ڕقاویم لێکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // Define the word "cast", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcasts1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcasts1("en-US"),
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
                                            "She cast a quick look in the rear mirror."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەیرێکی خێرای ئاوێنەی پشتەوەی کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcasts2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcasts2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (کردار) دەرخستنی ڕۆشنایی، سێبەر، ھتد لەسەر شوێنێکی دیاریکراو"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The moon had cast a silvery light on the huts."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مانگ شەوقێکی زیوینی خستبووە سەر کوخەکان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcasts3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcasts3("en-US"),
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
                                            "The setting sun cast an orange glow over the mountains."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خۆرەئاوابووەکە ڕوناکییەکی پرتەقاڵی خستبووە سەر شاخەکان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcasts4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcasts4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) وتن، پێشنیازکردن، یان کردنی شتێک کە گومان دەخاتە سەر شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This latest evidence casts serious doubt on his version of events."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم بەڵگەیەی دوایی گومانی توند دەخاتە سەر گێڕانەوەی ئەو بۆ ڕووداوەکان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcasts5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcasts5("en-US"),
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
                                            "The entire economic future of the islands was cast into doubt."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەواوی داھاتووی ئابووریی دوورگەکە خرایە ژێر گومانەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcasts6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcasts6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) دەنگدان بە کەسێک یان شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He refused to cast a vote for either candidate."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕەتیکردەوە دەنگ بە ھیچ یەک لە دوو کاندیدەکە بدات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcasts7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcasts7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) ھەڵبژرادنی ئەکتەرێک بۆ بینینی ڕۆڵێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The play is being cast in both the US and Britain."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەکتەرانی شانۆکە لە ئەمریکا و بەریتانیاوە دەستنیشان دەکرێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcasts8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcasts8("en-US"),
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
                                            "He has cast her as an ambitious lawyer in his latest movie."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕۆڵی پارێزەرێکی تەماحبازی پێدابوو لە دواترین فیلمیدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcasts9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcasts9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) ناساندنی کەسێک، شتێک، ھتد بەشێوەیەکی دیاریکراو"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He cast himself as the innocent victim of a hate campaign."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خۆی وەک قوربانیی بێ‌تاوانی کەمپینە ڕقاوییەکە پیشاندا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcasts10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcasts10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) فڕێدانی سەرێکی قولابی ماسی بۆ ناو ئاو"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He cast the line to the middle of the river."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "قولابەکەی فڕێدایە ناوەڕاستی ڕووبارەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcasts11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcasts11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) فڕێدانی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The priceless treasures had been cast into the Nile."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گەنجینە بەھادارەکان فڕێدرابوونە ناو ڕووباری نیلەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcasts12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcasts12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (ناو) ھەموو ئەو کەسانەی کە بەژداری لە فیلمێک، شانۆیەک، ھتد دەکەن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The whole cast performs/perform brilliantly."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەواوی دەستەکە بلیمەتانە ڕۆڵ دەبینن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcasts13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcasts13("en-US"),
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
                                        text: "The film has a great cast."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فیلمەکە ژمارەیەک ئەکتەری ناوازەی ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcasts14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcasts14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ناو) شێوازی دەرکەوتنی کەسێک یان شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The colours he wore emphasized the olive cast of his skin."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەو ڕەنگانەی لەبەری دەکردن زەیتوونی دەرکەوتنی پێستی دەردەخست."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcasts15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcasts15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (ناو) پلاستەرێک کە لە ئێسکی شکاو دەبەسترێت و دەیپارێزێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Her leg's in a cast."),
                                    ExampleSentenceKurdish(
                                        text: "لاقی لە پلاستەردایە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcasts16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcasts16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(),
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(), //
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
- Verb: cast (derived forms: casts, cast, casting)
1. Put or send forth (= project, contrive, throw)
"cast a spell"; "cast a warm light";
 
2. Deposit
"cast a vote"; "cast a ballot"
 
3. (performing arts) select to play, sing, or dance a part in a play, movie, musical, opera, or ballet
"He cast a young woman in the role of Desdemona"
 
4. Throw forcefully (= hurl, hurtle)
 
5. Assign the roles of (a movie or a play) to actors
"Who cast this beautiful movie?"
 
6. Move about aimlessly or without any fixed destination (= roll, wander, swan [informal], stray, tramp, roam, ramble, rove, range, drift, vagabond [archaic])
"They cast from town to town";
 
7. Form by pouring (e.g., wax or hot metal) into a cast or mould (= mold [N. Amer], mould [Brit, Cdn])
"cast a bronze sculpture";

8. To remove (= shed, cast off, shake off, throw, throw off, throw away, drop, lose)
"he cast his image as a pushy boss";
 
9. Choose at random (= draw)
"cast lots";
 
10. Formulate in a particular style or language (= frame, redact, put, couch)
"She cast her request in very polite language";

- Noun: cast (derived forms: casts) 
1. The actors in a play (= cast of characters, dramatis personae)
 
2. Container into which liquid is poured to create a given shape when it hardens (= mold [N. Amer], mould [Brit, Cdn])
 
3. The distinctive form in which a thing is made (= mold [N. Amer], mould [Brit, Cdn], stamp)
"pottery of this cast was found throughout the region";
 
4. The visual appearance of something or someone (= form, shape)
"the delicate cast of his features";
 
5. Bandage consisting of a firm covering (often made of plaster of Paris) that immobilizes broken bones while they heal (= plaster cast, plaster bandage)
 
6. Object formed by a mould (= casting)
 
7. The act of throwing dice (= roll)
 
8. The act of throwing a fishing line out over the water by means of a rod and reel (= casting)
 
9. A violent throw (= hurl)
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
    videoId: 'hwFJyldqaIs',
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
    videoId: '2HH9tBqY4XY',
    startSeconds: 99,
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
    startSeconds: 215,
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
    videoId: 'pNCOA8AUxdw',
    startSeconds: 241,
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
    videoId: 'qWAagS_MANg',
    startSeconds: 1424,
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
    videoId: 'dqcSk-EDrRo',
    startSeconds: 1256,
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
    videoId: 'Rzd0mLf366I',
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

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '_45zjnjrFOA',
    startSeconds: 30,
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

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'anbBwpoI9TI',
    startSeconds: 526,
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

// end WORD_WEB
