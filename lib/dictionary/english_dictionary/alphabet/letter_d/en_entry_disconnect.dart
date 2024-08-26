import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydisconnect extends StatefulWidget {
  const EnglishEntrydisconnect({super.key});

  @override
  State<EnglishEntrydisconnect> createState() => _EnglishEntrydisconnectState();
}

class _EnglishEntrydisconnectState extends State<EnglishEntrydisconnect> {
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
    return const EntryTitle(word: "disconnect");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: disconnect");
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
    return const IPAofEnglish(text: "IpaUK: /ˌdɪskəˈnekt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisconnect(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("disconnect");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdisconnect("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˌdɪskəˈnekt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisconnect(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("disconnect");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdisconnect("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisconnects1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("First, disconnect the boiler from the water mains.");
  }

  Future<void> speakdisconnects2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("You may be disconnected if you do not pay the bill.");
  }

  Future<void> speakdisconnects3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The ski had become disconnected from the boot.");
  }

  Future<void> speakdisconnects4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We were suddenly disconnected.");
  }

  Future<void> speakdisconnects5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "My computer crashes every time I disconnect from the internet.");
  }

  Future<void> speakdisconnects6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "It was the family's decision to disconnect her from the life support machine.");
  }

  Future<void> speakdisconnects7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There is a fundamental disconnect between union leaders and members.");
  }

  Future<void> speakdisconnects8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The politician's remarks show an appalling disconnect with young people.");
  }

  Future<void> speakdisconnects9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There might be a power failure or sudden network disconnect.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: جودا کردن، پچڕان، بڕان، قرتاندن
"""),
          const DefinitionKurdish(
              text:
                  "١. (کردار) لێکردنەوەی شتێک لە سەرچاوەی گاز، ئاو، یان کارەبا"),
          SentencesRow(
            englishText: "First, disconnect the boiler from the water mains.",
            kurdishText:
                "سەرەتا، بۆیلەرەکە لێبکەوە لە بەشە سەرەکییەکانی ئاوەکە.",
            onPressedBritish: () => speakdisconnects1("en-GB"),
            onPressedAmerican: () => speakdisconnects1("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) وەستاندنی ناردنی ھێڵی تەلەفۆن، ئاو، یان کارەبا بۆ بینایەک"),
          SentencesRow(
            englishText: "You may be disconnected if you do not pay the bill.",
            kurdishText:
                "بیناکەت ڕەنگە بێ ئاو/کارەبا بکرێت ئەگەر بکرێت ئەگەر پارەی پسووڵەکە نەدەیت.",
            onPressedBritish: () => speakdisconnects2("en-GB"),
            onPressedAmerican: () => speakdisconnects2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) لێکۆردنەوەی دوو شت لە یەکدی"),
          SentencesRow(
            englishText: "The ski had become disconnected from the boot.",
            kurdishText: "دارەخلیسکەکە لە پووتەکە لێ بووبوویەوە.",
            onPressedBritish: () => speakdisconnects3("en-GB"),
            onPressedAmerican: () => speakdisconnects3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (کردار) پچڕانی پەیوەندیی تەلەفۆنی"),
          SentencesRow(
            englishText: "We were suddenly disconnected.",
            kurdishText: "لەناکاو پەیوەندییەکەمان پچڕا.",
            onPressedBritish: () => speakdisconnects4("en-GB"),
            onPressedAmerican: () => speakdisconnects4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) پچڕاندنی پەیوەستبوون بە ئینتەرنێتەوە"),
          SentencesRow(
            englishText:
                "My computer crashes every time I disconnect from the internet.",
            kurdishText:
                "کۆمپیوتەرەکەم تێکدەچێت ھەرکات پەیوەستی بە ئینتەرنێت دەپچڕێنم.",
            onPressedBritish: () => speakdisconnects5("en-GB"),
            onPressedAmerican: () => speakdisconnects5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (کردار) نەھێشتنی بەستنەوەی کەسێک بە ئامێرێکەوە، بەتایبەتی ئامێری ھێشتنەوە لە ژیاندا"),
          SentencesRow(
            englishText:
                "It was the family's decision to disconnect her from the life support machine.",
            kurdishText:
                "ئەوە بڕیاری خێزانەکە بوو کە جیای بکەنەوە لە ئامێری ھێشتنەوە لە ژیان.",
            onPressedBritish: () => speakdisconnects6("en-GB"),
            onPressedAmerican: () => speakdisconnects6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (کردار) جیاوازی یان نەبوونی پەیوەندی"),
          SentencesRow(
            englishText:
                "There is a fundamental disconnect between union leaders and members.",
            kurdishText:
                "جوداییەکی گەورە ھەیە لە نێوان ڕابەرەکان و ئەندامانی سەندیکاکە.",
            onPressedBritish: () => speakdisconnects7("en-GB"),
            onPressedAmerican: () => speakdisconnects7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The politician's remarks show an appalling disconnect with young people.",
            kurdishText:
                "لێدوانەکانی سیاسییەکە دابڕانێکی ترسناک لەگەڵ کەسانی گەنج.",
            onPressedBritish: () => speakdisconnects8("en-GB"),
            onPressedAmerican: () => speakdisconnects8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (کردار) نەبوونی پەیوەندی لەگەڵ تۆڕێک، سەرچاوەی کارەبا، ئینتەرنێت، ھتد"),
          SentencesRow(
            englishText:
                "There might be a power failure or sudden network disconnect.",
            kurdishText:
                "دەکرێت لەکارکەوتنی وزە یان بڕان لەناکاو بە تۆڕەکەوە ھەبێت.",
            onPressedBritish: () => speakdisconnects9("en-GB"),
            onPressedAmerican: () => speakdisconnects9("en-US"),
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
- Noun: disconnect (derived forms: disconnects)
1. An unbridgeable disparity (as from a failure of understanding) (= gulf, disconnection, disconnexion [Brit])
"there is a vast disconnect between public opinion and federal policy";

2. Verb: disconnect (derived forms: disconnecting, disconnected, disconnects)
Pull the plug of (electrical appliances) and render inoperable (= unplug)
"disconnect the hair dryer after using it";
 
2. Make disconnected, disjoin or unfasten
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

  final String _videoId = 'UuGpm01SPcA';
  final double _startSeconds = 356;

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

  final String _videoId = 'dtp6b76pMak';
  final double _startSeconds = 292;

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

  final String _videoId = 'bHIhgxav9LY';
  final double _startSeconds = 863;

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

  final String _videoId = '5R65skWdg7Y?t= ';
  final double _startSeconds = 452;

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

  final String _videoId = 'oI_X2cMHNe0';
  final double _startSeconds = 807;

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

  final String _videoId = 'fHsa9DqmId8';
  final double _startSeconds = 587;

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

  final String _videoId = 'py4zetCEYzA';
  final double _startSeconds = 543;

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