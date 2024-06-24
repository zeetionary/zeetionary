import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrya extends StatefulWidget {
  const EnglishEntrya({super.key});

  @override
  State<EnglishEntrya> createState() => _EnglishEntryaState();
}

class _EnglishEntryaState extends State<EnglishEntrya> {
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
    return const EntryTitle(word: "a");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: an (before vowel sounds)");
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
    return const IPAofEnglish(text: "IpaUK: /ə/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speaka(String languageCode) async {
    // DOPSUM: CHANGE speaka
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("a");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speaka("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ə/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speaka(String languageCode) async {
    // DOPSUM: CHANGE speaka
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("a");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speaka("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakas1(String languageCode) async {
    // DOPSUM: CHANGE speaka
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("// speakas111111111111111111111111111111111");
  }

  Future<void> speak142574(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I can only carry two at a time.");
  }

  Future<void> speak48652(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There's a visitor for you.");
  }

  Future<void> speak45287(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's a Buddhist.");
  }

  Future<void> speak197524(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A lion is a dangerous animal.");
  }

  Future<void> speak475968(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("a good knowledge of French.");
  }

  Future<void> speak63328(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I have a pen.");
  }

  Future<void> speakan142574(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I went there on an auspicious day.");
  }

  Future<void> speakan48652(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There's an animal on the street.");
  }

  Future<void> speakan45287(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's an atheist.");
  }

  Future<void> speakan197524(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A lion is an animal.");
  }

  Future<void> speakan63328(String languageCode) async {
    // DOPSUM: CHANGE speakA
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I have an apple.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const DefinitionKurdish(text: """
١. (ئامراز) پێش ناوی ژمێردراو یان تاک بەکاردێت لە کاتی ئاماژە بۆ کەسانێک یان ئەو شتانەی کە پێشوەختە باس نەکراون"""),
          SentencesRow(
            englishText: "I can only carry two at a time.",
            kurdishText: "لە یەک کاتدا تەنھا دەتوانم دووان ھەڵبگرم.",
            onPressedBritish: () => speak142574("en-GB"),
            onPressedAmerican: () => speak142574("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "There's a visitor for you.",
            kurdishText: "میوانێکت ھەیە.",
            onPressedBritish: () => speak48652("en-GB"),
            onPressedAmerican: () => speak48652("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I went there on an auspicious day.",
            kurdishText: "لە ڕۆژێکی پیرۆزدا چوومە ئەوێ.",
            onPressedBritish: () => speakan142574("en-GB"),
            onPressedAmerican: () => speakan142574("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "There's an animal on the street.",
            kurdishText: "ئاژەڵێک لەسەر شەقامەکەیە.",
            onPressedBritish: () => speakan48652("en-GB"),
            onPressedAmerican: () => speakan48652("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ئامراز) بەکاردێت بۆ ئەوەی نیشانی بدات کە کەسێک/شتێک ئەندامی گروپێک یان پیشەیەکە"),
          SentencesRow(
            englishText: "She's a Buddhist.",
            kurdishText: "ئەو بوودییە.",
            onPressedBritish: () => speak45287("en-GB"),
            onPressedAmerican: () => speak45287("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She's an atheist.",
            kurdishText: "ئەو بێ‌دینە.",
            onPressedBritish: () => speakan45287("en-GB"),
            onPressedAmerican: () => speakan45287("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ئامراز) بەکاردێت بۆ گشتگیرکردن"),
          SentencesRow(
            englishText: "A lion is a dangerous animal.",
            kurdishText: "شێر ئاژەڵێکی دڕندەیە.",
            onPressedBritish: () => speak197524("en-GB"),
            onPressedAmerican: () => speak197524("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "A lion is an animal.",
            kurdishText: "شێر ئاژەڵێکە.",
            onPressedBritish: () => speakan197524("en-GB"),
            onPressedAmerican: () => speakan197524("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ئامراز) پێش ناوی نەژمێردراو بەکاردێت کاتێک ھاوەڵناوێک لە پێشیان یان دەستەواژەیەک لە دوایان دێت"),
          SentencesRow(
            englishText: "a good knowledge of French.",
            kurdishText: "زانیارییەکی باشی زمانی فەرەنسی.",
            onPressedBritish: () => speak475968("en-GB"),
            onPressedAmerican: () => speak475968("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ئامراز) لە پێش ئەو ناوانە بەکاردێت کە پێکەوە ناودەھێندرێن"),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. لە جیاتی ژمارە یەک بەکاردێت"),
          SentencesRow(
            englishText: "I have a pen.",
            kurdishText: "پێنووسێکم ھەیە.",
            onPressedBritish: () => speak63328("en-GB"),
            onPressedAmerican: () => speak63328("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I have an apple.",
            kurdishText: "سێوێکم ھەیە.",
            onPressedBritish: () => speakan63328("en-GB"),
            onPressedAmerican: () => speakan63328("en-US"),
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
Article:
1. Indefinite article, "an" is used before a vowel sound, "a" otherwise

Noun: a
1. The 1st letter of the Roman alphabet

Noun: A 
1. A metric unit of length equal to one ten billionth of a meter (or 0.0001 micron); used to specify wavelengths of electromagnetic radiation

2. The basic unit of electric current adopted under the Système International d'Unités
"a typical household circuit carries 15 to 50 amps";

3. One of the four nucleotides used in building DNA, also known as deoxyadenylate, or dAMP; all four nucleotides have a common phosphate group and a sugar (ribose)

4. Any of several fat-soluble vitamins essential for normal vision; prevents night blindness, inflammation or dryness of the eyes

5. (biochemistry) purine base found in DNA and RNA; pairs with thymine in DNA and with uracil in RNA

6. The blood group whose red cells carry the A antigen
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'Ovzx0F9es';
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'Kuy4cEXpXEE';
  final double _startSeconds = 259;

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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

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
// speakas111111111111111111111111111111111

  @override
  Widget build(BuildContext context) {
    return const YouTubeScroller(
      children: [
        YoutubeEmbeddedone(),
        // YoutubeEmbeddedtwo(),
        // YoutubeEmbeddedthree(),
        // YoutubeEmbeddedfour(),
        // YoutubeEmbeddedfive(),
        // YoutubeEmbeddedsix(),
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