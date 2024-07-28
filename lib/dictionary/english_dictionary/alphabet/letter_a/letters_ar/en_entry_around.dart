import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// replace EnglishEntryaround - replace speakAround

// replace around - /əˈraʊnd/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryaround extends StatelessWidget {
  // blank divider
  EnglishEntryaround({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakaround(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("around");
  }

  Future<void> speakaround1058(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The house is built around a central courtyard.");
  }

  Future<void> speakaround1100(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He put his arms around her.");
  }

  Future<void> speakaround1106(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The bus came around the bend.");
  }

  Future<void> speakaround1107(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Our house is just around the corner.");
  }

  Future<void> speakaround1109(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They walked around the lake.");
  }

  Future<void> speakaround1112(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They walked around the town looking for a place to eat.");
  }

  Future<void> speakaround1114(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I can't arrange everything around your timetable!");
  }

  Future<void> speakaround1115(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There are a lot of questions around her motivation.");
  }

  Future<void> speakaround1117(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The cost would be somewhere around £1 500.");
  }

  Future<void> speakaround1118(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I could hear laughter all around.");
  }

  Future<void> speakaround1120(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("How do you make the wheels go around?");
  }

  Future<void> speakaround1123(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She turned the car around and drove off.");
  }

  Future<void> speakaround1125(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I saw an old tree that was at least ten feet around.");
  }

  Future<void> speakaround1128(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There were papers lying around all over the floor.");
  }

  Future<void> speakaround1130(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There were several young people sitting around looking bored.");
  }

  Future<void> speakaround1131(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She must be somewhere around here.");
  }

  Future<void> speakaround1133(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She's been around as a film director since the early 2000s.");
  }

  // Future<void> speakaround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around");
  // }

  // Future<void> speakaround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around");
  // }

  // Future<void> speakaround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around");
  // }

  // Future<void> speakaround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around");
  // }

  // Future<void> speakaround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around");
  // }

  // Future<void> speakaround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around");
  // }

  // Future<void> speakaround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around");
  // }

  // Future<void> speakaround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around");
  // }

  // Future<void> speakaround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around");
  // }

  // Future<void> speakaround(String languageCode) async {
  //   // DOPSUM: CHANGE speakAround
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("around");
  // }

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
                            EntryTitle(word: "around"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /əˈraʊnd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakaround("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /əˈraʊnd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakaround("en-US"),
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
کوردی: ئەم‌بەر و ئەوبەر، ئەم‌لاو ئەولا، وەر، دەو، (بۆ) ھەر لا، بە ھەر لایێ، ئەم دەوروبەرانە، ئەم دەوروپشتە، ئەم نزیکانە، ئەم دەوروبەرە، سەرانسەری، ھەموو جێیێ، سەرتاسەری، لە دەور، دەوان‌دەوری، دەوری، دۆرمادۆری، نزیکەی، دەور، دەوروبەر، دەوروپشت، لەبەردەست
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ئامراز) دەوردراو لە ھەموو لایەکەوە"""),
                          SentencesRow(
                            englishText:
                                "The house is built around a central courtyard.",
                            kurdishText:
                                "خانووەکە بە دەوری حەوشەیەکدا درووست‌کراوە.",
                            onPressedBritish: () => speakaround1058("en-GB"),
                            onPressedAmerican: () => speakaround1058("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "He put his arms around her.",
                            kurdishText: "دەستی‌کردە ملی.",
                            onPressedBritish: () => speakaround1100("en-GB"),
                            onPressedAmerican: () => speakaround1100("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ئامراز) لە لایەکی تری شوێنێک یان شتێکەوە"""),
                          SentencesRow(
                            englishText: "The bus came around the bend.",
                            kurdishText:
                                "پاسەکە لە لایەکەی تری سوڕانەکەوە ھات.",
                            onPressedBritish: () => speakaround1106("en-GB"),
                            onPressedAmerican: () => speakaround1106("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "Our house is just around the corner.",
                            kurdishText: "ماڵمان لەوسەری سوچەکەیە.",
                            onPressedBritish: () => speakaround1107("en-GB"),
                            onPressedAmerican: () => speakaround1107("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ئامراز) بە بازنەیی"""),
                          SentencesRow(
                            englishText: "They walked around the lake.",
                            kurdishText: "بەدەوری دەریاچەکەدا ڕێیان کرد.",
                            onPressedBritish: () => speakaround1109("en-GB"),
                            onPressedAmerican: () => speakaround1109("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ئامراز) بۆ ژمارەیەکی زۆری ناوچەیەک"""),
                          SentencesRow(
                            englishText:
                                "They walked around the town looking for a place to eat.",
                            kurdishText:
                                "بە شارۆچکەکەدا ڕێیان‌کرد بۆ دۆزینەوەی شوێنێک بۆ نان‌خواردن.",
                            onPressedBritish: () => speakaround1112("en-GB"),
                            onPressedAmerican: () => speakaround1112("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ئامراز) بۆ گونجاندن لەگەڵ کەسێک/شتێک"""),
                          SentencesRow(
                            englishText:
                                "I can't arrange everything around your timetable!",
                            kurdishText:
                                "ناتوانم ھەموو شتێک لەگەڵ خشتەی کاتی تۆ بگونجێنم!",
                            onPressedBritish: () => speakaround1114("en-GB"),
                            onPressedAmerican: () => speakaround1114("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ئامراز) پەیوەندیدار بە شتێک"""),
                          SentencesRow(
                            englishText:
                                "There are a lot of questions around her motivation.",
                            kurdishText:
                                "پرسیاری زۆر ھەیە پەیوەندیدار بە پاڵنەرەکانی.",
                            onPressedBritish: () => speakaround1115("en-GB"),
                            onPressedAmerican: () => speakaround1115("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ھاوەڵکار) بەنزیکەیی"""),
                          SentencesRow(
                            englishText:
                                "The cost would be somewhere around £1 500.",
                            kurdishText: "تێچووەکەی نزیکەی ١,٥٠٠ پاوەند دەبێت.",
                            onPressedBritish: () => speakaround1117("en-GB"),
                            onPressedAmerican: () => speakaround1117("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ھاوەڵکار) لە ھەموو لایەکەوە"""),
                          SentencesRow(
                            englishText: "I could hear laughter all around.",
                            kurdishText:
                                "لە ھەموو لایەکەوە گوێم لە پێکەنین بوو.",
                            onPressedBritish: () => speakaround1118("en-GB"),
                            onPressedAmerican: () => speakaround1118("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ھاوەڵکار) بە بازنەیی"""),
                          SentencesRow(
                            englishText:
                                "How do you make the wheels go around?",
                            kurdishText: "چۆن وا لە ویلەکە دەکەیت بسووڕێتەوە؟",
                            onPressedBritish: () => speakaround1120("en-GB"),
                            onPressedAmerican: () => speakaround1120("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ھاوەڵکار) بە بازنەیەک یان ھێڵێکی چەماوە و ڕووکردن لە لایەکی تر یان ئاراستەی پێچەوانە"""),
                          SentencesRow(
                            englishText:
                                "She turned the car around and drove off.",
                            kurdishText: "ئۆتۆمبێلەکەی سووڕاندەوە و ڕۆشت.",
                            onPressedBritish: () => speakaround1123("en-GB"),
                            onPressedAmerican: () => speakaround1123("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ھاوەڵکار) پێوانەکردن بە بازنەیی"""),
                          SentencesRow(
                            englishText:
                                "I saw an old tree that was at least ten feet around.",
                            kurdishText:
                                "درەختێکی کۆنم دی کە بە لایەنی کەمەوە ١٠ پێ ئەستوور بوو.",
                            onPressedBritish: () => speakaround1125("en-GB"),
                            onPressedAmerican: () => speakaround1125("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (ھاوەڵکار) لە ژمارەیەکی زۆر شوێندا"""),
                          SentencesRow(
                            englishText:
                                "There were papers lying around all over the floor.",
                            kurdishText: "کاغەز بە ھەموو زەوییەکەدا کەوتبوو.",
                            onPressedBritish: () => speakaround1128("en-GB"),
                            onPressedAmerican: () => speakaround1128("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (ھاوەڵکار) بۆ باسکردن لەو چالاکییانەی کە ھیچ ھۆکارێکیان نییە"""),
                          SentencesRow(
                            englishText:
                                "There were several young people sitting around looking bored.",
                            kurdishText:
                                "ھەندێک کەسی گەنج دانیشتبوون و بێزاربوون.",
                            onPressedBritish: () => speakaround1130("en-GB"),
                            onPressedAmerican: () => speakaround1130("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (ھاوەڵکار) بەردەست"""),
                          SentencesRow(
                            englishText: "She must be somewhere around here.",
                            kurdishText: "دەبێت لە شوێنێک لێرە بێت.",
                            onPressedBritish: () => speakaround1131("en-GB"),
                            onPressedAmerican: () => speakaround1131("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٥. (ھاوەڵکار) چالاک لە پیشەیەکدا"""),
                          SentencesRow(
                            englishText:
                                "She's been around as a film director since the early 2000s.",
                            kurdishText:
                                "لە ساڵانی ٢٠٠ەوە چالاکە وەک دەرھێنەرێکی فیلم.",
                            onPressedBritish: () => speakaround1133("en-GB"),
                            onPressedAmerican: () => speakaround1133("en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(), // DOPSUM: DOPSUM_WRITE_A_SENTENCE
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
                        YoutubeEmbeddedtwelve(),
                        // YoutubeEmbeddedthirteen(),
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
- Adverb: around 
1. In the area or vicinity (= about)
"hanging around"; "waited around for the next flight";
 
2. By a circular or circuitous route
"He came all the way around the base"; "the road goes around the pond"
 
3. Used of movement to or among many different places or in no particular direction (= about)
"news gets around"; "travelled around in Asia"; "he needs advice from someone who's been around"; "she sleeps around";
 
4. In a circle or circular motion
"The wheels are spinning around"
 
5. (of quantities) imprecise but fairly close to correct (= approximately, about, close to, just about, some, roughly, more or less, or so, loosely)
"weighs around a hundred pounds";
 
6. In or to a reversed position or direction (= about)
"suddenly she turned around";
 
7. To a particular destination either specified or understood
"she came around to see me"; "I invited them around for supper"
 
8. All around or on all sides (= about)
"dirty clothes lying around"; "There were trees growing all around"; "she looked around her";
 
9. In circumference
"the trunk is ten feet around"; "the pond is two miles around"
 
10. From beginning to end; throughout (= round)
"frigid weather the year around";

- Preposition: around  
1. Approximately (especially of a date) (= circa)
"the church was built around 1840";
 
2. On all sides; so as to encircle (= round)
 
3. In the whole extent of; everywhere (= throughout, over, all over, all around, across, round)
"climate change will be a problem around the world";
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

  final String _videoId = 'WF8iaqRqI60';
  final double _startSeconds = 59;

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

  final String _videoId = 'rPe4yziWiOg';
  final double _startSeconds = 274;

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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 36;

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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 27;

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

  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 111;

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

  final String _videoId = 'DPZzrlFCD_I';
  final double _startSeconds = 285;

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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 761;

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

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 116;

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

  final String _videoId = '_wNsZEqpKUA';
  final double _startSeconds = 154;

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

  final String _videoId = 'Kou7ur5xt_4';
  final double _startSeconds = 533;

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

  final String _videoId = 'e09xig209cQ';
  final double _startSeconds = 174;

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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 78;

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

// end