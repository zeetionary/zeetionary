import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycamp extends StatelessWidget {
// blank divider
  EnglishEntrycamp({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcamp(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("camp");
  }

  Future<void> speakcamps1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Let's return to camp.");
  }

  Future<void> speakcamps2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We broke camp early the next morning.");
  }

  Future<void> speakcamps3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He spent two weeks at camp this summer.");
  }

  Future<void> speakcamps4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "They criticized the appalling conditions in the refugee camps.");
  }

  Future<void> speakcamps5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The military built three new army camps near the German border.");
  }

  Future<void> speakcamps6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We were in opposing camps.");
  }

  Future<void> speakcamps7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The region split into two armed camps.");
  }

  Future<void> speakcamps8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There was an air of confidence in the England camp.");
  }

  Future<void> speakcamps9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I camped overnight in a field.");
  }

  Future<void> speakcamps10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They go camping in France every year.");
  }

  Future<void> speakcamps11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I'm camping out at a friend's apartment at the moment.");
  }

  Future<void> speakcamps12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcamps1212");
  }

  Future<void> speakcamps13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcamps1313");
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
                            EntryTitle(word: "camp"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kæmp/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcamp("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kæmp/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcamp("en-US"),
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
                          const KurdishVocabulary(text: """
کوردی: وارگە، چادرگا، کەمپ، ھۆبە، زۆم، بارەگا، ھەوارگە، لەشکرگا، ڕێباز، گروپ، دەستە، حیزب، خێوەت، چادر
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) خێوەت یان بینای کاتی کە خەڵکی بە کاتی تێیدا دەژی"""),
                          SentencesRow(
                            englishText: "Let's return to camp.",
                            kurdishText: "با بگەڕێینەوە کەمپ",
                            onPressedBritish: () => speakcamps1("en-GB"),
                            onPressedAmerican: () => speakcamps1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We broke camp early the next morning.",
                            kurdishText:
                                "بەیانی ڕۆژی دواتر کۆتاییمان بە کەمپ ھێنا.",
                            onPressedBritish: () => speakcamps2("en-GB"),
                            onPressedAmerican: () => speakcamps2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) شێنێک کە منداڵان لە ھاوینا بۆی دەچن و وەرزش و چالاکی دیکە ئەنجام دەدەن"),
                          SentencesRow(
                            englishText:
                                "He spent two weeks at camp this summer.",
                            kurdishText:
                                "دوو ھەفتەی لە کامپ بەسەر برد ئەم ھاوینە.",
                            onPressedBritish: () => speakcamps3("en-GB"),
                            onPressedAmerican: () => speakcamps3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) شوێنێک کە بینای کاتی یان خێوەتە و حکومەت خەڵکی تێدا ڕادەگرێت"),
                          SentencesRow(
                            englishText:
                                "They criticized the appalling conditions in the refugee camps.",
                            kurdishText:
                                "سەرکۆنەی دۆخی تۆقێنەری کەمپی پەنابەرانیان کرد.",
                            onPressedBritish: () => speakcamps4("en-GB"),
                            onPressedAmerican: () => speakcamps4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) شوێنی ژیانی سەربازان لە کاتی جەنگ یان ڕاھێنان"),
                          SentencesRow(
                            englishText:
                                "The military built three new army camps near the German border.",
                            kurdishText:
                                "سوپا سێ کەمپی تازەی سەربازیی درووستکرد لە نزیک سنووری ئەڵمانیا.",
                            onPressedBritish: () => speakcamps5("en-GB"),
                            onPressedAmerican: () => speakcamps5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) کۆمەڵە کەسێک کە ھەمان بیرۆکەیان ھەیە و دژی ئەو کەسانەن کە بیرۆکەی تریان ھەیە"),
                          SentencesRow(
                            englishText: "We were in opposing camps.",
                            kurdishText: "لە دوو بەرەی جیاواز بووین.",
                            onPressedBritish: () => speakcamps6("en-GB"),
                            onPressedAmerican: () => speakcamps6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The region split into two armed camps.",
                            kurdishText:
                                "ھەرێمەکە بوو بە دوو کەرتی سەربازیی دژبەرەوە.",
                            onPressedBritish: () => speakcamps7("en-GB"),
                            onPressedAmerican: () => speakcamps7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (ناو) یەکێک لە لایەنەکانی ڕکابەرییەک"),
                          SentencesRow(
                            englishText:
                                "There was an air of confidence in the England camp.",
                            kurdishText:
                                "ڕواڵەتێکی خۆباوەڕی ھەبوو لە لایەنی ئینگلتەرە.",
                            onPressedBritish: () => speakcamps8("en-GB"),
                            onPressedAmerican: () => speakcamps8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) دانانی خێوەتێک و ژیان تێیدا بۆ ماوەیەک"),
                          SentencesRow(
                            englishText: "I camped overnight in a field.",
                            kurdishText: "شەو لە کێڵگەیەکدا کەمپم دانا.",
                            onPressedBritish: () => speakcamps9("en-GB"),
                            onPressedAmerican: () => speakcamps9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (کردار) چوون بۆ مانەوە لە کەمپ لەکاتی پشوودا"),
                          SentencesRow(
                            englishText:
                                "They go camping in France every year.",
                            kurdishText:
                                "ھەموو ساڵێک دەچن بۆ کەمپکردن لە فەرەنسا.",
                            onPressedBritish: () => speakcamps10("en-GB"),
                            onPressedAmerican: () => speakcamps10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) مانەوە لە ماڵی کەسێک بۆ ماوەیەکی کاتی"),
                          SentencesRow(
                            englishText:
                                "I'm camping out at a friend's apartment at the moment.",
                            kurdishText:
                                "لە ئێستادا لە دەستەژووری ھاوڕێیەکم دەمێنمەوە.",
                            onPressedBritish: () => speakcamps11("en-GB"),
                            onPressedAmerican: () => speakcamps11("en-US"),
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
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
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
- Noun: camp (derived forms: camps)
1. Temporary lodgings in the country for travellers or vacationers
"level ground is best for parking and camp areas"
 
2. (military) temporary living quarters specially built by the army for soldiers (= encampment, cantonment, bivouac)
"wherever he went in the camp the men were grumbling";

3. A group of people living together in a camp
"the whole camp laughed at his mistake"
 
4. An exclusive circle of people with a common purpose (= clique, coterie, ingroup, inner circle, pack)
 
5. A penal institution (often for forced labour)
"China has many camps for political prisoners"
 
6. Something that is considered amusing not because of its originality but because of its unoriginality
"the living room was pure camp"
 
7. Shelter for persons displaced by war or political oppression or for religious beliefs (= refugee camp)
 
8. A site where care and activities are provided for children during the summer months (= summer camp)
"city kids get to see the country at a summer camp";

- Verb: camp (derived forms: camped, camps, camping)
1. Live in or as if in a tent (= encamp, camp out, bivouac, tent, bivvy [informal], bivvy up [informal])
"Can we go camping again this summer?"; "The houseguests had to camp in the living room"; "Can we go camping out again this summer?";
 
2. Establish or set up a camp (= camp down)
 
3. [informal] Give an artificially banal or sexual quality to

- Adjective: camp (derived forms: camper, campest)
Usage: informal
1. Providing sophisticated amusement by virtue of having artificially (and vulgarly) mannered, banal or sentimental qualities (= campy [informal])
"they played up the silliness of their roles for camp effect";

2. Having unsuitable feminine qualities (= effeminate, emasculate, epicene, cissy [Brit, informal], sissified [informal], sissyish [informal], sissy [informal], campy [informal])
"a camp man";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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

  final String _videoId = '-HyHZsa79LU';
  final double _startSeconds = 355;

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

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 1590;

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

  final String _videoId = '_0RTH57v66I';
  final double _startSeconds = 49;

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

  final String _videoId = 'FgT3GCsJteA';
  final double _startSeconds = 100;

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

  final String _videoId = '-jDHmEpZpbI';
  final double _startSeconds = 138;

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

  final String _videoId = 'gE_uuJckDns';
  final double _startSeconds = 620;

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

  final String _videoId = 'zVpciPkBSgM';
  final double _startSeconds = 229;

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

  final String _videoId = 'V7CmawVRrC0';
  final double _startSeconds = 0;

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

  final String _videoId = 'QKrjcybCnJ8';
  final double _startSeconds = 470;

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

  final String _videoId = '2pGfxcZZNfE';
  final double _startSeconds = 684;

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

// end WORD_WEB
