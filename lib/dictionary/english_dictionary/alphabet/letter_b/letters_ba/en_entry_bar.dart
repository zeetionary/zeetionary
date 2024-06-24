import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bar" and provide five example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace bar - replace EnglishEntrybar

// replace speakBar - /bɑː(r)/

enum TtsState { playing }

class EnglishEntrybar extends StatelessWidget {
// blank divider
  EnglishEntrybar({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbar(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bar");
  }

  Future<void> speakbars1(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We arranged to meet in a bar called the Flamingo.");
  }

  Future<void> speakbars2(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The hotel has a cocktail bar on the top floor.");
  }

  Future<void> speakbars3(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It was so crowded I couldn't get to the bar.");
  }

  Future<void> speakbars4(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The chef cut the bar of chocolate into small pieces.");
  }

  Future<void> speakbars5(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He smashed the window with an iron bar.");
  }

  Future<void> speakbars6(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I typed my question into the search bar to Google it.");
  }

  Future<void> speakbars7(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The battery meter showed one bar of power left.");
  }

  Future<void> speakbars8(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His shot hit the bar.");
  }

  Future<void> speakbars9(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Bars of sunlight slanted down from the tall windows.");
  }

  Future<void> speakbars10(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "At that time being a woman was a bar to promotion in most professions.");
  }

  Future<void> speakbars11(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Prisoners are barred by law from voting in general elections.");
  }

  Future<void> speakbars12(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("All the doors and windows were barred.");
  }

  Future<void> speakbars13(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We found our way barred by rocks.");
  }

  Future<void> speakbars14(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The students all attended, bar two who were ill.");
  }

  Future<void> speakbars15(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBars1515");
  }

  Future<void> speakbars16(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBars1616");
  }

  Future<void> speakbars17(String languageCode) async {
    // DOPSUM: CHANGE speakBar
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBars1717");
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
                            EntryTitle(
                                word: "bar"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /bɑː(r)/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakbar("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /bɑːr/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakbar("en-US"),
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
کوردی: میلە، میل، پشکۆڵ، شیشە، ئەستوون، پارچە، تیکە، گۆڵە، نەردە، شمشێرە، تووڵک، قاڵب (سابوون)، قوڵت، کەستەک، قورسە، داڕشتە (زێڕ)، باریکە، شریت، باریکایی، تیشک، تیرێژ، لیزگ، پڕشنگ، ھێڵ، ئێلێمێنت (کارەبا)، ڕێگرتن، نەھێشتن، بەربەندی، بەربەست، لەمپەر، کۆسپ، کێشە، (میوزیک) خانە، مەودای میوزیک، مەی‌خانە، دەکە، بوتکە، کافە، جێگای تاوانبار، شوێنی تایبەتی زیندانی لە دادگادا، دادگا، (جوگرافیا) بەستاو، یەکەی پەستان، بێجگەلە، جگە، ژبلی، مەگەر ئەوەی کە
"""),
                          const DefinitionKurdish(
                              text: """١. (ناو) شوێنی خواردنەوەی کحولی"""),
                          SentencesRow(
                            englishText:
                                "We arranged to meet in a bar called the Flamingo.",
                            kurdishText:
                                "کاتمان دانا بۆ یەکتربینین لە باڕێک بە ناوی فلامینگۆ.",
                            onPressedBritish: () => speakbars1("en-GB"),
                            onPressedAmerican: () => speakbars1(// REPLACE: bar
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) شوێنێک کە خواردنەوەیەکی کحولی دیاریکراو بەشێوەیەکی سەرەکی تێدایە"""),
                          SentencesRow(
                            englishText:
                                "The hotel has a cocktail bar on the top floor.",
                            kurdishText:
                                "ھوتێلەکە باڕێکی کۆکتێلی تێدایە لە نھۆمی سەرەوە.",
                            onPressedBritish: () => speakbars2("en-GB"),
                            onPressedAmerican: () => speakbars2(// REPLACE: bar
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) مێزێکی دارینی درێژ کە خواردنەوەی لەسەر پێشکەش دەکرێت"""),
                          SentencesRow(
                            englishText:
                                "It was so crowded I couldn't get to the bar.",
                            kurdishText:
                                "زۆر قەرەباڵغ کە نەمتوانی بگەم بە مێزی خواردنەوەکە.",
                            onPressedBritish: () => speakbars3("en-GB"),
                            onPressedAmerican: () => speakbars3(// REPLACE: bar
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) پارچەیەک لە شتێک"""),
                          SentencesRow(
                            englishText:
                                "The chef cut the bar of chocolate into small pieces.",
                            kurdishText:
                                "شێفەکە پارچە چکلێتەکەی پارچەپارچەکرد.",
                            onPressedBritish: () => speakbars4("en-GB"),
                            onPressedAmerican: () => speakbars4(// REPLACE: bar
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) پارچەیەکی درێژی ئاسن یان تەختە"""),
                          SentencesRow(
                            englishText:
                                "He smashed the window with an iron bar.",
                            kurdishText: "پەنجەرەکەی بە پارچە ئاسنێک شکاند.",
                            onPressedBritish: () => speakbars5("en-GB"),
                            onPressedAmerican: () => speakbars5(// REPLACE: bar
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) بەشێکی شاشەی کۆمپیوتەر یان موبایل کە لینک پیشان دەدات، یان تێیدا دەتوانی گەڕان بکەیت"""),
                          SentencesRow(
                            englishText:
                                "I typed my question into the search bar to Google it.",
                            kurdishText:
                                "پرسیارەکەم لە بەشی گەڕانەکە نووسی بۆ ئەوەی بۆی بگەڕێم.",
                            onPressedBritish: () => speakbars6("en-GB"),
                            onPressedAmerican: () => speakbars6(// REPLACE: bar
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) ڕێگەی پێوانی خێرایی ئینتەرنێت یان شەحنی موبایلێک یان کۆمپیوتەرێک کە بە چەند خەتێکی ستوونی پیشان دەدرێت"""),
                          SentencesRow(
                            englishText:
                                "The battery meter showed one bar of power left.",
                            kurdishText:
                                "پێوەری باترییەکە تەنھا یەک خەتی ماوەی پیشاندەدا.",
                            onPressedBritish: () => speakbars7("en-GB"),
                            onPressedAmerican: () => speakbars7(// REPLACE: bar
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ناو) بەشی سەرەوەی ستوونەکانی گۆڵێک"""),
                          SentencesRow(
                            englishText: "His shot hit the bar.",
                            kurdishText:
                                "لێدانەکەی لە بەشی سەروەی ستوونەکەی دا.",
                            onPressedBritish: () => speakbars8("en-GB"),
                            onPressedAmerican: () => speakbars8(// REPLACE: bar
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ناو) ھێڵێک لە ڕەنگ یان ڕۆشنایی"""),
                          SentencesRow(
                            englishText:
                                "Bars of sunlight slanted down from the tall windows.",
                            kurdishText:
                                "ھێڵێک لە تیشکی خۆر بە پەنجەرە درێژەکاندا دەھاتە ژوورەوە.",
                            onPressedBritish: () => speakbars9("en-GB"),
                            onPressedAmerican: () => speakbars9(// REPLACE: bar
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ناو) شتێک کە ڕێگری لە کەسێک دەکات لە کردنی شتێک"""),
                          SentencesRow(
                            englishText:
                                "At that time being a woman was a bar to promotion in most professions.",
                            kurdishText:
                                "لەو کاتەدا ژنبوون ڕێگرییەک بوو لە پلەبەرزبوونەوە لە زۆر پیشەدا.",
                            onPressedBritish: () => speakbars10("en-GB"),
                            onPressedAmerican: () => speakbars10(// REPLACE: bar
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) وەستاندنی کەسێک لە کردنی شتێک"""),
                          SentencesRow(
                            englishText:
                                "Prisoners are barred by law from voting in general elections.",
                            kurdishText:
                                "زیندانیان بەپێی یاسا ڕێگری‌لێ‌کراون لە دەنگدان لە ھەڵبژاردنی گشتی.",
                            onPressedBritish: () => speakbars11("en-GB"),
                            onPressedAmerican: () => speakbars11(// REPLACE: bar
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (کردار) کۆتکردنی شوێنێک بە شیش و ستوون"""),
                          SentencesRow(
                            englishText:
                                "All the doors and windows were barred.",
                            kurdishText: "ھەموو دەرگا و پەنجەرەکان کۆتکراون.",
                            onPressedBritish: () => speakbars12("en-GB"),
                            onPressedAmerican: () => speakbars12(// REPLACE: bar
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (کردار) بەستنی ڕێگایەک بەشێوەیەک تێپەڕین ئاستەنگ دەکات"""),
                          SentencesRow(
                            englishText: "We found our way barred by rocks.",
                            kurdishText: "زانیمان ڕێگاکەمان بە بەرد بەسترابوو.",
                            onPressedBritish: () => speakbars13("en-GB"),
                            onPressedAmerican: () => speakbars13(// REPLACE: bar
                                "en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (ئامراز) جگە لە"""),
                          SentencesRow(
                            englishText:
                                "The students all attended, bar two who were ill.",
                            kurdishText:
                                "ھەموو خوێندکاران بەژداربوون، جگە لە دووان کە نەخۆش بوون.",
                            onPressedBritish: () => speakbars14("en-GB"),
                            onPressedAmerican: () => speakbars14(// REPLACE: bar
                                "en-US"),
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
- Noun: bar (derived forms: bars)
1. A room or establishment where alcoholic drinks are served over a counter (= barroom [N. Amer], saloon, ginmill [N. Amer, informal], taproom, lounge bar [Brit], cantina, saloon bar [Brit])
"he drowned his sorrows in whiskey at the bar";
 
2. A counter where you can obtain food or drink
"he bought a hot dog and a coke at the bar"
 
3. A rigid piece of metal or wood; usually used as a fastening or obstruction or weapon
"there were bars in the windows to prevent escape"
 
4. Musical notation for a repeating pattern of musical beats (= measure)
"the orchestra omitted the last twelve bars of the song";
 
5. An obstruction (usually metal) placed at the top of a goal
"it was an excellent kick but the ball hit the bar"
 
6. The act of preventing (= prevention)
"there was no bar against leaving";
 
7. (meteorology) a unit of pressure equal to a million dynes per square centimetre
"unfortunately some writers have used bar for one dyne per square centimetre"
 
8. A submerged (or partly submerged) ridge in a river or along a shore
"the boat ran aground on a submerged bar in the river"
 
9. (law) the body of individuals qualified to practice law in a particular jurisdiction (= legal profession, legal community)
"he was admitted to the bar in New Jersey";
 
10. A narrow marking of a different colour or texture from the background (= stripe, streak)
"a green toad with small black stripes or bars";
 
11. A block of solid substance (such as soap or wax) (= cake)
"a bar of chocolate";

12. A horizontal rod that serves as a support for gymnasts as they perform exercises
 
13. [Brit] A heating element in an electric fire
"an electric fire with three bars"
 
14. (law) a railing that encloses the part of the courtroom where the judges and lawyers sit and the case is tried
"spectators were not allowed past the bar"

- Verb: bar (derived forms: barred, bars, barring)
1. Disallow membership or entry (= debar, exclude)
"He was barred from membership in the club";
 
2. Render unsuitable for passage (= barricade, block, blockade, stop, block off, block up)
"bar the streets";
 
3. Expel, as if by official decree (= banish, relegate)
"he was barred from his own country";
 
4. Secure with, or as if with, bars
"He barred the door"

- Preposition: bar
1. With the exception of (= except)

- Noun: BAR
1. A portable .30 calibre automatic rifle operated by gas pressure and fed by cartridges from a magazine; used by United States troops in World War I and in World War II and in the Korean War (= Browning automatic rifle)
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

  final String _videoId = 'DTvS9lvRxZ8';
  final double _startSeconds = 166;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'FHJ3CMWnVxY';
  final double _startSeconds = 191;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'YOCUDD7JFws';
  final double _startSeconds = 938;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'yjhibJ-OqxE';
  final double _startSeconds = 98;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = '_iz5_DuY_II';
  final double _startSeconds = 0;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'VyEf4EBXe8o';
  final double _startSeconds = 125;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'VvJm4pQZ04s';
  final double _startSeconds = 56;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'CaaJyRvvaq8';
  final double _startSeconds = 375;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'uKgaVlMN7IY';
  final double _startSeconds = 18;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'sV6uuMAnJUE';
  final double _startSeconds = 1212;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'n4bucphC9r4';
  final double _startSeconds = 221;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'raSeaAeryWE';
  final double _startSeconds = 814;

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthirteen extends StatelessWidget {
  const YoutubeEmbeddedthirteen({super.key});

  final String _videoId = '0ST4_hmop9Y';
  final double _startSeconds = 114;

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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end bar// TODO Implement this library.