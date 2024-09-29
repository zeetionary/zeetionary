import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydisguise extends StatefulWidget {
  const EnglishEntrydisguise({super.key});

  @override
  State<EnglishEntrydisguise> createState() => _EnglishEntrydisguiseState();
}

class _EnglishEntrydisguiseState extends State<EnglishEntrydisguise> {
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
                bottom: CustomTabBarNew(
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
    return const EntryTitle(word: "disguise");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: disguise");
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
    return const IPAofEnglish(text: "IpaUK: /dɪsˈɡaɪz/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisguise(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("disguise");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdisguise("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪsˈɡaɪz/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisguise(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("disguise");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdisguise("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisguises1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The hijackers were heavily disguised.");
  }

  Future<void> speakdisguises2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They got in disguised as security guards.");
  }

  Future<void> speakdisguises3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was cleverly disguised as a policewoman.");
  }

  Future<void> speakdisguises4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She disguised herself as a boy.");
  }

  Future<void> speakdisguises5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She made no attempt to disguise her surprise.");
  }

  Future<void> speakdisguises6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She couldn't disguise the fact that she felt uncomfortable.");
  }

  Future<void> speakdisguises7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He tried to disguise his accent.");
  }

  Future<void> speakdisguises8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She wore glasses and a wig as a disguise.");
  }

  Future<void> speakdisguises9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The star travelled in disguise.");
  }

  Future<void> speakdisguises10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He is a master of disguise.");
  }

  Future<void> speakdisguises11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His angelic look is just a disguise.");
  }

  Future<void> speakdisguises12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her books can be history lessons in disguise.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: خۆگۆڕین،	جل‌وبەرگی خۆگۆڕین،	قیافە یان ڕواڵەتی خۆگۆڕیو
"""),
          const DefinitionKurdish(
              text: "١. (کردار) گۆڕینی شێوەت بۆ ئەوەی نەناسرێیتەوە"),
          SentencesRow(
            englishText: "The hijackers were heavily disguised.",
            kurdishText: "ڕفێنەرەکان تەواو خۆیان گۆڕیبوو.",
            onPressedBritish: () => speakdisguises1("en-GB"),
            onPressedAmerican: () => speakdisguises1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They got in disguised as security guards.",
            kurdishText: "وەک پاسەوانی ئاسایش خۆیان گۆڕیبوو.",
            onPressedBritish: () => speakdisguises2("en-GB"),
            onPressedAmerican: () => speakdisguises2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She was cleverly disguised as a policewoman.",
            kurdishText: "بە ڕوونی وەک ژنە پۆلیسێک خۆی گۆڕیبوو.",
            onPressedBritish: () => speakdisguises3("en-GB"),
            onPressedAmerican: () => speakdisguises3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She disguised herself as a boy.",
            kurdishText: "کچەکە خۆی وەک کوڕ گۆڕی بوو.",
            onPressedBritish: () => speakdisguises4("en-GB"),
            onPressedAmerican: () => speakdisguises4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) شاردەوەی شتێک یان گۆڕینی بۆ ئەوەی نەناسرێتەوە"),
          SentencesRow(
            englishText: "She made no attempt to disguise her surprise.",
            kurdishText: "ھیچ ھەوڵێکی نەدا بۆ شاردنەوەی حەپەسانی.",
            onPressedBritish: () => speakdisguises5("en-GB"),
            onPressedAmerican: () => speakdisguises5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She couldn't disguise the fact that she felt uncomfortable.",
            kurdishText:
                "نەیدەتوانی ئەو ڕاستییە بشارێتەوە کە ھەستی بە ناڕەحەتی دەکرد.",
            onPressedBritish: () => speakdisguises6("en-GB"),
            onPressedAmerican: () => speakdisguises6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He tried to disguise his accent.",
            kurdishText: "ھەوڵیدا ئەکسێنتەکەی بشارێتەوە.",
            onPressedBritish: () => speakdisguises7("en-GB"),
            onPressedAmerican: () => speakdisguises7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) شتێک کە لەبەری دەکەیت یان بەکاری دەھێنیت بۆ ئەوەی شێوەت بگۆڕیت تاوەکو خەڵکی نەتناسنەوە"),
          SentencesRow(
            englishText: "She wore glasses and a wig as a disguise.",
            kurdishText: "چاویلکە و زڕپرچی لەبەرکرد بۆ خۆشاردنەوە.",
            onPressedBritish: () => speakdisguises8("en-GB"),
            onPressedAmerican: () => speakdisguises8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The star travelled in disguise (= wearing a disguise).",
            kurdishText: "ئەستێرەکە بە شاراوەیی گەشتی دەکرد.",
            onPressedBritish: () => speakdisguises9("en-GB"),
            onPressedAmerican: () => speakdisguises9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) ھونەری گۆڕینی ڕواڵەت بۆ ئەوەی خەڵکی نەتناسنەوە"),
          SentencesRow(
            englishText: "He is a master of disguise.",
            kurdishText: "شارەزای خۆشاردنەوەیە.",
            onPressedBritish: () => speakdisguises10("en-GB"),
            onPressedAmerican: () => speakdisguises10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) شێوازێکی شاردنەوەی ڕواڵەتی سرووشتی شتێک"),
          SentencesRow(
            englishText: "His angelic look is just a disguise.",
            kurdishText: "شێوە فریشتەئاساکەی تەنھا فریودەرێکە.",
            onPressedBritish: () => speakdisguises11("en-GB"),
            onPressedAmerican: () => speakdisguises11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Her books can be history lessons in disguise.",
            kurdishText: "کتێبەکانی دەکرێت وانەی مێژووش بن لە پشت پەردەوە.",
            onPressedBritish: () => speakdisguises12("en-GB"),
            onPressedAmerican: () => speakdisguises12("en-US"),
          ),
          // disguises13disguises13
          // disguises14disguises14
          // disguises15disguises15
          // disguises16disguises16
          // disguises17disguises17
          // disguises18disguises18
          // disguises19disguises19
          // disguises_20disguises20
          // disguises21disguises21
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: disguise (derived forms: disguises)
1. An outward semblance that misrepresents the true nature of something (= camouflage)
"the theatrical notion of disguise is always associated with catastrophe in his stories";
 
2. Any attire that modifies the appearance in order to conceal the wearer's identity
 
3. The act of concealing the identity of something by modifying its appearance (= camouflage)
"he is a master of disguise";

- Verb: disguise (derived forms: disguised, disguises, disguising)
1. Make unrecognizable (= mask)
"We disguised our faces before robbing the bank";
 
2. Hold back; keep from being perceived by others (= conceal, hold back, hold in)
"She disguises her anger well";
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

  final String _videoId = 'PUT_VID';
  final double _startSeconds = 222222222222222;

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

  final String _videoId = '4J0xFUyz1nw';
  final double _startSeconds = 376;

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

  final String _videoId = '9QrlDWKP6lg';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 798;

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

  final String _videoId = 'QiKZYt9070U';
  final double _startSeconds = 746;

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

  final String _videoId = 'PkUg89kLLBE';
  final double _startSeconds = 1403;

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

  final String _videoId = 'b1reY72ktEc';
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