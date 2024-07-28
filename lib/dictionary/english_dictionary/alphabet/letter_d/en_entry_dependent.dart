import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:routemaster/routemaster.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydependent extends StatefulWidget {
  const EnglishEntrydependent({super.key});

  @override
  State<EnglishEntrydependent> createState() => _EnglishEntrydependentState();
}

class _EnglishEntrydependentState extends State<EnglishEntrydependent> {
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
    return const EntryTitle(word: "dependent");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dependent");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈpendənt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdependent(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dependent");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdependent("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈpendənt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdependent(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dependent");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdependent("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdependents1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You can't be dependent on your parents all your life.");
  }

  Future<void> speakdependents2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The festival is heavily dependent on sponsorship for its success.");
  }

  Future<void> speakdependents3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "74% of people in the survey were at least partially dependent on their cars.");
  }

  Future<void> speakdependents4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Small companies are dependent upon the local economy.");
  }

  Future<void> speakdependents5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It's very easy to become dependent on sleeping pills.");
  }

  Future<void> speakdependents6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("A child's development is dependent on many factors.");
  }

  Future<void> speakdependents7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The price is dependent on how many extras you choose.");
  }

  Future<void> speakdependents8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The word ‘because’ forces the clause to be dependent on some other main clause.");
  }

  Future<void> speakdependents20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The festival is heavily dependent on sponsorship for its success.0");
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
کوردی: بەستە، بەستراو، پێوەبەند، دیبەند، بەندەوار، پەیوەست، پێوەبەستراو، بەند، ناسەربەخۆ، پاشکۆ، سەربەدی، ژێردەست، ملکەچ، سەربە (شتێ بوو)، پشت‌پێ‌بەستراو،	نان‌خۆر،	گیرۆدە
"""),
          const DefinitionKurdish(
              text:
                  "١. (ھاوەڵناو) پێویستی بە کەسێک/شتێک بۆ ڕزگاربوون یان سەرکەوتوو بوون"),
          SentencesRow(
            englishText:
                "You can't be dependent on your parents all your life.",
            kurdishText:
                "ناکرێت ھەموو ژیانت پشت بە دایبابت ببەستیت.", // dependent
            onPressedBritish: () => speakdependents1("en-GB"),
            onPressedAmerican: () => speakdependents1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The festival is heavily dependent on sponsorship for its success.",
            kurdishText:
                "فیستیڤاڵەکە تەواو پشتبەستووە بە سپۆنسەر بۆ سەرکەوتنی.",
            onPressedBritish: () => speakdependents2("en-GB"),
            onPressedAmerican: () => speakdependents2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "74% of people in the survey were at least partially dependent on their cars.",
            kurdishText:
                "٧٤٪ ـی ئەو کەسانەی سەرژمێری کران تا ڕادەیەک کەمێک پشتبەستوو بوون ئۆتۆمبێلەکانیان.",
            onPressedBritish: () => speakdependents3("en-GB"),
            onPressedAmerican: () => speakdependents3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Small companies are dependent upon the local economy.",
            kurdishText: "کۆمپانیا بچووکەکان پشت بە ئابووری خۆجێیی دەبەستن.",
            onPressedBritish: () => speakdependents4("en-GB"),
            onPressedAmerican: () => speakdependents4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ھاوەڵناو) ئاڵوودە بە شتێک"),
          SentencesRow(
            englishText:
                "It's very easy to become dependent on sleeping pills.",
            kurdishText: "زۆر ئاسانە ئاڵوودە بیت بە حەبی خەو.",
            onPressedBritish: () => speakdependents5("en-GB"),
            onPressedAmerican: () => speakdependents5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ھاوەڵناو) کاریگەربوون بە شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "A child's development is dependent on many factors.",
            kurdishText: "گەشەی منداڵ پشت بە زۆر فاکتەر دەبەستێت.",
            onPressedBritish: () => speakdependents6("en-GB"),
            onPressedAmerican: () => speakdependents6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The price is dependent on how many extras you choose.",
            kurdishText:
                "نرخەکە پشت دەبەستێت بەوەی چەند دانەی زیاتر ھەڵدەبژێریت.",
            onPressedBritish: () => speakdependents7("en-GB"),
            onPressedAmerican: () => speakdependents7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) پاڕستە؛ ڕستەیەک کە پشت بە یەکێکی دیکە دەبەستێت"),
          SentencesRow(
            englishText:
                "The word ‘because’ forces the clause to be dependent on some other main clause.",
            kurdishText:
                "وشەی 'because' بڕگەکە ناچار دەکات پشت بە یەکێکی دیکەی سەرەکی ببەستێت.",
            onPressedBritish: () => speakdependents8("en-GB"),
            onPressedAmerican: () => speakdependents8("en-US"),
          ),
          const DividerDefinition(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DefinitionKurdishLink(
                text: "٥. بڕوانە لە dependant",
                links: [
                  LinkInfo(
                    start: 12,
                    end: 22,
                    style: const TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
                onTap: () {
                  Routemaster.of(context).push("/english-dependent/dependant");
                },
              ),
            ],
          ),
          // dependents900"),
          // speakdependents9
          // dependents9("en-US"),
          // dependents1000"),
          // speakdependents10
          // dependents10("en-US"),
          // dependents1100"),
          // speakdependents11
          // dependents11("en-US"),
          // dependents1200"),
          // speakdependents12
          // dependents12("en-US"),
          // dependents1300"),
          // speakdependents13
          // dependents13("en-US"),
          // dependents1400"),
          // speakdependents14
          // dependents14("en-US"),
          // dependents1500"),
          // speakdependents15
          // dependents15("en-US"),
          // dependents1600"),
          // speakdependents16
          // dependents16("en-US"),
          // dependents1700"),
          // speakdependents17
          // dependents17("en-US"),
          // dependents1800"),
          // speakdependents18
          // dependents18("en-US"),
          // dependents1900"),
          // speakdependents19
          // dependents19("en-US"),
          // "The festival is heavily dependent on sponsorship for its success.0"),
          // speakdependents20
          // dependents20("en-US"),
          // dependents2100"),
          // speakdependents21
          // dependents21("en-US"),
          // dependents2200"),
          // speakdependents22
          // dependents22("en-US"),
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
- Adjective: dependent 
1. Relying on or requiring a person or thing for support, supply, or what is needed
"dependent children"; "dependent on moisture"
 
2. (of a clause) unable to stand alone syntactically as a complete sentence (= subordinate)
"a dependent clause functions as a noun or adjective or adverb within a sentence";
 
3. Contingent on something else (= qualified)
 
4. Held from above and hanging down (= pendent, pendant)
"a dependent bunch of grapes";
 
5. Being under the power or sovereignty of another or others (= subject)
"a dependent prince";
 
6. Addicted to a drug (= drug-addicted, hooked [informal], strung-out)

- Noun: dependent (derived forms: dependents)
1. A person who relies on another person for support (especially financial support) (= dependant [Brit])
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

  final String _videoId = 'FgT3GCsJteA';
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

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = '5R65skWdg7Y';
  final double _startSeconds = 3105;

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

  final String _videoId = '7EZ87bIvCOM';
  final double _startSeconds = 506;

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

  final String _videoId = 'rr2XfL_df3o';
  final double _startSeconds = 1162;

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

  final String _videoId = 'vMZfyEy_jpI';
  final double _startSeconds = 353;

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

  final String _videoId = 'zVqFAMOtwaI';
  final double _startSeconds = 329;

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

  final String _videoId = 'Tv5z7N5hYgw';
  final double _startSeconds = 236;

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