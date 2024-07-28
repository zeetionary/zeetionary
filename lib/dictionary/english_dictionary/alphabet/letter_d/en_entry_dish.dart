import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydish extends StatefulWidget {
  const EnglishEntrydish({super.key});

  @override
  State<EnglishEntrydish> createState() => _EnglishEntrydishState();
}

class _EnglishEntrydishState extends State<EnglishEntrydish> {
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
    return const EntryTitle(word: "dish");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dish");
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
    return const IPAofEnglish(text: "IpaUK: /dɪʃ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdish(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dish");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdish("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪʃ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdish(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dish");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdish("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdishs1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Bake in a shallow dish for 45 mins.");
  }

  Future<void> speakdishs2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Arrange the salad in a dish.");
  }

  Future<void> speakdishs3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll do the dishes.");
  }

  Future<void> speakdishs4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("My first real job was washing dishes in a restaurant.");
  }

  Future<void> speakdishs5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He dried the dishes and put them away.");
  }

  Future<void> speakdishs6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This makes an excellent hot main dish.");
  }

  Future<void> speakdishs7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I decided to cook his favourite dish.");
  }

  Future<void> speakdishs8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Goulash is a meat dish.");
  }

  Future<void> speakdishs9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Serve one or two main dishes with salads.");
  }

  Future<void> speakdishs10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The soap dish keeps the soap dry and clean.");
  }

  Future<void> speakdishs11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What a dish!");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: قاپ، دەوری، کاسە، جام، بایە،	چێشت، نان، خۆراک،	ئانتێنی کاسەیی، سێڵ یان ساج،	نافەرمی تیکە، جەرگ، لەبار، سێکسی،	(تکنیکی) قاپ، جام، قاپ‌وکەوچک، قاپ‌وقاچاخ، ھێربار، حاجەت
"""),
          const DefinitionKurdish(text: "١. (ناو) دەوری خواردن"),
          SentencesRow(
            englishText: "Bake in a shallow dish for 45 mins.",
            kurdishText: "بۆ ٤٥ خولەک بیبرژێنە لە دەورییەکی کەم‌قووڵ.", // dish
            onPressedBritish: () => speakdishs1("en-GB"),
            onPressedAmerican: () => speakdishs1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Arrange the salad in a dish.",
            kurdishText: "زەڵاتەکە لە دەورییەکدا ڕێکبخە.",
            onPressedBritish: () => speakdishs2("en-GB"),
            onPressedAmerican: () => speakdishs2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) قاپ‌وقاچاغ کە پێویستە بشۆردرێت"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "I'll do the dishes (= wash them).",
            kurdishText: "من قاپەکان دەشۆم.",
            onPressedBritish: () => speakdishs3("en-GB"),
            onPressedAmerican: () => speakdishs3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "My first real job was washing dishes in a restaurant.",
            kurdishText:
                "یەکەم کاری ڕاستەقینەم شۆردنی قاپ‌وقاچاغ بوو لە چێشتخانەیەک.",
            onPressedBritish: () => speakdishs4("en-GB"),
            onPressedAmerican: () => speakdishs4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He dried the dishes and put them away.",
            kurdishText: "قاپەکانی وشککردەوە و لایبردن.",
            onPressedBritish: () => speakdishs5("en-GB"),
            onPressedAmerican: () => speakdishs5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) خواردنێک کە وەک بەشێک لە ژەمێک بە شێوەیەکی دیاریکراو ئامادەکراوە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "This makes an excellent hot main dish.",
            kurdishText: "ئەمە خواردنێکی سەرەکیی ناوازەی گەرم پێکدێنێت.",
            onPressedBritish: () => speakdishs6("en-GB"),
            onPressedAmerican: () => speakdishs6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I decided to cook his favourite dish.",
            kurdishText: "بڕیارمدا خواردنی دڵخوازی لێ بنێم.",
            onPressedBritish: () => speakdishs7("en-GB"),
            onPressedAmerican: () => speakdishs7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Goulash is a meat dish.",
            kurdishText: "گولاش خواردنێکی گۆشتییە.",
            onPressedBritish: () => speakdishs8("en-GB"),
            onPressedAmerican: () => speakdishs8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Serve one or two main dishes with salads.",
            kurdishText: "یەک یان دوو خواردنی سەرەکی لێ بنێ لەگەڵ زەڵاتە.",
            onPressedBritish: () => speakdishs9("en-GB"),
            onPressedAmerican: () => speakdishs9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) ھەر شتێک کە شێوەی وەک دەفرێکە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "The soap dish keeps the soap dry and clean.",
            kurdishText: "جێ‌سابوونەکە سابوونەکە بە وشکی و پاک دەھێڵێتەوە.",
            onPressedBritish: () => speakdishs10("en-GB"),
            onPressedAmerican: () => speakdishs10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) ژنێکی ورووژێنەر"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "What a dish!",
            kurdishText: "چی ورووژێنەرە!",
            onPressedBritish: () => speakdishs11("en-GB"),
            onPressedAmerican: () => speakdishs11("en-US"),
          ),
          // dishs1200"),
          // dishs12
          // dishs1300"),
          // dishs13
          // dishs1400"),
          // dishs14
          // dishs1500"),
          // dishs15
          // dishs1600"),
          // dishs16
          // dishs1700"),
          // dishs17
          // dishs1800"),
          // dishs18
          // dishs1900"),
          // dishs19
          // dishs_2000"),
          // dishs20
          // dishs2100"),
          // dishs21
          // dishs2200"),
          // dishs22("en-US"),
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
- Noun: dish (derived forms: dishes)
1. A shallow open container for holding or serving food
"we gave them a set of dishes for a wedding present"
 
2. A particular item of prepared food
"she prepared a special dish for dinner"
 
3. The quantity that a dish will hold (= dishful)
"they served me a dish of rice";
 
4. Directional antenna consisting of a parabolic reflector for microwave or radio frequency radiation (= dish aerial, dish antenna, saucer)
 
5. [informal] An activity that you like or at which you are superior (= bag [informal])
"marriage was scarcely his dish";
 
6. [Brit, informal] A sexually attractive person of either sex
 
7. [Brit, informal] A very attractive or seductive looking woman (= smasher [Brit, informal], stunner [informal], knockout [informal], beauty, ravisher, sweetheart, peach [informal], lulu [informal], looker [informal], mantrap [informal], patootie [US, informal], babe [informal], honey [informal], hotty [informal], fox [informal], hottie [informal])

- Verb: dish (derived forms: dishes, dishing, dished)
1. Provide (usually but not necessarily food) (= serve, serve up, dish out, dish up)
"She dished out the soup at 8 P.M."; "We dish up meals for the homeless";
 
2. Make concave; shape like a dish
 
3. [N. Amer, informal] Talk informally about someone else's private or personal business, esp. spreading negative or scandalous information even though it has not been confirmed to be true (= dish the dirt [informal], gossip)
"She won't dish the dirt";
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

  final String _videoId = 'UUQBvROVuXw';
  final double _startSeconds = 6;

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

  final String _videoId = 'DPZzrlFCD_I';
  final double _startSeconds = 50;

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

  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 1007;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 170;

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

  final String _videoId = '3cxHwQl9pNM';
  final double _startSeconds = 410;

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

  final String _videoId = 'roCX0AfBseQ';
  final double _startSeconds = 146;

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

  final String _videoId = 'AwhBTrzzqeg';
  final double _startSeconds = 311;

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