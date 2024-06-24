import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycompany extends StatelessWidget {
// blank divider
  EnglishEntrycompany({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcompany(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("company");
  }

  Future<void> speakcompanys1(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It is the world's largest software company.");
  }

  Future<void> speakcompanys2(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She runs her own TV production company.");
  }

  Future<void> speakcompanys3(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Smoking in the workplace is against company policy.");
  }

  Future<void> speakcompanys4(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Company profits were 5 per cent lower than last year.");
  }

  Future<void> speakcompanys5(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He has shares in several companies.");
  }

  Future<void> speakcompanys6(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She's been working for the same company for 15 years.");
  }

  Future<void> speakcompanys7(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She joined the company in 2009.");
  }

  Future<void> speakcompanys8(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I enjoy Jo's company.");
  }

  Future<void> speakcompanys9(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She enjoys her own company when she is travelling.");
  }

  Future<void> speakcompanys10(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's coming with me for company.");
  }

  Future<void> speakcompanys11(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I didn't realize you had company.");
  }

  Future<void> speakcompanys12(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We're expecting company this afternoon.");
  }

  Future<void> speakcompanys13(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Those children don't know how to behave in company.");
  }

  Future<void> speakcompanys14(String languageCode) async {
    // DOPSUM: CHANGE speakcompany
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It's not the type of joke you'd tell in mixed company.");
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
                            EntryTitle(word: "company"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkʌmpəni/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcompany("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkʌmpəni/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcompany("en-US"),
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
کوردی: ڕفێقایەتی، دۆستایەتی، دراو، ڕەفێق، ھاوڕێ، دۆست،	میوان، میوانان،	دۆستان، ناسیاوان، دەستە، کۆڕ، تیپ، گروپ،	کۆڕی شانۆ یان ھونەری،	کۆمپانی، کۆمپانیا، نێوکۆیی، شیرکەت،	(سەربازی) بڕەک، پەل، دەستە،	(کەشتی) کارکەران
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) دامەزراوەیەکی بازرگانی کە قازانج دەکات بە کڕین و فرۆشتنی کەلوپەل و خزمەتگوزاری"),
                          SentencesRow(
                            englishText:
                                "It is the world's largest software company.",
                            kurdishText:
                                "گەورەترین کۆمپانیای نەرمامێرە لە جیھاندا.", // company",
                            onPressedBritish: () => speakcompanys1("en-GB"),
                            onPressedAmerican: () => speakcompanys1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She runs her own TV production company.",
                            kurdishText:
                                "کۆمپانیای بەرھەمھێنانی تەلەفیزیۆنی خۆی بەڕێوەدەبات.",
                            onPressedBritish: () => speakcompanys2("en-GB"),
                            onPressedAmerican: () => speakcompanys2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Smoking in the workplace is against company policy.",
                            kurdishText:
                                "جگەرەکێشان لە شوێنی کار دژی ڕێساکانی کۆمپانیایە.",
                            onPressedBritish: () => speakcompanys3("en-GB"),
                            onPressedAmerican: () => speakcompanys3("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Company profits were 5 per cent lower than last year.",
                                    kurdishText:
                                        "قازانجەکانی کۆمپانیا پێنج لە سەد کەمتربوو وەک لە ساڵی پار.",
                                    onPressedBritish: () =>
                                        speakcompanys4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompanys4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He has shares in several companies.",
                                    kurdishText:
                                        "پشكی لە ژمارەیەک کۆمپانیا ھەیە.",
                                    onPressedBritish: () =>
                                        speakcompanys5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompanys5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She's been working for the same company for 15 years.",
                                    kurdishText:
                                        "بۆ ١٥ ساڵە بۆ ھەمان کۆمپانیا کاردەکات.",
                                    onPressedBritish: () =>
                                        speakcompanys6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompanys6("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "She joined the company in 2009.",
                                    kurdishText:
                                        "لە ساڵی ٢٠٠٩ چووە کۆمپانیاکە.",
                                    onPressedBritish: () =>
                                        speakcompanys7("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompanys7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) لەگەڵ کەسێک بوون وەک لەوەی تەنھا بیت"),
                          SentencesRow(
                            englishText:
                                "I enjoy Jo's company (= I enjoy being with her).",
                            kurdishText: "حەز دەکەم لەگەڵ جۆو بم.",
                            onPressedBritish: () => speakcompanys8("en-GB"),
                            onPressedAmerican: () => speakcompanys8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She enjoys her own company (= being by herself) when she is travelling.",
                            kurdishText: "حەز دەکات تەنھا بێت کە گەشت دەکات.",
                            onPressedBritish: () => speakcompanys9("en-GB"),
                            onPressedAmerican: () => speakcompanys9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "He's coming with me for company.",
                            kurdishText: "لەگەڵمدا دێت بۆ ھاوەڵی.",
                            onPressedBritish: () => speakcompanys10("en-GB"),
                            onPressedAmerican: () => speakcompanys10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٣. (ناو) میوانی ماڵ"),
                          SentencesRow(
                            englishText: "I didn't realize you had company.",
                            kurdishText: "نەمزانی میوانت ھەیە.",
                            onPressedBritish: () => speakcompanys11("en-GB"),
                            onPressedAmerican: () => speakcompanys11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "We're expecting company this afternoon.",
                            kurdishText: "ئەم نیوەڕۆیە چاوەڕێی میوانین.",
                            onPressedBritish: () => speakcompanys12("en-GB"),
                            onPressedAmerican: () => speakcompanys12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) کۆمەڵێک کەس کە پێکەوەن"),
                          SentencesRow(
                            englishText:
                                "Those children don't know how to behave in company.",
                            kurdishText:
                                "ئەو منداڵانە نازانن چۆن ڕەفتار بکەن لەگەڵ کەسانی دیکە.",
                            onPressedBritish: () => speakcompanys13("en-GB"),
                            onPressedAmerican: () => speakcompanys13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It's not the type of joke you'd tell in mixed company (= in a group of people of both sexes).",
                            kurdishText:
                                "ئەو لەو گاڵتانەی نییە لە پێش کەسانی دیکە بیکەیت.",
                            onPressedBritish: () => speakcompanys14("en-GB"),
                            onPressedAmerican: () => speakcompanys14("en-US"),
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
- Noun: company (derived forms: companies)
1. An institution created to conduct business
"he only invests in large well-established companies"; "he started the company in his garage"
 
2. (military) small military unit; usually two or three platoons
 
3. The state of being with someone (= companionship, fellowship, society)
"he missed their company";
 
4. Organization of performers and associated personnel (especially theatrical) (= troupe)
"the travelling company all stayed at the same hotel";
 
5. A social or business visitor (= caller)
"the room was a mess because he hadn't expected company";
 
6. A social gathering of guests or companions
"the house was filled with company when I arrived"
 
7. A band of people associated temporarily in some activity (= party, posse [informal])
"the company of cooks walked into the kitchen";
 
8. Crew of a ship including the officers; the whole force or personnel of a ship (= ship's company)
 
9. A unit of firefighters including their equipment
"a hook-and-ladder company"

- Verb: company (derived forms: companied, companying, companies)
1. Be a companion to somebody (= companion, accompany, keep company)
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

  final String _videoId = 'j-zCKl_eda4';
  final double _startSeconds = 469;

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

  final String _videoId = 'i7ILviehDvw';
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

  final String _videoId = 'Vx5AHPhLzpc';
  final double _startSeconds = 76;

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

  final String _videoId = 'M56U4NMiiqg';
  final double _startSeconds = 28;

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

  final String _videoId = 'qDg_3eqssig';
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

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = '6bLjKi6UAW4';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = '1rzFyBdKLvU';
  final double _startSeconds = 242;

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

// end WORD_WEB