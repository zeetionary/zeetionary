import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydiscuss extends StatefulWidget {
  const EnglishEntrydiscuss({super.key});

  @override
  State<EnglishEntrydiscuss> createState() => _EnglishEntrydiscussState();
}

class _EnglishEntrydiscussState extends State<EnglishEntrydiscuss> {
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
    return const EntryTitle(word: "discuss");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: discuss");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈskʌs/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiscuss(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("discuss");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdiscuss("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈskʌs/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiscuss(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("discuss");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdiscuss("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdiscusss1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Have you discussed the problem with anyone?");
  }

  Future<void> speakdiscusss2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'm not prepared to discuss this on the phone.");
  }

  Future<void> speakdiscusss3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They met to discuss the possibility of working together.");
  }

  Future<void> speakdiscusss4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We need to discuss when we should go.");
  }

  Future<void> speakdiscusss5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We briefly discussed buying a second car.");
  }

  Future<void> speakdiscusss6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They discussed the whole family possibly travelling together.");
  }

  Future<void> speakdiscusss7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He refused to discuss it with me.");
  }

  Future<void> speakdiscusss8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Ralph called a meeting to discuss how they should respond to the offer.");
  }

  Future<void> speakdiscusss9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I wouldn't accept the job without discussing it with my family first.");
  }

  Future<void> speakdiscusss10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This topic will be discussed at greater length in the next chapter.");
  }

  Future<void> speakdiscusss11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The author discusses the economic impact of these changes.");
  }

  Future<void> speakdiscusss12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The article discusses how teachers can use technology in their classrooms.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: باس‌وڕاوێژ کردن، تاوتوێ کردن، وتووێژ کردن
"""),
          const DefinitionKurdish(
              text:
                  "١. (کردار) قسەکردن لەسەر شتێک لەگەڵ کەسێک، بەتایبەتی بۆ بڕیاردان "),
          SentencesRow(
            englishText: "Have you discussed the problem with anyone?",
            kurdishText: "کێشەکەت لەگەڵ ھیچ کەس باس کردووە؟",
            onPressedBritish: () => speakdiscusss1("en-GB"),
            onPressedAmerican: () => speakdiscusss1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I'm not prepared to discuss this on the phone.",
            kurdishText: "ئامادەنیم ئەمە بە تەلەفۆن باس بکەم.",
            onPressedBritish: () => speakdiscusss2("en-GB"),
            onPressedAmerican: () => speakdiscusss2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText:
                        "They met to discuss the possibility of working together.",
                    kurdishText:
                        "یەکیان بینی بۆ باسکردنی ئەگەری کارکردن پێکەوە.",
                    onPressedBritish: () => speakdiscusss3("en-GB"),
                    onPressedAmerican: () => speakdiscusss3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "We need to discuss when we should go.",
                    kurdishText: "دەبێت باس لەوە بکەین کە کەی بچین.",
                    onPressedBritish: () => speakdiscusss4("en-GB"),
                    onPressedAmerican: () => speakdiscusss4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "We briefly discussed buying a second car.",
                    kurdishText:
                        "بە کورتی باسمان لە کڕینی ئۆتۆمبێلی دووەم کرد.",
                    onPressedBritish: () => speakdiscusss5("en-GB"),
                    onPressedAmerican: () => speakdiscusss5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "They discussed the whole family possibly travelling together.",
                    kurdishText:
                        "باسیان لەوە کرد کە بکرێت تەواوی خێزانەکە پێکەوە گەشت بکەن.",
                    onPressedBritish: () => speakdiscusss6("en-GB"),
                    onPressedAmerican: () => speakdiscusss6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "He refused to discuss it with me.",
                    kurdishText: "ڕەتیکردەوە لەگەڵم باسی بکات.",
                    onPressedBritish: () => speakdiscusss7("en-GB"),
                    onPressedAmerican: () => speakdiscusss7("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "Ralph called a meeting to discuss how they should respond to the offer.",
                    kurdishText:
                        "ڕاڵف داوای کۆبوونەوەیەکی کرد بۆ باسکردنی ئەوەی چۆن وەڵامی پێشنیارەکە بدەنەوە.",
                    onPressedBritish: () => speakdiscusss8("en-GB"),
                    onPressedAmerican: () => speakdiscusss8("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "I wouldn't accept the job without discussing it with my family first.",
                    kurdishText:
                        "کارەکە وەرناگرم بەبێ باسکردنی لەگەڵ خێزانەکەم.",
                    onPressedBritish: () => speakdiscusss9("en-GB"),
                    onPressedAmerican: () => speakdiscusss9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) نووسین یان قسەکردن لەسەر شتێک بە وردی و پیشاندانی بیرۆکە و بۆچوونی جیاواز لەسەری"),
          SentencesRow(
            englishText:
                "This topic will be discussed at greater length in the next chapter.",
            kurdishText:
                "بابەتەکە بە درێژی زیاتر باسی لێوە دەکرێت لە بەشی دواتر.",
            onPressedBritish: () => speakdiscusss10("en-GB"),
            onPressedAmerican: () => speakdiscusss10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The author discusses the economic impact of these changes.",
            kurdishText:
                "نووسەرەکە باس لە کاریگەریی ئابووری ئەم گۆڕانکارییانە دەکات.",
            onPressedBritish: () => speakdiscusss11("en-GB"),
            onPressedAmerican: () => speakdiscusss11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The article discusses how teachers can use technology in their classrooms.",
            kurdishText:
                "وتارەکە باس لەوە دەکات کە چۆن مامۆستایان دەتوانن تەکنەلۆژیا لە پۆلەکاندا بەکاربھێنن.",
            onPressedBritish: () => speakdiscusss12("en-GB"),
            onPressedAmerican: () => speakdiscusss12("en-US"),
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
- Verb: discuss (derived forms: discussing, discusses, discussed)
1. To consider or examine in speech or writing (= discourse, talk about)
"The class discussed Dante's 'Inferno'";
 
2. Speak with others about (something); talk (something) over in detail; have a discussion (= hash out, talk over)
"We discussed our household budget";
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

  final String _videoId = 'NFtQOxjWfaA';
  final double _startSeconds = 365;

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

  final String _videoId = 'KJy7T24rhg0';
  final double _startSeconds = 17;

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

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 959;

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

  final String _videoId = '0SYKA00eFWY';
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

  final String _videoId = 'o-NuXSWtL2s';
  final double _startSeconds = 32;

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

  final String _videoId = '1tUfxNIlnqY';
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

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = '1aHVa2jT3n4';
  final double _startSeconds = 75;

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