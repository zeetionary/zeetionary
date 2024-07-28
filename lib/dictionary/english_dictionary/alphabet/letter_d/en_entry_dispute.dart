import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydispute extends StatefulWidget {
  const EnglishEntrydispute({super.key});

  @override
  State<EnglishEntrydispute> createState() => _EnglishEntrydisputeState();
}

class _EnglishEntrydisputeState extends State<EnglishEntrydispute> {
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
    return const EntryTitle(word: "dispute");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dispute");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈspjuːt/,  /ˈdɪspjuːt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdispute(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dispute");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdispute("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈspjuːt/,  /ˈdɪspjuːt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdispute(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dispute");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdispute("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisputes1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The union is in dispute with management over working hours.");
  }

  Future<void> speakdisputes2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The cause of the accident was still in dispute.");
  }

  Future<void> speakdisputes3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("These are not the issues under dispute.");
  }

  Future<void> speakdisputes4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("These figures have been disputed.");
  }

  Future<void> speakdisputes5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The family wanted to dispute the will.");
  }

  Future<void> speakdisputes6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("No one is disputing that there is a problem.");
  }

  Future<void> speakdisputes7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The United Nations recognizes the area as a disputed territory.");
  }

  Future<void> speakdisputes8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The effectiveness of this treatment is still hotly disputed.");
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
کوردی: دان‌وستان، وت‌ووێژ، گفت‌وگۆ، گوت‌وبێژ،	مشت‌ومڕ، مشەرعێن، شەڕەچەلەحانێ، کێشمەکێش، قسەبەزۆران‌دان، کێشە، ململانێ، جوڕڕە، شەڕ، جیاوازی (بیروڕا) 
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) مشتومڕی نێوان دوو کەس، گرووپ، یان وڵات لەسەر شتێک کە ناکۆکن لەسەری"),
          SentencesRow(
            englishText:
                "The union is in dispute with management over working hours.",
            kurdishText:
                "سەندیکاکە لە مشتومڕدایە لەگەڵ بەڕێوەبەرایەتی سەبارەت بە کاتژمێرەکانی کارکردن.", // dispute
            onPressedBritish: () => speakdisputes1("en-GB"),
            onPressedAmerican: () => speakdisputes1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The cause of the accident was still in dispute (= being argued about).",
            kurdishText: "ھۆکاری ڕووداوەکە ھێشتا جێگای مشتومڕ بوو.",
            onPressedBritish: () => speakdisputes2("en-GB"),
            onPressedAmerican: () => speakdisputes2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "These are not the issues under dispute.",
            kurdishText: "ئەمانە بابەتی جێگای مشتومڕ نین.",
            onPressedBritish: () => speakdisputes3("en-GB"),
            onPressedAmerican: () => speakdisputes3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) گومانکردن لەوەی کە شتێک ڕاستە یان لەلایەنی یاساییەوە ڕاست یان پەسەندە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "These figures have been disputed.",
            kurdishText: "ئامارەکان تانەیان لێدراوە.",
            onPressedBritish: () => speakdisputes4("en-GB"),
            onPressedAmerican: () => speakdisputes4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The family wanted to dispute the will.",
            kurdishText: "خێزانەکە دەیانەوێت تانە لە وەسیەتنامەکە بدەن.",
            onPressedBritish: () => speakdisputes5("en-GB"),
            onPressedAmerican: () => speakdisputes5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "No one is disputing that there is a problem.",
            kurdishText: "ھیچ کەس ئەوە ڕەتناکاتەوە کە کێشەیەک ھەیە.",
            onPressedBritish: () => speakdisputes6("en-GB"),
            onPressedAmerican: () => speakdisputes6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) مشتومڕکردن لەگەڵ کەسێک سەبارەت بە شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "The United Nations recognizes the area as a disputed territory.",
            kurdishText:
                "نەتەوە یەکگرتووەکان ناوچەکە بە ناوچەی کێشەلەسەر دادەنێت.",
            onPressedBritish: () => speakdisputes7("en-GB"),
            onPressedAmerican: () => speakdisputes7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The effectiveness of this treatment is still hotly disputed.",
            kurdishText: "کاریگەریی ئەم چارەسەرە ھێشتا بەتوندی ناکۆکی لەسەرە.",
            onPressedBritish: () => speakdisputes8("en-GB"),
            onPressedAmerican: () => speakdisputes8("en-US"),
          ),
          // disputes900"),
          // speakdisputes9
          // disputes9("en-US"),
          // disputes_1000"),
          // speakdisputes10
          // disputes10("en-US"),
          // disputes1100"),
          // speakdisputes11
          // disputes11("en-US"),
          // disputes1200"),
          // speakdisputes12
          // disputes12("en-US"),
          // disputes1300"),
          // speakdisputes13
          // disputes13("en-US"),
          // disputes1400"),
          // speakdisputes14
          // disputes14("en-US"),
          // disputes1500"),
          // speakdisputes15
          // disputes15("en-US"),
          // disputes1600"),
          // speakdisputes16
          // disputes16("en-US"),
          // disputes1700"),
          // speakdisputes17
          // disputes17("en-US"),
          // disputes1800"),
          // speakdisputes18
          // disputes18("en-US"),
          // disputes1900"),
          // speakdisputes19
          // disputes19("en-US"),
          // disputes_2000"),
          // speakdisputes20
          // disputes20("en-US"),
          // disputes2100"),
          // speakdisputes21
          // disputes21("en-US"),
          // disputes2200"),
          // speakdisputes22
          // disputes22("en-US"),
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
- Verb: dispute (derived forms: disputed, disputes, disputing)
1. Question the truth or validity of; take exception to (= challenge, gainsay)
"She disputed his claims";
 
2. Have a disagreement over something (= quarrel, scrap, argufy, altercate, row)
 
3. Fight against or resist strongly (= fight, oppose, fight back, fight down, defend)
"Don't dispute it!";
 
4. [archaic] Stand up or offer resistance to somebody or something (= resist, hold out, withstand, stand firm)

- Noun: dispute (derived forms: disputes)
1. A disagreement or argument about something important (= difference, difference of opinion, conflict)
"he had a dispute with his wife";
 
2. Coming into conflict with (= contravention)
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

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 643;

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

  final String _videoId = 'lsbcN9-jU1Y';
  final double _startSeconds = 877;

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

  final String _videoId = 'TfaMLqEh1qM';
  final double _startSeconds = 195;

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

  final String _videoId = 'VNZ0so0LCoM';
  final double _startSeconds = 1214;

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

  final String _videoId = 'k6Q9DeyCo5Y';
  final double _startSeconds = 1210;

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

  final String _videoId = 'thR7IhHV554';
  final double _startSeconds = 590;

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

  final String _videoId = 'kBdfcR-8hEY';
  final double _startSeconds = 1860;

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