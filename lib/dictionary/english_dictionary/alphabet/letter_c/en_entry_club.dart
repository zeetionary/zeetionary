import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryclub extends StatelessWidget {
  // blank divider
  EnglishEntryclub({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclub(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("club");
  }

  Future<void> speakclubs1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They belong to the same golf club.");
  }

  Future<void> speakclubs2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Grandad is a member of the bowling club.");
  }

  Future<void> speakclubs3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We had lunch at the golf club.");
  }

  Future<void> speakclubs4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The club have signed a new coach for next season.");
  }

  Future<void> speakclubs5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He is expected to sign for a Premier League club next season.");
  }

  Future<void> speakclubs6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I went to that new club that's just opened.");
  }

  Future<void> speakclubs7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He's a member of several London clubs.");
  }

  Future<void> speakclubs8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You could become a member of an investment club.");
  }

  Future<void> speakclubs9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The victim was clubbed to death with a baseball bat.");
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
                            EntryTitle(word: "club"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /klʌb/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclub("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /klʌb/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclub("en-US"),
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
کوردی: یانە، کۆڕ،	ناوەند، نێوەند، جەرگە، بنکە، مەکۆ، گاستین، یانەی شەوانە، تێڵا، داردەست، گۆپاڵ، تۆپز، کێتە، کوتەک، گورز
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) دامەزراوەیەک بۆ ئەو کەسانەی کە ھەمان خولیایان ھەیە یان چالاکییەک پێکەوە دەکەن"),
                          SentencesRow(
                            englishText: "They belong to the same golf club.",
                            kurdishText: "سەر بە ھەمان یانەی گۆڵفن.",
                            onPressedBritish: () => speakclubs1("en-GB"),
                            onPressedAmerican: () => speakclubs1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Grandad is a member of the bowling club.",
                            kurdishText: "باپیرە ئەندامی یانەیەکی بۆوڵینگە.",
                            onPressedBritish: () => speakclubs2("en-GB"),
                            onPressedAmerican: () => speakclubs2("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ئەو بینا یان ژوورانەی کە یانەیەک بەکاریدێنێت"),
                          SentencesRow(
                            englishText: "We had lunch at the golf club.",
                            kurdishText:
                                "نانی نیوەڕۆمان لە یانەی گۆڵفەکە خوارد.",
                            onPressedBritish: () => speakclubs3("en-GB"),
                            onPressedAmerican: () => speakclubs3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) یانەیەکی پڕۆفیشناڵی وەرزشی کە یاریزانان و ڕاھێنەر و بەڕێوبەران و خاوەنەکان لەخۆدەگرێت"),
                          SentencesRow(
                            englishText:
                                "The club have signed a new coach for next season.",
                            kurdishText:
                                "یانەکە ڕاھێنەرێکی تازەیان ھێناوە بۆ وەرزی تازە.",
                            onPressedBritish: () => speakclubs4("en-GB"),
                            onPressedAmerican: () => speakclubs4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He is expected to sign for a Premier League club next season.",
                            kurdishText:
                                "وا چاوەڕوان دەکرێت لە وەرزی دواتردا پەیوەندی بە یانەیەکی پریمەر لیگەوە بکات.",
                            onPressedBritish: () => speakclubs5("en-GB"),
                            onPressedAmerican: () => speakclubs5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) شوێنێک کە تێیدا کەسانی گەنج دەچن بۆ گوێگرتن لە گۆرانی، سەماکردن، بینینی کۆمیدی، ھتد"),
                          SentencesRow(
                            englishText:
                                "I went to that new club that's just opened.",
                            kurdishText:
                                "چووم بۆ ئەو یانە تازە کە تازەگی کراوەتەوە.",
                            onPressedBritish: () => speakclubs6("en-GB"),
                            onPressedAmerican: () => speakclubs6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) دامەزراوەیەک و شوێنێک کە خەڵکی بۆی دەچن بۆ چاوپێکەوتن و مانەوە"),
                          SentencesRow(
                            englishText:
                                "He's a member of several London clubs.",
                            kurdishText: "ئەندامی ژمارەیەک یانەی لەندەنە.",
                            onPressedBritish: () => speakclubs7("en-GB"),
                            onPressedAmerican: () => speakclubs7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) بازرگانییەک کە بە ھەرزان کاڵا بە ئەندامانی دەدات"),
                          SentencesRow(
                            englishText:
                                "You could become a member of an investment club.",
                            kurdishText:
                                "دەکرێت ببیت بە ئەندامی دەستەیەکی وەبەرھێنان.",
                            onPressedBritish: () => speakclubs8("en-GB"),
                            onPressedAmerican: () => speakclubs8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو، کردار) کوتەکێکی قورس؛ لێدان لە کەسێک بە کوتەک"),
                          SentencesRow(
                            englishText:
                                "The victim was clubbed to death with a baseball bat.",
                            kurdishText:
                                "قوربانییەکە بە دارێکی یاری بەیسبۆڵ بە کوتەک کوژرا.",
                            onPressedBritish: () => speakclubs9("en-GB"),
                            onPressedAmerican: () => speakclubs9("en-US"),
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
- Noun: club (derived forms: clubs)
1. A team of professional baseball players who play and travel together (= baseball club, ball club, nine)
"each club played six home games with teams in its own division";
 
2. A formal association of people with similar interests (= social club, society, guild, gild, lodge, order)
"he joined a golf club";
 
3. Stout stick that is larger at one end
"he carried a club in self defence"; "he felt as if he had been hit with a club"
 
4. A building that is occupied by a social club (= clubhouse)
"the club needed a new roof";
 
5. Golf equipment used by a golfer to hit a golf ball (= golf club, golf-club)
 
6. A playing card in the minor suit that has one or more black trefoils on it
"he led a small club"; "clubs were trumps"
 
7. A spot that is open late at night and that provides entertainment (as singers or dancers) as well as dancing and food and drink (= cabaret, nightclub, night club, nightspot)
"he played the drums at a jazz club"; "don't expect a good meal at a night club";

- Verb: club (derived forms: clubbed, clubbing, clubs)
1. Unite with a common purpose
"The two men clubbed together"
 
2. Gather and spend time together
"They always club together"
 
3. Strike with a club or a bludgeon (= bludgeon)
 
4. Gather into a club-like mass
"club hair"
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = '6haH4NLIOZ4';
  final double _startSeconds = 19;

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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'hcejpTayWv8';
  final double _startSeconds = 21;

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

  final String _videoId = 'hwFP---m65w';
  final double _startSeconds = 79;

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

  final String _videoId = '_ewShUU_MOc';
  final double _startSeconds = 354;

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

  final String _videoId = 'NdC5zVdUv1E';
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

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = '3CKKrSvUXd4';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'sa_8O-b6jRo';
  final double _startSeconds = 19;

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

  final String _videoId = 'O_8D9d5Bewk';
  final double _startSeconds = 58;

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

// end WORD_WEB