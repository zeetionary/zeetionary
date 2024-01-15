import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "body" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace body - /ˈbɒdi/

enum TtsState { playing }

class EnglishEntrybody extends StatelessWidget {
// blank divider
  EnglishEntrybody({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbody(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("body"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys1(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The human body is a complex structure."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys2(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The virus can affect all parts of the body."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys3(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She had injuries to her head and body."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys4(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He has a large body, but thin legs."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys5(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The family of the missing girl has been called in by the police to identify the body."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys6(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The bar is in the main body of the hotel."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys7(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There are some references in the main body of the text."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys8(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The governing body of the school is/are concerned about discipline."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys9(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "An independent body has been set up to investigate the affair."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys10(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There is a powerful body of opinion against the ruling."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys11(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The two islands are separated by a large body of water."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys12(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They removed a foreign body from her eye."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys13(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Stars are celestial bodies."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys14(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Regular use of conditioner is supposed to give your hair more body."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys15(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This wine has plenty of body."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys16(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Every able-bodied man had to fight for his country."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys17(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys18(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys19(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys20(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys21(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys22(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys23(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys24(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys25(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys26(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys27(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys28(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys29(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbodys30(String languageCode) async {
    // DOPSUM: CHANGE speakbody
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbodys3030"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 14, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "body"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈbɒdi/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbody("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈbɑːdi/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbody("en-US"),
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
                  VideoIconForTab(), // 01
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 14
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                  // VideoIconForTab(), // 16
                  // VideoIconForTab(), // 17
                  // VideoIconForTab(), // 18
                  // VideoIconForTab(), // 19
                  // VideoIconForTab(), // 20
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
                          const DefinitionKurdish(text: """
کوردی: لەش، تەن، جەستە، ئەندام، گیان، قەلبەند، کەلەخ، کەلاک، جەندەک، تەرم، لاشە، بەشی سەرەکی، (ماشێن) بەدەنە، لاشە، گروپ، دەستە، تیپ، تاقم، کۆمەڵە، کۆمەڵ، کۆما، کۆگا، لۆدەتەن، ژمارە، چۆنیەتی، باشی، بنیادەم، پیاو، مرۆ، (مەی) خەستی

١. (ناو) لەش، جەستە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The human body is a complex structure."),
                              const ExampleSentenceKurdish(
                                  text: "لەشی مرۆڤ پێکھاتەیەکی ئاڵۆزە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbodys1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbodys1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The virus can affect all parts of the body."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڤایرۆسەکە دەکرێت کار بکاتە سەر ھەموو بەشەکانی جەستە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbodys2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbodys2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) بەشی سەرەکی جەستە بەبێ سەر، یان بەبێ سەر و باڵ و لاق"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She had injuries to her head and body."),
                              const ExampleSentenceKurdish(
                                  text: "برینی ھەبوو لەسەر سەری و جەستەی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbodys3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbodys3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He has a large body, but thin legs."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لاشەیەکی گەورەی ھەیە، بەڵام لاقەکانی باریکن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbodys4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbodys4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) لاشەی کەسێک یان ئاژەڵێکی مردوو"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The family of the missing girl has been called in by the police to identify the body."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "خێزانی کچە ونبووەکە بانگکراون لەلایەن پۆلیسەوە بۆ ناسینەوەی لاشەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbodys5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbodys5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) بەشی سەرەکیی شتێک، بەتایبەتی بینایەک، ئامرازێکی گواستنەوە، کتێبێک، وتارێک، ھتد"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The bar is in the main body of the hotel."),
                              const ExampleSentenceKurdish(
                                  text: "باڕەکە بەشی سەرەکی ھوتێلەکەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbodys6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbodys6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There are some references in the main body of the text."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەندێک سەرچاوە ھەن لە بەشی سەرەکیی نووسراوەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbodys7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbodys7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) کۆمەڵێک لە خەڵکی کە پێکەوە کاردەکەن، زۆرجار بۆ مەبەستێکی فەرمی، یان ئەوەی بە شێوەیەک پێکەوە پەیوەندیدارن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The governing body of the school is/are concerned about discipline."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەستەی بەڕێوبەری قوتابخانەکە نیگەرانن سەبارەت بە گوێرایەڵی (خوێندکاران)."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbodys8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbodys8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "An independent body has been set up to investigate the affair."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەستەیەکی سەربەخۆ پێکھێنراوە بۆ لێکۆڵینەوە لە بابەتەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbodys9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbodys9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) ڕێژەیەکی زۆر لە شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There is a powerful body of opinion against the ruling."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕێژەیەکی بەھێز لە بۆچوون ھەیە دژ بە بڕیارەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbodys10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbodys10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The two islands are separated by a large body of water."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دوو دوورگەکە جیاکراونەتەوە بە بڕێکی زۆر لە ئاو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbodys11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbodys11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٧. (ناو) شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They removed a foreign body from her eye."),
                              const ExampleSentenceKurdish(
                                  text: "شتێکی دەرەکییان لە چاوی دەرکرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbodys12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbodys12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Stars are celestial bodies."),
                              const ExampleSentenceKurdish(
                                  text: "ئەستێرەکان تەنی ئاسمانین."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbodys13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbodys13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ناو) کوالێتی بەھێز یان ئەستوور"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Regular use of conditioner is supposed to give your hair more body."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەکارھێنانی بەردەوامی نەرم‌کەرەوە دەبێت ئەستووری زیاتر بە قژت بدات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbodys14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbodys14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "This wine has plenty of body (= strong flavour)."),
                              const ExampleSentenceKurdish(
                                  text: "ئەم بیرەیە تامی بەھێزی ھەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbodys15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbodys15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ناو) ھەبوونی ئەو جۆرە لاشەیەی کە باسکراوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Every able-bodied man had to fight for his country."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەموو پیاوێکی لاشە ساخ دەبوو شەڕ بۆ وڵاتەکەی بکات."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbodys16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbodys16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(),
                    YoutubeEmbeddedtwo(),
                    YoutubeEmbeddedthree(),
                    YoutubeEmbeddedfour(),
                    YoutubeEmbeddedfive(),
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    YoutubeEmbeddedseven(),
                    YoutubeEmbeddedeight(),
                    YoutubeEmbeddednine(),
                    YoutubeEmbeddedten(),
                    YoutubeEmbeddedeleven(),
                    YoutubeEmbeddedtwelve(),
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
- Noun: body (derived forms: bodies)
1. The entire physical structure of an organism (an animal, plant, or human being) (= organic structure)
"he felt as if his whole body were on fire";

2. A group of persons associated by some common tie or occupation and regarded as an entity
"the whole body filed out of the auditorium"; "the student body"; "administrative body"
 
3. A natural object consisting of a dead animal or person (= dead body)
"they found the body in the lake";

4. An individual 3-dimensional object that has mass and that is distinguishable from other objects
"heavenly body"
 
5. The body excluding the head and neck and limbs (= torso, trunk)
"they moved their arms and legs and bodies";

6. A collection of particulars considered as a system
"a body of law"; "a body of doctrine"; "a body of precedents"
 
7. The property of holding together and retaining its shape (= consistency, consistence, substance)
"wool has more body than rayon";

8. The central message of a communication
"the body of the message was short"
 
9. The main mass of a thing
 
10. A resonating chamber in a musical instrument (as the body of a violin) (= soundbox)
 
11. The external structure of a vehicle
"the body of the car was badly rusted"

- Verb: body (derived forms: bodied, bodies, bodying)
1. Invest with or as with a body; give body to (= personify)
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

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  static String myVideoId = "10FiSsim_a4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 59, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  static String myVideoId = "Pon4Zux5MaQ";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 109, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  static String myVideoId = "vhmtoAYVRSo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 25, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  static String myVideoId = "y4TAuIuC2Gg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 158, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  static String myVideoId = "GLy2rYHwUqY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 118, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  static String myVideoId = "O9ifAYdKDG4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 16, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  static String myVideoId = "DG8rPBlbOrY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 23, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  static String myVideoId = "e5WJ5_0Z7Ww";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 14, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  static String myVideoId = "JljeqZ4iei8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 83, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  static String myVideoId = "Jt5WpKRPIlE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 12, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  static String myVideoId = "il1SqNg_ZAw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  static String myVideoId = "Y0VQyEY-B2I";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 131, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// more than one video, only first autoplay

// end body
