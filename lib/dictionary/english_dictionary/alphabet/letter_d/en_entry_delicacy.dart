import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydelicacy extends StatefulWidget {
  const EnglishEntrydelicacy({super.key});

  @override
  State<EnglishEntrydelicacy> createState() => _EnglishEntrydelicacyState();
}

class _EnglishEntrydelicacyState extends State<EnglishEntrydelicacy> {
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
    return const EntryTitle(word: "delicacy");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: delicacy");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdelɪkəsi/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdelicacy(String languageCode) async {
    // DOPSUM: CHANGE speakdelicacy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("delicacy");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdelicacy("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdelɪkəsi/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdelicacy(String languageCode) async {
    // DOPSUM: CHANGE speakdelicacy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("delicacy");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdelicacy("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdelicacys1(String languageCode) async {
    // DOPSUM: CHANGE speakdelicacy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her skin had the delicacy of a flower.");
  }

  Future<void> speakdelicacys2(String languageCode) async {
    // DOPSUM: CHANGE speakdelicacy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The eggs of this bird are considered a great delicacy.");
  }

  Future<void> speakdelicacys3(String languageCode) async {
    // DOPSUM: CHANGE speakdelicacy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These objects are very old and should be treated with great delicacy.");
  }

  Future<void> speakdelicacys4(String languageCode) async {
    // DOPSUM: CHANGE speakdelicacy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She handled the situation with great sensitivity and delicacy.");
  }

  Future<void> speakdelicacys5(String languageCode) async {
    // DOPSUM: CHANGE speakdelicacy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I need to talk to you about a matter of some delicacy.");
  }

  Future<void> speakdelicacys6(String languageCode) async {
    // DOPSUM: CHANGE speakdelicacy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In some parts of the world, sheep's eyes are considered a great delicacy.");
  }

  Future<void> speakdelicacys20(String languageCode) async {
    // DOPSUM: CHANGE speakdelicacy
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The eggs of this bird are considered a great delicacy.0");
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
کوردی: ناسکی، نەرمی، نیانی، نازداری، جوانی،	ھەستیاری، تیژی،	وردبوونەوە، خوردبوونەوە، سەرنج‌پێ‌دان،	ڕەوشت، ئەدەب،	ئارامی، مەندی، نیانی، لەسەرەخۆیی،	خۆشی، لەززەت، مەزە، شتی خۆش، چێشتی خۆش
"""),
          const DefinitionKurdish(text: "١. (ناو) ناسکی"),
          SentencesRow(
            englishText: "Her skin had the delicacy of a flower.",
            kurdishText: "پێستی ناسکی گوڵێکی بوو.", // delicacy
            onPressedBritish: () => speakdelicacys1("en-GB"),
            onPressedAmerican: () => speakdelicacys1("en-US"),
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The eggs of this bird are considered a great delicacy.",
            kurdishText: "ھێلکەی ئەم باڵندەیە بە زۆر ناسکی ناسراون.",
            onPressedBritish: () => speakdelicacys2("en-GB"),
            onPressedAmerican: () => speakdelicacys2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) کردن بە وریایی و ھێواشی"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "These objects are very old and should be treated with great delicacy.",
            kurdishText:
                "ئەم شتانە زۆر کۆنن و دەبێت بە وریایی زۆرەوە مامەڵەیان لەگەڵ بکرێت.",
            onPressedBritish: () => speakdelicacys3("en-GB"),
            onPressedAmerican: () => speakdelicacys3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) ھەڵسوکەوتی زۆر وریایانە لە دۆخێکی ھەستیاردا"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She handled the situation with great sensitivity and delicacy.",
            kurdishText: "بە ھەستیاری و لەسەرەخۆیی مامەڵەی لەگەڵ دۆخەکە کرد.",
            onPressedBritish: () => speakdelicacys4("en-GB"),
            onPressedAmerican: () => speakdelicacys4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ناو) ھەستیاری دۆخێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "I need to talk to you about a matter of some delicacy.",
            kurdishText: "دەبێت قسەت لەگەڵ بکەم لەسەر بابەتێکی کەمێک ھەستیار.",
            onPressedBritish: () => speakdelicacys5("en-GB"),
            onPressedAmerican: () => speakdelicacys5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ناو) جۆرە خواردنێک کە زۆر بە تایبەت دادەنرێت لە شوێنێکی دیاریکراودا"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "In some parts of the world, sheep's eyes are considered a great delicacy.",
            kurdishText:
                "لە ھەندێک ناوچەی جیھان، چاوی مەڕ بە چێشتێکی زۆر خۆش دادەنرێت.",
            onPressedBritish: () => speakdelicacys6("en-GB"),
            onPressedAmerican: () => speakdelicacys6("en-US"),
          ),
          // delicacys700"),
          // speakdelicacys7
          // delicacys7("en-US"),
          // delicacys800"),
          // speakdelicacys8
          // delicacys8("en-US"),
          // delicacys900"),
          // speakdelicacys9
          // delicacys9("en-US"),
          // delicacys1000"),
          // speakdelicacys10
          // delicacys10("en-US"),
          // delicacys1100"),
          // speakdelicacys11
          // delicacys11("en-US"),
          // delicacys1200"),
          // speakdelicacys12
          // delicacys12("en-US"),
          // delicacys1300"),
          // speakdelicacys13
          // delicacys13("en-US"),
          // delicacys1400"),
          // speakdelicacys14
          // delicacys14("en-US"),
          // delicacys1500"),
          // speakdelicacys15
          // delicacys15("en-US"),
          // delicacys1600"),
          // speakdelicacys16
          // delicacys16("en-US"),
          // delicacys1700"),
          // speakdelicacys17
          // delicacys17("en-US"),
          // delicacys1800"),
          // speakdelicacys18
          // delicacys18("en-US"),
          // delicacys1900"),
          // speakdelicacys19
          // delicacys19("en-US"),
          // "The eggs of this bird are considered a great delicacy.0"),
          // speakdelicacys20
          // delicacys20("en-US"),
          // delicacys2100"),
          // speakdelicacys21
          // delicacys21("en-US"),
          // delicacys2200"),
          // speakdelicacys22
          // delicacys22("en-US"),
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
- Noun: delicacy (derived forms: delicacies)
1. The quality of being beautiful and delicate in appearance (= daintiness, fineness)
"the delicacy of her touch";
 
2. Something considered choice to eat (= dainty, goody, kickshaw [archaic], treat)
 
3. Refined taste; tact (= discretion)
 
4. Slenderness (= slightness)
 
5. Lack of physical strength (= fragility)
 
6. Subtly skilful handling of a situation (= diplomacy, discreetness, finesse)
 
7. Lightness in movement or manner (= airiness)
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

  final String _videoId = 'mqR0MiRbBRQ';
  final double _startSeconds = 1043;

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

  final String _videoId = 'AAeRZX6ann8';
  final double _startSeconds = 408;

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

  final String _videoId = 'cZvMjkKCOd0';
  final double _startSeconds = 7;

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

  final String _videoId = 'czE24WQT7RE';
  final double _startSeconds = 246;

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

  final String _videoId = 'aX1vqZGgpBo';
  final double _startSeconds = 191;

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

  final String _videoId = 'yssNu8Eynb8';
  final double _startSeconds = 190;

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

  final String _videoId = 'sElsPrcgCao';
  final double _startSeconds = 443;

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