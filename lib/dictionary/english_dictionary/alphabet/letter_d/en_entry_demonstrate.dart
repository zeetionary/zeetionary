import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydemonstrate extends StatefulWidget {
  const EnglishEntrydemonstrate({super.key});

  @override
  State<EnglishEntrydemonstrate> createState() =>
      _EnglishEntrydemonstrateState();
}

class _EnglishEntrydemonstrateState extends State<EnglishEntrydemonstrate> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 90,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EntryAndIPA(),
                          ],
                        ),
                      ],
                    ),
                  ),
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
    return const EntryTitle(word: "demonstrate");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: demonstrate");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdemənstreɪt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdemonstrate(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("demonstrate");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdemonstrate("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdemənstreɪt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdemonstrate(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("demonstrate");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdemonstrate("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdemonstrates1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "New research convincingly demonstrates that age-related memory loss is not inevitable.");
  }

  Future<void> speakdemonstrates2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "These paintings demonstrate his extraordinary ability as a portrait painter.");
  }

  Future<void> speakdemonstrates3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "This study clearly demonstrates how fishing can affect an ecosystem.");
  }

  Future<void> speakdemonstrates4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Let me demonstrate to you some of the difficulties we are facing.");
  }

  Future<void> speakdemonstrates5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The team demonstrated breathtaking skills.");
  }

  Future<void> speakdemonstrates6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We want to demonstrate our commitment to human rights.");
  }

  Future<void> speakdemonstrates7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Her job involves demonstrating new educational software.");
  }

  Future<void> speakdemonstrates8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The system was demonstrated to officials from 17 countries.");
  }

  Future<void> speakdemonstrates9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Let me demonstrate to you how it works.");
  }

  Future<void> speakdemonstrates10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Hundreds of protesters demonstrated outside the court.");
  }

  Future<void> speakdemonstrates11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Their objective was to demonstrate peacefully for civil rights.");
  }

  Future<void> speakdemonstrates20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "These paintings demonstrate his extraordinary ability as a portrait painter.0");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: سەلماندن، ڕاڤە کردن، شەرح دان، خۆپیشاندان، ڕێپێوان
"""),
          const DefinitionKurdish(
              text: "١. (کردار) پیشاندانی شتێک بە ڕوونی بە بەڵگەوە"),
          SentencesRow(
            englishText:
                "New research convincingly demonstrates that age-related memory loss is not inevitable.",
            kurdishText:
                "توێژینەوەی تازە قایلکارانە ئەوە پیشان دەدات کە لەبیرچوونەوەی پەیوەندیدار بە تەمەن ڕێگەلێ‌نەگیردراوە.",
            onPressedBritish: () => speakdemonstrates1("en-GB"),
            onPressedAmerican: () => speakdemonstrates1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "These paintings demonstrate his extraordinary ability as a portrait painter.",
            kurdishText:
                "ئاو تابلۆیانە توانای بێ‌وێنەی پیشان دەدەن وەک نیگارکێشێکی پۆرترەیت.",
            onPressedBritish: () => speakdemonstrates2("en-GB"),
            onPressedAmerican: () => speakdemonstrates2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "This study clearly demonstrates how fishing can affect an ecosystem.",
            kurdishText:
                "ئەم توێژینەوەیە بە ڕوونی پیشانی دەدات کە ماسیگرتن چؤن کار لە ژینگە دەکات.",
            onPressedBritish: () => speakdemonstrates3("en-GB"),
            onPressedAmerican: () => speakdemonstrates3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Let me demonstrate to you some of the difficulties we are facing.",
            kurdishText:
                "ڕێگام پێبدە ھەندێک لەو سەختییانەت پێ پیشان بدەم کە ڕووبەڕووی دەبینەوە.",
            onPressedBritish: () => speakdemonstrates4("en-GB"),
            onPressedAmerican: () => speakdemonstrates4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) بە کردار پیشاندانی ئەوەی کە چی خاسیەتێک، ھەستێک، یان باوەڕێکت ھەیە"),
          SentencesRow(
            englishText: "The team demonstrated breathtaking skills.",
            kurdishText: "تیمەکە شارەزایی سەرسوڕھێنەرانەیان پیشاندا.",
            onPressedBritish: () => speakdemonstrates5("en-GB"),
            onPressedAmerican: () => speakdemonstrates5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "We want to demonstrate our commitment to human rights.",
            kurdishText: "دەمانەوێت پابەندیمان بە مافەکانی مرۆڤ پیشان بدەین.",
            onPressedBritish: () => speakdemonstrates6("en-GB"),
            onPressedAmerican: () => speakdemonstrates6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) پیشاندان یان ڕوونکردنەوەی شێوازی کارکردن یان کردنی شتێک"),
          SentencesRow(
            englishText:
                "Her job involves demonstrating new educational software.",
            kurdishText:
                "کارەکەی ناساندنی نەرمامێری پەروەردەیی تازە لەخۆدەگرێت.",
            onPressedBritish: () => speakdemonstrates7("en-GB"),
            onPressedAmerican: () => speakdemonstrates7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The system was demonstrated to officials from 17 countries.",
            kurdishText: "سیستەمەکە بە بەرپرسانی ٣٧ وڵات ناسێندرا.",
            onPressedBritish: () => speakdemonstrates8("en-GB"),
            onPressedAmerican: () => speakdemonstrates8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Let me demonstrate to you how it works.",
            kurdishText: "ڕێگام بدە بۆت ڕوونبکەمەوە کە چۆن کاردەکات.",
            onPressedBritish: () => speakdemonstrates9("en-GB"),
            onPressedAmerican: () => speakdemonstrates9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) بەژداری کردن لە گردبوونەوە یان ڕێپێوانێکی گشتی، زۆرجار وەک ناڕەزایەتییەک بۆ پیشاندانی پشتیوانی بۆ شتێک"),
          SentencesRow(
            englishText:
                "Hundreds of protesters demonstrated outside the court.",
            kurdishText: "سەدان خۆپیشاندەر لە دەرەوەی دادگا گردبوونەوە.",
            onPressedBritish: () => speakdemonstrates10("en-GB"),
            onPressedAmerican: () => speakdemonstrates10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Their objective was to demonstrate peacefully for civil rights.",
            kurdishText: "ئامانجیان تێکۆشان بوو بە ئاشتی بۆ مافە مەدەنییەکان.",
            onPressedBritish: () => speakdemonstrates11("en-GB"),
            onPressedAmerican: () => speakdemonstrates11("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: demonstrate (derived forms: demonstrating, demonstrates, demonstrated)
1. Give an exhibition of to an interested audience (= show, demo, exhibit, present, showcase)
"She demonstrates her dogs frequently";
 
2. Make clear the validity of something, as by an example, explanation or experiment (= prove, establish, show, shew [Brit, archaic])
"The experiment demonstrated the instability of the compound";
 
3. Provide evidence for; stand as proof of; show by one's behaviour, attitude, or external attributes (= attest, certify, manifest, evidence)
"This decision demonstrates his sense of fairness";
 
4. March in protest; take part in a demonstration (= march)
"Thousands demonstrated against globalization during the meeting of the most powerful economic nations in Seattle";
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

  final String _videoId = 'e09xig209cQ';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'SEZu7K5tGxw';
  final double _startSeconds = 197;

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

  final String _videoId = 'K-CrEi0ymMg';
  final double _startSeconds = 24;

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

  final String _videoId = '6c5XDMczC3U';
  final double _startSeconds = 248;

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

  final String _videoId = '0ST4_hmop9Y';
  final double _startSeconds = 414;

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

  final String _videoId = 'OdK54FO3BlI';
  final double _startSeconds = 74;

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

  final String _videoId = 'KOnk7Nbqkhs';
  final double _startSeconds = 70;

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