import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycentre extends StatelessWidget {
  // blank divider
  EnglishEntrycentre({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcentre(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("centre");
  }

  Future<void> speakcentres1(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He walked to the centre of the circle.");
  }

  Future<void> speakcentres2(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There was a long table in the centre of the room.");
  }

  Future<void> speakcentres3(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The statue is in the very centre of the temple.");
  }

  Future<void> speakcentres4(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Aristotle believed that the Earth was at the centre of the universe.");
  }

  Future<void> speakcentres5(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We both work in the city centre.");
  }

  Future<void> speakcentres6(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We've bought a flat in the very centre of Cambridge.");
  }

  Future<void> speakcentres7(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "At that time Winchester was still a major centre of population.");
  }

  Future<void> speakcentres8(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The university is a leading centre for scientific research.");
  }

  Future<void> speakcentres9(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The company has recently opened a new training centre.");
  }

  Future<void> speakcentres10(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The university is recognized as an international centre of excellence for training dentists.");
  }

  Future<void> speakcentres11(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Children like to be the centre of attention.");
  }

  Future<void> speakcentres12(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He could never doubt that he was the centre of her world.");
  }

  Future<void> speakcentres13(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Politically, she is considered to be slightly left of centre.");
  }

  Future<void> speakcentres14(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("State occasions always centred around the king.");
  }

  Future<void> speakcentres15(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The debate centred on an important political issue.");
  }

  Future<void> speakcentres16(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Most of the fighting was centred in the north of the capital.");
  }

  Future<void> speakcentres17(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Centre all the headings in this document.");
  }

  Future<void> speakcentres18(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcentres1818");
  }

  Future<void> speakcentres19(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcentres1919");
  }

  Future<void> speakcentres20(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcentres2020");
  }

  Future<void> speakcentres21(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcentres2121");
  }

  Future<void> speakcentres22(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcentres2222");
  }

  Future<void> speakcentres23(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcentres2323");
  }

  Future<void> speakcentres24(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcentres2424");
  }

  Future<void> speakcentres25(String languageCode) async {
    // DOPSUM: CHANGE speakcentre
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcentres2525");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                            EntryTitle(word: "centre"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈsentə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcentre("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈsentər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcentre("en-US"),
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
کوردی: ناوەند، نێوەند، چەق، ناوچە، مەڵبەند، ھەلێر، کورەک، ناوچەق، نێوەڕاست، ناڤین، نێوان، دڵ، جەرگە، یاریزانی نێوەڕاست، باڵی نەرم‌ڕەو، نێوەڕاستی، ناوەندی، ناوینی، نەرم‌ڕەو، باڵی نەرم‌ڕەو 
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) ناوەڕاستی شتێک"),
                          SentencesRow(
                            englishText:
                                "He walked to the centre of the circle.",
                            kurdishText: "ڕۆیشتە چەقی بازنەکە.", // centre",
                            onPressedBritish: () => speakcentres1("en-GB"),
                            onPressedAmerican: () => speakcentres1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "There was a long table in the centre of the room.",
                            kurdishText:
                                "مێزێکی درێژ ھەبوو لە ناوەڕاستی ژوورەکەدا.",
                            onPressedBritish: () => speakcentres2("en-GB"),
                            onPressedAmerican: () => speakcentres2("en-US"),
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
                                                    "The statue is in the very centre of the temple."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پەیکەرەکە لە ناوەندی پەرستگاکەیە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcentres3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcentres3("en-US"),
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
                                                    "Aristotle believed that the Earth was at the centre of the universe."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەرستۆ باوەڕی وابوو زەوی لە چەقی گەردوونە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcentres4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcentres4("en-US"),
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
                                  "٢. (ناو) بەشێکی شار یان شارۆچکەیەک کە لە ناوەندە و قەرەباڵغە"),
                          SentencesRow(
                            englishText: "We both work in the city centre.",
                            kurdishText:
                                "ھەردووکمان لە سەنتەری شار کار دەکەین.",
                            onPressedBritish: () => speakcentres5("en-GB"),
                            onPressedAmerican: () => speakcentres5("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We've bought a flat in the very centre of Cambridge.",
                            kurdishText: "فلاتێکمان کڕیوە لە چەقی کامبریجدا.",
                            onPressedBritish: () => speakcentres6("en-GB"),
                            onPressedAmerican: () => speakcentres6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) شوێنێک یان ناوچەیەک کە خەڵکی زۆر تێیدا دەژین"),
                          SentencesRow(
                            englishText:
                                "At that time Winchester was still a major centre of population.",
                            kurdishText:
                                "ئەوکات وینچستەر ھێشتا ناوەندێکی گرنگی دانیشتوان بوو.",
                            onPressedBritish: () => speakcentres7("en-GB"),
                            onPressedAmerican: () => speakcentres7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The university is a leading centre for scientific research.",
                            kurdishText:
                                "زانکۆکە ناوەندی سەرەکی توێژینەوەی زانستییە.",
                            onPressedBritish: () => speakcentres8("en-GB"),
                            onPressedAmerican: () => speakcentres8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) بینایەک یان شێنێک کە بۆ مەبەستێک یان چالاکییەک بەکاردێت"),
                          SentencesRow(
                            englishText:
                                "The company has recently opened a new training centre.",
                            kurdishText:
                                "کۆمپانیاکە تازەگی ناوەندێکی ڕاھێنانی کردووەتەوە.",
                            onPressedBritish: () => speakcentres9("en-GB"),
                            onPressedAmerican: () => speakcentres9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) شوێنێک کە کارێکی دیاریکراو زۆر بە باشی تێیدا دەکرێت"),
                          SentencesRow(
                            englishText:
                                "The university is recognized as an international centre of excellence for training dentists.",
                            kurdishText:
                                "زانکۆکە ناسراوە وەک ناوەندی نایابی جیھانی بۆ ڕاھێنانی پزیشکانی ددان.",
                            onPressedBritish: () => speakcentres10("en-GB"),
                            onPressedAmerican: () => speakcentres10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) ئەو خاڵەی کە خەڵکی سەرنج دەخەنە سەری"),
                          SentencesRow(
                            englishText:
                                "Children like to be the centre of attention.",
                            kurdishText: "منداڵان حەز دەکەن ناوەندی سەرنج بن.",
                            onPressedBritish: () => speakcentres11("en-GB"),
                            onPressedAmerican: () => speakcentres11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He could never doubt that he was the centre of her world.",
                            kurdishText:
                                "ھەرگیز گومانی لەوە نەبوو کە لە ناوجەرگەی جیھانی ئەودایە.",
                            onPressedBritish: () => speakcentres12("en-GB"),
                            onPressedAmerican: () => speakcentres12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) ئایدۆلۆژیای سیاسی کە لە نێوان چەپ و ڕاستدایە"),
                          SentencesRow(
                            englishText:
                                "Politically, she is considered to be slightly left of centre.",
                            kurdishText:
                                "لە ڕووی سیاسییەوە، وا دادەنرێت کەمێک لە چەپی نەرم‌ڕەوی بێت.",
                            onPressedBritish: () => speakcentres13("en-GB"),
                            onPressedAmerican: () => speakcentres13("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) بوون بەو کەسە یان شتەی کە زۆرینەی چالاکییەکان لە دەوریدا ڕوودەدات"),
                          SentencesRow(
                            englishText:
                                "State occasions always centred around the king.",
                            kurdishText:
                                "بۆنە نەتەوەییەکان ھەمیشە لە دەوری پاشا دەخولانەوە.",
                            onPressedBritish: () => speakcentres14("en-GB"),
                            onPressedAmerican: () => speakcentres14("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The debate centred on an important political issue.",
                            kurdishText:
                                "دیبەیتەکە لەسەر کێشیەکی سیاسی گرنگ بوو.",
                            onPressedBritish: () => speakcentres15("en-GB"),
                            onPressedAmerican: () => speakcentres15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) يوودان بەشێوەیەکی سەرەکی لەو شوێنەی کە باسکراوە"),
                          SentencesRow(
                            englishText:
                                "Most of the fighting was centred in the north of the capital.",
                            kurdishText:
                                "زۆرینەی شەڕەکە لە باکووری پایتەخت چڕبوویەوە.",
                            onPressedBritish: () => speakcentres16("en-GB"),
                            onPressedAmerican: () => speakcentres16("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) جوڵانی شتێک و دانانی لە چەقی شتێک"),
                          SentencesRow(
                            englishText:
                                "Centre (= put at equal distances from the left and right sides of the page) all the headings in this document.",
                            kurdishText:
                                "تەواوی سەرەبابەتەکان لەم پەڕەیە بخە ناوەڕاستەوە.",
                            onPressedBritish: () => speakcentres17("en-GB"),
                            onPressedAmerican: () => speakcentres17("en-US"),
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
                        // YoutubeEmbeddedeight(), //
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
- Noun: centre (derived forms: centres)
Usage: Brit, Cdn (US: center)
1. An area that is approximately central within some larger region (= center [US], middle, heart [Brit], eye)
"it is in the centre of town";
 
2. The piece of ground in the outfield directly ahead of the catcher (= center field [US], centerfield [US], center [US], centre field [Brit, Cdn])
"he hit the ball to deep centre";

3. A building dedicated to a particular activity (= center [US])
"they were raising money to build a new centre for research";
 
4. A point equidistant from the ends of a line or the extremities of a figure (= center [US], midpoint)
 
5. The choicest or most essential or most vital part of some idea or experience (= kernel, substance, core, center [US], essence, gist, heart, heart and soul, inwardness, marrow, meat, nub, pith, sum, nitty-gritty)
"the centre of the prosecutor's argument";

5. The object upon which interest and attention focuses (= center [US], center of attention [US], centre of attention [Brit, Cdn])
"his stories made him the centre of the party";
 
6. A cluster of nerve cells governing a specific bodily process (= center [US], nerve center [US], nerve centre [Brit, Cdn])
"in most people the speech centre is in the left hemisphere";
 
7. (military) the middle of a military or naval formation (= center [US])
"they had to reinforce the centre";
 
8. (basketball) the person who plays centre on a basketball team (= center [US])
 
9. (football) the person who plays centre on the line of scrimmage and snaps the ball to the quarterback (= center [US], snapper)
"the centre fumbled the handoff";

10. A place where some particular activity is concentrated (= center [US])
"they received messages from several centres";
 
11. Politically moderate persons; centrists (= center [US])
 
12. (ice hockey) the person who plays centre on a hockey team (= center [US])
 
13. The sweet central portion of a piece of candy that is enclosed in chocolate or some other covering (= center [US])
 
14. Mercantile establishment consisting of a carefully landscaped complex of shops representing leading merchandisers; usually includes restaurants and a convenient parking area; a modern version of the traditional marketplace (= plaza, mall [Brit], center [US], shopping mall, shopping center [US], shopping centre [Brit, Cdn])
"a good centre should have a movie house"; "a good shopping centre should have a movie house"; "a good centre should have a movie house";
 
15. The position on a hockey team of the player who participates in the face off at the beginning of the game (= center [US])
 
16. (American football) the position of the player on the line of scrimmage who puts the ball in play (= center [US])
"it is a centre's responsibility to get the football to the quarterback";
 
17. A position on a basketball team of the player who participates in the jump that starts the game (= center [US])

- Verb: centre (derived forms: centred, centres, centring)
Usage: Brit, Cdn (US: center)
1. Centre upon (= focus on, center on [US], revolve around, revolve about, concentrate on, center [US], centre on [Brit, Cdn])
"Her entire attention centred on her children";
 
2. Hold attention and exert mental effort on something (= concentrate, focus, center [US], pore, rivet, pore over)
 
3. Move into the centre (= center [US])
"That vase in the picture is not centred";

- Adjective: centre 
Usage: Brit, Cdn (US: center)
1. Equally distant from the extremes (= center [US], halfway, middle, midway)
 
2. Of or belonging to neither the right nor the left politically or intellectually (= center [US])

- Noun: Centre
1. A low-lying region in central France (= Centre-Val de Loire)
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
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'w3QW-9ggyDE';
  final double _startSeconds = 8;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
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

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainerEnd(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'yMoV2aEurUQ';
  final double _startSeconds = 12;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
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

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = '0ga1NDTQZGc';
  final double _startSeconds = 39;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
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

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'rEdl2Uetpvo';
  final double _startSeconds = 339;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
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

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'qQ01eLt_bxo';
  final double _startSeconds = 709;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
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

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 21;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
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

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1463;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
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

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'R0wa9IlCA_w';
  final double _startSeconds = 409;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
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

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

// end WORD_WEB
