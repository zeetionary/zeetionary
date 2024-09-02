import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydevice extends StatefulWidget {
  const EnglishEntrydevice({super.key});

  @override
  State<EnglishEntrydevice> createState() => _EnglishEntrydeviceState();
}

class _EnglishEntrydeviceState extends State<EnglishEntrydevice> {
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
    return const EntryTitle(word: "device");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: device");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈvaɪs/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdevice(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("device");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdevice("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈvaɪs/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdevice(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("device");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdevice("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdevices1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The new devices will be installed at US airports.");
  }

  Future<void> speakdevices2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This device allows deaf people to communicate by typing messages instead of speaking.");
  }

  Future<void> speakdevices3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("All new cars are now fitted with these safety devices.");
  }

  Future<void> speakdevices4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He measured the room using an ingenious electronic device.");
  }

  Future<void> speakdevices5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This device enables pilots to navigate with pinpoint accuracy.");
  }

  Future<void> speakdevices6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You can store thousands of photos on your device.");
  }

  Future<void> speakdevices7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Now connect the device to your computer.");
  }

  Future<void> speakdevices8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It was the world's first atomic device.");
  }

  Future<void> speakdevices9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A powerful device exploded outside the station.");
  }

  Future<void> speakdevices10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Targeted advertising on social media is very successful as a marketing device.");
  }

  Future<void> speakdevices11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We use a range of devices for testing children's numerical ability.");
  }

  Future<void> speakdevices12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This was originally intended as a device for making sure taxes were paid on time.");
  }

  Future<void> speakdevices13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The report was a device used to hide rather than reveal problems.");
  }

  Future<void> speakdevices14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This device can be seen as somewhat dishonest.");
  }

  Future<void> speakdevices15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Metaphor and symbol are literary devices.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: ئامێر، ئاموور، کەرەسە، ئامراز، ھەجەت، وەسیلە، دەزگا،	داھێنان،	شێوە، ڕێگا، فێڵ، پیلان، تەڵەکە، پلان، نەخشە، تەگبیر،	نیشانە، زناک، بەرژەنگ، درف، ھێما، دروشم،	(وێژە) ھونەر، خوازە و لێکدانی وشەکان و ھتد
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) شتێک یان ئامێرێک کە دیزاین کراوە بۆ ئەنجامدانی کارێکی دیاریکراو"),
          SentencesRow(
            englishText: "The new devices will be installed at US airports.",
            kurdishText: "ئامێرە تازەکان لە فڕۆکەخانەکانی ئەمریکا دادەنرێن.",
            onPressedBritish: () => speakdevices1("en-GB"),
            onPressedAmerican: () => speakdevices1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "This device allows deaf people to communicate by typing messages instead of speaking.",
            kurdishText:
                "ئەم ئامێرە یارمەتی کەسانی کەڕ دەدات کە گفتوگۆ بکەن نووسینی نامە نەک قسەکردن.",
            onPressedBritish: () => speakdevices2("en-GB"),
            onPressedAmerican: () => speakdevices2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "All new cars are now fitted with these safety devices.",
            kurdishText:
                "ھەموو ئۆتۆمبێلە تازەکان ئێستا ئەم ئامێری سەلامەتییانەیان تێدا دانراوە.",
            onPressedBritish: () => speakdevices3("en-GB"),
            onPressedAmerican: () => speakdevices3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He measured the room using an ingenious electronic device.",
            kurdishText: "ژوورەکەی پێوا بە ئامێرێکی ئەلیکترۆنی ناوازە.",
            onPressedBritish: () => speakdevices4("en-GB"),
            onPressedAmerican: () => speakdevices4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "This device enables pilots to navigate with pinpoint accuracy.",
            kurdishText:
                "ئامێرەکە ڕێگا بە فڕۆکەوانان دەدات بە درووستی ورد تێپەڕن.",
            onPressedBritish: () => speakdevices5("en-GB"),
            onPressedAmerican: () => speakdevices5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) ئامێرێکی کۆمپیوتەری، بەتایبەتی یەکێکی بچووکی وەک موبایلی زیرەک"),
          SentencesRow(
            englishText: "You can store thousands of photos on your device.",
            kurdishText: "دەتوانیت ھەزاران وێنە لەسەر موبایلەکەت کۆگا بکەیت.",
            onPressedBritish: () => speakdevices6("en-GB"),
            onPressedAmerican: () => speakdevices6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Now connect the device to your computer.",
            kurdishText: "ئێستا ئامێرەکە پەیوەست بکە بە کۆمپیوتەرەکەتەوە.",
            onPressedBritish: () => speakdevices7("en-GB"),
            onPressedAmerican: () => speakdevices7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) بۆمب یان تەقەمەنییەک"),
          SentencesRow(
            englishText: "It was the world's first atomic device.",
            kurdishText: "یەکەمین بۆمبی ئەتۆمی جیھان بوو.",
            onPressedBritish: () => speakdevices8("en-GB"),
            onPressedAmerican: () => speakdevices8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "A powerful device exploded outside the station.",
            kurdishText: "بۆمبێکی بەھێز لە دەرەوەی بیناکە تەقییەوە.",
            onPressedBritish: () => speakdevices9("en-GB"),
            onPressedAmerican: () => speakdevices9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) شێوازێکی کردنی شتێک کە ئەنجامێکی دیاریکراوی دەبێت"),
          SentencesRow(
            englishText:
                "Targeted advertising on social media is very successful as a marketing device.",
            kurdishText:
                "ڕیکلامی ئاراستەکراوی سەر تۆڕە کۆمەڵایەتییەکان زۆر سەرکەوتووە وەک ڕێگایەکی بەبازاڕکردن.",
            onPressedBritish: () => speakdevices10("en-GB"),
            onPressedAmerican: () => speakdevices10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "We use a range of devices for testing children's numerical ability.",
            kurdishText:
                "ژمارەیەک ڕێگا بەکاردێنین بۆ تاقیکردنەوەی توانای ژمارەیی منداڵان.",
            onPressedBritish: () => speakdevices11("en-GB"),
            onPressedAmerican: () => speakdevices11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "This was originally intended as a device for making sure taxes were paid on time.",
            kurdishText:
                "ئەمە لە سەرەتادا ڕێگایەک بوو مەبەست لێی دڵنیایی کردنەوەی ئەوەی بوو کە باج لەکاتی خۆیدا دەدرا.",
            onPressedBritish: () => speakdevices12("en-GB"),
            onPressedAmerican: () => speakdevices12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ناو) پلان یان فێڵێک کە بەکاردێت بۆ بەدەستخستنی شتێک کە کەسێک دەیەوێت"),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The report was a device used to hide rather than reveal problems.",
            kurdishText:
                "ڕاپۆرتەکە پلانێک بوو شاردنەوە نەک ئاشکراکردنی شتەکان.",
            onPressedBritish: () => speakdevices13("en-GB"),
            onPressedAmerican: () => speakdevices13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "This device can be seen as somewhat dishonest.",
            kurdishText: "ئەم پلانە دەکرێت تاڕادەیەک بە تەڵەکەبازی ببینرێت.",
            onPressedBritish: () => speakdevices14("en-GB"),
            onPressedAmerican: () => speakdevices14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ناو) شێوازێکی وشە کە ئامانج لێی ئەوەیە کاریگەرییەکی تایبەتی ھەبێت لە نووسین یان قسەکردندا"),
          SentencesRow(
            englishText: "Metaphor and symbol are literary devices.",
            kurdishText: "میتافۆر و سمبول وەسیلەی ئەدەبین.",
            onPressedBritish: () => speakdevices15("en-GB"),
            onPressedAmerican: () => speakdevices15("en-US"),
          ),
          // devices16devices16
          // devices17devices17
          // devices18devices18
          // devices19devices19
          // devices_20devices20
          // devices21devices21
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
- Noun: device (derived forms: devices)
1. An instrumentality invented for a particular purpose
"the device is small enough to wear on your wrist"; "a device intended to conserve water"
 
2. Something in an artistic work designed to achieve a particular effect
 
3. A trick or device used to achieve some end, esp. sales or publicity (= gimmick)
"he would stoop to any device to win a point";
 
4. Any ornamental pattern or design (as in embroidery)
 
5. (heraldry) an emblematic design (especially in heraldry)
"he was recognized by the device on his shield"
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

  final String _videoId = 'R0wa9IlCA_w';
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '2rVzRoF7vQw';
  final double _startSeconds = 65;

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

  final String _videoId = '92ElSmHXECU';
  final double _startSeconds = 28;

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

  final String _videoId = 'QueTiF5VL44';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'y99aZln0Guo';
  final double _startSeconds = 26;

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

  final String _videoId = 'I4oU7bd1jec';
  final double _startSeconds = 4;

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

  final String _videoId = 'myW2cxyOHEQ';
  final double _startSeconds = 131;

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