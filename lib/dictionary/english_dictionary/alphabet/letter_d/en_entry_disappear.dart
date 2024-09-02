import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydisappear extends StatefulWidget {
  const EnglishEntrydisappear({super.key});

  @override
  State<EnglishEntrydisappear> createState() => _EnglishEntrydisappearState();
}

class _EnglishEntrydisappearState extends State<EnglishEntrydisappear> {
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
    return const EntryTitle(word: "disappear");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: disappear");
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
    return const IPAofEnglish(text: "IpaUK: /ˌdɪsəˈpɪə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisappear(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("disappear");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdisappear("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˌdɪsəˈpɪr/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisappear(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("disappear");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdisappear("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisappears1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("With that, Matt promptly disappeared.");
  }

  Future<void> speakdisappears2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The mirror made the ceiling seem to disappear.");
  }

  Future<void> speakdisappears3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The plane disappeared behind a cloud.");
  }

  Future<void> speakdisappears4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Lisa watched until the train disappeared from view.");
  }

  Future<void> speakdisappears5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The problem won't just disappear.");
  }

  Future<void> speakdisappears6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Her nervousness quickly disappeared once she was on stage.");
  }

  Future<void> speakdisappears7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Wildlife is fast disappearing from our countryside.");
  }

  Future<void> speakdisappears8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "These fish have virtually disappeared from their traditional waters.");
  }

  Future<void> speakdisappears9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I can never find a pen in this house. They disappear as soon as I buy them.");
  }

  Future<void> speakdisappears10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The plane mysteriously disappeared over the Indian Ocean.");
  }

  Future<void> speakdisappears11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The plane suddenly just disappeared from the radar screen.");
  }

  Future<void> speakdisappears12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("One month later, he was disappeared by the regime.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: ون‌بوون، بزر‌بوون، دیار نەبوون
"""),
          const DefinitionKurdish(text: "١. (کردار) لەبەرچاو نەمان"),
          SentencesRow(
            englishText: "With that, Matt promptly disappeared.",
            kurdishText: "لەگەڵ ئەوەی، مات لەناکو دیارنەما.",
            onPressedBritish: () => speakdisappears1("en-GB"),
            onPressedAmerican: () => speakdisappears1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The mirror made the ceiling seem to disappear.",
            kurdishText: "ئاوێنەکە بنبانەکەی وا پیشاندا کە ونبووبێت.",
            onPressedBritish: () => speakdisappears2("en-GB"),
            onPressedAmerican: () => speakdisappears2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The plane disappeared behind a cloud.",
            kurdishText: "فڕۆکەکە لەپشتی ھەورێکەوە ونبوو.",
            onPressedBritish: () => speakdisappears3("en-GB"),
            onPressedAmerican: () => speakdisappears3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Lisa watched until the train disappeared from view.",
            kurdishText:
                "لیسا سەیری کرد تاوەکو شەمەندەفەرەکە لەبەرچاوام ونبوو.",
            onPressedBritish: () => speakdisappears4("en-GB"),
            onPressedAmerican: () => speakdisappears4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (کردار) وەستان لە بوون"),
          SentencesRow(
            englishText: "The problem won't just disappear.",
            kurdishText: "کێشەکە ھەروا چارە نابێت.",
            onPressedBritish: () => speakdisappears5("en-GB"),
            onPressedAmerican: () => speakdisappears5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Her nervousness quickly disappeared once she was on stage.",
            kurdishText: "شڵەژاوییەکەی زوو نەما کە لەسەر سەکۆکە بوو.",
            onPressedBritish: () => speakdisappears6("en-GB"),
            onPressedAmerican: () => speakdisappears6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Wildlife is fast disappearing from our countryside.",
            kurdishText: "ژیانی کێوی بەخێرایی لەناودەچێت لە دەرەوەی شارمان.",
            onPressedBritish: () => speakdisappears7("en-GB"),
            onPressedAmerican: () => speakdisappears7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "These fish have virtually disappeared from their traditional waters.",
            kurdishText:
                "ئەم ماسییانە تا ئاستێکی زۆر لەناوچوونە لە ئاوەکانی خپیان.",
            onPressedBritish: () => speakdisappears8("en-GB"),
            onPressedAmerican: () => speakdisappears8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (کردار) ونبوون"),
          SentencesRow(
            englishText:
                "I can never find a pen in this house. They disappear as soon as I buy them.",
            kurdishText:
                "ھەرگیز ناتوانم پێنووسێک لەم ماڵەدا بدۆزمەوە. وندەبن ھەرکە دەیانکڕم.",
            onPressedBritish: () => speakdisappears9("en-GB"),
            onPressedAmerican: () => speakdisappears9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The plane mysteriously disappeared over the Indian Ocean.",
            kurdishText: "فڕۆکەکە بەشێوەیەکی نھێنی لەسەر زەریای ھندی ونبوو.",
            onPressedBritish: () => speakdisappears10("en-GB"),
            onPressedAmerican: () => speakdisappears10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The plane suddenly just disappeared from the radar screen.",
            kurdishText: "فڕۆکەکە لەناکاو لە شاشەی ڕادار ونبوو.",
            onPressedBritish: () => speakdisappears11("en-GB"),
            onPressedAmerican: () => speakdisappears11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) کوشتن یان ھێشتنەوەی کەسێک بەبێ دادگایی لە زیندان، بەزۆری بۆ ھۆکاری سیاسی"),
          SentencesRow(
            englishText: "One month later, he was disappeared by the regime.",
            kurdishText: "مانگێک دواتر لەلایەن ڕژێمەوە سەرنقووم کرا.",
            onPressedBritish: () => speakdisappears12("en-GB"),
            onPressedAmerican: () => speakdisappears12("en-US"),
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
- Verb: disappear (derived forms: disappeared, disappearing, disappears)
1. Get lost, as without warning or explanation (= vanish, go away)
"He disappeared without a trace";
 
2. Become invisible or unnoticeable (= vanish, go away)
"The effect disappeared when day broke";
 
3. Cease to exist (= vanish)
"An entire civilization disappeared";
 
4. Become less intense and fade away gradually (= melt, evaporate)
"her resistance disappeared under his charm";
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

  final String _videoId = 'tXjHb5QmDV0';
  final double _startSeconds = 1078;

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

  final String _videoId = 'NdTalMWrQ7c';
  final double _startSeconds = 14;

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

  final String _videoId = 'Rg4Tu6p7A3Y';
  final double _startSeconds = 124;

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

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 608;

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

  final String _videoId = 'PhNUjg9X4g8';
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

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'AwhBTrzzqeg';
  final double _startSeconds = 225;

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

  final String _videoId = 'zZM57oTu9Ng';
  final double _startSeconds = 100;

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