import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryair - replace speakAir - replace air - /eə(r)/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryair extends StatelessWidget {
  EnglishEntryair({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakair(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("air");
  }

  Future<void> speakair11524(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Let's go out for some fresh air.");
  }

  Future<void> speakair42112(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She was gasping for air as she ran out of the burning house.");
  }

  Future<void> speakair2133(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Wave your hands in the air!");
  }

  Future<void> speakair4144(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I kicked the ball high into the air.");
  }

  Future<void> speakair45666(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We watched as the helicopter took to the air.");
  }

  Future<void> speakair3544(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There was an air of complete confidence about her.");
  }

  Future<void> speakair58999(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Air the sheets well.");
  }

  Future<void> speakair49258(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Leave the window open to air the room.");
  }

  Future<void> speakair96354(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The issues were openly aired and discussed by the group.");
  }

  Future<void> speakair74952(String languageCode) async {
    // DOPSUM: CHANGE speakAir
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The program aired last week.");
  }

  // Future<void> speakair(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air");
  // }

  // Future<void> speakair(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air");
  // }

  // Future<void> speakair(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air");
  // }

  // Future<void> speakair(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air");
  // }

  // Future<void> speakair(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air");
  // }

  // Future<void> speakair(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air");
  // }

  // Future<void> speakair(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air");
  // }

  // Future<void> speakair(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air");
  // }

  // Future<void> speakair(String languageCode) async {
  //   // DOPSUM: CHANGE speakAir
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("air");
  // }

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
                            EntryTitle(word: "air"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /eə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakair("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /er/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakair("en-US"),
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
کوردی: ھەوا، دەم‌وچاو، ڕوو، سەکوت، شێوە، ڕواڵەت، کەش و ھەوا، کەش، شنەبا، سریوە، ھەوا، بەند، سۆزە، ئاواز، خۆنواندن، خۆنیشان‌دان
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) ھەوا؛ ئەو گازانەی کە لە بەرگەھەوای زەویدا ھەن"""),
                          SentencesRow(
                            englishText: "Let's go out for some fresh air.",
                            kurdishText: "با بچین ھەندێک ھەوای پاک ھەڵمژین.",
                            onPressedBritish: () => speakair11524("en-GB"),
                            onPressedAmerican: () =>
                                speakair11524("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She was gasping for air as she ran out of the burning house.",
                            kurdishText:
                                "ھەناسەبڕکێی بوو بۆ ھەوا کە لە خانووە سووتاوەکەوە ڕایکردە دەرەوە.",
                            onPressedBritish: () => speakair42112("en-GB"),
                            onPressedAmerican: () =>
                                speakair42112("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) بۆشایی؛ بۆشایی نێوان زەوی و ئاسمان"""),
                          SentencesRow(
                            englishText: "Wave your hands in the air!",
                            kurdishText: "دەست ڕاوەشێنە لە ھەوادا!",
                            onPressedBritish: () => speakair2133("en-GB"),
                            onPressedAmerican: () =>
                                speakair2133("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "I kicked the ball high into the air.",
                            kurdishText: "بەرز لە تۆپەکەم ھەڵدا بە ئاسماندا.",
                            onPressedBritish: () => speakair4144("en-GB"),
                            onPressedAmerican: () =>
                                speakair4144("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) ئاسمان کە فڕۆکە تێیدا دەفڕێت"""),
                          SentencesRow(
                            englishText:
                                "We watched as the helicopter took to the air.",
                            kurdishText:
                                "سەیرمان کرد کە ھەلیکۆپتەرەکە فڕییە ئاسمان.",
                            onPressedBritish: () => speakair45666("en-GB"),
                            onPressedAmerican: () =>
                                speakair45666("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) ڕواڵەت؛ شێوازی دەرکەوتنی شتێک یان کەسێک"""),
                          SentencesRow(
                            englishText:
                                "There was an air of complete confidence about her.",
                            kurdishText: "ڕواڵەتێکی تەواو خۆباوەڕی تێدا بوو.",
                            onPressedBritish: () => speakair3544("en-GB"),
                            onPressedAmerican: () =>
                                speakair3544("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) وشککردنەوەی جل"""),
                          SentencesRow(
                            englishText: "Air the sheets well.",
                            kurdishText: "پێخەفەکان باش وشک بکەوە.",
                            onPressedBritish: () => speakair58999("en-GB"),
                            onPressedAmerican: () =>
                                speakair58999("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) ڕێگەدان بە ھەوا بۆ ناو ژوورێک"""),
                          SentencesRow(
                            englishText:
                                "Leave the window open to air the room.",
                            kurdishText:
                                "پەنجەرەکە بە کراوەیی بھێڵەوە بۆ ئەوەی ھەوای پاک بێتە ژوورەکەوە.",
                            onPressedBritish: () => speakair49258("en-GB"),
                            onPressedAmerican: () =>
                                speakair49258("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) دەربڕینی بیروڕا"""),
                          SentencesRow(
                            englishText:
                                "The issues were openly aired and discussed by the group.",
                            kurdishText:
                                "بابەتەکان بە ڕاشکاوی دەربڕدران و گەنگەشە کران لەلایەن گرووپەکەوە.",
                            onPressedBritish: () => speakair96354("en-GB"),
                            onPressedAmerican: () =>
                                speakair96354("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) پەخشکردنی پڕۆگرامی تەلەفیزیۆنی یان ڕادیۆیی"""),
                          SentencesRow(
                            englishText: "The program aired last week.",
                            kurdishText: "پڕۆگرامەکە ھەفتەی ڕابردوو پێشکەشکرا.",
                            onPressedBritish: () => speakair74952("en-GB"),
                            onPressedAmerican: () =>
                                speakair74952("en-US"),
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
Noun: air (derived forms: airs)
1. A mixture of gases (especially oxygen) required for breathing; the stuff that the wind consists of
"air pollution"; "a smell of chemicals in the air"; "open a window and let in some air"; "I need some fresh air"
 
2. The region above the ground
"her hand stopped in mid air"; "he threw the ball into the air"
 
3. A distinctive but intangible quality surrounding a person or thing (= aura, atmosphere)
"an air of mystery"; "the house had a neglected air";
 
4. A slight wind (usually refreshing) (= breeze, zephyr, gentle wind)
"as he waited he could feel the air on his neck";
 
5. The mass of air surrounding the Earth (= atmosphere)
"it was exposed to the air";
 
6. A succession of notes forming a distinctive sequence (= tune, melody, strain, melodic line, line, melodic phrase)
"she was humming an air from Beethoven";
 
7. Medium for radio and television broadcasting (= airwave)
"the program was on the air from 9 til midnight";

8. Travel via aircraft (= air travel, aviation)
"air travel involves too much waiting in airports"; "if you've time to spare go by air";
 
9. [archaic] Once thought to be one of four elements composing the universe (Empedocles), associated with the humour blood

- Verb: air (derived forms: aired, airs, airing)
1. Expose to fresh air (= air out, aerate)
"air your old sneakers";
 
2. (broadcast medium) be broadcast
"This show will air Saturdays at 2 P.M."
 
3. (broadcast medium) broadcast over the airwaves, as in radio or television (= send, broadcast, beam, transmit)
"We cannot air this X-rated song";

4. Make public (= publicize, publicise [Brit], bare)
"She aired her opinions on welfare";

5. Expose to warm or heated air, so as to dry
"Air linen"
 
6. Let in fresh air to replace the current air (= vent, ventilate, air out)
"air the old winter clothes"; "air out the smoke-filled rooms";
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

  final String _videoId = 'k7YVxLLIuGM';
  final double _startSeconds = 108;

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

  final String _videoId = 'y0mfNWKBQp0';
  final double _startSeconds = 11;

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

  final String _videoId = '_-mBeYC2KGc';
  final double _startSeconds = 7;

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

  final String _videoId = 'lZgp3WLQjoE';
  final double _startSeconds = 986;

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

  final String _videoId = 'DPZzrlFCD_I';
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

  final String _videoId = 'DTvS9lvRxZ8';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'tK-tq3OfPF8';
  final double _startSeconds = 928;

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

  final String _videoId = 'e09xig209cQ';
  final double _startSeconds = 20;

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

  final String _videoId = 'EPmZolscz2M';
  final double _startSeconds = 540;

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

  final String _videoId = '1SO0uvexcew';
  final double _startSeconds = 71;

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

// end
