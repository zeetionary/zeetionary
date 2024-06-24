import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycorruption extends StatefulWidget {
  const EnglishEntrycorruption({super.key});

  @override
  State<EnglishEntrycorruption> createState() => _EnglishEntrycorruptionState();
}

class _EnglishEntrycorruptionState extends State<EnglishEntrycorruption> {
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
    return const EntryTitle(word: "corruption");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: corruption");
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
    return const IPAofEnglish(text: "IpaUK: /kəˈrʌpʃn/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorruption(String languageCode) async {
    // DOPSUM: CHANGE speakcorruption
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("corruption");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcorruption("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kəˈrʌpʃn/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorruption(String languageCode) async {
    // DOPSUM: CHANGE speakcorruption
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("corruption");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcorruption("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcorruptions1(String languageCode) async {
    // DOPSUM: CHANGE speakcorruption
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The new president has promised to fight corruption.");
  }

  Future<void> speakcorruptions2(String languageCode) async {
    // DOPSUM: CHANGE speakcorruption
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was brought down by a corruption scandal.");
  }

  Future<void> speakcorruptions3(String languageCode) async {
    // DOPSUM: CHANGE speakcorruption
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There were allegations of bribery and corruption.");
  }

  Future<void> speakcorruptions4(String languageCode) async {
    // DOPSUM: CHANGE speakcorruption
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He claimed that sex and violence on TV led to the corruption of young people.");
  }

  Future<void> speakcorruptions5(String languageCode) async {
    // DOPSUM: CHANGE speakcorruption
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The word ‘holiday’ is a corruption of ‘holy day’.");
  }

  Future<void> speakcorruptions6(String languageCode) async {
    // DOPSUM: CHANGE speakcorruption
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A failure of a hard disk can cause unrecoverable data corruption.");
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
کوردی: گەندەڵی، فەساد، خراپ‌بوون، بەرتیل‌خۆری،	لادان، خریایی، لەڕێ‌دەرچوون،	ھەڵوەشانەوە، تێکچوون، شێواندن، چەواشەکردن، دەسکاری(کردن)،	فەوتاندن، تیابردن، لەنێوبردن،	بۆگەن‌بوون، گەنین، ڕزین، داقنین، پووان، داڕزان
"""),
          const DefinitionKurdish(text: "١. (ناو) گەندەڵی"),
          SentencesRow(
            englishText: "The new president has promised to fight corruption.",
            kurdishText:
                "سەرۆکە تازەکە بەڵێنی داوە شەڕی دژ بە گەندەڵی بکات.", // corruption", please follow LX instructions
            onPressedBritish: () => speakcorruptions1("en-GB"),
            onPressedAmerican: () => speakcorruptions1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She was brought down by a corruption scandal.",
            kurdishText: "بە ئابڕووچوونێکی گەندەڵی کۆتایی پێھات.",
            onPressedBritish: () => speakcorruptions2("en-GB"),
            onPressedAmerican: () => speakcorruptions2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "There were allegations of bribery and corruption.",
            kurdishText: "تۆمەتی بەرتیلخۆری و گەندەڵی ھەبوو.",
            onPressedBritish: () => speakcorruptions3("en-GB"),
            onPressedAmerican: () => speakcorruptions3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) گۆڕینی کەسێک لە باشەوە بۆ خراپ بەشێوەیەک کە ڕەفتاری نەشیاوی ھەبێت"),
          SentencesRow(
            englishText:
                "He claimed that sex and violence on TV led to the corruption of young people.",
            kurdishText:
                "بانگەشەی ئەوەی دەکرد و سێکس و توندوتیژی لەسەر تەلەفیزیۆن دەبوو ھۆکاری لەڕێ‌دەرچوونی کەسانی گەنج.",
            onPressedBritish: () => speakcorruptions4("en-GB"),
            onPressedAmerican: () => speakcorruptions4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) شێوەی وشەیەک کە گۆڕاوە و جیاوازە لە شێوازە ڕەسەنەکەی"),
          SentencesRow(
            englishText: "The word ‘holiday’ is a corruption of ‘holy day’.",
            kurdishText: "وشەت 'holiday' شێوەی گۆڕاوی 'holy day'.",
            onPressedBritish: () => speakcorruptions5("en-GB"),
            onPressedAmerican: () => speakcorruptions5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) خراپبوونی داتای کۆمپیوتەر و کارنەکردنی"),
          SentencesRow(
            englishText:
                "A failure of a hard disk can cause unrecoverable data corruption.",
            kurdishText:
                "شکستێک لە ھارد دیسکەکە دەکرێت ببێتە ھۆی خراپبوونی چاکنەبووەوەی داتا.",
            onPressedBritish: () => speakcorruptions6("en-GB"),
            onPressedAmerican: () => speakcorruptions6("en-US"),
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
- Noun: corruption (derived forms: corruptions)
1. Lack of integrity or honesty (especially susceptibility to bribery); use of a position of trust for dishonest gain (= corruptness)
 
2. In a state of progressive putrefaction (= putrescence, putridness, rottenness)
 
3. Decay of matter (as by rot or oxidation)
 
4. Moral perversion; impairment of virtue and moral principles (= degeneracy, depravation, depravity, putrefaction)
"the luxury and corruption among the upper classes";
 
5. Destroying someone's (or some group's) honesty or loyalty; undermining moral integrity (= subversion)
"corruption of a minor";
 
6. Inducement (as of a public official) by improper means (as bribery) to violate duty (as by committing a felony)
"he was held on charges of corruption and racketeering"
 
7. (linguistics) a word adopted from another language in an altered form
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

  final String _videoId = 'YCnFYvL17v4';
  final double _startSeconds = 1296;

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

  final String _videoId = '096yzDbUZz8';
  final double _startSeconds = 16;

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

  final String _videoId = 'z2r7aRQtG_U';
  final double _startSeconds = 422;

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

  final String _videoId = 'z3V1tiHErDM';
  final double _startSeconds = 431;

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

  final String _videoId = 'iu3jjBVNcLo';
  final double _startSeconds = 82;

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

  final String _videoId = '9VRxmUq1SKc';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'hO8q1W7MdNw';
  final double _startSeconds = 350;

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