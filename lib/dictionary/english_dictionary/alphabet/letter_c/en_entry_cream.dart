import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycream extends StatefulWidget {
  const EnglishEntrycream({super.key});

  @override
  State<EnglishEntrycream> createState() => _EnglishEntrycreamState();
}

class _EnglishEntrycreamState extends State<EnglishEntrycream> {
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
              // const TitleOfEntryAlso(),
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
    return const EntryTitle(word: "cream");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: cream");
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
    return const IPAofEnglish(text: "IpaUK: /kriːm/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcream(String languageCode) async {
    // DOPSUM: CHANGE speakcream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cream");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcream("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kriːm/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcream(String languageCode) async {
    // DOPSUM: CHANGE speakcream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("cream");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcream("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcreams1(String languageCode) async {
    // DOPSUM: CHANGE speakcream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We had strawberries and cream for dessert.");
  }

  Future<void> speakcreams2(String languageCode) async {
    // DOPSUM: CHANGE speakcream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I asked for two coffees with cream.");
  }

  Future<void> speakcreams3(String languageCode) async {
    // DOPSUM: CHANGE speakcream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I prefer a light chocolate cream for my desserts.");
  }

  Future<void> speakcreams4(String languageCode) async {
    // DOPSUM: CHANGE speakcream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Put a little antiseptic cream on the grazed skin.");
  }

  Future<void> speakcreams5(String languageCode) async {
    // DOPSUM: CHANGE speakcream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Do you have this blouse in cream?");
  }

  Future<void> speakcreams6(String languageCode) async {
    // DOPSUM: CHANGE speakcream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The cream of this year's graduates have gone abroad for jobs.");
  }

  Future<void> speakcreams7(String languageCode) async {
    // DOPSUM: CHANGE speakcream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The walls were cream and the ceiling was painted white.");
  }

  Future<void> speakcreams8(String languageCode) async {
    // DOPSUM: CHANGE speakcream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cream the butter and sugar together.");
  }

  Future<void> speakcreams9(String languageCode) async {
    // DOPSUM: CHANGE speakcream
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We got creamed in the first round.");
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
کوردی: سەرشیر، توێشکە، توێژ(اڵ)، سەرتوێ، قەیماخ،	کرێم (دەم‌وچاو)،	مەڵھەم، مەرھەم،	ڕەنگی سپی مەیلەو زەرد،	ھەڵبژاردە، سەرتۆپ، سەرگوڵ، باشترین بەش،	غوڕابی توێشکەدار
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) شلەی سپی یان زەردی کاڵ کە بەرزدەبێتەوە بۆ سەر شیر و لە خواردن درووستکردندا بەکاردێت"),
          SentencesRow(
            englishText: "We had strawberries and cream for dessert.",
            kurdishText: "بۆ شیرینی تووفەڕەنگی و کرێممان ھەبوو.",
            onPressedBritish: () => speakcreams1("en-GB"),
            onPressedAmerican: () => speakcreams1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I asked for two coffees with cream.",
            kurdishText: "داوای دوو قاوەم بە توێشکەوە کرد.",
            onPressedBritish: () => speakcreams2("en-GB"),
            onPressedAmerican: () => speakcreams2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) شیرینییەکی نەرم"),
          SentencesRow(
            englishText: "I prefer a light chocolate cream for my desserts.",
            kurdishText: "حەزم بە کرێمێکی کەمی چکلێتە بۆ شیرینی.",
            onPressedBritish: () => speakcreams3("en-GB"),
            onPressedAmerican: () => speakcreams3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) کرێمی ڕووخسار بۆ پاراستنی یان نەرمکردنی"),
          SentencesRow(
            englishText: "Put a little antiseptic cream on the grazed skin.",
            kurdishText: "ھەندێک کرێمی خاوێنکەر بخە سەر پێستە ڕووشاوەکە.",
            onPressedBritish: () => speakcreams4("en-GB"),
            onPressedAmerican: () => speakcreams4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) ڕەنگێکی کاڵ کە لە نێوان سپی و زەردە"),
          SentencesRow(
            englishText: "Do you have this blouse in cream?",
            kurdishText: "ئەم بلووزەت بە ڕەنگی کرێمی ھەیە.",
            onPressedBritish: () => speakcreams5("en-GB"),
            onPressedAmerican: () => speakcreams5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) باشترینی گرووپێک یان کۆمەڵگەیەک"),
          SentencesRow(
            englishText:
                "The cream of this year's graduates have gone abroad for jobs.",
            kurdishText: "باشترینی دەرچوانی ئەمساڵ چوونەتە دەرەوە بۆ کارکردن.",
            onPressedBritish: () => speakcreams6("en-GB"),
            onPressedAmerican: () => speakcreams6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (ھاوەڵناو) ڕەنگی کرێمی، لە نێوان سپی و زەرددا"),
          SentencesRow(
            englishText:
                "The walls were cream and the ceiling was painted white.",
            kurdishText: "دیوارەکان کرێمی بوون و بنبانەکە بۆیەی سپی کرابوو.",
            onPressedBritish: () => speakcreams7("en-GB"),
            onPressedAmerican: () => speakcreams7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (کردار) تێکەڵکردنی شت بۆ درووستکردنی تێکەڵەیەکی نەرمی شل"),
          SentencesRow(
            englishText: "Cream the butter and sugar together.",
            kurdishText: "کەرە و شەکرەکە پێکەوە بکە بە کرێم.",
            onPressedBritish: () => speakcreams8("en-GB"),
            onPressedAmerican: () => speakcreams8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (کردار) تەواو تێکشکانی کەسێک"),
          SentencesRow(
            englishText: "We got creamed in the first round.",
            kurdishText: "لە قۆناغی یەکەمدا تێکشکێندراین.",
            onPressedBritish: () => speakcreams9("en-GB"),
            onPressedAmerican: () => speakcreams9("en-US"),
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
- Noun: cream (derived forms: creams)
1. The part of milk containing the butterfat
 
2. Toiletry consisting of any of various substances in the form of a thick liquid that have a soothing and moisturizing effect when applied to the skin (= ointment, emollient)
 
3. The best people or things in a group (= pick)
"the cream of England's young men were killed in the Great War";
 
4. An off-white, very pale yellow colour

- Verb: cream (derived forms: creaming, creamed, creams)
1. (cooking) make creamy by beating
"Cream the butter"
 
2. Put on cream, as on one's face or body
"She creams her face every night"
 
3. Remove from the surface (= skim, skim off, cream off)
"skim cream from the surface of milk"; "skim off cream from the surface of milk";
 
4. Add cream to one's coffee, for example
 
5. [informal] Beat thoroughly and conclusively in a competition or fight (= bat, clobber [informal], drub, thrash [informal], lick [informal], marmalise [Brit, informal], marmelize [Brit, informal], marmelise [Brit, informal], wipe the floor [informal], paste [informal], beat hollow [informal], whale [N. Amer, informal], marmalize [Brit, informal], smoke [N. Amer, informal], hammer [informal], muller [Brit, informal], blow away [informal], slaughter [informal], tromp [N. Amer, informal], trounce)
"We creamed the other team on Sunday!";

- Adjective: cream 
1. Having the colour of fresh cream (= cream-colored [US], creamy-colored [US], creamy-white, cream-coloured [Brit, Cdn], creamy-coloured [Brit, Cdn])
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

  final String _videoId = 'vxDGHG07aD8';
  final double _startSeconds = 9;

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

  final String _videoId = 'ky3KiiUK_D0';
  final double _startSeconds = 58;

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

  final String _videoId = '_Ywix3NTrLE';
  final double _startSeconds = 621;

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

  final String _videoId = '3lCl76SMZ8k';
  final double _startSeconds = 79;

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

  final String _videoId = 'LWRXYp4u9bM';
  final double _startSeconds = 12;

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

  final String _videoId = '3C6l4dJn3ck';
  final double _startSeconds = 0;

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

  final String _videoId = 'qRnhsFbSLkg';
  final double _startSeconds = 17;

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