import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "border" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace border - /ˈbɔːdə(r)/

enum TtsState { playing }

class EnglishEntryborder extends StatelessWidget {
// blank divider
  EnglishEntryborder({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakborder(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("border"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders1(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He lives in a small town in the US, near the Canadian border."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders2(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Thousands of people cross the border every day."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders3(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They took steps to secure the border."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders4(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They spent a week in a national park on the border between Kenya and Tanzania."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders5(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It is difficult to define the border between love and friendship."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders6(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They fled across the border."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders7(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She drew a decorative border around the picture."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders8(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The back garden is mostly lawn with tulip borders."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders9(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Albania is bordered to the north by Serbia and Montenegro."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders10(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Eswatini borders South Africa and Mozambique."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders11(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The large garden is bordered by a stream."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders12(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The fields are bordered by tall trees."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders13(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders1313"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders14(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders1414"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders15(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders16(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders17(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders18(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders19(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders20(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders21(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders22(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders23(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders24(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders25(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders26(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders27(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders28(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders29(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakborders30(String languageCode) async {
    // DOPSUM: CHANGE speakborder
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakborders3030"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "border"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈbɔːdə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakborder("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈbɔːrdər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakborder("en-US"),
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
کوردی: ڕەخ، لێوار، قەراخ، زێوار، کەنار، کەنارە، شیرازە، تیلماسک، تێرنج، پەراوێز، زێ، دەور، دەورە، سنوور، تخوب، سەرحەد، باوەڕ، کەوشەن، مەرز، تاڵخ

١. (ناو) سنوور"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He lives in a small town in the US, near the Canadian border."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە شارۆچکەیەکی بچووک دەژی لە ئەمریکا، لەسەر سنووری کەنەدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakborders1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakborders1("en-US"),
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
                                      "Thousands of people cross the border every day."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەزاران کەس ھەموو ڕۆژێک سنوورەکە دەبڕن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakborders2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakborders2("en-US"),
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
                                      const ExampleSentenceEnglish(
                                          text:
                                              "They took steps to secure the border."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "ھەنگاویان گرتەبەر بۆ پاراستنی سنوورەکە."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakborders3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakborders3("en-US"),
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
                                              "They spent a week in a national park on the border between Kenya and Tanzania."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "ھەفتەیەکیان بەسەر برد لە پارکێکی نیشتیمانی لەسەر سنووری کینیا و تانزانیا."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakborders4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakborders4("en-US"),
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
                                              "It is difficult to define the border between love and friendship."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "(بەکارھێنانی خوازراوی) سەختە سنووری نێوان خۆشەویستی و پەیوەندی دیاری بکرێت."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakborders5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakborders5("en-US"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const DividerSentences(),
                                  Row(
                                    children: [
                                      const ExampleSentenceEnglish(
                                          text: "They fled across the border."),
                                      const ExampleSentenceKurdish(
                                          text: "بە سنوورەکەدا ھەڵھاتن."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakborders6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakborders6("en-US"),
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
                                  "٢. (ناو) پارچەیەکی درێژی باریک بە دەوری قەراغەکانی شتێکدا، بۆ نموونە وێنەیەک یان قووماشێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She drew a decorative border around the picture."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کەنارەیەکی جوانی بە دەوری وێنەکەدا کێشا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakborders7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakborders7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) لە باخچەیەکدا بەو ناوچە دەوترێت کە بە گوڵ چێندراوە بە دەوری قەراغی گیاکەدا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The back garden is mostly lawn with tulip borders."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "باخچەکەی پشتەوە بە زۆری چیمەنە لەگەڵ گوڵباخ بە دەوریدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakborders8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakborders8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) ھەبوونی سنوور لەگەڵ شوێنێک یان وڵاتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Albania is bordered to the north by Serbia and Montenegro."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەلبانیا لە باکوورەوە ھاوسنوورە لەگەڵ سڕبیا و مۆنتەنەگرۆ."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakborders9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakborders9("en-US"),
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
                                      "Eswatini borders South Africa and Mozambique."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئیسواتینی سنووری لەگەڵ ئەفریقای باشوور و مۆزەمبیقدا ھەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakborders10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakborders10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) درووستکردنی ھێڵێک بەدرێژایی یان بە دەوری شتێکدا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The large garden is bordered by a stream."),
                              const ExampleSentenceKurdish(
                                  text: "باخچە گەورەکە جۆگەیەک لە کەناریەتی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakborders11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakborders11("en-US"),
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
                                      "The fields are bordered by tall trees."),
                              const ExampleSentenceKurdish(
                                  text: "کێڵگەکان بە درەختی بەرز دەوردراون."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakborders12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakborders12("en-US"),
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

class EnglishMeaning extends StatelessWidget {
  const EnglishMeaning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DividerDefinition(),
          EnglishMeaningConst(
            text: """
- Noun: border (derived forms: borders)
1. A line that indicates a boundary (= boundary line, borderline, delimitation, mete)
 
2. The boundary line or the area immediately inside the boundary (= margin, perimeter)
 
3. The boundary of a surface (= edge)
 
4. A decorative recessed or relieved surface on an edge (= molding [N. Amer], moulding [Brit, Cdn])
 
5. A strip forming the outer edge of something
"the rug had a wide blue border"

- Verb: border (derived forms: borders, bordering, bordered)
1. Extend on all sides of simultaneously; encircle (= surround, environ, ring, skirt)
"The forest borders my property";

2. Form the boundary of; be contiguous to (= bound)
 
3. Enclose in or as if in a frame (= frame, frame in)
"border a picture";

4. Provide with a border or edge (= edge)
"border the tablecloth with embroidery";
 
5. Lie adjacent to another or share a boundary (= adjoin, edge, abut, march, butt, butt against, butt on)
"Canada borders the U.S.";
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  static String myVideoId = "AAGIi62-sAU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 954, // DOPSUM: CHANGE IT
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

  static String myVideoId = "tsxmyL7TUJg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 732, // DOPSUM: CHANGE IT
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

  static String myVideoId = "-L7o6HtX8Vg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1464, // DOPSUM: CHANGE IT
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

  static String myVideoId = "QLq6GEiHqR8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 97, // DOPSUM: CHANGE IT
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

  static String myVideoId = "mY3SEMTROas";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 801, // DOPSUM: CHANGE IT
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

  static String myVideoId = "_45zjnjrFOA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 600, // DOPSUM: CHANGE IT
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

  static String myVideoId = "oD9BaNAH-eE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1057, // DOPSUM: CHANGE IT
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

  static String myVideoId = "snAhsXyO3Ck";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 203, // DOPSUM: CHANGE IT
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

  static String myVideoId = "0twDETh6QaI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 5817, // DOPSUM: CHANGE IT
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

  static String myVideoId = "AjzMrDla0OA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 37, // DOPSUM: CHANGE IT
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

  static String myVideoId = "5YtVV1VJ4f8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 40, // DOPSUM: CHANGE IT
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

  static String myVideoId = "vb-p--iRFew";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 637, // DOPSUM: CHANGE IT
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

// end border
