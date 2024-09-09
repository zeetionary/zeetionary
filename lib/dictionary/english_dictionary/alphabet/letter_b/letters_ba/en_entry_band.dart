import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "band" and provide three example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings.

// replace band - replace EnglishEntryband

// replace speakBand - /bænd/

enum TtsState { playing }

class EnglishEntryband extends StatelessWidget {
  EnglishEntryband({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakband(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("band");
  }

  Future<void> speakbands1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He plays drums in a band that he formed with some friends.");
  }

  Future<void> speakbands2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He persuaded a small band of volunteers to help.");
  }

  Future<void> speakbands3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("All babies in the hospital have name bands on their wrists.");
  }

  Future<void> speakbands4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The light had expanded in a broad band across the sky.");
  }

  Future<void> speakbands5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Short-wave radio uses the 20–50-metre band.");
  }

  Future<void> speakbands6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Which tax band do you fall into?");
  }

  Future<void> speakbands7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We banded the birds put bands around so that we could identify them later.");
  }

  Future<void> speakbands8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Tax is banded according to income.");
  }

  Future<void> speakbands9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBands99");
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
                            EntryTitle(word: "band"),
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bænd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakband("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bænd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakband("en-US"),
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
کوردی: باریکە، بەنۆکە، سیرمە، تیزماڵک، قایش، تەوق، بەند، بەست، شریت، تەسمە، پێ‌بەست، کۆمەڵ، دەستە، کۆڕ، تیپ، تاقم، سازبەند، دەستەیێکی چکۆلەی میوزیکژەنان کە میوزیکی پاپ، جاز و ڕاک کار دەکەن، دەستەی میوزیکژەنانی ئامێرە بایی (یان فوویی)، زەرد و پیاکێشانەکان، بوار یان مەودای شەپۆلە ڕادیۆیی‌یەکان، باندی شەپۆل، (ئەمریکا) ڕەوە، گەل، مێگەڵ، کەرک
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) کۆمەڵە میوزیکژەنێک کە لەگەڵ گۆرانیبێژێک یان زیاتر کاردەکەن"""),
                          SentencesRow(
                            englishText:
                                "He plays drums in a band that he formed with some friends.",
                            kurdishText:
                                "دومەڵەک لێدەدا لە باندێکدا کە لەگەڵ ژمارەیەک ھاوڕێی درووستیکرد.",
                            onPressedBritish: () => speakbands1("en-GB"),
                            onPressedAmerican: () => speakbands1("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) کۆمەڵە کەسێک کە پێکەوە کاردەکەن یان ھەمان بیرۆکەیان ھەیە"""),
                          SentencesRow(
                            englishText:
                                "He persuaded a small band of volunteers to help.",
                            kurdishText:
                                "دەستەیەکی بچوول لە خۆبەخشانی ڕازیکرد کە یارمەتی بدەن.",
                            onPressedBritish: () => speakbands2("en-GB"),
                            onPressedAmerican: () => speakbands2("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) پارچەیەک کە لە دەوری شتێک دەبەسترێت بۆ بەھێزکردنی یان ڕاگرتنی لە شوێنی خۆی"""),
                          SentencesRow(
                            englishText:
                                "All babies in the hospital have name bands on their wrists.",
                            kurdishText:
                                "ھەموو منداڵانی نەخۆشخانەکان تیزماڵکێکیان لە مەچەکە کە ناویانی لەسەر نووسراوە.",
                            onPressedBritish: () => speakbands3("en-GB"),
                            onPressedAmerican: () => speakbands3("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) ھێڵێک لە ڕەنگ یان مادە کە ڕەنگەکەی جیاوازە لەوەی دەورووبەری"""),
                          SentencesRow(
                            englishText:
                                "The light had expanded in a broad band across the sky.",
                            kurdishText:
                                "لایتەکە بە ھێڵێکی فراوان بە ئاسماندا بڵاوبووبوویەوە.",
                            onPressedBritish: () => speakbands4("en-GB"),
                            onPressedAmerican: () => speakbands4("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) شەپۆلی ڕادیۆیی"""),
                          SentencesRow(
                            englishText:
                                "Short-wave radio uses the 20–50-metre band.",
                            kurdishText:
                                "ڕادیۆی مەودا کورت شەپۆلی ٢٠-٥٠ مەتر بەکاردێنێت.",
                            onPressedBritish: () => speakbands5("en-GB"),
                            onPressedAmerican: () => speakbands5("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) کۆمەڵێکی جیاواز لە ژمارە، تەمەن، نرخ کە بە گەڕانەوە بۆیان خەڵکی دەژمێردرێن یان دەپێورێن"""),
                          SentencesRow(
                            englishText: "Which tax band do you fall into?",
                            kurdishText:
                                "سەر بە کام دەستەی باجدانی؟ (چەندە باج دەدەیت).",
                            onPressedBritish: () => speakbands6("en-GB"),
                            onPressedAmerican: () => speakbands6("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) دانانی پارچەیەکی ڕەنگ یان مادە جیاواز لە دەوری شتێک"""),
                          SentencesRow(
                            englishText:
                                "We banded the birds (= put bands around their legs) so that we could identify them later.",
                            kurdishText:
                                "تیزماڵکمان لە باڵندەکان ئاڵاند بۆ ئەوەی دواتر بیان ناسینەوە.",
                            onPressedBritish: () => speakbands7("en-GB"),
                            onPressedAmerican: () => speakbands7("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) دابەشکردن بۆ گرووپی جیاواز"""),
                          SentencesRow(
                            englishText: "Tax is banded according to income.",
                            kurdishText:
                                "باجدان دەستە دەستە دەکرێت بەپێی داھات.",
                            onPressedBritish: () => speakbands8("en-GB"),
                            onPressedAmerican: () => speakbands8("en-US"),
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
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
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
- Noun: band (derived forms: bands)
1. An unofficial association of people or groups (= set, circle, lot)
"the smart band goes there";

2. Instrumentalists not including string players
 
3. A stripe or stripes of contrasting colour (= banding, stria, striation)
"chromosomes exhibit characteristic bands";

4. An adornment consisting of a strip of a contrasting colour or material (= banding, stripe)
 
5. A group of musicians playing popular music for dancing (= dance band, dance orchestra)
 
6. A range of frequencies between two limits
 
7. A thin flat strip of flexible material that is worn around the body or one of the limbs (especially to decorate the body)
 
8. A cord-like tissue connecting two larger parts of an anatomical structure (= isthmus)
 
9. Jewellery consisting of a circlet of precious metal (often set with jewels) worn on the finger (= ring)
"he noted that she wore a wedding band";
 
10. A driving belt in machinery
 
11. A thin flat strip or loop of flexible material that goes around or over something else, typically to hold it together or as a decoration
 
12. A strip of material attached to the leg of a bird to identify it (as in studies of bird migration) (= ring)
 
13. A restraint put around something to hold it together
 
14. [Cdn] A group of aboriginals that has official recognition

- Verb: band (derived forms: banded, bands, banding)
1. Bind or tie together, as with a band
 
2. Attach a ring to the foot of, in order to identify (= ring)
"band the geese to observe their migratory patterns";
 
3. Form a group or unite (= band together, confederate)
"The groups banded together";
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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 1533;

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

  final String _videoId = '9sRQQRiltrE';
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

  final String _videoId = '7kZR_0nUdgM';
  final double _startSeconds = 10;

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

  final String _videoId = 'kcFAeW1DNvk';
  final double _startSeconds = 14;

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

  final String _videoId = 'xVvgi-w3kcQ';
  final double _startSeconds = 98;

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

  final String _videoId = 'RqYg52FF1zI';
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

  final String _videoId = 'KC_KUKlKouQ';
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

  final String _videoId = '55XJ1ObZKaM';
  final double _startSeconds = 765;

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

  final String _videoId = 'AwhBTrzzqeg';
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

  final String _videoId = 'XnbCSboujF4';
  final double _startSeconds = 365;

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

  final String _videoId = 'Bl5630CeYFs';
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

  final String _videoId = 'HxRUuGqqMG4';
  final double _startSeconds = 780;

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

// end band// TODO Implement this library.