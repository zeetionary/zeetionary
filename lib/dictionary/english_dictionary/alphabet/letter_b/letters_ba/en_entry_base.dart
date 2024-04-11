import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "base" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace base - replace EnglishEntrybase

// replace speakBase - /beɪs/

enum TtsState { playing }

class EnglishEntrybase extends StatelessWidget {
// blank divider
  EnglishEntrybase({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbase(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("base"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbases1(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They decided to base the new company in New York."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbases2(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The lamp has a heavy base."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbases3(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He felt a sharp pain at the base of his spine."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbases4(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I spend a lot of time in Britain but Paris is still my base."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbases5(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "After the attack, they returned to base."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbases6(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These policies have a broad base of support."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbases7(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This course is an opportunity to expand my knowledge base."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbases8(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All we got was base pay—we didn't reach profitability levels to award a bonus."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbases9(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She used her family's history as a base for her novel."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbases10(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Put some moisturizer on as a base before applying your make-up."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbases11(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Sodium hydroxide (NaOH) is a strong base that is used in many industrial processes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbases12(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The base of the decimal system is 10, which uses the digits 0-9."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbases13(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He acted from base motives."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbases14(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBases1414"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbases15(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBases1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbases16(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBases1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbases17(String languageCode) async {
    // DOPSUM: CHANGE speakBase
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBases1717"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "base"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /beɪs/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbase("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /beɪs/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbase("en-US"),
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
کوردی: بنک، بن، خوارووی، بنکە، بێخ، بنج، بنچک، ھیم، خیم، بنگە، پایە، بنەما، بنیات، بناخە، بنەڕەت، بنواشە، بنەواشە، بنکە، (کیمیا) تفت، باز، بەیس، کەرەسەی سەرەکی، مەتریاڵی بنەڕەتی، (مێعماری) ژێرکۆڵ، بن‌کۆڵ، بنک، (دار) بن، کۆلکە، (زمانەوانی) قەد، بن، ڕەگ، ڕیشە (ھی وشە یان داڕشتەیێ)، فۆڕم یان وشەی گەردان‌نەکراو، (بیرکاری) بنک، بنچینە، (بەیسبۆڵ) گۆشە، سووک، نەگریس، جێی‌شەرم، ناحەز، بێ‌شەرمانە
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (کردار) بەکارھێنانی شارێک، شارۆچکەیەک، ھتد وەک شوێنی سەرەکی شتێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "They decided to base the new company in New York."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بڕیاریاندا نیویۆرک بکەنە بنکەی سەرەکی کۆمپانیا تازەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbases1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbases1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) نزمترین بەشی شتێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "The lamp has a heavy base."),
                                    ExampleSentenceKurdish(
                                        text: "گڵۆپەکە بنکێکی قوورسی ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbases2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbases2("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He felt a sharp pain at the base of his spine."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەستی بە ئازارێکی توند دەکرد لە بەشی خوارەوەی بڕبڕەی پشتی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbases3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbases3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) شوێنی سرەکی ژیان یان کارکردن"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I spend a lot of time in Britain but Paris is still my base."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کاتێکی زۆر لە پاریس بەسەر دەبەم، بەڵام ھێشتا پاریس ھەوارگەی سەرەکیمە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbases4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbases4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) بنکەی سەربازی"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "After the attack, they returned to base."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە دوای ھێرشەکە گەڕانەوە بنکەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbases5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbases5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) ئەو کەس و چالاکییانەی کەسێک لێیانەوە ھێز و پشتیوانی و پارە وەردەگرێت"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "These policies have a broad base of support."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم سیاسەتانە بناغەیەکی فراوانی پشتیوانیان ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbases6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbases6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This course is an opportunity to expand my knowledge base."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم کۆرسە ھەلێکی بۆ فراوانکردنی بناغەی زانیاریم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbases7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbases7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) ئەو مووچەیەی کە وەریدەگری پێش ئەوەی ھیچی تری بۆ زیادبکرێت بۆ (نموونە بەخشیش)"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "All we got was base pay—we didn't reach profitability levels to award a bonus."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەموو ئەوەی مووچەکەی خۆمان بوو، نەگەشتین بەو ئاستەی قازانج کە بەخشیش بدرێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbases8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbases8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) بیرۆکەیەک، زانیارییەک، یان دۆخێک کە وەک سەرچاوە بەکاردێت بۆ گەشەپێدانی شتێکی تر"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She used her family's history as a base for her novel."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مێژووی خێزانەکەی وەک سەرچاوە و ئیلھام بۆ ڕۆمانەکەی بەکارھێنا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbases9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbases9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ناو) یەکەم بەشی شتێک کە دواتر شتی تری بۆ زیاددەکرێت"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Put some moisturizer on as a base before applying your make-up."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەندێک کرێمی شێدارکەرەوە بەکاربێنە وەک بناغە پێش ئەوەی مەیکەپەکەت بکەیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbases10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbases10("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ناو) مادەیەکی کیمیایی کە دەتوانێت لەگەڵ ئەسید (ترشەڵۆک) یەکبگرێت بۆ درووستکردنی خوێ"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Sodium hydroxide (NaOH) is a strong base that is used in many industrial processes."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھایدرۆکسایدی سۆدیۆم تفتێکی بەھێزە کە لە زۆر پڕۆسەی پیشەسازیدا بەکاردێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbases11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbases11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ناو) لە بیرکاریدا بریتییە لە ژمارەیەک کە سیستەمێکی ژماردن و دەربڕینی ژمارەی لەسەر بنیاتنراوە بۆ نموونە ژمارە لە سیستەمی دەیان"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The base of the decimal system is 10, which uses the digits 0-9."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بنچینەی سیستەمی دەیان بریتییە لە ١٠ و ژمارەکانی ١-٩ بەکاردێنێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbases12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbases12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ھاوەڵناو) کەسێک کە ھیچ بەھا و ئەخلاقی نییە"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "He acted from base motives."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە پاڵنەری کەسی ھەنگاوی نا (بۆ بەرژەوەندی خۆی)."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakbases13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakbases13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
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
                        YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
                        YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
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
- Verb: base (derived forms: basing, bases, based)
1. Use as a basis for; found on (= establish, ground, found)
"base a claim on some observation";
 
2. Situate as a centre of operations
"we will base this project in the new lab"
 
3. Use (purified cocaine) by burning it and inhaling the fumes (= free-base)

- Adjective: base (derived forms: basest, baser)
1. Serving as or forming a base (= basal)
"the painter applied a base coat followed by two finishing coats";
 
2. (used of metals) consisting of or alloyed with inferior metal
"base coins of aluminium"; "a base metal"
 
3. Not adhering to ethical or moral principles (= immoral)
"base and unpatriotic motives"; "a base, degrading way of life";
 
4. Having or showing an ignoble lack of honour or morality (= mean, meanspirited)
"that liberal obedience without which your army would be a base rabble";
 
5. Debased; not genuine
"an attempt to eliminate the base coinage"
 
6. [archaic] Of low birth or station (= baseborn, humble, lowly)
"base wretches with dirty faces";
 
7. [archaic] Illegitimate (= baseborn [archaic])

- Noun: base (derived forms: bases)
1. The bottom or lowest part
"the base of the mountain"
 
2. Lowest support of a structure (= foundation, fundament, foot, groundwork, substructure, understructure)
"it was built on a base of solid rock";
 
3. A flat bottom on which something is intended to sit
"a tub should sit on its own base"
 
4. (military) installation from which a military force initiates operations (= base of operations)
"the attack wiped out our forward bases";
 
5. A place that the runner must touch before scoring (= bag)
"he scrambled to get back to the base";
 
6. (anatomy) the part of an organ nearest its point of attachment
"the base of the skull"
 
7. A lower limit (= floor)
"the government established a wage base";
 
8. The fundamental assumptions from which something is begun, developed, calculated or explained (= basis, foundation, fundament, groundwork, cornerstone)
"the whole argument rested on a base of conjecture";
 
9. A support or foundation (= pedestal, stand)
"the base of the lamp";
 
10. A phosphoric ester of a nucleoside; the basic structural unit of nucleic acids (DNA or RNA) (= nucleotide)
 
11. Any of various water-soluble compounds capable of turning litmus blue and reacting with an acid to form a salt and water (= alkali)
"bases include oxides and hydroxides of metals and ammonia";
 
12. The bottom side of a geometric figure from which the altitude can be constructed
"the base of the triangle"
 
13. The most important or necessary part of something (= basis)
"the base of this drink is orange juice";
 
14. (numeration system) the positive integer that is equivalent to one in the next higher counting place (= radix)
"10 is the base of the decimal system";
 
15. The place where you are stationed and from which missions start and end (= home)
 
16. (linguistics) the form of a word after all affixes are removed (= root, root word, stem, theme, radical)
"thematic vowels are part of the base";
 
17. The stock of basic facilities and capital equipment needed for the functioning of a country or area (= infrastructure)
"the industrial base of Japan";
 
18. The principal ingredient of a mixture
"glycerinated gelatin is used as a base for many ointments"; "he told the painter that he wanted a yellow base with just a hint of green"; "everything she cooked seemed to have rice as the base"
 
18. (electronics) the part of a transistor that separates the emitter from the collector
 
20. (usually plural) the office that serves as the administrative centre of an enterprise (= headquarters, central office, main office, home office, home base)
"many companies have their home base in New York";
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

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'xvyj35Pd9C4',
    startSeconds: 469,
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
    videoId: 'ieQQMxW9A6E',
    startSeconds: 9473,
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
    videoId: 'MnExgQ81fhU',
    startSeconds: 522,
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
    videoId: 'MGO4_8YRKro',
    startSeconds: 22,
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
    videoId: 'poHTA94-BeY',
    startSeconds: 275,
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
    videoId: 'zqllxbPWKNI',
    startSeconds: 235,
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
    videoId: '544DTGHIBM0',
    startSeconds: 297,
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
    videoId: 's3B-qp3U5G0',
    startSeconds: 298,
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

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'tsxmyL7TUJg',
    startSeconds: 141,
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

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'qq9iRMrubzg',
    startSeconds: 161,
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'vp-8-WXeq-E',
    startSeconds: 212,
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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'jrje73EyKag',
    startSeconds: 39,
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

class YoutubeEmbeddedthirteen extends StatelessWidget {
  YoutubeEmbeddedthirteen({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'oD9BaNAH-eE',
    startSeconds: 2351,
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

// end base// TODO Implement this library.
