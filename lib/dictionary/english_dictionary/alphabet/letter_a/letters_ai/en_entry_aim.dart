import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryaim - replace speakAim - replace aim - /eɪm/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryaim extends StatelessWidget {
  EnglishEntryaim({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakaim(String languageCode) async {
    // DOPSUM: CHANGE speakAim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("aim");
  }

  Future<void> speakaim86555(String languageCode) async {
    // DOPSUM: CHANGE speakAim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We should aim for a bigger share of the market.");
  }

  Future<void> speakaim475699(String languageCode) async {
    // DOPSUM: CHANGE speakAim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The government is aiming at a 50% reduction in unemployment.");
  }

  Future<void> speakaim456933(String languageCode) async {
    // DOPSUM: CHANGE speakAim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("These measures are aimed at preventing violent crime.");
  }

  Future<void> speakaim5283(String languageCode) async {
    // DOPSUM: CHANGE speakAim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My criticism wasn't aimed at you.");
  }

  Future<void> speakaim371595446(String languageCode) async {
    // DOPSUM: CHANGE speakAim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I was aiming at the tree but hit the car by mistake.");
  }

  Future<void> speakaim78562(String languageCode) async {
    // DOPSUM: CHANGE speakAim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His sole aim in life is to enjoy himself.");
  }

  Future<void> speakaim46011635(String languageCode) async {
    // DOPSUM: CHANGE speakAim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her aim was good and she hit the lion with her first shot.");
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
                            EntryTitle(word: "aim"), // Find /eɪm/
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /eɪm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakaim("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /eɪm/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakaim("en-US"),
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
کوردی: دۆز، ئامانج، مەبەست، مەبەس، نیشانەگرتن، سێرەگرتن، سێرەگیری
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (کردار) ھەوڵدان بۆ بەدەستھێنانی شتێک"""),
                          SentencesRow(
                            englishText:
                                "We should aim for a bigger share of the market.",
                            kurdishText:
                                "دەبێت ئامانجمان پشکێکی زیاتری بازاڕ بێت.",
                            onPressedBritish: () => speakaim86555("en-GB"),
                            onPressedAmerican: () =>
                                speakaim86555(// REPLACE: aim /eɪm/
                                    "en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The government is aiming at a 50% reduction in unemployment.",
                            kurdishText:
                                "حکومەت ئامانجیەتی بە ڕێژەی ٥٠٪ بێکاری کەمبکاتەوە.",
                            onPressedBritish: () => speakaim475699("en-GB"),
                            onPressedAmerican: () =>
                                speakaim475699(// REPLACE: aim /eɪm/
                                    "en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) ھەبوونی شتێک وەک ئامانج"""),
                          SentencesRow(
                            englishText:
                                "These measures are aimed at preventing violent crime.",
                            kurdishText:
                                "ئەم ڕێکارانە ئامانجیانە تاوانی توندوتیژی کەمبکەنەوە.",
                            onPressedBritish: () => speakaim456933("en-GB"),
                            onPressedAmerican: () =>
                                speakaim456933(// REPLACE: aim /eɪm/
                                    "en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) وتن یان کردنی شتێک بە ئامانجی کارلێککردن"""),
                          SentencesRow(
                            englishText: "My criticism wasn't aimed at you.",
                            kurdishText: "ڕەخنەکانم ڕوو لە تۆ نەبوون.",
                            onPressedBritish: () => speakaim5283("en-GB"),
                            onPressedAmerican: () =>
                                speakaim5283(// REPLACE: aim /eɪm/
                                    "en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) ڕووکردنی چەک، کامێرا، بۆکس، یان شتێکی تر لە کەسێک/شتێک"""),
                          SentencesRow(
                            englishText:
                                "I was aiming at the tree but hit the car by mistake.",
                            kurdishText:
                                "ئامانجم لە دارەکە گرتەوە، بەڵام بە ھەڵە لە ئۆتۆمبێلەکەم دا.",
                            onPressedBritish: () => speakaim371595446("en-GB"),
                            onPressedAmerican: () =>
                                speakaim371595446(// REPLACE: aim /eɪm/
                                    "en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) ئامانج، شتێک کە ھەوڵی بەدەستھێنانی دەدەیت"""),
                          SentencesRow(
                            englishText:
                                "His sole aim in life is to enjoy himself.",
                            kurdishText:
                                "تەنھا ئامانجی لە ژیان ئەوە بوو خۆشی لە خۆی ببینێت.",
                            onPressedBritish: () => speakaim78562("en-GB"),
                            onPressedAmerican: () =>
                                speakaim78562(// REPLACE: aim /eɪm/
                                    "en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) شارەزایی لە ئامانجگرتنەوە بە چەک"""),
                          SentencesRow(
                            englishText:
                                "Her aim was good and she hit the lion with her first shot.",
                            kurdishText:
                                "ئامانجگرتنەکەی باش بوو و بە یەکەم لێدان لە شێرەکەی دا.",
                            onPressedBritish: () => speakaim46011635("en-GB"),
                            onPressedAmerican: () =>
                                speakaim46011635(// REPLACE: aim /eɪm/
                                    "en-US"),
                          ),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(), // DOPSUM: FROM_YOUTUBE_BELOW
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        // YoutubeEmbeddedeleven(),
                        // YoutubeEmbeddedtwelve(),
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
- Verb: aim (derived forms: aimed, aiming, aims)
1. Point or cause to go (blows, weapons, or objects such as photographic equipment) towards (= take, train, take aim, direct)
"Please don't aim at your little brother!";
 
2. Have as a plan or objective (= purpose, purport, propose, intend)
"I aim to arrive at noon";
 
3. Move into a desired direction of discourse (= drive, get)
"What are you aiming at?";
 
4. Specifically design a product, event, or activity for a certain public (= calculate, direct)
 
5. Intend (something) to move towards a certain goal, or direct to a specific place or group of people (= target, place, direct, point)
"He aimed his fists towards his opponent's face";

6. Direct (a remark) toward an intended goal
"She wanted to aim a pun"
 
7. Have an ambitious plan or a lofty goal (= draw a bead on, aspire, shoot for)
"The students in medical schools aim to be doctors";

- Noun: aim (derived forms: aims)
1. An anticipated outcome that is intended or that guides your planned actions (= purpose, intent, intention, design)
"it was created with the conscious aim of answering immediate needs";

2. The goal intended to be attained (and which is believed to be attainable) (= object, objective, target)
"the sole aim of her trip was to see her children";

3. The action of directing something at an object
"he took aim and fired"

4. The direction or path along which something moves or along which it lies (= bearing, heading)
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

  final String _videoId = 'HB0CZ_5sPPw';
  final double _startSeconds = 714;

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

  final String _videoId = 'c2v7mbq6hVs';
  final double _startSeconds = 155;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1114;

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

  final String _videoId = '_RSojioTtUU';
  final double _startSeconds = 317;

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

  final String _videoId = 'r5RjuhqQSec';
  final double _startSeconds = 607;

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

  final String _videoId = 'RgRSW3JvSYo';
  final double _startSeconds = 159;

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

  final String _videoId = 'kVwp-BfarxI';
  final double _startSeconds = 219;

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

  final String _videoId = 'MzSktgpfD84';
  final double _startSeconds = 885;

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

  final String _videoId = '_0RTH57v66I';
  final double _startSeconds = 616;

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

  final String _videoId = 'PbKYAks6044';
  final double _startSeconds = 1056;

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

// end
