import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydepth extends StatefulWidget {
  const EnglishEntrydepth({super.key});

  @override
  State<EnglishEntrydepth> createState() => _EnglishEntrydepthState();
}

class _EnglishEntrydepthState extends State<EnglishEntrydepth> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
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
    return const EntryTitle(word: "depth");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: depth");
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
    return const IPAofEnglish(text: "IpaUK: /depθ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdepth(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("depth");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdepth("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /depθ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdepth(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("depth");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdepth("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdepths1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What's the depth of the water here?");
  }

  Future<void> speakdepths2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Water was found at a depth of 30 metres.");
  }

  Future<void> speakdepths3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They dug down to a depth of two metres.");
  }

  Future<void> speakdepths4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Many dolphins can dive to depths of 200 metres.");
  }

  Future<void> speakdepths5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The camera must be strong enough to resist the immense water pressure at depth.");
  }

  Future<void> speakdepths6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The depth of the shelves is 30 centimetres.");
  }

  Future<void> speakdepths7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The demonstration showed the depth of feeling against the war.");
  }

  Future<void> speakdepths8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("This film lacks the complexity or depth of his best movies.");
  }

  Future<void> speakdepths9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her paintings reveal hidden depths.");
  }

  Future<void> speakdepths10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His ideas lack depth.");
  }

  Future<void> speakdepths11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Younger students cannot be expected to have great depth of understanding.");
  }

  Future<void> speakdepths12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was in the depths of despair.");
  }

  Future<void> speakdepths13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He gazed into the depths of her eyes.");
  }

  Future<void> speakdepths20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Water was found at a depth of 30 metres.0");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: قووڵی، کویراھی، بەرینی، پانی، پانایی،	(تاریکی، ڕەنگەکان و ھتد) توندی، زۆری، تێری، تۆخی،	(دەنگ) بۆڕی،	توانایی تێگەیشتن یان لێکدانەوەی بیرۆکە گرانەکان، ئاوەز، ئەقڵ،	زۆری،	(زۆرتر بە شێوەی کۆ) قووڵایی، جەرگە، نێوەڕاست، چەق، مەیانە، دڵ، ناخ،	(بەفر و...) بارستایی، بەرزایی
"""),
          const DefinitionKurdish(
              text: "١. (ناو) دووری لە سەرەوە بۆ خوارەوەی شتێک"),
          SentencesRow(
            englishText: "What's the depth of the water here?",
            kurdishText: "قووڵی ئاوەکە لێرە چەندە؟",
            onPressedBritish: () => speakdepths1("en-GB"),
            onPressedAmerican: () => speakdepths1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Water was found at a depth of 30 metres.",
            kurdishText: "ئاو لە قوڵی ٣٠ مەتر دۆزرایەوە.",
            onPressedBritish: () => speakdepths2("en-GB"),
            onPressedAmerican: () => speakdepths2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They dug down to a depth of two metres.",
            kurdishText: "بۆ قووڵی دوو مەتر چاڵیان کەند.",
            onPressedBritish: () => speakdepths3("en-GB"),
            onPressedAmerican: () => speakdepths3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Many dolphins can dive to depths of 200 metres.",
            kurdishText: "زۆر دۆڵفین دەتوانن تا قوڵی ٢٠٠ مەتر بچنە خوارەوە.",
            onPressedBritish: () => speakdepths4("en-GB"),
            onPressedAmerican: () => speakdepths4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The camera must be strong enough to resist the immense water pressure at depth.",
            kurdishText:
                "کامێراکە دەبێت ھێندە بەھێز بێت کە بەرگەی قووڵی بگرێت.",
            onPressedBritish: () => speakdepths5("en-GB"),
            onPressedAmerican: () => speakdepths5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) دووری لە پێشەوە بۆ پاش"),
          SentencesRow(
            englishText: "The depth of the shelves is 30 centimetres.",
            kurdishText: "قووڵی ڕەفەکان ٣٠ سەنتیمەترە.",
            onPressedBritish: () => speakdepths6("en-GB"),
            onPressedAmerican: () => speakdepths6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) توانا و ھێزی ھەست"),
          SentencesRow(
            englishText:
                "The demonstration showed the depth of feeling against the war.",
            kurdishText: "خۆپیشاندانەکە قووڵی ھەستەکانی دژ بە جەنگەکە پیشاندا.",
            onPressedBritish: () => speakdepths7("en-GB"),
            onPressedAmerican: () => speakdepths7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) ئەو خاسیەتانەی کە وا لە کەسێک دەکات سەرنجڕاکێش بێت"),
          SentencesRow(
            englishText:
                "This film lacks the complexity or depth of his best movies.",
            kurdishText: "ئەم فیلمە ئاڵۆزی و قووڵی باشترین فیلمەکانیی نییە.",
            onPressedBritish: () => speakdepths8("en-GB"),
            onPressedAmerican: () => speakdepths8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Her paintings reveal hidden depths (= unknown and interesting things about her character).",
            kurdishText: "تابلۆکانی توانای شاراوە پیشان دەدەن.",
            onPressedBritish: () => speakdepths9("en-GB"),
            onPressedAmerican: () => speakdepths9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) ھەبوونی زانیاریی زۆر لەسەر شتێک"),
          SentencesRow(
            englishText: "His ideas lack depth.",
            kurdishText: "بیرۆکەکانی قووڵییان نییە.",
            onPressedBritish: () => speakdepths10("en-GB"),
            onPressedAmerican: () => speakdepths10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Younger students cannot be expected to have great depth of understanding.",
            kurdishText:
                "خوێندکارە گەنجەکان ناکرێت پێشبینییان لێ بکرێت توانای قووڵی تێگەشتنیان ھەبێت.",
            onPressedBritish: () => speakdepths11("en-GB"),
            onPressedAmerican: () => speakdepths11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ناو) قووڵترین بەش"),
          SentencesRow(
            englishText: "She was in the depths of despair.",
            kurdishText: "لە قووڵایی نەھامەتیدا بوو.",
            onPressedBritish: () => speakdepths12("en-GB"),
            onPressedAmerican: () => speakdepths12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He gazed into the depths of her eyes.",
            kurdishText: "ڕوانی لە قووڵایی چاوی.",
            onPressedBritish: () => speakdepths13("en-GB"),
            onPressedAmerican: () => speakdepths13("en-US"),
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
- Noun: depth (derived forms: depths)
1. The extent downward, backward or inward (= deepness)
"depth of a shelf"; "the depth of the water";
 
2. Degree of psychological or intellectual profundity
 
3. (usually plural) a low moral state
"he had sunk to the depths of addiction"
 
4. The intellectual ability to penetrate deeply into ideas (= astuteness, profundity, profoundness, deepness)
 
5. The attribute or quality of being deep, strong, or intense
"the depth of his breathing"; "the depth of his sighs"; "the depth of his emotion"
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

  final String _videoId = 'yjhibJ-OqxE';
  final double _startSeconds = 267;

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

  final String _videoId = 'UuGpm01SPcA';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'FT3ODSg1GFE';
  final double _startSeconds = 82;

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

  final String _videoId = 'g-7ZWPCWv0U';
  final double _startSeconds = 494;

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

  final String _videoId = 'dtp6b76pMak';
  final double _startSeconds = 173;

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

  final String _videoId = '6N5l0sgPP5k';
  final double _startSeconds = 84;

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

  final String _videoId = 'a9m3GD0DbPY';
  final double _startSeconds = 2189;

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