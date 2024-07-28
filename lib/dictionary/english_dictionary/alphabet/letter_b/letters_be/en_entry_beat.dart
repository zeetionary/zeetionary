import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "beat" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace beat - replace EnglishEntrybeat

// replace speakBeat - /biːt/

enum TtsState { playing }

class EnglishEntrybeat extends StatelessWidget {
// blank divider
  EnglishEntrybeat({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbeat(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("beat");
  }

  Future<void> speakbeats1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He beat me at chess.");
  }

  Future<void> speakbeats2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I beat her by just three points.");
  }

  Future<void> speakbeats3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The government's main aim is to beat inflation.");
  }

  Future<void> speakbeats4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It is a problem that beats even the experts.");
  }

  Future<void> speakbeats5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("If we go early we should beat the traffic.");
  }

  Future<void> speakbeats6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "At that time children were regularly beaten for quite minor offences.");
  }

  Future<void> speakbeats7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A man was found beaten to death.");
  }

  Future<void> speakbeats8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Nothing beats home cooking.");
  }

  Future<void> speakbeats9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Somebody was beating at the door.");
  }

  Future<void> speakbeats10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's alive—her heart is still beating.");
  }

  Future<void> speakbeats11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We heard the drums beating.");
  }

  Future<void> speakbeats12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Beat the mixture well, until it is creamy.");
  }

  Future<void> speakbeats13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The metal had been beaten flat.");
  }

  Future<void> speakbeats14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I put my head on his chest but I could feel no heartbeat.");
  }

  Future<void> speakbeats15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They danced to the beat of the drums.");
  }

  Future<void> speakbeats16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She felt the beat of his heart.");
  }

  Future<void> speakbeats17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He tapped his foot to the beat (= rhythm) of the music.");
  }

  Future<void> speakbeats18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("More police officers out on the beat may help to cut crime.");
  }

  Future<void> speakbeats19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm beat - I'm going to bed.");
  }

  Future<void> speakbeats20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBeats2020");
  }

  Future<void> speakbeats21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBeats2121");
  }

  Future<void> speakbeats22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBeats2222");
  }

  Future<void> speakbeats23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBeats2323");
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
                            EntryTitle(word: "beat"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /biːt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbeat("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /biːt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbeat("en-US"),
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
کوردی: لێدان، پیاکێشان، کوتان، دەنگی لێدان، لێدان(پرتە و دڵ)، ترپە، ڕیتم (میوزیکی)، کێش، ھەڤدەن، زەبر، ھێز (ھەڵبەست)، ڕێڕەو، ڕێگا، جووڵەی باڵەکانی باڵندە، پێشکەوتن، پێش‌وەچوون، شوێنی تیاگەڕان، ناوچەی نۆبەداری (ئەفسەری پۆلیس)، ھیلاک، شەکەت، ماندوو
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (کردار) شکستھێنان بە کەسێک لە یارییەک یان پێشبڕکێیەک"""),
                          SentencesRow(
                            englishText: "He beat me at chess.",
                            kurdishText: "لە شەترەنجدا لێی بردمەوە.",
                            onPressedBritish: () => speakbeats1("en-GB"),
                            onPressedAmerican: () => speakbeats1("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "I beat her by just three points.",
                            kurdishText: "بە جیاوازی سێ خاڵ لێم بردەوە.",
                            onPressedBritish: () => speakbeats2("en-GB"),
                            onPressedAmerican: () => speakbeats2("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) باشتربوون لە کەسێک"""),
                          SentencesRow(
                            englishText: "Nothing beats home cooking.",
                            kurdishText: "ھیچ باشتر نابێت لە خواردنی ماڵەوە.",
                            onPressedBritish: () => speakbeats8("en-GB"),
                            onPressedAmerican: () => speakbeats8("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) سەپاندنی ھەژموون بەسەر شتێکدا"""),
                          SentencesRow(
                            englishText:
                                "The government's main aim is to beat inflation.",
                            kurdishText:
                                "ئامانجی سەرەکی حکومەت ئەوەیە کۆنترۆڵی ھەڵاوسانی ئابووری بکات.",
                            onPressedBritish: () => speakbeats3("en-GB"),
                            onPressedAmerican: () => speakbeats3("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) شتێک کە زۆر گران دەبێت"""),
                          SentencesRow(
                            englishText:
                                "It is a problem that beats even the experts.",
                            kurdishText:
                                "کێشەیەکە کە تەنانەت شارەزایانیش لێی تێ ناگەن.",
                            onPressedBritish: () => speakbeats4("en-GB"),
                            onPressedAmerican: () => speakbeats4("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) دوورکەوتنەوە لە شتێک"""),
                          SentencesRow(
                            englishText:
                                "If we go early we should beat the traffic.",
                            kurdishText: "ئەگەر زوو بچین لە ترافیک دوور دەبین.",
                            onPressedBritish: () => speakbeats5("en-GB"),
                            onPressedAmerican: () => speakbeats5("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) لێدانی زۆر لە کەسێک بە مەبەستی ئازاردان"""),
                          SentencesRow(
                            englishText:
                                "At that time children were regularly beaten for quite minor offences (= as a punishment).",
                            kurdishText:
                                "ئەو کات منداڵان کوتەکیان دەخوارد بە بەردەوامی بۆ ھەڵەی زۆر بچووک.",
                            onPressedBritish: () => speakbeats6("en-GB"),
                            onPressedAmerican: () => speakbeats6("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "A man was found beaten to death.",
                            kurdishText:
                                "پیاوێک دۆزرایەوە کە تا مردن لێی درابوو.",
                            onPressedBritish: () => speakbeats7("en-GB"),
                            onPressedAmerican: () => speakbeats7("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) لێدان لە شتێک بۆ چەند جارێک"""),
                          SentencesRow(
                            englishText: "Somebody was beating at the door.",
                            kurdishText: "کەسێک لە دەرگاکەی دەکووتا.",
                            onPressedBritish: () => speakbeats9("en-GB"),
                            onPressedAmerican: () => speakbeats9("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) درووستکردنی دەنگێکی بەردەوام، یان وا لە شتێک بکەیت دەنگێکی بەردەوام دەربکات"""),
                          SentencesRow(
                            englishText:
                                "She's alive—her heart is still beating.",
                            kurdishText: "زیندووە، دڵی ھێشتا لێدەدات.",
                            onPressedBritish: () => speakbeats10("en-GB"),
                            onPressedAmerican: () => speakbeats10("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "We heard the drums beating.",
                            kurdishText:
                                "گوێمان لە دەنگی لێدانی دەھۆڵەکان بوو.",
                            onPressedBritish: () => speakbeats11("en-GB"),
                            onPressedAmerican: () => speakbeats11("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (کردار) تێکەڵکردنی شتێک"""),
                          SentencesRow(
                            englishText:
                                "Beat the mixture well, until it is creamy.",
                            kurdishText:
                                "تێکەڵەکە بە باشی تێکبدە تا کرێمدار دەبێت.",
                            onPressedBritish: () => speakbeats12("en-GB"),
                            onPressedAmerican: () => speakbeats12("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (کردار) گۆڕینی شێوەی شتێک، بەتایبەتی کانزا، بە لێدانی بە چەکووش"""),
                          SentencesRow(
                            englishText: "The metal had been beaten flat.",
                            kurdishText: "کانزاکە بە لێدان پانکراوەتەوە.",
                            onPressedBritish: () => speakbeats13("en-GB"),
                            onPressedAmerican: () => speakbeats13("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ناو) یەک لێدانی شتێک، بۆ نموونە یەک ترپەی دڵ، یان یەک لێدانی لە دەھۆڵ"""),
                          SentencesRow(
                            englishText:
                                "I put my head on his chest but I could feel no heartbeat.",
                            kurdishText:
                                "سەرم خستە سەر سنگی بەڵام گوێم لە ھیچ ترپەیەکی دڵ نەبوو.",
                            onPressedBritish: () => speakbeats14("en-GB"),
                            onPressedAmerican: () => speakbeats14("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "They danced to the beat of the drums.",
                            kurdishText: "سەمایان دەکرد لەگەڵ ڕیتمی دەھۆڵەکان.",
                            onPressedBritish: () => speakbeats15("en-GB"),
                            onPressedAmerican: () => speakbeats15("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (ناو) زنجیرەیەک لە لێدانی شتێک، بۆ نموونە لێدانی دڵ یان دەھۆڵ"""),
                          SentencesRow(
                            englishText: "She felt the beat of his heart.",
                            kurdishText: "ھەستی بە لێدانی دڵی کرد.",
                            onPressedBritish: () => speakbeats16("en-GB"),
                            onPressedAmerican: () => speakbeats16("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (ناو) ڕیتمی سەرەکی، یان یەک یەکەی ڕیتمێک، لە پارچەیەک میوزیک یان ھۆنراوە"""),
                          SentencesRow(
                            englishText:
                                "He tapped his foot to the beat (= rhythm) of the music.",
                            kurdishText: "پێی دادەکوتی لەگەڵ ڕیتمی میوزیکەکە.",
                            onPressedBritish: () => speakbeats17("en-GB"),
                            onPressedAmerican: () => speakbeats17("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (ناو) ناوچەیەک کە ئەفسەرێکی پۆلیس بەردەوام بەسەریدا دەچێت و بەرپرسە بۆی"""),
                          SentencesRow(
                            englishText:
                                "More police officers out on the beat may help to cut crime.",
                            kurdishText:
                                "پۆلیسی زیاتر لە نۆبەداریدا بن ئەگەری ھەیە تاوان کەمبکاتەوە.",
                            onPressedBritish: () => speakbeats18("en-GB"),
                            onPressedAmerican: () => speakbeats18("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٥. (ھاوەڵناو) زۆر ماندوو"""),
                          SentencesRow(
                            englishText: "I'm beat - I'm going to bed.",
                            kurdishText: "زۆر ماندووم، دەچم دەنووم.",
                            onPressedBritish: () => speakbeats19("en-GB"),
                            onPressedAmerican: () => speakbeats19("en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
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
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
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
- Verb: beat (derived forms: beaten, beat, beating, beats)
1. Hit repeatedly
"beat on the door"; "beat the table with his shoe"
 
2. Give a beating to; subject to a beating, either as a punishment or as an act of aggression (= beat up, work over)
"Thugs beat him up when he walked down the street late at night"; "The teacher used to beat the students";
 
3. Come out better in a competition, race, or conflict (= beat out, crush, shell, trounce, vanquish)
"Agassi beat Becker in the tennis championship"; "We beat the competition";
 
4. Move rhythmically (= pound, thump)
"Her heart was beating fast";
 
5. Shape by beating
"beat swords into ploughshares"
 
6. Make a rhythmic sound (= drum, thrum)
"Rain beat against the windscreen";
 
7. Glare or strike with great intensity
"The sun was beating down on us"
 
8. (of wings) move up and down with a thrashing motion (= flap)
"The eagle beat its wings and soared high into the sky";
 
9. Sail with much tacking or with difficulty
"The boat beat in the strong wind"
 
10. (cooking) stir vigorously (= scramble)
"beat the cream";
 
11. Strike (a part of one's own body) repeatedly, as in great emotion or in accompaniment to music
"beat one's breast"; "beat one's foot rhythmically"
 
12. Be superior
"Reading beats watching television"; "This sure beats work!"
 
13. Avoid paying (= bunk [informal])
"beat the subway fare";
 
14. Make a sound like a clock or a timer (= tick, ticktock, ticktack [N. Amer])
"the grandfather clock beat midnight";
 
15. Move with a flapping motion (= flap)
"The bird's wings were beating";
 
16. Indicate by beating, as with the fingers or drumsticks
"Beat the rhythm"
 
17. Move with or as if with a regular alternating motion (= pulsate, quiver)
"the city beat with music and excitement";
 
18. Make by pounding or trampling
"beat a path through the forest"
 
19. (music) produce a rhythm by striking repeatedly
"beat the drum"
 
20. Strike (water or bushes) repeatedly to rouse animals for hunting
 
21. Beat through cleverness and wit (= outwit, overreach, outsmart, outfox, circumvent, outthink)
"I beat the traffic";

22. Confuse or leave at a loss because of something complex or difficult to understand (= confuse, throw, fox, befuddle, fuddle, bedevil, confound, discombobulate [informal], perplex, vex, stick, get, puzzle, mystify, baffle, pose, bewilder, flummox, stupefy, nonplus, gravel, dumbfound)
"This beats me!";

23. [informal] Wear out completely (= exhaust, wash up, tucker [N. Amer, informal], tucker out [N. Amer, informal])
"I'm beat";

- Noun: beat (derived forms: beats)
1. A regular route for a sentry or policeman (= round)
"in the old days a policeman walked a beat and knew all his people by name";
 
2. The rhythmic contraction and expansion of the arteries with each beat of the heart (= pulse, pulsation, heartbeat)
"he could feel the beat of her heart";

3. The basic regular repeating sound unit in a piece of music (= rhythm, musical rhythm)
"the conductor set the beat";
 
4. A single pulsation of an oscillation produced by adding two waves of different frequencies; has a frequency equal to the difference between the two oscillations
 
5. A member of the beat generation; a nonconformist in dress and behaviour (= beatnik)
 
6. The sound of stroke or blow
"he heard the beat of a drum"
 
7. (prosody) the accent in a metrical foot of verse (= meter [US], metre [Brit, Cdn], measure, cadence)
 
8. A regular rate of repetition
"the cox raised the beat"
 
9. A stroke or blow
"the signal was two beats on the steam pipe"
 
10. The act of beating to windward; sailing as close as possible to the direction from which the wind is blowing

- Adjective: beat
Usage: informal
1. Very tired (= all in, bushed, dead [informal])
"so beat I could flop down and go to sleep anywhere";
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'D-2799Y07Zc';
  final double _startSeconds = 593;

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

  final String _videoId = 'hDHTxtp_IBo';
  final double _startSeconds = 152;

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

  final String _videoId = 'Cp-6nuo9_4o';
  final double _startSeconds = 694;

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

  final String _videoId = 'h31p4OLbqSc';
  final double _startSeconds = 1541;

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

  final String _videoId = 'MSfjCG4V2GM';
  final double _startSeconds = 234;

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

  final String _videoId = '_5yaoc_mGD0';
  final double _startSeconds = 320;

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

  final String _videoId = '3g7TOTQSKkE';
  final double _startSeconds = 396;

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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'JhpSyGcuwJw';
  final double _startSeconds = 63;

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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = '-I6YmMAThZ8';
  final double _startSeconds = 728;

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

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 301;

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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'rEdl2Uetpvo';
  final double _startSeconds = 270;

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

// end beat// TODO Implement this library.
