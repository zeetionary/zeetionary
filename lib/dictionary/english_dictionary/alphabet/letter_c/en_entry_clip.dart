import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryclip extends StatelessWidget {
  // blank divider
  EnglishEntryclip({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclip(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("clip");
  }

  Future<void> speakclips1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Here is a clip from her latest movie.");
  }

  Future<void> speakclips2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You will see in this clip how well she acts.");
  }

  Future<void> speakclips3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The documentary began with a clip from the President's inauguration speech.");
  }

  Future<void> speakclips4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She put a clip in her hair.");
  }

  Future<void> speakclips5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He gave the hedge a clip.");
  }

  Future<void> speakclips6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She gave him a clip round the ear for being cheeky.");
  }

  Future<void> speakclips7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He clipped the microphone (on) to his collar.");
  }

  Future<void> speakclips8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Clip the pages together.");
  }

  Future<void> speakclips9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He clipped off a piece of wire with the pliers.");
  }

  Future<void> speakclips10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The car clipped the kerb as it turned.");
  }

  Future<void> speakclips11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She clipped the ball into the net.");
  }

  Future<void> speakclips12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I clipped the picture out of the newspaper.");
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
                            EntryTitle(word: "clip"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /klɪp/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclip("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /klɪp/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclip("en-US"),
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
کوردی: گیرە، گیرگە، بەست، تەوقە،	دەرزی، گوڵی سەرسنگ،	خەشاب، بڕینەوە، ھەڵپاچین، پەڕتاوتن، کورت‌کردنەوە،	بەربرینگ (ئەو بڕە خوری‌یەی کە بە جارێ بڕدراوەتەوە)،	زللە، شەپڵاخە،	مشت،	تیکە، بڕشت، بڕگە (فیلم)،	ھەنگاو یا جووڵەی توند و خێرا، ڕاتڵەکان
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) کورتە ڤیدیۆیەک لە فیلمێک"),
                          SentencesRow(
                            englishText:
                                "Here is a clip from her latest movie.",
                            kurdishText:
                                "ئەمە کلیپێکە لە کۆتا فیلمی.", // clip",
                            onPressedBritish: () => speakclips1("en-GB"),
                            onPressedAmerican: () => speakclips1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "You will see in this clip how well she acts.",
                            kurdishText:
                                "لەم کلیپەدا دەیبینیت چەندە باش نمایش دەکات.",
                            onPressedBritish: () => speakclips2("en-GB"),
                            onPressedAmerican: () => speakclips2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The documentary began with a clip from the President's inauguration speech.",
                            kurdishText:
                                "فیلمە بەڵگەنامەییەکە بە کورتە ڤیدیۆیەکی وتاری دەستبەکاربوونی سەرۆک دەست پێ‌دەکات.",
                            onPressedBritish: () => speakclips3("en-GB"),
                            onPressedAmerican: () => speakclips3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) پارچە پلاستیکێکی بچووک کە بۆ ڕاگرتنی شت بەکاردێت، یان بۆ جوانکاری بە جلوبەرگەوە"),
                          SentencesRow(
                            englishText: "She put a clip in her hair.",
                            kurdishText: "تەوقەیەکی لە قژی بەست.",
                            onPressedBritish: () => speakclips4("en-GB"),
                            onPressedAmerican: () => speakclips4("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) بڕینی شتێک بۆ کورتکردنەوەی"),
                          SentencesRow(
                            englishText: "He gave the hedge a clip.",
                            kurdishText: "ھەڵپاچینێکی پەرژینەکەی کرد.",
                            onPressedBritish: () => speakclips5("en-GB"),
                            onPressedAmerican: () => speakclips5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) لێدانێکی خێرا بە دەست"),
                          SentencesRow(
                            englishText:
                                "She gave him a clip round the ear for being cheeky.",
                            kurdishText:
                                "شەپازلەیەکی کێشا بە بنگوێیدا بۆ ڕوودارییەکەی.",
                            onPressedBritish: () => speakclips6("en-GB"),
                            onPressedAmerican: () => speakclips6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) بەستنی شتێک بە شتێکی ترەوە بە "),
                          SentencesRow(
                            englishText:
                                "He clipped the microphone (on) to his collar.",
                            kurdishText: "مایکرۆفۆنەکەی بەست بە یەقەیەوە.",
                            onPressedBritish: () => speakclips7("en-GB"),
                            onPressedAmerican: () => speakclips7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Clip the pages together.",
                            kurdishText: "پەڕەکان ببەستە بە یەکەوە.",
                            onPressedBritish: () => speakclips8("en-GB"),
                            onPressedAmerican: () => speakclips8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) بڕینەوە، بۆ نموونە بە مەقەس، بۆ کورتکردنەوە یان ڕێککردنەوە"),
                          SentencesRow(
                            englishText:
                                "He clipped off a piece of wire with the pliers.",
                            kurdishText: "بە پلایس پارچە وایەرێکی لێکردەوە.",
                            onPressedBritish: () => speakclips9("en-GB"),
                            onPressedAmerican: () => speakclips9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) لێدان لە قەراغ یان لای شتێک"),
                          SentencesRow(
                            englishText:
                                "The car clipped the kerb as it turned.",
                            kurdishText:
                                "ئۆتۆمبێلەکە کێشای بە قەراغەکەدا کە پێچیکردەوە.",
                            onPressedBritish: () => speakclips10("en-GB"),
                            onPressedAmerican: () => speakclips10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She clipped the ball into the net.",
                            kurdishText: "تۆپەکەی خستە ناو تۆڕەکەوە.",
                            onPressedBritish: () => speakclips11("en-GB"),
                            onPressedAmerican: () => speakclips11("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) لێکردنەوەی شتێک لە شتێکی تر بە مەقەس"),
                          SentencesRow(
                            englishText:
                                "I clipped the picture out of the newspaper.",
                            kurdishText: "وێنەکەی لە ڕۆژنامەکە لێکردەوە.",
                            onPressedBritish: () => speakclips12("en-GB"),
                            onPressedAmerican: () => speakclips12("en-US"),
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
- Noun: clip (derived forms: clips)
1. A metal frame or container holding ammunition that feeds a repeating firearm (= cartridge holder, cartridge clip, magazine)
 
2. An instance or single occasion for some event (= time)
"he could do ten at a clip";
 
3. Any of various small fasteners used to hold loose articles together
 
4. An article of jewellery that can be clipped onto a hat or dress
 
5. The act of clipping or snipping (= clipping, snip)
 
6. A sharp slanting blow
"he gave me a clip on the ear"

- Verb: clip (derived forms: clips, clipping, clipped)
1. Cut or sever by pinching or cutting with small strokes of scissors, pruning shears, etc. (= nip, nip off, snip, snip off)
"clip off the flowers";
 
2. Run at a moderately swift pace (= trot, jog)
 
3. Attach with a clip
"clip the papers together"
 
4. Cultivate, tend, and cut back the growth of (= snip, crop, trim, lop, dress, prune, cut back)
"clip the plants in the garden";
 
5. Terminate or abbreviate before its intended or proper end or its full extent (= curtail, cut short)
"Personal freedom is clipped in many countries";
 
6. (computing) discard data outside a specific range of values, or assign out-of-range values to the nearest value in range; remove parts of an image etc. outside a given area
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

  final String _videoId = 'k6CPzwkwZEw';
  final double _startSeconds = 46;

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

  final String _videoId = 'MNQueQvMA3k';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'f_KQPoTIhKg';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'k7MXH55q28U';
  final double _startSeconds = 3;

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

  final String _videoId = '8HadWolMBdw';
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

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'nMhoJRsHD_w';
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

  final String _videoId = '7IphkCpqfj8';
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

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'nvO_Wr5_uTQ';
  final double _startSeconds = 18;

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