import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycycle extends StatefulWidget {
  const EnglishEntrycycle({super.key});

  @override
  State<EnglishEntrycycle> createState() => _EnglishEntrycycleState();
}

class _EnglishEntrycycleState extends State<EnglishEntrycycle> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                automaticallyImplyLeading: false,
                bottom: TabBar(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    VideoIconForTab(),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              const EnglishMeaning(),
              KurdishMeaning(),
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
  }
}

class EntryAndIPA extends StatelessWidget {
  const EntryAndIPA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TitleOfEntry(),
                ],
              ),
              // TitleOfEntryAlso(),
              IpaUK(),
              IpaUS(),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleOfEntry extends StatelessWidget {
  const TitleOfEntry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const EntryTitle(word: "cycle");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: cycle");
  }
}

class IpaUK extends StatelessWidget {
  const IpaUK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUK(),
        const IpaUKtext(),
      ],
    );
  }
}

class IpaUKtext extends StatelessWidget {
  const IpaUKtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUK: /ˈsaɪkl/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcycle(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cycle");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcycle("en-GB"),
    );
  }
}

class IpaUS extends StatelessWidget {
  const IpaUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUS(),
        const IpaUStext(),
      ],
    );
  }
}

class IpaUStext extends StatelessWidget {
  const IpaUStext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUS: /ˈsaɪkl/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcycle(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cycle");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcycle("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcycles1(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was riding his cycle home when he was hit by a lorry.");
  }

  Future<void> speakcycles2(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We went for a cycle ride on Sunday.");
  }

  Future<void> speakcycles3(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Lots of people arrived in cars or on cycles.");
  }

  Future<void> speakcycles4(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They completed their journey by cycle.");
  }

  Future<void> speakcycles5(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Every business goes through cycles.");
  }

  Future<void> speakcycles6(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The argument is that reprisals perpetuate the cycle of violence.");
  }

  Future<void> speakcycles7(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Life is a natural cycle, just like the changing seasons.");
  }

  Future<void> speakcycles8(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The European market is going through an economic cycle.");
  }

  Future<void> speakcycles9(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This cycle of events continually repeats itself.");
  }

  Future<void> speakcycles10(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("To complete the cycle, oxygen is necessary.");
  }

  Future<void> speakcycles11(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She waited for the washing machine's spin cycle to finish before transferring the clothes to the dryer.");
  }

  Future<void> speakcycles12(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I usually cycle home through the park.");
  }

  Future<void> speakcycles13(String languageCode) async {
    // DOPSUM: CHANGE speakcycle
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He cycles ten miles to and from work every day.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: سوور، خول، چەرخ، گەڕ، سووڕ یان چەرخی بە نۆرە،	کۆمەڵە، زنجیرە،	دووپێچکە، ڕەوڕەوە، چەرخ،	مۆتۆر (سیکلێت)،	(ئەستێرەوانی) سووڕگە، خولگە، خولگە یان بازنەیێکی وادانراوی ئاسمانی،	چەرخ و سەردەمێکی دوور و درێژ
"""),
          const DefinitionKurdish(text: "١. (ناو) پاسکیل یان ماتۆڕ"),
          SentencesRow(
            englishText:
                "He was riding his cycle home when he was hit by a lorry.",
            kurdishText:
                "دووچەرخەکەی دەڕانی بۆ ماڵەوە کە لۆرییەک لێیدا.", // cycle", please follow LX instructions
            onPressedBritish: () => speakcycles1("en-GB"),
            onPressedAmerican: () => speakcycles1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We went for a cycle ride on Sunday.",
            kurdishText: "چووین بۆ دووچەرخە ڕانینێک لە ڕۆژی یەکشەممەدا.",
            onPressedBritish: () => speakcycles2("en-GB"),
            onPressedAmerican: () => speakcycles2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Lots of people arrived in cars or on cycles.",
            kurdishText: "ژمارەیەکی زۆر خەڵکی گەشتن بە ئۆتۆمبێل یان دووچەرخە.",
            onPressedBritish: () => speakcycles3("en-GB"),
            onPressedAmerican: () => speakcycles3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They completed their journey by cycle.",
            kurdishText: "گەشتەکەیان بە دووچەرخە تەواو کرد.",
            onPressedBritish: () => speakcycles4("en-GB"),
            onPressedAmerican: () => speakcycles4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) دووبارەکردنەوەی زنجیرەیەک ڕووداو بە ژمارەیەکی زۆر و ھەمان ڕیزبەندی"),
          SentencesRow(
            englishText: "Every business goes through cycles.",
            kurdishText: "ھەموو بازرگانییەک بە ژمارەیەک سووڕدا تێدەپەڕێت.",
            onPressedBritish: () => speakcycles5("en-GB"),
            onPressedAmerican: () => speakcycles5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The argument is that reprisals perpetuate the cycle of violence.",
            kurdishText:
                "مشتومڕەکە ئەوەیە تۆڵەکردنەوە بەردەوامی دەدات بە سووڕی توندتوتیژی.",
            onPressedBritish: () => speakcycles6("en-GB"),
            onPressedAmerican: () => speakcycles6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Life is a natural cycle, just like the changing seasons.",
            kurdishText: "ژیان سووڕێکی سرووشتییە، ھەر وەکو گۆڕانی وەرزەکان.",
            onPressedBritish: () => speakcycles7("en-GB"),
            onPressedAmerican: () => speakcycles7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The European market is going through an economic cycle.",
            kurdishText: "بازاڕی ئەورووپا بە چەرخی ئابووریدا تێدەپەڕێت.",
            onPressedBritish: () => speakcycles8("en-GB"),
            onPressedAmerican: () => speakcycles8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "This cycle of events continually repeats itself.",
            kurdishText: "چەرخی ڕووداوەکان بەردەوام خۆیان دووبارە دەکەنەوە.",
            onPressedBritish: () => speakcycles9("en-GB"),
            onPressedAmerican: () => speakcycles9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "To complete the cycle, oxygen is necessary.",
            kurdishText: "بۆ تەواوکردنی سووڕەکە، ئۆکسجین.",
            onPressedBritish: () => speakcycles10("en-GB"),
            onPressedAmerican: () => speakcycles10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) زنجیرەیەکی تەواو"),
          SentencesRow(
            englishText:
                "She waited for the washing machine's spin cycle to finish before transferring the clothes to the dryer.",
            kurdishText:
                "چاوەڕێی تەواوبوونی خولانەوەی خلشۆرەکە بوو کە تەواو بێت بۆ ئەوەی جلەکان بگوازێتەوە بۆ وشککەرەوەکە.",
            onPressedBritish: () => speakcycles11("en-GB"),
            onPressedAmerican: () => speakcycles11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) ڕانینی پاسکیل"),
          SentencesRow(
            englishText: "I usually cycle home through the park.",
            kurdishText: "زۆرجار بە پارکەکەدا پاسکیل دەڕانمە ماڵەوە.",
            onPressedBritish: () => speakcycles12("en-GB"),
            onPressedAmerican: () => speakcycles12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He cycles ten miles to and from work every day.",
            kurdishText: "ھەموو ڕۆژێک ١٠ میل پاسکیل دەڕانێت بۆ سەر کار.",
            onPressedBritish: () => speakcycles13("en-GB"),
            onPressedAmerican: () => speakcycles13("en-US"),
          ),
        ],
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
- Noun: cycle (derived forms: cycles)
1. An interval during which a recurring sequence of events occurs (= rhythm, round)
"the never-ending cycle of the seasons";
 
2. A series of poems or songs on the same theme
"Schubert's song cycles"
 
3. A periodically repeated sequence of events
"a cycle of reprisal and retaliation"
 
4. The unit of frequency; one hertz has a periodic interval of one second (named for Heinrich Rudolph Hertz) (= hertz, Hz, cycle per second, cycles/second, cps, cycles per second)
 
5. A single complete execution of a periodically repeated phenomenon (= oscillation)
"a year constitutes a cycle of the seasons";
 
6. A wheeled vehicle that has two wheels and is moved by foot pedals (= bicycle, bike)

- Verb: cycle (derived forms: cycling, cycles, cycled)
1. Cause to go through a recurring sequence
"cycle the laundry in this washing program"
 
2. Pass through a cycle
"This machine automatically cycles"
 
3. Ride a motorcycle (= motorbike, motorcycle)
 
4. Ride a bicycle (= bicycle, bike, pedal, wheel)
 
5. Recur in repeating sequences
 
6. (electronics) turn the power off and back on
"Avoid cycling the device unnecessarily"
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

  final String _videoId = 'dtp6b76pMak';
  final double _startSeconds = 563;

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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'bHIhgxav9LY';
  final double _startSeconds = 552;

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

  final String _videoId = 'SrDEtSlqJC4';
  final double _startSeconds = 232;

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

  final String _videoId = 'wir7jmefyec';
  final double _startSeconds = 474;

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

  final String _videoId = 'yRmOWcWdQAo';
  final double _startSeconds = 989;

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

  final String _videoId = 'T48_SrFCdaQ';
  final double _startSeconds = 258;

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

  final String _videoId = '1j_k5WCFShQ';
  final double _startSeconds = 286;

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

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const YouTubeScroller(
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
    );
  }
}

// end WORD_WEB