import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "beam" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace beam - replace EnglishEntrybeam

// replace speakBeam - /biːm/

enum TtsState { playing }

class EnglishEntrybeam extends StatelessWidget {
// blank divider
  EnglishEntrybeam({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbeam(String languageCode) async {
    // DOPSUM: CHANGE speakBeam
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("beam");
  }

  Future<void> speakbeams1(String languageCode) async {
    // DOPSUM: CHANGE speakBeam
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The car's headlights were on full beam.");
  }

  Future<void> speakbeams2(String languageCode) async {
    // DOPSUM: CHANGE speakBeam
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was suddenly caught in the full beam of a searchlight.");
  }

  Future<void> speakbeams3(String languageCode) async {
    // DOPSUM: CHANGE speakBeam
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was a charming cottage with original beams and a thatched roof.");
  }

  Future<void> speakbeams4(String languageCode) async {
    // DOPSUM: CHANGE speakBeam
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The gymnast performed a somersault on the beam.");
  }

  Future<void> speakbeams5(String languageCode) async {
    // DOPSUM: CHANGE speakBeam
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The child's face lit up with a beam when she saw her grandparents.");
  }

  Future<void> speakbeams6(String languageCode) async {
    // DOPSUM: CHANGE speakBeam
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He beamed at the journalists.");
  }

  Future<void> speakbeams7(String languageCode) async {
    // DOPSUM: CHANGE speakBeam
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Live pictures of the ceremony were beamed around the world.");
  }

  Future<void> speakbeams8(String languageCode) async {
    // DOPSUM: CHANGE speakBeam
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The morning sun beamed down on us.");
  }

  Future<void> speakbeams9(String languageCode) async {
    // DOPSUM: CHANGE speakBeam
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBeams99");
  }

  Future<void> speakbeams10(String languageCode) async {
    // DOPSUM: CHANGE speakBeam
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBeams1010");
  }

  Future<void> speakbeams11(String languageCode) async {
    // DOPSUM: CHANGE speakBeam
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBeams1111");
  }

  Future<void> speakbeams12(String languageCode) async {
    // DOPSUM: CHANGE speakBeam
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBeams1212");
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
                            EntryTitle(word: "beam"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /biːm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbeam("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /biːm/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbeam("en-US"),
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
کوردی: کاریتە، نیرگە، بەرازە، تەژ، دیرەک، ماخ، ڕاژ(ە)، وڕەس، دەستەک، تیرک، ئاڵوودار، لادار، گرس، شاھین، باھو، دارتەرازوو، میلە، میل، تریشک، لیزگ، تیشک، تیرێژ، تیرۆژ، باریکە ڕووناکی، ھێڵە ڕۆشنایی، نیشانە یان ئاماژەی ڕادیۆیی یان ڕادارەکان (بۆ ڕێنوێنی کەشتی و فڕۆکەکان بەکاردێنرێ)، پانایی کەشتی، نیرگە یان کاریتەی کەشتی، بزە، پێکەنین، بسکە، زەردەخەنە، میلەی لەنگەر
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) ھێڵێک لە ڕۆشنایی، شەپۆلی کارۆموگناتیسی، یان تەنۆلکە"""),
                          SentencesRow(
                            englishText:
                                "The car's headlights were on full beam.",
                            kurdishText:
                                "لایتەکانی ئۆتۆمبێلەکە لەسەر عالی بوون.",
                            onPressedBritish: () => speakbeams1("en-GB"),
                            onPressedAmerican: () => speakbeams1("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "He was suddenly caught in the full beam of a searchlight.",
                            kurdishText:
                                "لەناکاو کەوتە بەر تیشکی پڕی شەوقاوێژێک.",
                            onPressedBritish: () => speakbeams2("en-GB"),
                            onPressedAmerican: () => speakbeams2("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) پارچەیەکی درێژ لە دار یان ئاسن کە بەکاردێت وەک ڕاگری بینایەک"""),
                          SentencesRow(
                            englishText:
                                "It was a charming cottage with original beams and a thatched roof.",
                            kurdishText:
                                "خانۆچکەیەکی دڵڕفێن بوو کە کاریتەی خۆی پێوەبوو لەگەڵ سەربانێکی ھەڵاش بەسەردا دراو.",
                            onPressedBritish: () => speakbeams3("en-GB"),
                            onPressedAmerican: () => speakbeams3("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) داری یاری جیمناستیکس کە یاریزانێک لەسەری دەجووڵێت و ھاوسەنگی ڕادەگرێت"""),
                          SentencesRow(
                            englishText:
                                "The gymnast performed a somersault on the beam.",
                            kurdishText:
                                "یاریزانی جیمناستیکەکە تەقڵەیەکی لێدا بەسەر دارەکەدا.",
                            onPressedBritish: () => speakbeams4("en-GB"),
                            onPressedAmerican: () => speakbeams4("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) پێکەنینێکی گەورە و خۆش"""),
                          SentencesRow(
                            englishText:
                                "The child's face lit up with a beam when she saw her grandparents.",
                            kurdishText:
                                "ڕووخساری منداڵەکە لە پێکەنیندا گەشایەوە کە باوانی بینی.",
                            onPressedBritish: () => speakbeams5("en-GB"),
                            onPressedAmerican: () => speakbeams5("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) پێکەن بە گەورە و خۆشی"""),
                          SentencesRow(
                            englishText: "He beamed at the journalists.",
                            kurdishText: "بە ڕۆژنامەنووسەکان پێکەنی.",
                            onPressedBritish: () => speakbeams6("en-GB"),
                            onPressedAmerican: () => speakbeams6("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) ناردنی شەپۆلی ڕادیۆیی و تەلەفیزیۆنی بۆ مەودات دوور"""),
                          SentencesRow(
                            englishText:
                                "Live pictures of the ceremony were beamed around the world.",
                            kurdishText:
                                "دیمەنی ڕاستەوخۆی ئاھەنگەکە بۆ تەواوی جیھان پەخشکرا.",
                            onPressedBritish: () => speakbeams7("en-GB"),
                            onPressedAmerican: () => speakbeams7("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) درووستکردنی تیشکێک لە ڕووناکی"""),
                          SentencesRow(
                            englishText: "The morning sun beamed down on us.",
                            kurdishText: "خۆری بەیانی تیشکی دا بەسەرماندا.",
                            onPressedBritish: () => speakbeams8("en-GB"),
                            onPressedAmerican: () => speakbeams8("en-US"),
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
                        YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
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
- Noun: beam (derived forms: beams)
1. A signal transmitted along a narrow path; guides aeroplane pilots in darkness or bad weather (= radio beam)
 
2. Long thick piece of wood, metal or concrete, etc., used in construction
 
3. A group of nearly parallel lines of electromagnetic radiation (= ray, electron beam)
 
4. A column of light (as from a beacon) (= beam of light, light beam, ray, ray of light, shaft, shaft of light, irradiation)
 
5. (nautical) breadth amidships
 
6. The broad side of a ship
"they sighted land on the port beam"
 
7. A gymnastic apparatus used by women gymnasts (= balance beam)

- Verb: beam (derived forms: beams, beaming, beamed)
1. Smile radiantly; express joy through one's facial expression
 
2. Emit light; be bright, as of the sun or a light (= shine)
"The fire beamed on their faces";
 
3. Express with a beaming face or smile
"he beamed his approval"
 
4. (broadcast medium) broadcast over the airwaves, as in radio or television (= air, send, broadcast, transmit)
"We cannot beam this X-rated song";
 
5. Have a complexion with a strong bright colour, such as red or pink (= glow, radiate, shine)
"Her face beamed when she came out of the sauna";
 
6. Experience a feeling of well-being or happiness, as from good health or an intense emotion (= glow, radiate, shine)
"She was beaming with joy";
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

  final String _videoId = 'cqidD7kVnxY';
  final double _startSeconds = 332;

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

  final String _videoId = '4I-p8vjQ95s';
  final double _startSeconds = 446;

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

  final String _videoId = 'aLRkxx3w51o';
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

  final String _videoId = 'fn--IVarumw';
  final double _startSeconds = 1235;

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

  final String _videoId = 'Xhb4gc_r0uU';
  final double _startSeconds = 260;

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

  final String _videoId = 'MzWfUK0yvdY';
  final double _startSeconds = 234;

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

  final String _videoId = 'pJU_bxv_150';
  final double _startSeconds = 957;

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

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'c4z6RZXv5p8';
  final double _startSeconds = 231;

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

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'bEhQ_nLeTmw';
  final double _startSeconds = 63;

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

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'FqnWEWYp9DU';
  final double _startSeconds = 137;

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

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'Yy-d5VVZlxQ';
  final double _startSeconds = 168;

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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'GtZCHeQiFNw';
  final double _startSeconds = 966;

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

// end beam// TODO Implement this library.