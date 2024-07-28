import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydelicate extends StatefulWidget {
  const EnglishEntrydelicate({super.key});

  @override
  State<EnglishEntrydelicate> createState() => _EnglishEntrydelicateState();
}

class _EnglishEntrydelicateState extends State<EnglishEntrydelicate> {
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
    return const EntryTitle(word: "delicate");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: delicate");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdelɪkət/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdelicate(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("delicate");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdelicate("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdelɪkət/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdelicate(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("delicate");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdelicate("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdelicates1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The eye is one of the most delicate organs of the body.");
  }

  Future<void> speakdelicates2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Babies have very delicate skin.");
  }

  Future<void> speakdelicates3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The glasses looked very delicate.");
  }

  Future<void> speakdelicates4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His health had always been delicate.");
  }

  Future<void> speakdelicates5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has a delicate constitution and has to be careful with what she eats.");
  }

  Future<void> speakdelicates6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She folded her delicate hands on the table.");
  }

  Future<void> speakdelicates7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Weather-forecasters have extremely delicate equipment which helps them predict what the weather is going to be like.");
  }

  Future<void> speakdelicates8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The delicate surgical operation took five hours.");
  }

  Future<void> speakdelicates9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This is a somewhat delicate subject.");
  }

  Future<void> speakdelicates20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Babies have very delicate skin.0");
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
کوردی: ناسک، نەرم، نازدار، نیان، جوان،	ھەستیار، تیژ،	بەڕەوشت، بەئەدەب،	قرپ، قرچ، تورت، زووشکاو،	ورد، باریک،	لاواز، کز، بێ‌ھێز، ناسک،	(ڕەنگ) کەم‌ڕەنگ، ڕۆشن، گەش،	نیان، ئارام، مەند، نەرم، ھێدی، ئەھۆن،	خۆش، بەمەزە، بەلەزەت
"""),
          const DefinitionKurdish(
              text: "١. (ھاوەڵناو) بە ئاسانی زیانی پێدەگات و دەشکێت"),
          SentencesRow(
            englishText:
                "The eye is one of the most delicate organs of the body.",
            kurdishText:
                "چاو یەکێکە لە ھەرە ناسکترین ئەندامەکانی جەستە.", // delicate
            onPressedBritish: () => speakdelicates1("en-GB"),
            onPressedAmerican: () => speakdelicates1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Babies have very delicate skin.",
            kurdishText: "منداڵان جەستەی زۆر ھەستیاریان ھەیە.",
            onPressedBritish: () => speakdelicates2("en-GB"),
            onPressedAmerican: () => speakdelicates2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The glasses looked very delicate.",
            kurdishText: "شووشەکان زۆر ناسک دیاربوون.",
            onPressedBritish: () => speakdelicates3("en-GB"),
            onPressedAmerican: () => speakdelicates3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ھاوەڵناو) لاواز"),
          const DividerSentences(),
          SentencesRow(
            englishText: "His health had always been delicate.",
            kurdishText: "تەندرووستی ھەمیشە لاواز بووە.",
            onPressedBritish: () => speakdelicates4("en-GB"),
            onPressedAmerican: () => speakdelicates4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She has a delicate constitution and has to be careful with what she eats.",
            kurdishText:
                "تەندرووستییەکی زۆر لاوازی ھەیە و دەبێت وریا بێت کە چی دەخوات.",
            onPressedBritish: () => speakdelicates5("en-GB"),
            onPressedAmerican: () => speakdelicates5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) بچووک و ھەبوونی شێوەی جوان"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "She folded her delicate hands on the table.",
            kurdishText: "دەستە باریکەکانی خستە سەر مێزەکە.",
            onPressedBritish: () => speakdelicates6("en-GB"),
            onPressedAmerican: () => speakdelicates6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ھاوەڵناو) درووستکراو بەشێوەیەکی وریا و ورد"),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                "Weather-forecasters have extremely delicate equipment which helps them predict what the weather is going to be like.",
            kurdishText:
                "پێشبینیکارانی کەشووھەوا ئامێری زۆر ھەستیاریان پێیە کە یارمەتییان دەدات لەوەی کە کەشووھەوا چۆن دەبێت.",
            onPressedBritish: () => speakdelicates7("en-GB"),
            onPressedAmerican: () => speakdelicates7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ھاوەڵناو) کە پێویستیان بە مامەڵەی وریا و ھەستیار ھەیە، یان مامەڵەی وریا و ھەستیار ]یشان دەدەن"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "The delicate surgical operation took five hours.",
            kurdishText: "پڕۆسە ھەستیارە نەشتەرگەرییەکە پێنج کاتژمێری خایاند.",
            onPressedBritish: () => speakdelicates8("en-GB"),
            onPressedAmerican: () => speakdelicates8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "This is a somewhat delicate subject.",
            kurdishText: "ئەمە بابەتێکی تاڕادەیەک ھەستیارە.",
            onPressedBritish: () => speakdelicates9("en-GB"),
            onPressedAmerican: () => speakdelicates9("en-US"),
          ),
          // delicates1000"),
          // speakdelicates10
          // delicates10("en-US"),
          // delicates1100"),
          // speakdelicates11
          // delicates11("en-US"),
          // delicates1200"),
          // speakdelicates12
          // delicates12("en-US"),
          // delicates1300"),
          // speakdelicates13
          // delicates13("en-US"),
          // delicates1400"),
          // speakdelicates14
          // delicates14("en-US"),
          // delicates1500"),
          // speakdelicates15
          // delicates15("en-US"),
          // delicates1600"),
          // speakdelicates16
          // delicates16("en-US"),
          // delicates1700"),
          // speakdelicates17
          // delicates17("en-US"),
          // delicates1800"),
          // speakdelicates18
          // delicates18("en-US"),
          // delicates1900"),
          // speakdelicates19
          // delicates19("en-US"),
          // "Babies have very delicate skin.0"),
          // speakdelicates20
          // delicates20("en-US"),
          // delicates2100"),
          // speakdelicates21
          // delicates21("en-US"),
          // delicates2200"),
          // speakdelicates22
          // delicates22("en-US"),
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
- Adjective: delicate 
1. Easily broken, damaged or destroyed (= fragile, frail)
"a kite too delicate to fly safely";
 
2. Exquisitely fine and subtle and pleasing; susceptible to injury
"a delicate violin passage"; "delicate china"; "a delicate flavour"; "the delicate wing of a butterfly"
 
3. Marked by great skill especially in meticulous technique
"a surgeon's delicate touch"
 
4. Easily hurt (= soft)
"a baby's delicate skin";
 
5. Developed with extreme delicacy and subtlety (= finespun)
"the satire touches with delicate ridicule every kind of human pretence";
 
6. Difficult to handle; requiring great tact (= ticklish, touchy, tickly)
"delicate negotiations with the big powers";
 
7. Of an instrument or device; capable of registering minute differences or changes precisely
"almost undetectable with even the most delicate instruments"
 
8. Of weak or poor health; easily made sick
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

  final String _videoId = 'rEdl2Uetpvo';
  final double _startSeconds = 97;

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

  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 839;

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

  final String _videoId = 'AwhBTrzzqeg';
  final double _startSeconds = 482;

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
  final double _startSeconds = 251;

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

  final String _videoId = 'X5oD_thIk3c';
  final double _startSeconds = 383;

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

  final String _videoId = 'wir7jmefyec';
  final double _startSeconds = 415;

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
  final double _startSeconds = 1366;

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