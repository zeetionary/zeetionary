import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydefect extends StatefulWidget {
  const EnglishEntrydefect({super.key});

  @override
  State<EnglishEntrydefect> createState() => _EnglishEntrydefectState();
}

class _EnglishEntrydefectState extends State<EnglishEntrydefect> {
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
    return const EntryTitle(word: "defect");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: defect");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdiːfekt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefect(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("defect");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdefect("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdiːfekt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefect(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("defect");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdefect("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdefects1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Goods with slight defects are sold at half price.");
  }

  Future<void> speakdefects2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The photograph shows slight defects due to age.");
  }

  Future<void> speakdefects3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The book contains serious defects.");
  }

  Future<void> speakdefects4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The inspector found defects in the aircraft's construction.");
  }

  Future<void> speakdefects5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The child had a mild heart defect.");
  }

  Future<void> speakdefects6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He has a congenital heart defect.");
  }

  Future<void> speakdefects7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The drug is widely known to cause birth defects.");
  }

  Future<void> speakdefects8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She defected from the party just days before the election.");
  }

  Future<void> speakdefects9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "A number of writers and musicians defected from the Soviet Union to the West in the 1960s.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: کەمی، گرفت، کێشە، گیروگرفت، گیر، کەم‌وکوڕی، ناتەواوی، ناپوختی، ناپوختەیی، کەم‌وکورتی، عەیب، خەوش، ئیراد
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) ھەڵەیەک لە شتێک یان شێوازی درووستکردنی کە واتای ئەوەیە کێشەی ھەیە"),
          SentencesRow(
            englishText: "Goods with slight defects are sold at half price.",
            kurdishText:
                "ئەو کەلوپەلانەی کە کەمێک خەوشییان تێدایە بە نیوە نرخ دەفرۆشرێن.", // defect
            onPressedBritish: () => speakdefects1("en-GB"),
            onPressedAmerican: () => speakdefects1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The photograph shows slight defects due to age.",
            kurdishText: "وێنەکە کەمێک عەیبی تێدایە بەھۆی تەمەنەوە.",
            onPressedBritish: () => speakdefects2("en-GB"),
            onPressedAmerican: () => speakdefects2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The book contains serious defects.",
            kurdishText: "کتێبەکە ھەڵەی سەختی تێدایە.",
            onPressedBritish: () => speakdefects3("en-GB"),
            onPressedAmerican: () => speakdefects3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The inspector found defects in the aircraft's construction.",
            kurdishText: "پشکنەرەکە ھەڵەی دۆزییەوە لە درووستکردنی فڕۆکەکەدا.",
            onPressedBritish: () => speakdefects4("en-GB"),
            onPressedAmerican: () => speakdefects4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (ناو) کێشەیەک لە بەشێک لە جەستەی کەسێکدا یان شێوازی کارکردنی"),
          SentencesRow(
            englishText: "The child had a mild heart defect.",
            kurdishText: "منداڵەکە کێشەیەکی بچووکی دڵی ھەیە.",
            onPressedBritish: () => speakdefects5("en-GB"),
            onPressedAmerican: () => speakdefects5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He has a congenital heart defect.",
            kurdishText: "کێشەیەکی زگماکی دڵی ھەیە.",
            onPressedBritish: () => speakdefects6("en-GB"),
            onPressedAmerican: () => speakdefects6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The drug is widely known to cause birth defects.",
            kurdishText:
                "مادەکە بەشێوەیەکی بەرفراوان ناسراوە بەوەی کە ببێتە ھۆکاری کێشەی منداڵبوون.",
            onPressedBritish: () => speakdefects7("en-GB"),
            onPressedAmerican: () => speakdefects7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (کردار) جێھێشتنی پارتێکی سیاسی، وڵاتێک، ھتد و پەیوەندی کردن بە یەکێکی دیکەوە کە بە دوژمن دادەنرێت"),
          SentencesRow(
            englishText:
                "She defected from the party just days before the election.",
            kurdishText: "تەنھا چەند ڕۆژێک پێش ھەڵبژاردن پارتەکەی جێھێشت.",
            onPressedBritish: () => speakdefects8("en-GB"),
            onPressedAmerican: () => speakdefects8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "A number of writers and musicians defected from the Soviet Union to the West in the 1960s.",
            kurdishText:
                "ژمارەیەک نووسەر و میوزیکژەن یەکێتی سۆڤیەتیان بۆ وڵاتانی ڕۆژئاوا جێھێشت لە ساڵانی ١٩٦٠ ـەکان.",
            onPressedBritish: () => speakdefects9("en-GB"),
            onPressedAmerican: () => speakdefects9("en-US"),
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
- Noun: defect (derived forms: defects)
1. An imperfection in a bodily system
"visual defects"; "this device permits detection of defects in the lungs"
 
2. A failing or deficiency (= shortcoming)
"that interpretation is an unfortunate defect of our lack of information";
 
3. An imperfection in an object or machine (= fault, flaw)
"if there are any defects you should send it back to the manufacturer";
 
4. A mark or flaw that spoils the appearance of something (especially on a person's body) (= blemish, mar)
"a facial defect";

- Verb: defect (derived forms: defects, defecting, defected)
1. Leave (a cause, a country or an army), often in order to join the opposing cause, country, or army (= desert)
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

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 761;

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

  final String _videoId = 'p3O6bKdPLbw';
  final double _startSeconds = 3429;

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

  final String _videoId = 'JR3z8lq2cNM';
  final double _startSeconds = 337;

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

  final String _videoId = 'EFQFKVFLuOA';
  final double _startSeconds = 1113;

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

  final String _videoId = '9yrj2iSuI38';
  final double _startSeconds = 84;

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

  final String _videoId = 'V2ec7EE0pB8';
  final double _startSeconds = 878;

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

  final String _videoId = 'Q-nWA0WeF98';
  final double _startSeconds = 2132;

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