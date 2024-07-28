import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydislike extends StatefulWidget {
  const EnglishEntrydislike({super.key});

  @override
  State<EnglishEntrydislike> createState() => _EnglishEntrydislikeState();
}

class _EnglishEntrydislikeState extends State<EnglishEntrydislike> {
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
    return const EntryTitle(word: "dislike");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dislike");
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
    return const IPAofEnglish(text: "IpaUK: /dɪsˈlaɪk/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdislike(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dislike");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdislike("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪsˈlaɪk/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdislike(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dislike");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdislike("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdislikes1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Why do you dislike him so much?");
  }

  Future<void> speakdislikes2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She disliked her boss intensely.");
  }

  Future<void> speakdislikes3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There are very few foods that I actively dislike.");
  }

  Future<void> speakdislikes4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I dislike being away from my family.");
  }

  Future<void> speakdislikes5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He disliked her staying away from home.");
  }

  Future<void> speakdislikes6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He disliked it when she behaved badly in front of his mother.");
  }

  Future<void> speakdislikes7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What did you dislike about the movie?");
  }

  Future<void> speakdislikes8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He did not try to hide his dislike of his boss.");
  }

  Future<void> speakdislikes9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They could barely conceal their dislike for each other.");
  }

  Future<void> speakdislikes10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("My father has a great dislike of long hair on boys.");
  }

  Future<void> speakdislikes11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She had a deep dislike for Robert's wife.");
  }

  Future<void> speakdislikes12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I've told you all my likes and dislikes.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: ناخۆش‌ویستن، ڕق‌لێ‌بوون، قین‌لێ‌بوون، چاوپێ‌ھەڵنەھاتن
"""),
          const DefinitionKurdish(text: "١. (کردار) حەزنەکردن لە شتێک"),
          SentencesRow(
            englishText: "Why do you dislike him so much?",
            kurdishText: "بۆچی ھێندە ڕقت لێیەتی؟", // dislike
            onPressedBritish: () => speakdislikes1("en-GB"),
            onPressedAmerican: () => speakdislikes1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She disliked her boss intensely.",
            kurdishText: "تەواو ڕقی لە سەرپەرشتیارەکەیەتی.",
            onPressedBritish: () => speakdislikes2("en-GB"),
            onPressedAmerican: () => speakdislikes2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "There are very few foods that I actively dislike.",
            kurdishText: "کەم خواردن ھەیە کە بەڕشتی ڕقم لێی بێت.",
            onPressedBritish: () => speakdislikes3("en-GB"),
            onPressedAmerican: () => speakdislikes3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I dislike being away from my family.",
            kurdishText: "ڕقم لە دووربوون لە خێزانەکەمە.",
            onPressedBritish: () => speakdislikes4("en-GB"),
            onPressedAmerican: () => speakdislikes4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He disliked her staying away from home.",
            kurdishText: "ڕقی لە دووری ئەو لە ماڵ بوو.",
            onPressedBritish: () => speakdislikes5("en-GB"),
            onPressedAmerican: () => speakdislikes5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He disliked it when she behaved badly in front of his mother.",
            kurdishText:
                "ڕقی لەوە بوو کە بە ناشرینی لە پێش دایکی ڕەفتاری دەکرد.",
            onPressedBritish: () => speakdislikes6("en-GB"),
            onPressedAmerican: () => speakdislikes6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "What did you dislike about the movie?",
            kurdishText: "ڕقت لە چی فیلمەکە بوو؟",
            onPressedBritish: () => speakdislikes7("en-GB"),
            onPressedAmerican: () => speakdislikes7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) نەبوونی حەزکردن لە کەسێک/شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "He did not try to hide his dislike of his boss.",
            kurdishText: "ھەوڵی نەدا ڕقی بۆ سەرپەرشتیارەکەی بشارێتەوە.",
            onPressedBritish: () => speakdislikes8("en-GB"),
            onPressedAmerican: () => speakdislikes8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "They could barely conceal their dislike for each other.",
            kurdishText: "بە ئەستەم دەیانتوانی ڕقیان بۆ یەکدی بشارنەوە.",
            onPressedBritish: () => speakdislikes9("en-GB"),
            onPressedAmerican: () => speakdislikes9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "My father has a great dislike of long hair on boys.",
            kurdishText: "دایکم ڕقی زۆری لە قژی درێژی کوڕانە.",
            onPressedBritish: () => speakdislikes10("en-GB"),
            onPressedAmerican: () => speakdislikes10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She had a deep dislike for Robert's wife.",
            kurdishText: "ڕقێکی زۆری ھەبوو بۆ ژنەکەی ڕۆبێرت.",
            onPressedBritish: () => speakdislikes11("en-GB"),
            onPressedAmerican: () => speakdislikes11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) شتێک کە حەزت لێی نییە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "I've told you all my likes and dislikes.",
            kurdishText: "ھەموو ئەو شتانەم پێ گوتووی کە حەزم پێیانە یان نا.",
            onPressedBritish: () => speakdislikes12("en-GB"),
            onPressedAmerican: () => speakdislikes12("en-US"),
          ),
          // dislikes1300"),
          // dislikes13("en-US"),
          // dislikes1400"),
          // dislikes14("en-US"),
          // dislikes1500"),
          // dislikes15("en-US"),
          // dislikes1600"),
          // dislikes16("en-US"),
          // dislikes1700"),
          // dislikes17("en-US"),
          // dislikes1800"),
          // dislikes18("en-US"),
          // dislikes1900"),
          // dislikes19("en-US"),
          // dislikes_2000"),
          // dislikes20("en-US"),
          // dislikes2100"),
          // dislikes21("en-US"),
          // dislikes2200"),
          // dislikes22("en-US"),
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
- Verb: dislike (derived forms: disliked, dislikes, disliking)
1. Not like; have a feeling of aversion or antipathy towards something or someone (= disrelish [archaic])
"I really dislike this salesman";

- Noun: dislike (derived forms: dislikes)
1. An inclination to withhold approval from some person or group (= disfavor [US], disfavour [Brit, Cdn], disapproval)
 
2. A feeling of aversion or antipathy 
"my dislike of him was instinctive"
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

  final String _videoId = 'mY3SEMTROas';
  final double _startSeconds = 245;

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

  final String _videoId = 'CaaJyRvvaq8';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'hOUGNGWmN0k';
  final double _startSeconds = 684;

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

  final String _videoId = 'PmlRbfSavbI';
  final double _startSeconds = 323;

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

  final String _videoId = 'lUHTTWaagC8';
  final double _startSeconds = 580;

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

  final String _videoId = 'wRNYoWFjmEc';
  final double _startSeconds = 793;

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

  final String _videoId = 'ht7MNqZT_hU';
  final double _startSeconds = 314;

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