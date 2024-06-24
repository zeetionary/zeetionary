import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycurl extends StatefulWidget {
  const EnglishEntrycurl({super.key});

  @override
  State<EnglishEntrycurl> createState() => _EnglishEntrycurlState();
}

class _EnglishEntrycurlState extends State<EnglishEntrycurl> {
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
    return const EntryTitle(word: "curl");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: curl");
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
    return const IPAofEnglish(text: "IpaUK: /kɜːl/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcurl(String languageCode) async {
    // DOPSUM: CHANGE speakcurl
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("curl");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcurl("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kɜːrl/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcurl(String languageCode) async {
    // DOPSUM: CHANGE speakcurl
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("curl");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcurl("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcurls1(String languageCode) async {
    // DOPSUM: CHANGE speakcurl
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His hair curls naturally.");
  }

  Future<void> speakcurls2(String languageCode) async {
    // DOPSUM: CHANGE speakcurl
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A new baby will automatically curl its fingers around any object it touches.");
  }

  Future<void> speakcurls3(String languageCode) async {
    // DOPSUM: CHANGE speakcurl
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The cat curled into a ball and went to sleep.");
  }

  Future<void> speakcurls4(String languageCode) async {
    // DOPSUM: CHANGE speakcurl
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("His fingers curled tightly around the steering wheel.");
  }

  Future<void> speakcurls5(String languageCode) async {
    // DOPSUM: CHANGE speakcurl
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The smoke curled steadily upwards.");
  }

  Future<void> speakcurls6(String languageCode) async {
    // DOPSUM: CHANGE speakcurl
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her hair was a mass of curls.");
  }

  Future<void> speakcurls7(String languageCode) async {
    // DOPSUM: CHANGE speakcurl
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The baby had dark eyes and dark curls.");
  }

  Future<void> speakcurls8(String languageCode) async {
    // DOPSUM: CHANGE speakcurl
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He carefully teased his curls into place.");
  }

  Future<void> speakcurls9(String languageCode) async {
    // DOPSUM: CHANGE speakcurl
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She has beautiful blonde curls.");
  }

  Future<void> speakcurls10(String languageCode) async {
    // DOPSUM: CHANGE speakcurl
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His hair had a natural curl.");
  }

  Future<void> speakcurls11(String languageCode) async {
    // DOPSUM: CHANGE speakcurl
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her hair lost its curl as she got older.");
  }

  Future<void> speakcurls12(String languageCode) async {
    // DOPSUM: CHANGE speakcurl
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Decorate the cake with curls of chocolate.");
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
کوردی: ئاڵقە، کەمە، چەمەرە،	ئەگریجە، قژی ئاڵقەئاڵقە، ئاڵقەی قژ، فڕ، لوول، قژی فڕ یان لوول،	پێچ، باھەڵدران، لوول‌ھەڵدران، پێچ‌خواردن
"""),
          const DefinitionKurdish(
              text: "١. (کردار) لوولبوون یان وابکەیت شتێک لوول بێت"),
          SentencesRow(
            englishText: "His hair curls naturally.",
            kurdishText:
                "قژی بە سرووشتی لوول دەبێت.", // curl", please follow LX instructions
            onPressedBritish: () => speakcurls1("en-GB"),
            onPressedAmerican: () => speakcurls1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "A new baby will automatically curl its fingers around any object it touches.",
            kurdishText:
                "منداڵی ساوا ڕاستەوخۆ پەنجەکانی لوول دەکات بە دەوری ھەر شتیکدا کە دەستی لێبدات.",
            onPressedBritish: () => speakcurls2("en-GB"),
            onPressedAmerican: () => speakcurls2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) چەمانەوە یان وابکەیت شتێک بچەمێتەوە"),
          SentencesRow(
            englishText: "The cat curled into a ball and went to sleep.",
            kurdishText: "پشیلەکە وەک تۆپێک خۆی پێچدا و خەوت.",
            onPressedBritish: () => speakcurls3("en-GB"),
            onPressedAmerican: () => speakcurls3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "His fingers curled tightly around the steering wheel.",
            kurdishText: "پەنجەکانی بە توندی بە دەوری سووکانەکەدا گیرکرد.",
            onPressedBritish: () => speakcurls4("en-GB"),
            onPressedAmerican: () => speakcurls4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) جوڵان لەکاتی درووستکردنی شێوەیەکی چەماوەیی یان پێچاوپێچی"),
          SentencesRow(
            englishText: "The smoke curled steadily upwards.",
            kurdishText: "دووکەڵەکە بە لەسەرخۆیی بەرزدەبوویەوە.",
            onPressedBritish: () => speakcurls5("en-GB"),
            onPressedAmerican: () => speakcurls5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ناو) ھەندێک قژی لوول"),
          SentencesRow(
            englishText: "Her hair was a mass of curls.",
            kurdishText: "قژی بڕێکی زۆر لە لوولی بوو.",
            onPressedBritish: () => speakcurls6("en-GB"),
            onPressedAmerican: () => speakcurls6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The baby had dark eyes and dark curls.",
            kurdishText: "منداڵەکە چاوی ڕەش و قژی لوولی ڕەشی بوو.",
            onPressedBritish: () => speakcurls7("en-GB"),
            onPressedAmerican: () => speakcurls7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He carefully teased his curls into place.",
            kurdishText: "بەوریاییەوە قژە لوولەکەی ڕێکخست.",
            onPressedBritish: () => speakcurls8("en-GB"),
            onPressedAmerican: () => speakcurls8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She has beautiful blonde curls.",
            kurdishText: "قژێکی لوولی زەردی جوانی ھەیە.",
            onPressedBritish: () => speakcurls9("en-GB"),
            onPressedAmerican: () => speakcurls9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) لوولی قژ"),
          SentencesRow(
            englishText: "His hair had a natural curl.",
            kurdishText: "قژی لوولییەکی سرووشتی ھەیە.",
            onPressedBritish: () => speakcurls10("en-GB"),
            onPressedAmerican: () => speakcurls10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Her hair lost its curl as she got older.",
            kurdishText: "قژەکەی لوولی لەدەستدا کە چوو بە تەمەندا.",
            onPressedBritish: () => speakcurls11("en-GB"),
            onPressedAmerican: () => speakcurls11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (ناو) شتێک کە لوولی یان پێچاوپێچی درووست دەکات"),
          SentencesRow(
            englishText: "Decorate the cake with curls of chocolate.",
            kurdishText: "کێکەکە بە پێچاوپێچی چکلێت بڕازێنەوە.",
            onPressedBritish: () => speakcurls12("en-GB"),
            onPressedAmerican: () => speakcurls12("en-US"),
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
- Verb: curl (derived forms: curled, curling, curls)
1. Form a curl, curve, or kink (= curve, kink)
"the cigar smoke curled up at the ceiling";
 
2. Shape one's body into a curl (= curl up, draw in)
"She curled farther down under the covers";
 
3. Wind around something in coils or loops (= coil, loop)
 
4. Twist or roll into coils or ringlets (= wave)
"curl my hair, please";
 
5. (sport) play the Scottish game of curling

- Noun: curl (derived forms: curls)
1. A round shape formed by a series of concentric circles (as formed by leaves or flower petals) (= coil, whorl, roll, curlicue, ringlet, gyre, scroll)
 
2. Lock of hair in the shape of a spiral or curl (= whorl, ringlet)

- Noun: Curl
1. American chemist who with Richard Smalley and Harold Kroto discovered fullerenes and opened a new branch of chemistry (born in 1933) (= Robert Curl, Robert F. Curl, Robert Floyd Curl Jr.)
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

  final String _videoId = 'lVoGZiL-kns';
  final double _startSeconds = 69;

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

  final String _videoId = 'tsk9c7KF76E';
  final double _startSeconds = 882;

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

  final String _videoId = 'HB0CZ_5sPPw';
  final double _startSeconds = 307;

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

  final String _videoId = 'P8m-KThvtxA';
  final double _startSeconds = 122;

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

  final String _videoId = 'CXvG2CBJ3SE';
  final double _startSeconds = 471;

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

  final String _videoId = 'pTysrwci0pU';
  final double _startSeconds = 490;

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

  final String _videoId = 'WUjVPIEtJd0';
  final double _startSeconds = 1302;

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