import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycontent extends StatelessWidget {
// blank divider
  EnglishEntrycontent({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcontent(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("content"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents1(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He tipped the contents of the bag onto the table."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents2(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Fire has caused severe damage to the contents of the building."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents3(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She picked up the glass and drank the contents."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents4(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Scroll down the table of contents to find areas that interest you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents5(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Her poetry has a good deal of political content."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents6(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The content of the course depends on what the students would like to study."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents7(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Chocolate has a high fat content."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents8(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We plan to spend more on creating content for the website."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents9(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They haven't updated the content of their site."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents10(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Not content with stealing my boyfriend, she has turned all my friends against me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents11(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He had to be content with third place."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents12(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She seemed quite content with the idea."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents13(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I was content to wait."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents14(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She stood for a moment looking with content at her husband."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents15(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Martina contented herself with a bowl of soup."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents16(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The crowd contented themselves with shouting insults."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents17(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("My apology seemed to content him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents18(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Nothing would content her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents19(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontents1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents20(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontents2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents21(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontents2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents22(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontents2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents23(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontents2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents24(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontents2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents25(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontents2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents26(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontents2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents27(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontents2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents28(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontents2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents29(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontents2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents30(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontents3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcontents31(String languageCode) async {
    // DOPSUM: CHANGE speakcontent
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcontents3100"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "content"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkɒntent/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcontent("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkɑːntent/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcontent("en-US"),
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
کوردی: ناوەرۆک، نێوەرۆک، نێواخن، ناواخن، تیایە،	بڕ، ڕادە، بارستە، ڕازی، قایل، قانع، ملکەچ، بەقنیات،	پێخۆش‌بوو، ئامادە، حازر، ساز، پێخوش‌بوون، قایل‌بوون، بێ‌نیازی، ڕازی‌بوون، قنیات، قایلی، ڕەزامەندی
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) ئەو شتانەی لە شتێکدان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He tipped the contents of the bag onto the table."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ناواخنی جانتاکەی خستە سەر مێزەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "content", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents1("en-US"),
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
                                            "Fire has caused severe damage to the contents of the building."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئاگر زیانی زۆری داوە لە شتەکانی ناو بیناکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents2("en-US"),
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
                                            "She picked up the glass and drank the contents."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گڵاسەکەی هەڵگرت و ئەوەی لە ناوی بوو خواردییەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) بەشە جیاوازەکانی کتێبێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Scroll down the table of (= list of) contents to find areas that interest you."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە خشتەی ناوەڕۆکەکاندا بچۆ خوارەوە بۆ دۆزینەوەی ئەو باباتانەی کە سەرنجت ڕادەکێشن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ئەو بابەتەی کتێبێک، وتارێک، پڕۆگرامێک، هتد باسی دەکات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Her poetry has a good deal of political content."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هۆنراوەکانی ڕێژەیەکی زۆر لە ناوەڕۆکی سیاسییان تێدایە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents5("en-US"),
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
                                            "The content of the course depends on what the students would like to study."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ناوەڕۆکی کۆرسەکە دەوەستێتە سەر ئەوەی خوێندکاران حەز دەکەن بیخوێنن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ئەو ڕێژەیە لە شت کە لە شتێکی دیکەدا جێگای دەبێتەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Chocolate has a high fat content."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چکلێت بڕێکی زۆر لە چەوری تێدایە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) زانیاری و بابەتی دیکەی سەر وێبسایتێک یان میدیای دیجیتاڵی دیکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "We plan to spend more on creating content for the website."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پلانمان هەیە زیاتر خەرج بکەین لە درووستکردنی بابەت بۆ وێبسایتەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents8("en-US"),
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
                                            "They haven't updated the content of their site."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بابەتی سایتەکەیان تازە نەکردووەتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) ئاسوودە بەوەی هەتە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Not content with stealing my boyfriend (= not thinking that this was enough), she has turned all my friends against me."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "نەک ئەوەی ئاسوودە بووبێت بە دزینی دڵدارە کوڕەکەم، هەموو هاوڕێکانمی دژم هانداوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents10("en-US"),
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
                                            "He had to be content with third place."),
                                    ExampleSentenceKurdish(
                                        text: "دەبێت قانع بێت بە پلەی سێیەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents11("en-US"),
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
                                            "She seemed quite content with the idea."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تەواو بەقەناعەت بوو بە پێشنیارەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) ئامادەی کردنی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I was content to wait."),
                                    ExampleSentenceKurdish(
                                        text: "قایل بووم بە چاوەڕێ کردن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) هەستی دڵخۆشی و ئاسوودەیی بەوەی هەتە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She stood for a moment looking with content at her husband."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بۆ ساتێک وەستا بە ڕەزامەندییەوە لە هاوسەرەکەی ڕوانی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) پەسەندکردن و ڕازیبوون بەوەی هەتە و هەوڵی باشتر نەدەیت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Martina contented herself with a bowl of soup."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مارتینا بە دەفرێک شۆربا قەناعەتی کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents15("en-US"),
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
                                            "The crowd contented themselves with shouting insults."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جەماوەرەکە خۆیان ئاسوودە کرد بە جوێندان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (کردار) دڵخۆشکردن یان ئاسوودەکردنی کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "My apology seemed to content him."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لێبووردنخوازییەکەم وادیاربوو ئاسوودەی کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents17("en-US"),
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
                                        text: "Nothing would content her."),
                                    ExampleSentenceKurdish(
                                        text: "هیچ هێوری نەدەکردەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcontents18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcontents18("en-US"),
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
- Noun: content (Derived forms: contents)
1. (usually plural) everything that is included in a collection and that is held or included in something (= contents)
"he emptied the contents of his pockets"; "the two groups were similar in content";
 
2. What a communication is about; the information conveyed or area of interest (= message, subject matter, substance)
 
3. The proportion of a substance that is contained in a mixture or alloy etc.
 
4. The amount that can be contained (= capacity)
 
5. The sum or range of what has been perceived, discovered, or learned (= cognitive content, mental object)
 
6. Something (a person or object or scene) selected by an artist or photographer for graphic representation (= subject, depicted object)
"a moving picture of a train is more dramatic than a still picture of the same content";

- Adjective: content
1. Satisfied or showing satisfaction with things as they are (= contented)
"a content smile";

- Noun: content (Derived forms: contents)
1. The state of being contented with your situation in life (= contentedness)
"they could read to their hearts' content";

- Verb: content (Derived forms: contents, contenting, contented)
1. Satisfy in a limited way
"He content[2]ed himself with one glass of beer per day"
 
2. Make or become satisfied
"I am content[2]ed"
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
    videoId: 'https://youtu.be/R_fZjGm2OrM?t=',
    startSeconds: 28,
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
    videoId: 'https://youtu.be/khOUvmOQExc?t=',
    startSeconds: 668,
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
    videoId: 'https://youtu.be/j1BfO7VlIw4?t=',
    startSeconds: 622,
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
    videoId: 'https://youtu.be/y1sF6ZeASU0?t=',
    startSeconds: 727,
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
    videoId: 'https://youtu.be/oIdLlERQWsE?t=',
    startSeconds: 68,
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
    videoId: 'https://youtu.be/7nPknkgc-Ps?t=',
    startSeconds: 20,
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
    videoId: 'https://youtu.be/jaRcbpN_KlM?t=',
    startSeconds: 1716,
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