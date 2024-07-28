import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydeclare extends StatefulWidget {
  const EnglishEntrydeclare({super.key});

  @override
  State<EnglishEntrydeclare> createState() => _EnglishEntrydeclareState();
}

class _EnglishEntrydeclareState extends State<EnglishEntrydeclare> {
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
    return const EntryTitle(word: "declare");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: declare");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈkleə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeclare(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("declare");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdeclare("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈkler/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeclare(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("declare");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdeclare("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeclares1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Germany declared war on France on 1 August 1914.");
  }

  Future<void> speakdeclares2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The government has declared war on illiteracy.");
  }

  Future<void> speakdeclares3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He will probably have to declare bankruptcy.");
  }

  Future<void> speakdeclares4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Neither side was able to declare victory.");
  }

  Future<void> speakdeclares5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She declared her intention of running for the presidency.");
  }

  Future<void> speakdeclares6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The court declared that strike action was illegal.");
  }

  Future<void> speakdeclares7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In the end, they were both declared winners of the tournament.");
  }

  Future<void> speakdeclares8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The area has been declared a national park.");
  }

  Future<void> speakdeclares9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He declared that he was in love with her.");
  }

  Future<void> speakdeclares10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Few people dared to declare their opposition to the regime.");
  }

  Future<void> speakdeclares11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He declared his true feelings to her.");
  }

  Future<void> speakdeclares12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Only two candidates have declared themselves so far.");
  }

  Future<void> speakdeclares13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was the first gay player in a professional sports team to declare himself openly.");
  }

  Future<void> speakdeclares14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("All income must be declared.");
  }

  Future<void> speakdeclares15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Do you have anything to declare?");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: ڕاگەیاندن، وتن، پەیڤین، ئاگادار کردن
"""),
          const DefinitionKurdish(
              text: "١. (کردار) گوتنی شتێک بە فەرمی یان گشتی"),
          SentencesRow(
            englishText: "Germany declared war on France on 1 August 1914.",
            kurdishText:
                "ئەڵمانیا لە ١ ـی ئابی ١٩١٤ جەنگی دژ بە فەرەنسا ڕاگەیاند.", // declare
            onPressedBritish: () => speakdeclares1("en-GB"),
            onPressedAmerican: () => speakdeclares1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The government has declared war on (= officially stated its intention to stop) illiteracy.",
            kurdishText: "حکومەت جەنگی دژ بە نەخوێندەواری ڕاگەیاندووە.",
            onPressedBritish: () => speakdeclares2("en-GB"),
            onPressedAmerican: () => speakdeclares2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He will probably have to declare bankruptcy.",
            kurdishText: "ئەگەری ھەیە ناچاربێت مایەپووچی ڕابگەیەنێت.",
            onPressedBritish: () => speakdeclares3("en-GB"),
            onPressedAmerican: () => speakdeclares3("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: "Neither side was able to declare victory.",
                    kurdishText: "ھیچ لایەنێکیان نەیدەتوانی سەرکەوتن ڕابگەنێت.",
                    onPressedBritish: () => speakdeclares4("en-GB"),
                    onPressedAmerican: () => speakdeclares4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "She declared her intention of running for the presidency.",
                    kurdishText: "نیازی بۆ پێشبڕکێی سەرۆکایەتی ڕاگەیاند.",
                    onPressedBritish: () => speakdeclares5("en-GB"),
                    onPressedAmerican: () => speakdeclares5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "The court declared that strike action was illegal.",
                    kurdishText:
                        "دادگا ڕایگەیاند ھەڵمەتی مانگرتنەکە نایاسایی بوو.",
                    onPressedBritish: () => speakdeclares6("en-GB"),
                    onPressedAmerican: () => speakdeclares6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "In the end, they were both declared winners of the tournament.",
                    kurdishText:
                        "لە کۆتاییدا ھەردووکیان بە براوەی پاڵەوانێتییەکە دانران.",
                    onPressedBritish: () => speakdeclares7("en-GB"),
                    onPressedAmerican: () => speakdeclares7("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The area has been declared a national park.",
                    kurdishText: "ناوچەکە وەک پارکێکی نیشتیمانی ڕاگەیەندراوە.",
                    onPressedBritish: () => speakdeclares8("en-GB"),
                    onPressedAmerican: () => speakdeclares8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) گوتنی شتێک بە ڕوونی و تەواوی"),
          SentencesRow(
            englishText: "He declared that he was in love with her.",
            kurdishText: "ڕایگەیاند کە لە خۆشەویستیدایە لەگەڵیدا.",
            onPressedBritish: () => speakdeclares9("en-GB"),
            onPressedAmerican: () => speakdeclares9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Few people dared to declare their opposition to the regime.",
            kurdishText:
                "کەم کەس بوێری ئەوەیان کرد دژبەری خۆیان بە ڕژێمەکە ڕابگەیەنن.",
            onPressedBritish: () => speakdeclares10("en-GB"),
            onPressedAmerican: () => speakdeclares10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He declared his true feelings to her.",
            kurdishText: "ھەستە ڕاستەقینەکانیی بۆی ڕاگەیاند.",
            onPressedBritish: () => speakdeclares11("en-GB"),
            onPressedAmerican: () => speakdeclares11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) بە ڕوونی ڕاگەیاندنی ئەوەی کە کێیت و نیازت چییە"),
          SentencesRow(
            englishText: "Only two candidates have declared themselves so far.",
            kurdishText: "تەنھا دوو بەربژێر تا ئێستا خۆیان ڕاگەیاندووە.",
            onPressedBritish: () => speakdeclares12("en-GB"),
            onPressedAmerican: () => speakdeclares12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He was the first gay player in a professional sports team to declare himself openly.",
            kurdishText:
                "یەکەم یاریزانی گەی بوو لە تیمێکی وەرزشی پڕۆفیشناڵدا کە بە ڕاشکاوی خۆی بەیان بکات.",
            onPressedBritish: () => speakdeclares13("en-GB"),
            onPressedAmerican: () => speakdeclares13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) گوتن بە بەرپرسانی باجگر کە چەندت قازانج کردووە"),
          SentencesRow(
            englishText: "All income must be declared.",
            kurdishText: "ھەموو داھاتێک دەبێت ڕابگەیەندرێت.",
            onPressedBritish: () => speakdeclares14("en-GB"),
            onPressedAmerican: () => speakdeclares14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) ئاماژەکردن بەو شتانەی کە باج دەیانگرێتەوە لە گومرکدا"),
          SentencesRow(
            englishText: "Do you have anything to declare?",
            kurdishText: "ھیچ شتێکت پێیە ڕایبگەیەنیت؟",
            onPressedBritish: () => speakdeclares15("en-GB"),
            onPressedAmerican: () => speakdeclares15("en-US"),
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
- Verb: declare (derived forms: declaring, declares, declared)
1. State emphatically and authoritatively (= pronounce)
"He declared that he needed more money to carry out the task he was charged with";
 
2. Announce publicly or officially (= announce)
"The President declared war";
 
3. State firmly that something is true
"He declared that he was innocent"
 
4. Judge or state to be (= adjudge, hold)
"She was declared incompetent";
 
5. Authorize payments of
"declare dividends"
 
6. (bridge) designate (a trump suit or no-trump) with the final bid of a hand
 
7. Make a declaration (of dutiable goods) to a customs official
"Do you have anything to declare?"
 
8. Proclaim one's support, sympathy, or opinion for or against
"His wife declared at once for moving to the West Coast"
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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 398;

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

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 1661;

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

  final String _videoId = 'sAiTuitN5b8';
  final double _startSeconds = 151;

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

  final String _videoId = 'g9QneAV4fVo';
  final double _startSeconds = 1198;

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

  final String _videoId = 'YwOMc-4OEWg';
  final double _startSeconds = 599;

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

  final String _videoId = 'gghRXOXY820';
  final double _startSeconds = 1097;

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

  final String _videoId = 'LJNtfyq3TDE';
  final double _startSeconds = 516;

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