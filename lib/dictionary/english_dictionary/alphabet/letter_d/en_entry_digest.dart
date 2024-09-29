import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydigest extends StatefulWidget {
  const EnglishEntrydigest({super.key});

  @override
  State<EnglishEntrydigest> createState() => _EnglishEntrydigestState();
}

class _EnglishEntrydigestState extends State<EnglishEntrydigest> {
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
    return const EntryTitle(word: "digest");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: digest");
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
    return const IPAofEnglish(text: "IpaUK: /daɪˈdʒest/,  /dɪˈdʒest/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdigest(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("digest");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdigest("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /daɪˈdʒest/,  /dɪˈdʒest/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdigest(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("digest");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdigest("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdigests1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Humans cannot digest plants such as grass.");
  }

  Future<void> speakdigests2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "You should allow a little time after a meal for the food to digest.");
  }

  Future<void> speakdigests3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He has to avoid fat because his body can't digest it.");
  }

  Future<void> speakdigests4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Some foods are digested more easily than others.");
  }

  Future<void> speakdigests5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The plant uses anaerobic bacteria to digest organic material and release methane gas.");
  }

  Future<void> speakdigests6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "These DNA fragments were digested with the appropriate enzymes.");
  }

  Future<void> speakdigests7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He paused, waiting for her to digest the information.");
  }

  Future<void> speakdigests8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The news was hard to digest.");
  }

  Future<void> speakdigests9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A digest of the research findings is now available.");
  }

  Future<void> speakdigests10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The company publishes a monthly digest of its activities.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: پوختە، کورتە، کورتەی قانوونی ڕۆم، لە سەردەمی، ڕێکخرا.	(کیمیا) ماک یان تێکەڵەیێ لە ئەنجامی ھەرس
"""),
          const DefinitionKurdish(text: "١. (کردار) ھەرسکردنی خۆراک"),
          SentencesRow(
            englishText: "Humans cannot digest plants such as grass.",
            kurdishText: "مرۆڤ ناتوانێت ڕووەکی وەک گیا ھەرس بکات.",
            onPressedBritish: () => speakdigests1("en-GB"),
            onPressedAmerican: () => speakdigests1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "You should allow a little time after a meal for the food to digest.",
            kurdishText:
                "دەبێت کەمێک کات بدەیت بۆ خواردن لە دوای ژەمێک بۆ ئەوەی ھەرس ببێت.",
            onPressedBritish: () => speakdigests2("en-GB"),
            onPressedAmerican: () => speakdigests2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He has to avoid fat because his body can't digest it.",
            kurdishText:
                "دەبێت لە چەوری بەدوور ببێت چونکە جەستەی ناتوانێت ھەرسی بکات.",
            onPressedBritish: () => speakdigests3("en-GB"),
            onPressedAmerican: () => speakdigests3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Some foods are digested more easily than others.",
            kurdishText: "ھەندێک خواردن ئاسانتر ھەرس دەبن وەک ئەوانی دیکە.",
            onPressedBritish: () => speakdigests4("en-GB"),
            onPressedAmerican: () => speakdigests4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) شیکردنەوە یان دەرھێنانی مادەی بەسوود لە مادەیەک بە گەرمی، ئەنزیم، یان توێنەر"),
          SentencesRow(
            englishText:
                "The plant uses anaerobic bacteria to digest organic material and release methane gas.",
            kurdishText:
                "ڕووەکەکە بەکتریای ھەوانەویست بەکاردێنێت بۆ شیکردنەوەی مادە ئەندامییەکان و دەردانی گازی میسان.",
            onPressedBritish: () => speakdigests5("en-GB"),
            onPressedAmerican: () => speakdigests5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "These DNA fragments were digested with the appropriate enzymes.",
            kurdishText: "ئەم پارچە دی‌ئێن‌ئییانە شیکرانەوە بە ئەنزیمی گونجاو.",
            onPressedBritish: () => speakdigests6("en-GB"),
            onPressedAmerican: () => speakdigests6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) بیرکردنەوە لە شتێک بۆ ئەوەی بە تەواوی لێی تێ بگەیت"),
          SentencesRow(
            englishText:
                "He paused, waiting for her to digest the information.",
            kurdishText: "وەستا و چاوەڕێی کرد زانیارییەکە وەربگرێت.",
            onPressedBritish: () => speakdigests7("en-GB"),
            onPressedAmerican: () => speakdigests7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The news was hard to digest.",
            kurdishText: "ھەواڵەکە سەخت بوو بۆ تێگەشتن.",
            onPressedBritish: () => speakdigests8("en-GB"),
            onPressedAmerican: () => speakdigests8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) کورتە ڕاپۆرتێک کە گرنگترین زانیاری نووسراوێکی درێژتری تێدایە"),
          SentencesRow(
            englishText: "A digest of the research findings is now available.",
            kurdishText: "پوختەیەکی دۆزرانەوەی لێکۆڵینەوەکە ئێستا بەردەستە.",
            onPressedBritish: () => speakdigests9("en-GB"),
            onPressedAmerican: () => speakdigests9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The company publishes a monthly digest of its activities.",
            kurdishText:
                "کۆمپانیاکە کورتەیەکی مانگانەیی چالاکییەکانی بڵاودەکاتەوە.",
            onPressedBritish: () => speakdigests10("en-GB"),
            onPressedAmerican: () => speakdigests10("en-US"),
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
- Noun: digest (derived forms: digests, digesting, digested)
1. A periodical that summarizes the news
 
2. Something that is compiled (as into a single book or file) (= compilation)

- Verb: digest 
1. Convert food into absorbable substances
"I cannot digest milk products"
 
2. Arrange and integrate in the mind
"I cannot digest all this information"
 
3. Put up with something or somebody unpleasant (= endure, stick out, stomach, bear, stand, tolerate, support, brook, abide, suffer, put up)
"The new secretary had to digest a lot of unprofessional remarks";

4. Become assimilated into the body
"Protein digests in a few hours"
 
5. Systematize, as by classifying and summarizing
"the government digested the entire law into a code"
 
6. Soften or disintegrate, as by undergoing exposure to heat or moisture
 
7. Make more concise (= condense, concentrate, distill [N. Amer], distil [Brit])
"digest the contents of a book into a summary";
 
8. Soften or disintegrate by means of chemical action, heat, or moisture
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

  final String _videoId = '4JE-wdA3PHw';
  final double _startSeconds = 121;

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

  final String _videoId = '7PXvZb7IQIc';
  final double _startSeconds = 11;

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

  final String _videoId = '2V_u6EBKGUo';
  final double _startSeconds = 413;

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

  final String _videoId = 'X3TAROotFfM';
  final double _startSeconds = 44;

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

  final String _videoId = '57htei0Xw1E';
  final double _startSeconds = 377;

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

  final String _videoId = 'oiLdWXLXDeA';
  final double _startSeconds = 1513;

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

  final String _videoId = 'XeHl5Y7m1xM';
  final double _startSeconds = 187;

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