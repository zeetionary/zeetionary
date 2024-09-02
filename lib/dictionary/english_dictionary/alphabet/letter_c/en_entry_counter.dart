import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycounter extends StatefulWidget {
  const EnglishEntrycounter({super.key});

  @override
  State<EnglishEntrycounter> createState() => _EnglishEntrycounterState();
}

class _EnglishEntrycounterState extends State<EnglishEntrycounter> {
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
    return const EntryTitle(word: "counter");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: counter");
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
    return const IPAofEnglish(text: "IpaUK: /ˈkaʊntə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcounter(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("counter");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcounter("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈkaʊntər/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcounter(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("counter");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcounter("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcounters1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He pushed the money across the counter to me.");
  }

  Future<void> speakcounters2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She handed me my coffee over the counter.");
  }

  Future<void> speakcounters3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We stacked the dirty plates on the kitchen counter.");
  }

  Future<void> speakcounters4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She moved her counter three spaces forward on the board.");
  }

  Future<void> speakcounters5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You need to reset the counter.");
  }

  Future<void> speakcounters6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "You can get computers to help the counters to count the votes.");
  }

  Future<void> speakcounters7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The government's programme should be an effective counter to unemployment.");
  }

  Future<void> speakcounters8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I tried to argue but he countered that the plans were not yet finished.");
  }

  Future<void> speakcounters9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Butler has countered with a lawsuit against the firm.");
  }

  Future<void> speakcounters10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Businesses would like to see new laws to counter late payments of debts.");
  }

  Future<void> speakcounters11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The company's plans run counter to local development guidelines.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: ژێتۆن، پوول، مۆرە، زار (یاری)، دیسک (چکۆلە)، پەپکیلە،	(لە لێکدانا) ـژمێر، ـپێو، پش(ت)پاژنە، بەشی پشتەوەی کەوش و پێڵاو،	سنگی ئەسپ،	پاژنە یان کنگی کەشتی کە لە سەرووی ئاوەوەیە،	بەرمیز، بەردەم، پێش‌خوان،	دژەلێدان، زەربە یان لێدانی بەرامبەر، لێدانەوە، پەرچەزەربە، پەرچەلێدان
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) ڕوویەکی درێژی تەخت کە لەسەری شت دەفرۆشرێت یان کاری بازرگانی لە فرۆشگایەک، بانکێک، ھتد دەکرێت"),
          SentencesRow(
            englishText: "He pushed the money across the counter to me.",
            kurdishText: "پارەکەی بەسەر مێزەکەدا بۆم پاڵدا.",
            onPressedBritish: () => speakcounters1("en-GB"),
            onPressedAmerican: () => speakcounters1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She handed me my coffee over the counter.",
            kurdishText: "بەسەر مێزەکەدا قاوەکەی پێمدا.",
            onPressedBritish: () => speakcounters2("en-GB"),
            onPressedAmerican: () => speakcounters2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) ڕوویەکی تەخت لە چێشتخانەدا بۆ ئامادەکردنی خواردن"),
          SentencesRow(
            englishText: "We stacked the dirty plates on the kitchen counter.",
            kurdishText:
                "دەورییە پیسەکانمان لەسەر پێش‌خوانی چێشتخانەکە ڕیزکرد.",
            onPressedBritish: () => speakcounters3("en-GB"),
            onPressedAmerican: () => speakcounters3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) زارێکی بچووک کە لە ھەندێک یاری سەر تەختەدا بەکاردێت بۆ خاڵ گرتن"),
          SentencesRow(
            englishText:
                "She moved her counter three spaces forward on the board.",
            kurdishText: "لەسەر تەختەکە سێ بۆشایی پوولەکەی بردە پێشەوە.",
            onPressedBritish: () => speakcounters4("en-GB"),
            onPressedAmerican: () => speakcounters4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) ئامێرێکی ئەلیکترۆنی بۆ ژماردنی شتێک"),
          SentencesRow(
            englishText: "You need to reset the counter.",
            kurdishText: "دەبێت ژمێرەرەکە سفر بکەیتەوە.",
            onPressedBritish: () => speakcounters5("en-GB"),
            onPressedAmerican: () => speakcounters5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) کەسێک کە شتێک دەژمێرێت"),
          SentencesRow(
            englishText:
                "You can get computers to help the counters to count the votes.",
            kurdishText:
                "دەتوانیت کۆمپیوتەرەکان وا لێ‌بکەیت یارمەتی ژمێرەرەکان بدەن دەنگەکان بژمێرن.",
            onPressedBritish: () => speakcounters6("en-GB"),
            onPressedAmerican: () => speakcounters6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ناو) وەڵامێک بۆ کەسێک/شتێک کە دژ بە بیرۆکە، پێگە، ھتد ــیانە"),
          SentencesRow(
            englishText:
                "The government's programme should be an effective counter to unemployment.",
            kurdishText:
                "پڕۆگرامەکەی حکومەت دەبێت دەبێت پێشگیرییەکی کاریگەر بێت دژ بە بێ‌کاری.",
            onPressedBritish: () => speakcounters7("en-GB"),
            onPressedAmerican: () => speakcounters7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (کردار) وەڵامدانەوەی کەسێک بە ھەوڵدان بۆ سەلماندنی ئەوەی وتوویەتی ناڕاستە"),
          SentencesRow(
            englishText:
                "I tried to argue but he countered that the plans were not yet finished.",
            kurdishText:
                "ھەوڵمدا مناقەشە بکەم، بەڵام وەڵامی دایەوە بەوەی پلانەکان ھێشتا تەواو نەبووبوون.",
            onPressedBritish: () => speakcounters8("en-GB"),
            onPressedAmerican: () => speakcounters8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Butler has countered with a lawsuit against the firm.",
            kurdishText: "بەتلەر بە سکاڵایەک دژ بە کۆمپانیاکە وەستایەوە.",
            onPressedBritish: () => speakcounters9("en-GB"),
            onPressedAmerican: () => speakcounters9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (کردار) کردنی شتێک بۆ کەمکردنەوەی کاریگەری خراپی شتێکی دیکە"),
          SentencesRow(
            englishText:
                "Businesses would like to see new laws to counter late payments of debts.",
            kurdishText:
                "بازرگانییەکان دەیانەوێت یاسای تازە ببینن کە دژ بە دانەوەی درەنگی قەرز بێت.",
            onPressedBritish: () => speakcounters10("en-GB"),
            onPressedAmerican: () => speakcounters10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (ھاوەڵکار) بە ئاراستەی پێچەوانەی شتێک"),
          SentencesRow(
            englishText:
                "The company's plans run counter to local development guidelines.",
            kurdishText:
                "پلانەکانی کۆمپانیاکە دژ بە ڕێنماییە خۆجێیەکانی گەشەپێدانن.",
            onPressedBritish: () => speakcounters11("en-GB"),
            onPressedAmerican: () => speakcounters11("en-US"),
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
- Noun: counter (derived forms: counters)
1. Table consisting of a horizontal surface over which business is transacted
 
2. Game equipment (as a piece of wood, plastic, or ivory) used for keeping a count or reserving a space in various card or board games
 
3. A calculator that keeps a record of the number of times something happens (= tabulator)
 
4. A piece of furniture that stands at the side of a dining room; has shelves and drawers (= buffet, sideboard)
 
5. A person who counts things
 
6. A quick reply to a question or remark (especially a witty or critical one) (= rejoinder, retort, return, riposte, replication, comeback)
 
7. (computing) a register whose contents go through a regular series of states (usually states indicating consecutive integers)
 
8. A piece of leather forming the back of a shoe or boot (= heel counter)
"a counter may be used to stiffen the material around the heel and to give support to the foot";
 
9. A return punch (especially by a boxer) (= counterpunch, parry)
 
10. (nautical) the overhanging stern of a vessel above the waterline

- Verb: counter (derived forms: counters, countered, countering)
1. Speak in response
"He countered with some very persuasive arguments"
 
2. Act in advance of; deal with ahead of time (= anticipate, foresee, forestall)

- Adjective: counter 
1. Indicating opposition or resistance (= antagonistic)

- Adverb: counter 
1. In the opposite direction
"run counter"

- Prefix: counter-
1. Opposite, complementary
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

  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 1240;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 267;

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

  final String _videoId = 'VvJm4pQZ04s';
  final double _startSeconds = 265;

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

  final String _videoId = 'CaaJyRvvaq8';
  final double _startSeconds = 46;

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

  final String _videoId = 'yRmOWcWdQAo';
  final double _startSeconds = 1345;

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

  final String _videoId = '5R65skWdg7Y';
  final double _startSeconds = 1546;

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

  final String _videoId = 'fGMCjELDyUY';
  final double _startSeconds = 1682;

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