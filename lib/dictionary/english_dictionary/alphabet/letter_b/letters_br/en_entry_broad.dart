import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrybroad extends StatelessWidget {
// blank divider
  EnglishEntrybroad({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbroad(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("broad"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads1(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's got broad shoulders."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads2(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He is tall, broad and muscular."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads3(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He turned to me with a broad smile."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads4(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We drove down a broad avenue lined with trees."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads5(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The wardrobe stands at one metre broad and two metres high."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads6(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The course caters for a broad spectrum of interests."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads7(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There is broad support for the government's policies."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads8(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She took a broad view of the duties of being a teacher."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads9(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The promotion helped the company reach a much broader audience."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads10(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The negotiators were in broad agreement on the main issues."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads11(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In broad terms, the paper argues that each country should develop its own policy."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads12(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The broad plains of the American West are hard to cross."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads13(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He spoke with a broad Australian accent."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads14(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She avoided details but gave broad hints of what were the plans."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads15(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbroads1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads16(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbroads1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads17(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbroads1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads18(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbroads1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads19(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbroads1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads20(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbroads2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads21(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbroads2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads22(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbroads2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads23(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbroads2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads24(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbroads2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads25(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbroads2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads26(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbroads2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads27(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbroads2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads28(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbroads2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads29(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbroads2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbroads30(String languageCode) async {
    // DOPSUM: CHANGE speakbroad
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbroads3030"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "broad"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /brɔːd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbroad("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /brɔːd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbroad("en-US"),
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
کوردی: پان، بەرین، بەپانایی، بەبەرینی، فراوان، گەورە، کەشنار، بەربڵاو، بەرفرەھـ ھەراو


لیبڕاڵ، ئازاد، ڕۆشن، کراوە، تێگەیشتوو، شل‌گرتوو، ئاسان‌گیر، سنگ‌فراوان، نادەمارگرژ، تۆلێرانت، گشتی، گەلەمپەری، نەبەوردەکاری، بەتەواوەتی، دیار، بەرچاو، ئاشکرا، خۆیا خەست (زۆر تایبەتمەندی زاراوەیەکی ناوچەیی پێوە دیار بێ)، بێ‌ڕەوشتانە، پیس، لەماریفەت‌بەدوور، (لە ئەمریکا، نافەرمی) ژن، بەشی پان، پانایی، بەرینایی

١. (ھاوەڵناو) فراوان"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He's got broad shoulders."),
                              const ExampleSentenceKurdish(
                                  text: "شانی پانی ھەیە."),
                              const CustomSizedBoxForTTS(), // Define the word "broad" as
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbroads1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbroads1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He is tall, broad and muscular."),
                              const ExampleSentenceKurdish(
                                  text: "بەرز و پان و پۆڕ و بە ماسولکەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbroads2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbroads2("en-US"),
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
                                              "He turned to me with a broad smile."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "بە بزەیەکی فراوانەوە ڕووی لێم کرد."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbroads3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbroads3("en-US"),
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
                                              "We drove down a broad avenue lined with trees."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "بە ڕێگایەکی فراواندا چووین کە بە ڕیزە دار دەوردرابوو."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbroads4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbroads4("en-US"),
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
                                  "٢. (ھاوەڵناو) لە دوای پێوانەی دووری بەکاربێت بۆ پیشاندانی فراوانی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The wardrobe stands at one metre broad and two metres high."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دۆڵابەکە یەک مەتر پانە و دوو مەتر بەرزە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbroads5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbroads5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) لە خۆگرتنی ژمارەیەکی زۆر لە خەڵکی و شت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The course caters for a broad spectrum of interests."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کۆرسەکە گونجاوە ژمارەیەکی زۆر لە حەز و ئارەزوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbroads6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbroads6("en-US"),
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
                                      "There is broad support for the government's policies."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پشتیوانی فراوان ھەیە بۆ سیاسەتەکانی حکومەت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbroads7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbroads7("en-US"),
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
                                              "She took a broad view of the duties of being a teacher (= she believed her duties included a wide range of things)."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "ڕوانگەیەکی فراوانی ھەبوو بۆ ئەرکەکانی (مامۆستا پێی وابوو ئەرکی زۆرە)."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbroads8("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbroads8("en-US"),
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
                                              "The promotion helped the company reach a much broader audience."),
                                      const ExampleSentenceKurdish(
                                          text:
                                              "بانگەشەکە یارمەتی کۆمپانیاکەی دا بگات بە ھاوڵاتی زیاتر."),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakbroads9("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakbroads9("en-US"),
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
                                  "٤. (ھاوەڵناو) شتێک کە بە گشتییە و ناچێتە ناو وردەکارییەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The negotiators were in broad agreement on the main issues."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دراوسێیەکان لە ڕێککەوتنێکی گشتیدا بوون لەسەر کێشە سەرەکییەکان."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbroads10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbroads10("en-US"),
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
                                      "In broad terms, the paper argues that each country should develop its own policy."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەشێوەیەکی گشتی، توێژینەوەکە پێی‌وایە ھەر وڵاتێک دەبێت سیاسەتی خۆی ھەبێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbroads11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbroads11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ھاوەڵناو) ناوچەیەکی فراوان"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The broad plains of the American West are hard to cross."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بڕینی دەشتە فراوانەکانی ڕۆژئاوای ئەمریکا گرانە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbroads12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbroads12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ھاوەڵناو) شێوازێکی قسەکردن کە ھێندە ڕوونە دەتوانی شوێنی ژیانی کەسەکەی پێ دیاری بکەیت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He spoke with a broad Australian accent."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بە ئەکسێنتێکی خەستی ئوسترالی قسەی دەکرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbroads13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbroads13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ھاوەڵناو) ئاماژەیەکی کە ڕوونە و ئاسانە بۆ تێگەشتن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She avoided details but gave broad hints of what were the plans."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "خۆی بە دوورگرت لە وردەکارییەکان بەڵام ئاماژەی ڕوونی دا سەبارەت بەوەی پلانەکان چی بوون."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbroads14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbroads14("en-US"),
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

  // Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Adjective: broad (Derived forms: broader, broadest)
1. Broad in scope or content (= across-the-board, all-embracing, all-encompassing, all-inclusive, blanket, encompassing, extensive, panoptic, wide)
"an invention with broad applications";
 
2. Having great (or a certain) extent from one side to the other (= wide)
"a river two miles broad"; "broad shoulders"; "a broad river";
 
3. Not detailed or specific (= unspecific)
"a broad rule"; "the broad outlines of the plan";
 
4. Lacking subtlety; obvious (= unsubtle)
"gave us a broad hint that it was time to leave";
 
5. Being at a peak or culminating point (= full)
"broad daylight";
 
6. Very large in expanse or scope (= spacious, wide)
"a broad lawn";
 
7. (of speech) heavily and noticeably regional
"a broad southern accent"
 
8. Showing or characterized by broad-mindedness (= large-minded, liberal, tolerant)
"a broad political stance"; "generous and broad sympathies";

- Noun: broad (Derived forms: broads)
Usage: slang
1. Slang term for a woman
"a broad is a woman who can throw a mean punch"
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Speaker icon for British English
          Row(
            children: [
              CustomIconButtonBritish(
                onPressed: () => startSpeaking("en-GB", englishMeaningConst),
              ),
              CustomIconButtonAmerican(
                onPressed: () => startSpeaking("en-US", englishMeaningConst),
              ),
              // Conditional rendering of pause button
              if (isSpeaking)
                IconButton(
                  icon: const Icon(Icons.pause, size: 30),
                  onPressed: () {
                    stopSpeaking();
                  },
                ),
            ],
          ),
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }

  // Function to start TTS
  Future<void> startSpeaking(String languageCode, EnglishMeaningConst englishMeaningConst) async {
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
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  static String myVideoId = "AAGIi62-sAU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1585, // DOPSUM: CHANGE IT
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

  static String myVideoId = "9TugA_z5vQE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 806, // DOPSUM: CHANGE IT
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

  static String myVideoId = "pTysrwci0pU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 795, // DOPSUM: CHANGE IT
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

  static String myVideoId = "Nun_4w8m_SY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 265, // DOPSUM: CHANGE IT
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

  static String myVideoId = "J-K5OjAkiEA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 443, // DOPSUM: CHANGE IT
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

  static String myVideoId = "B0VRgmk4F80";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 225, // DOPSUM: CHANGE IT
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

  static String myVideoId = "U38i32CpYow";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 397, // DOPSUM: CHANGE IT
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

  static String myVideoId = "hXvoKE6_wQo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 404, // DOPSUM: CHANGE IT
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

  static String myVideoId = "C51ZqE7iUjs";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 888, // DOPSUM: CHANGE IT
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

  static String myVideoId = "Bf_sr2qRRWs";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 215, // DOPSUM: CHANGE IT
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

  static String myVideoId = "R3KeD06ti6c";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 197, // DOPSUM: CHANGE IT
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

  static String myVideoId = "RATQTsyH8XY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 218, // DOPSUM: CHANGE IT
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

// end WORD_WEB
