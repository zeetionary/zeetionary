import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "block" and provide five simple and short example sentences for each meaning. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more.

// replace block - /blɒk/

enum TtsState { playing }

class EnglishEntryblock extends StatelessWidget {
// blank divider
  EnglishEntryblock({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakblock(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("block");
  }

  Future<void> speakblocks1(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The houses are made of concrete blocks.");
  }

  Future<void> speakblocks2(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The wall was made from massive blocks of stone.");
  }

  Future<void> speakblocks3(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She lives in a modern apartment block.");
  }

  Future<void> speakblocks4(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The museum is just six blocks away.");
  }

  Future<void> speakblocks5(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They walked a few blocks down the street.");
  }

  Future<void> speakblocks6(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She took the dog for a walk around the block.");
  }

  Future<void> speakblocks7(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The three-hour class is divided into four blocks of 45 minutes each.");
  }

  Future<void> speakblocks8(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Lack of training acts as a block to progress in a career.");
  }

  Future<void> speakblocks9(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I suddenly had a mental block and couldn't remember his name.");
  }

  Future<void> speakblocks10(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The defender made a lunging block.");
  }

  Future<void> speakblocks11(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He placed his neck on the block and the executioner ended his life.");
  }

  Future<void> speakblocks12(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Anne Boleyn went to the block.");
  }

  Future<void> speakblocks13(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She went to the block with great courage and dignity.");
  }

  Future<void> speakblocks14(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("After today's heavy snow, many roads are still blocked.");
  }

  Future<void> speakblocks15(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He found that the pipe was partially blocked with leaves.");
  }

  Future<void> speakblocks16(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("One of the guards moved to block her path.");
  }

  Future<void> speakblocks17(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("An ugly new building blocked the view from the window.");
  }

  Future<void> speakblocks18(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The proposed merger has been blocked by the government.");
  }

  Future<void> speakblocks19(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A court ruling blocked the plans to develop the area.");
  }

  Future<void> speakblocks20(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His shot was blocked by the goalie.");
  }

  Future<void> speakblocks21(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Police have accused mobile networks of failing to block stolen phones.");
  }

  Future<void> speakblocks22(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There are many reasons to block someone online.");
  }

  Future<void> speakblocks23(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A person who has been blocked won't necessarily know that you've blocked them.");
  }

  Future<void> speakblocks24(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblocks2424");
  }

  Future<void> speakblocks25(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblocks2525");
  }

  Future<void> speakblocks26(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblocks2626");
  }

  Future<void> speakblocks27(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblocks2727");
  }

  Future<void> speakblocks28(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblocks2828");
  }

  Future<void> speakblocks29(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblocks2929");
  }

  Future<void> speakblocks30(String languageCode) async {
    // DOPSUM: CHANGE speakblock
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblocks3030");
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
                            EntryTitle(word: "block"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /blɒk/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakblock("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /blɑːk/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakblock("en-US"),
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
کوردی: کۆلکە، تەختەبەرد، قاڵب، داڕێژگە، پارچە، کوت، لەت، خانووبەرە، ڕیزەماڵ، ڕێزەخانووبەرە، چەپک، دەستە، کۆمەڵە، تاقم، گروپ، گیراوی، داخران، گیران، بەستران، خلۆکە، قڕقڕە (تەناف‌خۆر)، کڵیشە، مۆر، شەقڵ، (کڵاو) قاڵب، کۆتەی بن مل (لە لێدانی مل‌دا)، (مۆتۆر) لاشە، پەیکەر، بەدەنە، پواز، بەرپێچکە، ھۆرە، لەتەدار (بۆ دانەبەر پێچکە)، بەربەست، تەگەرە، کۆسپ، مرۆی گەوج، بڕێکی زۆر، کەڵەکە، لۆدە، بلوک (وەرزش) جووڵەیێ کە یاریزانەکەی تر لە چوونەپێش ڕادەگرێ noun گشتی، ھەمەکی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) مادەیەکی ڕەق کە شێوەی چوارگۆشە یان لاکێشەیە و زۆرجار لاکانی تەختن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The houses are made of concrete blocks."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خانووەکان لە بلۆکی کۆنکریت درووست کرابوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks1("en-US"),
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
                                            "The wall was made from massive blocks of stone."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دیوارەکە لە بلۆکی گەورەی بەردین درووست کرا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) بینای بەرز کە شوێنی نیشتەجێبوون یان ئۆفیسن "),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She lives in a modern apartment block."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە کۆمەڵگەیەکی نیشتەجێبوونی سەردەمیانە دەژی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) دووری نێوان دوو ڕێگا کە ڕێگایەکی تر دەبڕن، یان ئەو بەشەی کە دەکەوێتە نێوان دوو ڕێگاکەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The museum is just six blocks away."),
                                    ExampleSentenceKurdish(
                                        text: "مۆزەخاکە شەش گەڕەک دوورە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks4("en-US"),
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
                                            "They walked a few blocks down the street."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە درێژایی چەند ڕیزە ماڵێک بە شەقامەکەدا پیاسەیان کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ژمارەیەک بینا کە شەقام لە ھەموو لایەکیەتی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She took the dog for a walk around the block."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەگەکەی برد بۆ پیاسەیەک بە دەوری گەڕەکەکەدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) بڕێک لە شتێک یان ڕێژەیەک لە کات کە پێکەوە وەک یەک یەکە دەبینرێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The three-hour class is divided into four blocks of 45 minutes each."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "وانە سێ کاتژمێرییەکە دابەشکراوە بۆ چوار بەشی ٤٥ خولەکی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) شتێک کە وادەکات جووڵە یان پێشکەوتن گران یان ئەستەم بێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Lack of training acts as a block to progress in a career."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کەمی ڕاھێنان وەک بەربەست کاردەکات لەپێش بەرەوپێشچوون لە کاردا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks8("en-US"),
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
                                            "I suddenly had a mental block and couldn't remember his name."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەناکاو بیرم بەقوڕدا چوو و نەمتوانی ناویم بیربکەوێتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) ڕێگری لە پێشڕەوی یاریزان لە یاری وەرزشیدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The defender made a lunging block."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەرگریکارەکە ڕێگرییەکی خێرای ئەنجامدا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) پارچە دارێکی گەورە کە تاونباران لەسەری سەریان دەپەڕێنرا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He placed his neck on the block and the executioner ended his life."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەری خستە سەر کۆتەکە و سەربڕەکە ژیانی کۆتایی پێھێنا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks11("en-US"),
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
                                        text: "Anne Boleyn went to the block."),
                                    ExampleSentenceKurdish(
                                        text: "ئان بلین سەری پەڕێندرا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks12("en-US"),
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
                                            "She went to the block with great courage and dignity."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چوو بەرەو سەرپەڕاندنی بە بوێری و شکۆمەندیی زۆرەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) وەستاندنی شتێک لە بەرەوپێشچوون بە دانانی شتێکی تر لە پێشی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "After today's heavy snow, many roads are still blocked."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە دوای بەفربارینی زۆری ئەمڕۆ، زۆر ڕێگا ھێشتا گیراون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks14("en-US"),
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
                                            "He found that the pipe was partially blocked with leaves."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زانی کە بۆڕییەکە بەشێکی بە گەڵا گیرابوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) وەستاندنی کەسێک لە چوونە شوێنێک یان بینینی شتێک بە وەستان لە پێشیان یان لە ڕێگایان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "One of the guards moved to block her path."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "یەکێک لە پاسەوانەکان ڕۆشت بۆ گرتنی ڕێگای."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks16("en-US"),
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
                                            "An ugly new building blocked the view from the window."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بینایەکی تازەی ناشرین پێشی دیمەنی لە پەنجەرەکەوە گرتبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (کردار) ڕێگرتن لە ڕوودان، گەشەکردن، یان بەرەوپێشچوونی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The proposed merger has been blocked by the government."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێشنیاری یەکگرتنەکە لەلایەن حکومەتەوە پێشگیری لێکرا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks18("en-US"),
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
                                            "A court ruling blocked the plans to develop the area."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بڕیارێکی دادگا ڕێگری لە پلانەکان کرد بۆ ئاوەدانکردنەوەی ناوچەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٢. (کردار) وەستاندنی تۆپێک یان لێدانێک لە یاری وەرزشیدا بە وەستان لە پێشی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "His shot was blocked by the goalie."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لێدانەکەی گەڕێندرایەوە لەلایەن گۆڵپارێزەکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٢. (کردار) وەستاندنی موبایلێک لە بەکارھێنان، بۆ نموونە لە دوای دزرانی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Police have accused mobile networks of failing to block stolen phones."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پۆلیس تۆڕەکانی موبایلی تاوانبارکردووە بەوەی شکستیان ھێناوە لە لەکارخستنی موبایلی دزراو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks21("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (کردار) ڕێگری لەوەی کەسێک پەیوەندیت پێوە بکات لەسەر تۆڕە کۆمەڵایەتییەکان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "There are many reasons to block someone online."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زۆر ھۆکار ھەیە بۆ بلۆککردنی کەسێک لەسەر ئینتەرنێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks22("en-US"),
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
                                            "A person who has been blocked won't necessarily know that you've blocked them."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کەسێک کە بلۆک کراوە مەرج نییە بزانێت کە تۆ بلۆکت کردووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblocks23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblocks23("en-US"),
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
- Noun: block (derived forms: blocks)
1. A solid piece of something (usually having flat rectangular sides)
"the pyramids were built with large stone blocks"
 
2. A rectangular area in a city surrounded by streets and usually containing several buildings (= city block)
"he lives in the next block";
 
3. A three-dimensional shape with six square or rectangular sides (= cube)
 
4. A number or quantity of related things dealt with as a unit
"he reserved a large block of seats"; "he held a large block of the company's stock"
 
5. Housing in a large building that is divided into separate units
"there is a block of classrooms in the west wing"
 
6. (computing) a sector or group of sectors that function as the smallest data unit permitted
"since blocks are often defined as a single sector, the terms 'block' and 'sector' are sometimes used interchangeably"
 
7. An inability to remember or think of something you normally can do; often caused by emotional tension (= mental block)
"I knew his name perfectly well but I had a temporary block";

8. A simple machine consisting of a wheel with a groove in which a rope can run to change the direction or point of application of a force applied to the rope (= pulley, pulley-block, pulley block)
 
9. A metal casting containing the cylinders and cooling ducts of an engine (= engine block, cylinder block)
"the engine had to be replaced because the block was cracked";

10. An obstruction in a pipe or tube (= blockage, closure, occlusion, stop, stoppage)
"we had to call a plumber to clear out the block in the drainpipe";
 
11. A platform from which an auctioneer sells (= auction block)
"they put their paintings on the block";
 
12. The act of obstructing or deflecting someone's movements (= blocking)

- Verb: block (derived forms: blocks, blocking, blocked)
1. Render unsuitable for passage (= barricade, blockade, stop, block off, block up, bar)
"block the way"; "block off the streets"; "block up the streets";
 
2. Hinder or prevent the progress or accomplishment of (= obstruct, blockade, hinder, stymie, stymy [rare], embarrass)
"His brother blocked him at every turn";
 
3. Prevent from happening or developing (= stop, halt, kibosh [informal], kybosh [informal])
"Block his election";

4. Interfere with or prevent the reception of signals (= jam)
"block the signals emitted by this station";
 
5. Run on a block system
"block trains"
 
6. Interrupt the normal function of by means of anaesthesia
"block a nerve"; "block a muscle"
 
7. Shut out from view or get in the way so as to hide from sight (= obstruct)
"The thick curtain blocked the action on the stage";
 
8. Stamp or emboss a title or design on a book with a block
"block the book cover"
 
9. Obstruct (= stuff, lug, choke up)
"Her arteries are blocked";
 
10. Block passage through (= obstruct, obturate, impede, occlude, jam, close up)
"block the path";
 
11. Support, secure, or raise with a block
"block a plate for printing"; "block the wheels of a car"
 
12. Impede the movement of (an opponent or a ball) (= parry, deflect)
"block an attack";

13. Be unable to remember (= forget, blank out, draw a blank, disremember [US, informal])
"You are blocking the name of your first wife!";
 
14. Shape by using a block
"Block a hat"; "block a garment"
 
15. Shape into a block or blocks
"block the graphs so one can see the results clearly"
 
16. Prohibit the conversion or use of (assets) (= freeze, immobilize, immobilise [Brit])
"Blocked funds";
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

class YoutubeEmbeddedone extends StatefulWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  State<YoutubeEmbeddedone> createState() => _YoutubeEmbeddedoneState();
}

class _YoutubeEmbeddedoneState extends State<YoutubeEmbeddedone> {
  late YoutubePlayerController _controller;
  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 104;

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
  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 638;

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
  final String _videoId = '0eEkWvekQiE';
  final double _startSeconds = 135;

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
  final String _videoId = '-heI0TqcxFo';
  final double _startSeconds = 4;

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
  final String _videoId = 'Q2jZv-zaG_I';
  final double _startSeconds = 387;

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
  final String _videoId = 'tdAQtBAO9lo';
  final double _startSeconds = 471;

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
  final String _videoId = 'i_g9uIHCAZs';
  final double _startSeconds = 13;

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

class YoutubeEmbeddedeight extends StatefulWidget {
  const YoutubeEmbeddedeight({super.key});

  @override
  State<YoutubeEmbeddedeight> createState() => _YoutubeEmbeddedeightState();
}

class _YoutubeEmbeddedeightState extends State<YoutubeEmbeddedeight> {
  late YoutubePlayerController _controller;
  final String _videoId = 'TlNzKjxCIK4';
  final double _startSeconds = 168;

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

class YoutubeEmbeddednine extends StatefulWidget {
  const YoutubeEmbeddednine({super.key});

  @override
  State<YoutubeEmbeddednine> createState() => _YoutubeEmbeddednineState();
}

class _YoutubeEmbeddednineState extends State<YoutubeEmbeddednine> {
  late YoutubePlayerController _controller;
  final String _videoId = 'DHSAjPu7M-s';
  final double _startSeconds = 446;

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

class YoutubeEmbeddedten extends StatefulWidget {
  const YoutubeEmbeddedten({super.key});

  @override
  State<YoutubeEmbeddedten> createState() => _YoutubeEmbeddedtenState();
}

class _YoutubeEmbeddedtenState extends State<YoutubeEmbeddedten> {
  late YoutubePlayerController _controller;
  final String _videoId = 'ZQy89tZ-mRU';
  final double _startSeconds = 539;

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

class YoutubeEmbeddedeleven extends StatefulWidget {
  const YoutubeEmbeddedeleven({super.key});

  @override
  State<YoutubeEmbeddedeleven> createState() => _YoutubeEmbeddedelevenState();
}

class _YoutubeEmbeddedelevenState extends State<YoutubeEmbeddedeleven> {
  late YoutubePlayerController _controller;
  final String _videoId = 'CleUrqPLCzU';
  final double _startSeconds = 76;

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

class YoutubeEmbeddedtwelve extends StatefulWidget {
  const YoutubeEmbeddedtwelve({super.key});

  @override
  State<YoutubeEmbeddedtwelve> createState() => _YoutubeEmbeddedtwelveState();
}

class _YoutubeEmbeddedtwelveState extends State<YoutubeEmbeddedtwelve> {
  late YoutubePlayerController _controller;
  final String _videoId = '66aG5P0kQpU';
  final double _startSeconds = 657;

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

// end block
