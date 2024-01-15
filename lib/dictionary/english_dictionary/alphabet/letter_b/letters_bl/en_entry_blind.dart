import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "blind" and provide five simple and short example sentences for each meaning. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more.

// replace blind - /blaɪnd/

enum TtsState { playing }

class EnglishEntryblind extends StatelessWidget {
// blank divider
  EnglishEntryblind({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakblind(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("blind"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds1(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Doctors think he will go blind."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds2(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She went blind at the age of ten."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds3(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was born blind."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds4(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She trains dogs for the blind."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds5(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She is blind to her husband's faults."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds6(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They seem to be totally blind to reality."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds7(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was blind with fury."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds8(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It was a moment of blind panic."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds9(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The earthquake, with the blind force of nature, shook the region, leaving buildings in ruins."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds10(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The accident happened on a blind bend."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds11(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She is very suspicious of anyone who claims to be race-blind."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds12(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She was blinded in the explosion."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds13(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The attackers blinded him with acid."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds14(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His eyes were blinded by tears."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds15(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When she went outside she was temporarily blinded by the sun."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds16(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His sense of loyalty blinded him to the truth."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds17(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We shouldn't let our prejudices blind us to the facts of the situation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds18(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She saw a figure through the blinds."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds19(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Pull up the blinds and let some light in."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds20(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Navigating through the thick fog, the plane's captain steered blind, relying on radar and experience."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds21(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblinds2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds22(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblinds2222"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds23(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblinds2323"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds24(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblinds2424"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds25(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblinds2525"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds26(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblinds2626"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds27(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblinds2727"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds28(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblinds2828"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds29(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblinds2929"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblinds30(String languageCode) async {
    // DOPSUM: CHANGE speakblind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblinds3030"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "blind"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /blaɪnd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakblind("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /blaɪnd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakblind("en-US"),
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
کوردی: کوێر، نابینا، سۆماداھاتوو، حافز، دەستەوسان، بێ‌دەسەڵات، نەتوان، بن‌بەست، بێ‌سەرەدەر، تاریک، نەخوێنراوە، گەوجانە، بێ‌ئەقڵانە، ناژیرانە، لێکەوەنەدراو، مەست، پەردەی دەڕابەیی یان کڕکڕە، شاراوە، نادیار، حەشارگە، سیپە، بۆسە

١. (ھاوەڵناو) کوێر؛ نەبوونی توانای بینین"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Doctors think he will go blind."),
                              const ExampleSentenceKurdish(
                                  text: "دکتۆرەکان پێیان وایە کوێر دەبێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She went blind at the age of ten."),
                              const ExampleSentenceKurdish(
                                  text: "لە تەمەنی ١٠ ساڵیدا بینایی لەدەستدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She was born blind."),
                              const ExampleSentenceKurdish(
                                  text: "بە نابینایی لەدایکبوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ھاوەڵناو) کەسانی نابینا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She trains dogs for the blind."),
                              const ExampleSentenceKurdish(
                                  text: "سەگ ڕادەھێنێت بۆ نابینایان."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ھاوەڵناو) ھەستنەکردن بە شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She is blind to her husband's faults."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "چاوی کوێرە لە ئاستی ھەڵەکانی ھاوژینەکەی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds5("en-US"),
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
                                      "They seem to be totally blind to reality."),
                              const ExampleSentenceKurdish(
                                  text: "تەواو بێ ئاگایە لە ڕاستییەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) شتێک کە باوەڕی پێکراوە بە بێ ھۆکار یان بە بێ لێکۆڵینەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He was blind with fury (= so angry that he could not behave reasonably)."),
                              const ExampleSentenceKurdish(
                                  text: "چاوی کوێر بووبوو لە تووڕەییدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "It was a moment of blind panic."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ساتێکی تاسانی کوێرانە بوو (بە بێ ھۆ ترسان)."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ھاوەڵناو) دۆخێک یان ڕووداوێک کە ناتوانرێت تێگەشتنی بۆ بکرێت "),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The earthquake, with the blind force of nature, shook the region, leaving buildings in ruins."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بومەلەرزەکە بە ھێزی بێ سنووری سرووشتەوە ھەرێمەکەی ھەأاند و بیناکانی کرد بە وێرانە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ھاوەڵناو) شوێنێک کە شۆفێرێک ناتوانێت بیبینێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The accident happened on a blind bend."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕووداوەکە لە لادانێکی ناوچەی کوێردا ڕوویدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ھاوەڵناو) شتێک کە ھیچ جیاوازی لە ڕووی ئەو خاسیەتەی کە باس دەکرێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She is very suspicious of anyone who claims to be race-blind."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زۆر بە گومانە بەرامبەر ھەر کەسێک کە بانگەشەی ئەوە دەکات ڕەگەز لای گرنگ نەبێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) کوێرکردنی کەسێک بۆ ھەمیشە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She was blinded in the explosion."),
                              const ExampleSentenceKurdish(
                                  text: "لە تەقینەوەکەدا کوێر بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The attackers blinded him with acid."),
                              const ExampleSentenceKurdish(
                                  text: "ھێرشکارەکان بە ئەسید نابینایان کرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) سەختکردنی توانای بینین بۆ کەسێک بۆ ماوەیەکی کاتی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "His eyes were blinded by tears."),
                              const ExampleSentenceKurdish(
                                  text: "چاوەکانی پڕبوون لە فرمێسک."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds14("en-US"),
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
                                      "When she went outside she was temporarily blinded by the sun."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کە لە دەرەوە بوو بۆ ماوەیەکی کاتی بینایی لەدەستدا بەھۆی خۆرەکەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) وا لە کەسێک بکەیت چی تر بە ڕوونی بیرنەکاتەوە یان ڕەفتار بەشێوەیەکی ئاقڵانە بکات"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "His sense of loyalty blinded him to the truth."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھەستی وەفاداریی کوێری کرد لا ئاستی ڕاستییەکەدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds16("en-US"),
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
                                      "We shouldn't let our prejudices blind us to the facts of the situation."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "نابێت ڕێگا بدەین ڕقەکانمان کوێرمان بکات لە ئاستی دۆخەکەدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (ناو) پەردەیەک کە بەرز و نزم دەکرێتەوە بە سووڕدانی لە بەشی سەرەوەی چوارچێوەی پەنجەرەکەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She saw a figure through the blinds."),
                              const ExampleSentenceKurdish(
                                  text: "کەسێکی بینی لە بەینی پەردەکەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds18("en-US"),
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
                                      "Pull up the blinds and let some light in."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پەردەکان بکەرەوە و ڕێگا بدە ھەندێک ڕۆشنایی بێتە ژوورەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٢. (ھاوەڵکار) بە بێ ھەبوونی توانای بینین"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Navigating through the thick fog, the plane's captain steered blind, relying on radar and experience."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە دەرچوون بەناو تەمە ئەستوورەکەدا، کاپتنی فڕۆکەکە بە کوێرانە بایدەدایەوە بە پشت بەستن بە ڕادار و ئەزموونی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakblinds20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakblinds20("en-US"),
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
- Adjective: blind (derived forms: blinder, blindest)
1. Unable to see (= unsighted)
"a person is blind to the extent that he must devise alternative techniques to do efficiently those things he would do with sight if he had normal vision";
 
2. Unable or unwilling to perceive or understand
"blind to a lover's faults"; "blind to the consequences of their actions"
 
3. Not based on reason or evidence (= unreasoning)
"blind hatred"; "blind faith";
 
4. (of an experiment or test) without the participants knowing the key inputs
 
5. (Of a place or position) having little or no visibility
"a blind corner"
 
6. Closed off, blocked, closed at one end
"a blind alley"

- Noun: blind (derived forms: blinds)
1. People who have severe visual impairments, considered as a group
"he spent hours reading to the blind"
 
2. A hiding place sometimes used by hunters (especially duck hunters)
"he waited impatiently in the blind"
 
3. A protective covering that keeps things out or hinders sight (= screen)
"they had just moved in and had not put up blinds yet";
 
4. Something intended to misrepresent the true nature of an activity (= subterfuge)
"the holding company was just a blind";

- Verb: blind (derived forms: blinded, blinding, blinds)
1. Render unable to see
 
2. Make blind by putting the eyes out
"The criminals were punished and blinded"
 
3. Make dim by comparison or conceal (= dim)
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

  static String myVideoId = "CQQit01HHLY";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 91, // DOPSUM: CHANGE IT
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

  static String myVideoId = "hSmNg2WGXeQ";

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

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  static String myVideoId = "--_jF4j66gA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 41, // DOPSUM: CHANGE IT
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

  static String myVideoId = "ri8RSiuXD9I";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 51, // DOPSUM: CHANGE IT
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

  static String myVideoId = "DHBo7ka3YZQ";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 35, // DOPSUM: CHANGE IT
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

  static String myVideoId = "OOXZb0P1tsA";

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

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  static String myVideoId = "PW2duKZChA8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 58, // DOPSUM: CHANGE IT
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

  static String myVideoId = "zJ5yCpcfW5A";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 7, // DOPSUM: CHANGE IT
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

  static String myVideoId = "W8FyilDVOoU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 593, // DOPSUM: CHANGE IT
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

  static String myVideoId = "Ii4Rbbk8zAs";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 542, // DOPSUM: CHANGE IT
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

  static String myVideoId = "oSU1STltwS0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 726, // DOPSUM: CHANGE IT
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

  static String myVideoId = "HD3IBffy6Z4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 341, // DOPSUM: CHANGE IT
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

// end blind
