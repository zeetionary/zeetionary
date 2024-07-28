import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycritical extends StatefulWidget {
  const EnglishEntrycritical({super.key});

  @override
  State<EnglishEntrycritical> createState() => _EnglishEntrycriticalState();
}

class _EnglishEntrycriticalState extends State<EnglishEntrycritical> {
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
    return const EntryTitle(word: "critical");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: critical");
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
    return const IPAofEnglish(text: "IpaUK: /ˈkrɪtɪkl/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcritical(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("critical");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcritical("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈkrɪtɪkl/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcritical(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("critical");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcritical("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcriticals1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You should just ignore any critical comments.");
  }

  Future<void> speakcriticals2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The supervisor is always very critical.");
  }

  Future<void> speakcriticals3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Some parents are highly critical of the school.");
  }

  Future<void> speakcriticals4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Industry leaders are working together to address this critical issue.");
  }

  Future<void> speakcriticals5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The kidneys play a critical role in overall health.");
  }

  Future<void> speakcriticals6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Reducing levels of carbon dioxide in the atmosphere is of critical importance.");
  }

  Future<void> speakcriticals7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Your decision is critical to our future.");
  }

  Future<void> speakcriticals8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "One of the victims of the fire remains in a critical condition.");
  }

  Future<void> speakcriticals9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The first 24 hours after the operation are the most critical.");
  }

  Future<void> speakcriticals10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This is a critical moment in our country's history.");
  }

  Future<void> speakcriticals11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His latest film attracted enthusiastic critical comment from cinema-goers.");
  }

  Future<void> speakcriticals12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Critical response to the play was mixed.");
  }

  Future<void> speakcriticals13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In her day she never received the critical acclaim she deserved.");
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
کوردی: ڕەخنەیی‌یانە، ڕەخنەگرانە،	گرنگ، دیاری‌کەر، بڕیاردەر،	مەترسی‌دار، قەیراناوی، تەنگژەیی، سەخت، شپرزە، شلوق،	بەئیراد، وردەگر، عەیب‌دۆزەرەوە، ڕەخنەگرانە، سەربە ڕەخنەگر،	لێوەشاو بۆ ڕەخنە
"""),
          const DefinitionKurdish(
              text: "١. (ھاوەڵناو) ڕەخنەگرانە؛ گوتنی شتی خراپی کەسێک یان شتێک"),
          SentencesRow(
            englishText: "You should just ignore any critical comments.",
            kurdishText:
                "دەبێت ھەموو لێدوانێکی ڕەخنەگرانە پشتگوێ بخەیت.", // critical", please follow LX instructions
            onPressedBritish: () => speakcriticals1("en-GB"),
            onPressedAmerican: () => speakcriticals1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The supervisor is always very critical.",
            kurdishText: "سەرپەرشتیارەکە ھەمیشە ڕەخنەگرانەیە.",
            onPressedBritish: () => speakcriticals2("en-GB"),
            onPressedAmerican: () => speakcriticals2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Some parents are highly critical of the school.",
            kurdishText: "ھەندێک دایباب زۆر دژبەری قوتابخانەکەن.",
            onPressedBritish: () => speakcriticals3("en-GB"),
            onPressedAmerican: () => speakcriticals3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ھاوەڵناو) زۆر گرنگ چونکە شتێک لە داھاتوودا کاریگەر دەبێت پێی"),
          SentencesRow(
            englishText:
                "Industry leaders are working together to address this critical issue.",
            kurdishText:
                "دەستڕۆشتووانی پیشەسازی پێکەوە کاردەکەن بۆ مامەڵە لەگەڵ ئەم کێشە گرنگە.",
            onPressedBritish: () => speakcriticals4("en-GB"),
            onPressedAmerican: () => speakcriticals4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The kidneys play a critical role in overall health.",
            kurdishText: "گورچیلەکان ڕۆڵێکی گرنگ دەبینن لە تەندرووستی گشتیدا.",
            onPressedBritish: () => speakcriticals5("en-GB"),
            onPressedAmerican: () => speakcriticals5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Reducing levels of carbon dioxide in the atmosphere is of critical importance.",
            kurdishText:
                "کەمکردنەوەی ئاستی دووەم ئۆکسیدی کاربۆن لە بەرگەھەوا بایەخی گرنگی ھەیە.",
            onPressedBritish: () => speakcriticals6("en-GB"),
            onPressedAmerican: () => speakcriticals6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Your decision is critical to our future.",
            kurdishText: "بڕیارەکەت بۆ داھاتوومان گرنگە.",
            onPressedBritish: () => speakcriticals7("en-GB"),
            onPressedAmerican: () => speakcriticals7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) گرنگ و نادیار، و بەئەگەرەوە ترسناک بێت"),
          SentencesRow(
            englishText:
                "One of the victims of the fire remains in a critical condition.",
            kurdishText:
                "یەکێک لە قوربانیانی ئاگرەکە لە دۆخێکی ناجێگیردا ماوەتەوە.",
            onPressedBritish: () => speakcriticals8("en-GB"),
            onPressedAmerican: () => speakcriticals8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The first 24 hours after the operation are the most critical.",
            kurdishText: "یەکەم ٢٤ کاتژمێری دوای نەشتەرگەرییەکە گرنگترینە.",
            onPressedBritish: () => speakcriticals9("en-GB"),
            onPressedAmerican: () => speakcriticals9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "This is a critical moment in our country's history.",
            kurdishText: "ئەمە ساتەوەختێکی بایەخدارە لە مێژووی وڵاتەکەماندا.",
            onPressedBritish: () => speakcriticals10("en-GB"),
            onPressedAmerican: () => speakcriticals10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ھاوەڵناو) لەخۆگرتنی بڕیاردان سەبارەت بە لایەنە باش و خراپەکانی کەسێک یان شتێک"),
          SentencesRow(
            englishText:
                "His latest film attracted enthusiastic critical comment from cinema-goers.",
            kurdishText:
                "تازەترین فیلمی لێدوانی بەجۆشی ڕەخنەگرانەی لە بینەرانی سینەماوە بە دوای خۆیدا ھێنا.",
            onPressedBritish: () => speakcriticals11("en-GB"),
            onPressedAmerican: () => speakcriticals11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Critical response to the play was mixed.",
            kurdishText: "وەڵامی ڕەخنەگرانە بۆ شانۆکە تێکەڵ بوو.",
            onPressedBritish: () => speakcriticals12("en-GB"),
            onPressedAmerican: () => speakcriticals12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ھاوەڵناو) بەپێی بڕیاری ڕەخنەگران"),
          SentencesRow(
            englishText:
                "In her day she never received the critical acclaim (= praise from the critics) she deserved.",
            kurdishText:
                "لە کاتی خۆیدا ھەرگیز ستایشی ڕەخنەگرانی وەرنەگرت کە شایەنی بوو.",
            onPressedBritish: () => speakcriticals13("en-GB"),
            onPressedAmerican: () => speakcriticals13("en-US"),
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
- Adjective: critical 
1. Marked by a tendency to find and call attention to errors and flaws
"a critical attitude"
 
2. Urgently needed; absolutely necessary (= vital)
"a critical element of the plan"; "critical medical supplies";
 
3. Forming or having the nature of a turning point or crisis (= decisive, climacteric)
"a critical point in the campaign"; "the critical test";
 
4. Characterized by careful evaluation and judgment
"a critical reading"; "a critical dissertation"; "a critical analysis of Melville's writings"
 
5. Being in or verging on a state of crisis or emergency
"a critical shortage of food"; "a critical illness"; "an illness at the critical stage"
 
6. Of or involving or characteristic of critics or criticism
"critical acclaim"
 
7. (physics) at or of a point at which a property or phenomenon suffers an abrupt change especially having enough mass to sustain a chain reaction
"a critical temperature of water is 100 degrees C--its boiling point at standard atmospheric pressure"; "critical mass"; "go critical"
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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 669;

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

  final String _videoId = 'FT3ODSg1GFE';
  final double _startSeconds = 180;

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

  final String _videoId = 'AF8d72mA41M';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'sV6uuMAnJUE';
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

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'SrDEtSlqJC4';
  final double _startSeconds = 1676;

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

  final String _videoId = 'Zad6v8ZHzdg';
  final double _startSeconds = 914;

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

  final String _videoId = 'ao2Jfm35XeE';
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