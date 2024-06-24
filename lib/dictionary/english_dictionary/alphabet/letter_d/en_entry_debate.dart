import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydebate extends StatefulWidget {
  const EnglishEntrydebate({super.key});

  @override
  State<EnglishEntrydebate> createState() => _EnglishEntrydebateState();
}

class _EnglishEntrydebateState extends State<EnglishEntrydebate> {
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
    return const EntryTitle(word: "debate");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: debate");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈbeɪt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdebate(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("debate");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdebate("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈbeɪt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdebate(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("debate");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdebate("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdebates1(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The minister opened the debate.");
  }

  Future<void> speakdebates2(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("After a long debate, Congress approved the proposal.");
  }

  Future<void> speakdebates3(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The environmentalists seem to have lost the debate over the building of this road.");
  }

  Future<void> speakdebates4(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Many of these points were raised during the debate on prison reform.");
  }

  Future<void> speakdebates5(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The debate focused on who should pay for the changes.");
  }

  Future<void> speakdebates6(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The issue has sparked debate across the industry.");
  }

  Future<void> speakdebates7(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The theatre's future is a subject of lively public debate.");
  }

  Future<void> speakdebates8(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There has been heated debate about whether the film should be allowed.");
  }

  Future<void> speakdebates9(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The issue is still under debate.");
  }

  Future<void> speakdebates10(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Politicians will be debating the bill later this week.");
  }

  Future<void> speakdebates11(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It is time to debate the issue of school funding.");
  }

  Future<void> speakdebates12(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The question of the origin of the universe is still hotly debated (= strongly argued about) by scientists.");
  }

  Future<void> speakdebates13(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She debated with herself for a while, and then picked up the phone.");
  }

  Future<void> speakdebates14(String languageCode) async {
    // DOPSUM: CHANGE speakdebate
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("For a moment he debated going after her.");
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
کوردی: دیبەیت، دان‌وستان، وت‌ووێژ، مشت‌ومڕ، دمەدمە، دەمەتەقێ، شەڕەقسە، شەڕەچەلەحانێ، مشەرعێن
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) گەنگەشەیەکی فەرمی بابەتێک بەشێوەیەکی گشتی یان لە پەرلەماندا. لە دیبەیتێکدا دوو کەس یان زیاتر قسە لەسەر دوو دیدگای دژبەیەک دەکەن زۆرجار دەنگ دەدرێت لەسەر بابەتەکە"),
          SentencesRow(
            englishText:
                "The minister opened the debate (= was the first to speak).",
            kurdishText: "وەزیرەکە دیبەیتەکەی دەستپێکرد.", // debate
            onPressedBritish: () => speakdebates1("en-GB"),
            onPressedAmerican: () => speakdebates1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "After a long debate, Congress approved the proposal.",
            kurdishText:
                "لە دوای دیبەیتێکی درێژ، کۆنگرێس پێشنیارەکەی پەسەند کرد.",
            onPressedBritish: () => speakdebates2("en-GB"),
            onPressedAmerican: () => speakdebates2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The environmentalists seem to have lost the debate over the building of this road.",
            kurdishText:
                "ژینگەپارێزان واپێدەچوو دەبەیتەکەیان دۆڕاندبێت سەبارەت بە بنیاتنانی ئەم ڕێگایە.",
            onPressedBritish: () => speakdebates3("en-GB"),
            onPressedAmerican: () => speakdebates3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Many of these points were raised during the debate on prison reform.",
            kurdishText:
                "زۆرێک لەم خاڵانە باسکران لە دەمی دیبەیتی چاکسازی زینداندا.",
            onPressedBritish: () => speakdebates4("en-GB"),
            onPressedAmerican: () => speakdebates4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The debate focused on who should pay for the changes.",
            kurdishText:
                "دیبەیتەکە سەرنجی لەسەر ئەوە بوو کە کێ دەبێت خەرجییەکان بکات.",
            onPressedBritish: () => speakdebates5("en-GB"),
            onPressedAmerican: () => speakdebates5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) مشتومڕێک یان باسێک کە بۆچوونی جیاواز لەخۆدەگرێت"),
          SentencesRow(
            englishText: "The issue has sparked debate across the industry.",
            kurdishText: "بابەتەکە دیبەیتی لە پیشەسازییەکەدا دەستپێکردووە.",
            onPressedBritish: () => speakdebates6("en-GB"),
            onPressedAmerican: () => speakdebates6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The theatre's future is a subject of lively public debate.",
            kurdishText: "ھۆڵی شانۆکە بابەتی دیبەیتی گەرمی گشتییە.",
            onPressedBritish: () => speakdebates7("en-GB"),
            onPressedAmerican: () => speakdebates7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "There has been heated debate about whether the film should be allowed.",
            kurdishText:
                "مشتومڕی گەرم ھەبووە سەبارەت بەوەی ئایا ڕێگا بە فیلمەکە بدرێت.",
            onPressedBritish: () => speakdebates8("en-GB"),
            onPressedAmerican: () => speakdebates8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The issue is still under debate.",
            kurdishText: "بابەتەکە ھێشتا لە باسکردندایە.",
            onPressedBritish: () => speakdebates9("en-GB"),
            onPressedAmerican: () => speakdebates9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) باسکردنی شتێک لە پێش بڕیاردانێک یان یان دۆزینەوەی چارەسەر"),
          SentencesRow(
            englishText:
                "Politicians will be debating the bill later this week.",
            kurdishText: "سیاسییەکان کۆتایی ئەم ھەفتەیە گەنگەشەی ئەمە دەکەن.",
            onPressedBritish: () => speakdebates10("en-GB"),
            onPressedAmerican: () => speakdebates10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "It is time to debate the issue of school funding.",
            kurdishText: "کاتی ئەوەیە باسی خەرخی قوتابخانە بکەین.",
            onPressedBritish: () => speakdebates11("en-GB"),
            onPressedAmerican: () => speakdebates11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The question of the origin of the universe is still hotly debated (= strongly argued about) by scientists.",
            kurdishText:
                "بابەتی بنەچەی گەردوون ھێشتا بە گەرمی لەلایەن زانایانەوە گەنگەشە دەکرێت.",
            onPressedBritish: () => speakdebates12("en-GB"),
            onPressedAmerican: () => speakdebates12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) بە وریایی بیرکردنەوە سەبارەت بە شتێک پێش بڕیاردانێک"),
          SentencesRow(
            englishText:
                "She debated with herself for a while, and then picked up the phone.",
            kurdishText:
                "بۆ ماوەیەک ڕاوێژی لەگەڵ خۆی کرد و دواتر موبایلەکەی ھەڵگرت.",
            onPressedBritish: () => speakdebates13("en-GB"),
            onPressedAmerican: () => speakdebates13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "For a moment he debated going after her.",
            kurdishText: "بۆ ماوەیەک بیری لەوە کردەوە کە ئایا بە دوایدا بچێت.",
            onPressedBritish: () => speakdebates14("en-GB"),
            onPressedAmerican: () => speakdebates14("en-US"),
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
- Noun: debate (derived forms: debates)
1. A discussion in which reasons are advanced for and against some proposition or proposal (= argument, argumentation)
"the debate over foreign aid goes on and on";
 
2. The formal presentation of a stated proposition and the opposition to it (usually followed by a vote) (= disputation, public debate)

- Verb: debate (derived forms: debating, debated, debates)
1. Argue with one another
"We debated the question of abortion"; "John debated Mary"
 
2. Think about carefully; weigh (= consider, moot, turn over, deliberate)
"They debated the possibility of a strike";
 
3. Discuss the pros and cons of an issue (= deliberate)
 
4. Have an argument about something (= argue, contend, fence)
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

  final String _videoId = 'BxWw8AO4ZmI';
  final double _startSeconds = 406;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = '0zwNZJbM-Gw';
  final double _startSeconds = 333;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'iXLNPzBm0mw';
  final double _startSeconds = 100;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'YwzXxkMDvL8';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'QGbou-gAGd8';
  final double _startSeconds = 3;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'cFaInkRjqj0';
  final double _startSeconds = 2;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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

  final String _videoId = 'Cqbleas1mmo';
  final double _startSeconds = 511;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
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