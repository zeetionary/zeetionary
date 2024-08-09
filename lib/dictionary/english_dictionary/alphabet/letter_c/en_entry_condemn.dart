import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycondemn extends StatelessWidget {
// blank divider
  EnglishEntrycondemn({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcondemn(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("condemn");
  }

  Future<void> speakcondemns1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The government issued a statement condemning the killings.");
  }

  Future<void> speakcondemns2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She publicly condemned the deal.");
  }

  Future<void> speakcondemns3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The action has been widely condemned by human rights groups.");
  }

  Future<void> speakcondemns4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He was condemned to death for murder and later hanged.");
  }

  Future<void> speakcondemns5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She was condemned to hang for killing her husband.");
  }

  Future<void> speakcondemns6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was condemned to a life of hardship.");
  }

  Future<void> speakcondemns7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The meat was condemned as unfit to eat.");
  }

  Future<void> speakcondemns8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She is condemned out of her own mouth.");
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
                            EntryTitle(word: "condemn"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kənˈdem/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcondemn("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kənˈdem/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcondemn("en-US"),
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
کوردی: مەحکووم کردن، ڕیسوا بوون، لە قاودان، سەرکۆنە کردن، سەرشۆڕ کردن، ئیدانە کردن
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) سەرکۆنە کردنی شتێک؛ وتنی ئەوەی کە زۆر خراپە"),
                          SentencesRow(
                            englishText:
                                "The government issued a statement condemning the killings.",
                            kurdishText:
                                "حکومەت بەیاننامەیەکی بڵاوکردەوە و کوشتنەکانی ئیدانە کرد.", // condemn",
                            onPressedBritish: () => speakcondemns1("en-GB"),
                            onPressedAmerican: () => speakcondemns1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She publicly condemned the deal.",
                            kurdishText: "بە فەرمی ڕێککەوتنەکەی سەرکۆنە کرد.",
                            onPressedBritish: () => speakcondemns2("en-GB"),
                            onPressedAmerican: () => speakcondemns2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The action has been widely condemned by human rights groups.",
                            kurdishText:
                                "ھەنگاوەکە بە فراوانی لەلایەن گرووپەکانی مافی مرۆڤەوە سەرکۆنە کراوە.",
                            onPressedBritish: () => speakcondemns3("en-GB"),
                            onPressedAmerican: () => speakcondemns3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) سزادانی کەسێک"),
                          SentencesRow(
                            englishText:
                                "He was condemned to death for murder and later hanged.",
                            kurdishText:
                                "بە مەرگ سزادرا بۆ تاوانی کوشتن و دواتر ھەڵواسرا.",
                            onPressedBritish: () => speakcondemns4("en-GB"),
                            onPressedAmerican: () => speakcondemns4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She was condemned to hang for killing her husband.",
                            kurdishText:
                                "بە ھەڵواسین سزادرا بۆ کوشتنی ھاوسەرەکەی.",
                            onPressedBritish: () => speakcondemns5("en-GB"),
                            onPressedAmerican: () => speakcondemns5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) زۆرکردن لە کەسێک بۆ پەسەندکردنی دۆخێکی ناخۆش"),
                          SentencesRow(
                            englishText:
                                "He was condemned to a life of hardship.",
                            kurdishText: "ژیانێکی سەختێتیی بە سەردا سەپێنرا.",
                            onPressedBritish: () => speakcondemns6("en-GB"),
                            onPressedAmerican: () => speakcondemns6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) بە فەرمی گوتنی ئەوەی شتێک بۆ بەکارھێنان سەلامەت نییە"),
                          SentencesRow(
                            englishText:
                                "The meat was condemned as unfit to eat.",
                            kurdishText:
                                "گۆشتەکە بە ناتەندرووست بۆ خواردن دانرا.",
                            onPressedBritish: () => speakcondemns7("en-GB"),
                            onPressedAmerican: () => speakcondemns7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) وتن یان پیشاندانی ئەوەی کەسێک تاوانباری شتێکە"),
                          SentencesRow(
                            englishText:
                                "She is condemned out of her own mouth (= her own words show that she is guilty).",
                            kurdishText: "قسەکانی گەواھی تاوانباریی دەدەن.",
                            onPressedBritish: () => speakcondemns8("en-GB"),
                            onPressedAmerican: () => speakcondemns8("en-US"),
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
- Verb: condemn (derived forms: condemned, condemns, condemning)
1. Express strong disapproval of (= reprobate, decry, objurgate, excoriate)
"We condemn the racism in South Africa";
 
2. Declare or judge unfit for use or habitation
"The building was condemned by the inspector"
 
3. Compel or force into a particular state or activity
"His devotion to his sick wife condemned him to a lonely existence"
 
4. Demonstrate the guilt of (someone)
"Her strange behaviour condemned her"
 
5. (law) pronounce a sentence on (somebody) in a court of law (= sentence, doom)
"He was condemned to ten years in prison";
 
6. Appropriate (property) for public use
"the county condemned the land to build a highway"
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

  final String _videoId = 'xp4d3_abdiE';
  final double _startSeconds = 325;

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

  final String _videoId = 'WCITs2SDoVc';
  final double _startSeconds = 202;

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

  final String _videoId = 'Jw95MIATepo';
  final double _startSeconds = 81;

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

  final String _videoId = 'ARomrjtLTQU';
  final double _startSeconds = 321;

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

  final String _videoId = '3DxCHzPFbaU';
  final double _startSeconds = 48;

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

  final String _videoId = 'FQ4hvLqNfqo';
  final double _startSeconds = 1123;

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

  final String _videoId = 'y4DTW4B3Sjs';
  final double _startSeconds = 306;

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