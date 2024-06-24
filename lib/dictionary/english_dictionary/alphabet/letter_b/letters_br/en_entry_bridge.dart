import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrybridge extends StatelessWidget {
// blank divider
  EnglishEntrybridge({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbridge(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bridge");
  }

  Future<void> speakbridges1(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We crossed the bridge over the River Windrush.");
  }

  Future<void> speakbridges2(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The river was spanned by a railway bridge.");
  }

  Future<void> speakbridges3(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cross the bridge and turn right into the town.");
  }

  Future<void> speakbridges4(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Floods washed away several bridges.");
  }

  Future<void> speakbridges5(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The road goes under the old bridge.");
  }

  Future<void> speakbridges6(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The book serves as a bridge between ancient wisdom and modern science.");
  }

  Future<void> speakbridges7(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Cultural exchanges are a way of building bridges between countries.");
  }

  Future<void> speakbridges8(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Who was on the bridge when the collision took place?");
  }

  Future<void> speakbridges9(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I enjoy a game of bridge occasionally.");
  }

  Future<void> speakbridges10(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The blow caught him right on the bridge of his nose.");
  }

  Future<void> speakbridges11(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The valley was originally bridged by the Romans.");
  }

  Future<void> speakbridges12(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The river had been bridged at its narrowest point.");
  }

  Future<void> speakbridges13(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We must bridge the gap between employees and management.");
  }

  Future<void> speakbridges14(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The university aims to bridge the gulf between education and industry.");
  }

  Future<void> speakbridges15(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges1515");
  }

  Future<void> speakbridges16(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges1616");
  }

  Future<void> speakbridges17(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges1717");
  }

  Future<void> speakbridges18(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges1818");
  }

  Future<void> speakbridges19(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges1919");
  }

  Future<void> speakbridges20(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges2020");
  }

  Future<void> speakbridges21(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges2121");
  }

  Future<void> speakbridges22(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges2222");
  }

  Future<void> speakbridges23(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges2323");
  }

  Future<void> speakbridges24(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges2424");
  }

  Future<void> speakbridges25(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges2525");
  }

  Future<void> speakbridges26(String languageCode) async {
    // DOPSUM: CHANGE speakbridge
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbridges2626");
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
                            EntryTitle(word: "bridge"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /brɪdʒ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbridge("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /brɪdʒ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbridge("en-US"),
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
کوردی: پرد، پر، (وەنەن: پردی لە دار و تەناف)، (کەشتی) سەکۆی کەشتی‌یەوانی، سەکۆ یان سەرپشتی فەرماندەر و ئەفسەرەکان، سەکۆ یان پلاتفۆڕمی کەشتی‌یەوان، پردی لووت، بەرزایی لووت، بەشی سەرەوەی ئێسکی لووت، پردی چاویلکە، سەرلووت، پردی ددانەکان، بەست، پردە، پردەڵە (بەشێ لە ئامێری ژێداری میوزیک)
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) ڕێگایەک کە بەسەر ڕێگایەکی تر، ڕووبارێک، ھتد درووست دەکرێت بۆ پەڕینەوە"""),
                          SentencesRow(
                            englishText:
                                "We crossed the bridge over the River Windrush.",
                            kurdishText:
                                "بەسەر پردەکەی سەر ڕووباری ویندڕەش پەڕینەوە.", // bridge" as
                            onPressedBritish: () => speakbridges1("en-GB"),
                            onPressedAmerican: () => speakbridges1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The river was spanned by a railway bridge.",
                            kurdishText:
                                "ڕووبارەکە پردێکی سکەی شەمەندەفەری بەسەردا درووست کرابوو.",
                            onPressedBritish: () => speakbridges2("en-GB"),
                            onPressedAmerican: () => speakbridges2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Cross the bridge and turn right into the town.",
                                    kurdishText:
                                        "بەسەر پردەکەدا بپەڕەوە و بەلای ڕاستدا بچۆ بۆ چوونە شارۆچکەکە.",
                                    onPressedBritish: () =>
                                        speakbridges3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbridges3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Floods washed away several bridges.",
                                    kurdishText:
                                        "لافاو ژمارەیەک پردی ڕووخاندبوو.",
                                    onPressedBritish: () =>
                                        speakbridges4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbridges4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The road goes under the old bridge.",
                                    kurdishText:
                                        "ڕێگاکە بە ژێر پردەکەدا دەچێت.",
                                    onPressedBritish: () =>
                                        speakbridges5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbridges5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) شتێک کە دوو شتی جیاواز پێکە دەبەستێتەوە"),
                          SentencesRow(
                            englishText:
                                "The book serves as a bridge between ancient wisdom and modern science.",
                            kurdishText:
                                "کتێبەکە خزمەت دەکات وەک پردێک لە نێوان ژیریی کۆن و زانستی سەردەمدا.",
                            onPressedBritish: () => speakbridges6("en-GB"),
                            onPressedAmerican: () => speakbridges6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Cultural exchanges are a way of building bridges between countries.",
                            kurdishText:
                                "ئاڵوگۆڕی کەلتووری ڕێگایەکە بۆ ئاشنابوونی وڵاتان بە یەکدی.",
                            onPressedBritish: () => speakbridges7("en-GB"),
                            onPressedAmerican: () => speakbridges7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ئەو بەشەی کەشتی کە کاپتن و ئەفسەرەکان لەسەری دەوەستن کە کۆنترۆڵی کەشتییەکە دەکەن"),
                          SentencesRow(
                            englishText:
                                "Who was on the bridge when the collision took place?",
                            kurdishText:
                                "کێ لەسەر سەکۆی کەشتی‌یەوانییەکە بوو کە پێکدادانەکە ڕوویدا؟",
                            onPressedBritish: () => speakbridges8("en-GB"),
                            onPressedAmerican: () => speakbridges8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) یارییەکی دوو کەسی کە دەبێت بە سەرکەوتووی پێشبینی خاڵی بردنەوەیان بکەن و بەپێچەوانەوە خاڵ لەدەست دەدەن"),
                          SentencesRow(
                            englishText:
                                "I enjoy a game of bridge occasionally.",
                            kurdishText: "ماوە ماوە حەز بە یاریی کۆنکان دەکەم.",
                            onPressedBritish: () => speakbridges9("en-GB"),
                            onPressedAmerican: () => speakbridges9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) بەشی سەرەوەی لووت کە دەکەوێتە نێوان چاوەوە، یان ئەو بەشەی چاویلکە کە لەسەری دەوەستێت"),
                          SentencesRow(
                            englishText:
                                "The blow caught him right on the bridge of his nose.",
                            kurdishText: "لێدانەکە ڕێک لە بەرزایی لووتی دا.",
                            onPressedBritish: () => speakbridges10("en-GB"),
                            onPressedAmerican: () => speakbridges10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) درووستکردنی پرد لەسەر شتێک"),
                          SentencesRow(
                            englishText:
                                "The valley was originally bridged by the Romans.",
                            kurdishText:
                                "دۆڵەکە لە سەرەتادا لەلایەن ڕۆمەکانەوە پردی لەسەر درووستکرا.",
                            onPressedBritish: () => speakbridges11("en-GB"),
                            onPressedAmerican: () => speakbridges11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The river had been bridged at its narrowest point.",
                            kurdishText:
                                "ڕووبارەکە لە باریکترین خاڵیدا پردی لەسەر درووستکرابوو.",
                            onPressedBritish: () => speakbridges12("en-GB"),
                            onPressedAmerican: () => speakbridges12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) نەھێشتن یان کەمکردنەوەی ناکۆکی یان جیاوازی"),
                          SentencesRow(
                            englishText:
                                "We must bridge the gap between employees and management.",
                            kurdishText:
                                "دەبێت ناکۆکی نێوان کارمەندان و بەڕێوبەرایەتی کەم بکەینەوە.",
                            onPressedBritish: () => speakbridges13("en-GB"),
                            onPressedAmerican: () => speakbridges13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The university aims to bridge the gulf between education and industry.",
                            kurdishText:
                                "زانکۆکە ئامانجیەتی پەیوەندی درووست بکات لە نێوان خوێندن و دەستی کاردا.",
                            onPressedBritish: () => speakbridges14("en-GB"),
                            onPressedAmerican: () => speakbridges14("en-US"),
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
- Noun: bridge (derived forms: bridges)
1. A structure that allows people or vehicles to cross an obstacle such as a river or canal or railway etc. (= span)
 
2. A circuit consisting of two branches (4 arms arranged in a diamond configuration) across which a meter is connected (= bridge circuit)
 
3. Something resembling a bridge in form or function
"his letters provided a bridge across the centuries"
 
4. The hard ridge that forms the upper part of the nose
"her glasses left marks on the bridge of her nose"
 
5. A wooden support that holds up the strings on a stringed instrument
 
6. A denture anchored to teeth on either side of missing teeth (= bridgework)
 
7. The link between two lenses; rests on the nose (= nosepiece)
 
8. An upper deck where a ship is steered and the captain stands (= bridge deck)
 
9. Any of various card games based on whist for four players

- Verb: bridge (derived forms: bridging, bridges, bridged)
1. Connect or reduce the distance between (= bridge over)
 
2. Make a bridge across
"bridge a river"
 
3. Cross over on a bridge
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

  final String _videoId = 'xaXCf_fPD2k';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = '14omrXWknpA';
  final double _startSeconds = 702;

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

  final String _videoId = 'e8PodEM4Y8g';
  final double _startSeconds = 47;

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

  final String _videoId = 'Her4vPFFSE4';
  final double _startSeconds = 769;

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

  final String _videoId = 'kZsDdRM3DD4';
  final double _startSeconds = 51;

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

  final String _videoId = 'aE5afkEqG08';
  final double _startSeconds = 43;

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

  final String _videoId = 'CZxqVC_tBdc';
  final double _startSeconds = 245;

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

  final String _videoId = 'jVi5p-yyF3c';
  final double _startSeconds = 93;

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

  final String _videoId = 'u5CguqywlBk';
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

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'szUjnEZcp68';
  final double _startSeconds = 25;

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

  final String _videoId = 'v6qVhMqhNVY';
  final double _startSeconds = 22;

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

// end WORD_WEB
