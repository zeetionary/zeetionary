import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrychain extends StatelessWidget {
  // blank divider
  EnglishEntrychain({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchain(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("chain");
  }

  Future<void> speakchains1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She wore a gold chain around her neck.");
  }

  Future<void> speakchains2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The prisoners were kept in chains.");
  }

  Future<void> speakchains3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Let the dog off its chain.");
  }

  Future<void> speakchains4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Volunteers formed a human chain to rescue precious items from the burning house.");
  }

  Future<void> speakchains5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "It's important to make sure the chain of communication is not broken.");
  }

  Future<void> speakchains6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This hotel is part of a large chain.");
  }

  Future<void> speakchains7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "At last the country has freed itself from the chains of the authoritarian regime.");
  }

  Future<void> speakchains8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The doors were always locked and chained.");
  }

  Future<void> speakchains9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He was beaten in his cell while in handcuffs and with his legs chained.");
  }

  Future<void> speakchains10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She chained her bicycle to the gate.");
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
                            EntryTitle(word: "chain"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: chain/tʃeɪn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchain("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: chain/tʃeɪn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchain("en-US"),
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
کوردی: زنجیر، زریزە، کۆت‌وبەند، کۆت‌وزنجیر، کۆت‌وپێوەند، زنجیرە، لیزگە، بەندەڵەبەند، ڕەچە، ڕست، ڕیزە، پاوەن، پێوەن، پێبەن، زنجیری ڕووپێوی
"""),
                          const DefinitionKurdish(text: "١. (ناو) زنجیر"),
                          SentencesRow(
                            englishText:
                                "She wore a gold chain around her neck.",
                            kurdishText: "زنجیرێکی ئاڵتوونی لە ملی بەستبوو.",
                            onPressedBritish: () => speakchains1("en-GB"),
                            onPressedAmerican: () => speakchains1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The prisoners were kept in chains (= with chains around their arms and legs, to prevent them from escaping).",
                            kurdishText: "زیندانییەکان بە زنجیر کۆتکرابوون.",
                            onPressedBritish: () => speakchains2("en-GB"),
                            onPressedAmerican: () => speakchains2("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Let the dog off its chain.",
                            kurdishText: "زنجیرەکە لە سەگەکە بکەوە.",
                            onPressedBritish: () => speakchains3("en-GB"),
                            onPressedAmerican: () => speakchains3("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ژمارەیەک شت یان کەس کە پێکەوە بەندن"),
                          SentencesRow(
                            englishText:
                                "Volunteers formed a human chain (= line of people) to rescue precious items from the burning house.",
                            kurdishText:
                                "خۆبەخشان ڕیزێک لە مرۆڤیان درووستکردبوو بۆ ڕزگارکردنی کەرەستەی بەھادار لە ماڵە سووتاوەکە.",
                            onPressedBritish: () => speakchains4("en-GB"),
                            onPressedAmerican: () => speakchains4("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "It's important to make sure the chain of communication is not broken.",
                            kurdishText:
                                "گرنگە دڵنیایی بکرێتەوە کە ھێڵی پەیوەندی ناپچڕێت.",
                            onPressedBritish: () => speakchains5("en-GB"),
                            onPressedAmerican: () => speakchains5("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ژمارەیەک شت، بۆ نموونە سوپەرمارکێت یان ھوتێل، کە لەلایەن یەک کۆمپانیاوە خاوەنداری دەکرێن"),
                          SentencesRow(
                            englishText: "This hotel is part of a large chain.",
                            kurdishText:
                                "ئەم ھوتێلە بەشێکە لە زنجیرەیەکی گەورە.",
                            onPressedBritish: () => speakchains6("en-GB"),
                            onPressedAmerican: () => speakchains6("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) شتێک کە ئازادی کەسێک سنووردار دەکات"),
                          SentencesRow(
                            englishText:
                                "At last the country has freed itself from the chains of the authoritarian regime.",
                            kurdishText:
                                "لە کۆتاییدا وڵاتەکە خۆی ڕزگارکرد لە کۆتوبەندی ڕژێمە سەرکوتکەرەکە.",
                            onPressedBritish: () => speakchains7("en-GB"),
                            onPressedAmerican: () => speakchains7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (کردار) بەستنەوەی شتێک/کەسێک بە زنجیر"),
                          SentencesRow(
                            englishText:
                                "The doors were always locked and chained.",
                            kurdishText:
                                "دەرگاکان ھەموو کات قفڵ و زنجیر کرابوون.",
                            onPressedBritish: () => speakchains8("en-GB"),
                            onPressedAmerican: () => speakchains8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "He was beaten in his cell while in handcuffs and with his legs chained.",
                            kurdishText:
                                "لە بەندیخانەکەیدا لێیدرا لەکاتێکدا دەستبەستراو و لاقەکانی زنجیرکرابوون.",
                            onPressedBritish: () => speakchains9("en-GB"),
                            onPressedAmerican: () => speakchains9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "She chained her bicycle to the gate.",
                            kurdishText: "پاسکیلەکەیی بەست بە دەروازەکەوە.",
                            onPressedBritish: () => speakchains10("en-GB"),
                            onPressedAmerican: () => speakchains10("en-US"),
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
                        YoutubeEmbeddedeight(), //
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
- Noun: chain (derived forms: chains)
1. A series of things depending on each other as if linked together (= concatenation)
"the chain of command";

2. (chemistry) a series of linked atoms (generally in an organic molecule) (= chemical chain)
 
3. A series of (usually metal) rings or links fitted into one another to make a flexible ligament
 
4. (business) a number of similar establishments (stores, restaurants, banks, hotels or theatres) under one ownership
 
5. Anything that acts as a restraint
 
6. A unit of length
 
7. A series of hills or mountains (= range, mountain range, range of mountains, mountain chain, chain of mountains)
"the valley was between two chains of hills";
 
8. A linked or connected series of objects
"a chain of daisies"
 
9. A necklace made by stringing objects together (= string, strand)
"a chain of beads";

- Verb: chain (derived forms: chained, chaining, chains)
1. Connect or arrange into a chain by linking
 
2. Fasten or secure with chains
"Chain the chairs together"

- Noun: Chain 
1. British biochemist (born in Germany) who isolated and purified penicillin, which had been discovered in 1928 by Sir Alexander Fleming (1906-1979) (= Ernst Boris Chain, Sir Ernst Boris Chain)
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'uhdu_vMe9Pg';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '9pT04M5iGH8';
  final double _startSeconds = 60;

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

  final String _videoId = '3mf6qRY0Syo';
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

  final String _videoId = '88tDcVvS7mU';
  final double _startSeconds = 38;

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

  final String _videoId = 'nGvfeoJJnVE';
  final double _startSeconds = 16;

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

  final String _videoId = 'rPe4yziWiOg';
  final double _startSeconds = 438;

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

  final String _videoId = 'pFEB0chiuJA';
  final double _startSeconds = 182;

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

  final String _videoId = 'W0zW71lW62E';
  final double _startSeconds = 293;

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

  final String _videoId = 'P4tDxQby99A';
  final double _startSeconds = 328;

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
