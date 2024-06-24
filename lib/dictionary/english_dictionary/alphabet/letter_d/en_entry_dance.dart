import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydance extends StatefulWidget {
  const EnglishEntrydance({super.key});

  @override
  State<EnglishEntrydance> createState() => _EnglishEntrydanceState();
}

class _EnglishEntrydanceState extends State<EnglishEntrydance> {
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
    return const EntryTitle(word: "dance");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dance");
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
    return const IPAofEnglish(text: "IpaUK: /dɑːns/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdance(String languageCode) async {
    // DOPSUM: CHANGE speakdance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dance");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdance("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dæns/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdance(String languageCode) async {
    // DOPSUM: CHANGE speakdance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dance");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdance("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdances1(String languageCode) async {
    // DOPSUM: CHANGE speakdance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Do you know any other Latin American dances?");
  }

  Future<void> speakdances2(String languageCode) async {
    // DOPSUM: CHANGE speakdance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The girls performed a graceful dance.");
  }

  Future<void> speakdances3(String languageCode) async {
    // DOPSUM: CHANGE speakdance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Find a partner and practise these new dance steps.");
  }

  Future<void> speakdances4(String languageCode) async {
    // DOPSUM: CHANGE speakdance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The performers tell the story through song and dance.");
  }

  Future<void> speakdances5(String languageCode) async {
    // DOPSUM: CHANGE speakdance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Would you like a dance?");
  }

  Future<void> speakdances6(String languageCode) async {
    // DOPSUM: CHANGE speakdance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("In her delight she got up and did a little dance.");
  }

  Future<void> speakdances7(String languageCode) async {
    // DOPSUM: CHANGE speakdance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We hold a dance every year to raise money for charity.");
  }

  Future<void> speakdances8(String languageCode) async {
    // DOPSUM: CHANGE speakdance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They met at a dance.");
  }

  Future<void> speakdances9(String languageCode) async {
    // DOPSUM: CHANGE speakdance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Do you want to dance?");
  }

  Future<void> speakdances10(String languageCode) async {
    // DOPSUM: CHANGE speakdance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He asked me to dance.");
  }

  Future<void> speakdances11(String languageCode) async {
    // DOPSUM: CHANGE speakdance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They stayed up all night singing and dancing.");
  }

  Future<void> speakdances12(String languageCode) async {
    // DOPSUM: CHANGE speakdance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The children danced around her.");
  }

  Future<void> speakdances13(String languageCode) async {
    // DOPSUM: CHANGE speakdance
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The words danced before her tired eyes.");
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
کوردی: ھەڵپەڕکێ، سەما، ڕەخس، ھەلەکە،	ھونەری ھەڵپەڕکێ یان سەما (بەتایبەت بۆ شانۆ)،	موسیقای ھەڵپەڕکێ،	ھەوا یان گۆرانی ھەڵپەڕکێ،	شایی، گۆڤەند، دیلان، شایی‌لۆغان
"""),
          const DefinitionKurdish(text: "١. (ناو) سەما"),
          SentencesRow(
            englishText: "Do you know any other Latin American dances?",
            kurdishText: "ھیچ سەمایەکی دیکەی ئەمریکای باشووری دەزانی؟", // dance
            onPressedBritish: () => speakdances1("en-GB"),
            onPressedAmerican: () => speakdances1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The girls performed a graceful dance.",
            kurdishText: "کچەکان سەمایەکی جوانیان کرد.",
            onPressedBritish: () => speakdances2("en-GB"),
            onPressedAmerican: () => speakdances2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Find a partner and practise these new dance steps.",
            kurdishText:
                "ھاوەڵێکی سەماکردن بدۆزەرەوە لەگەڵیدا ڕاھێنانی ئەم ھەنگاوە تازانەی سەما بکە.",
            onPressedBritish: () => speakdances3("en-GB"),
            onPressedAmerican: () => speakdances3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) ھونەری سەماکردن، بەتایبەتی بۆ چێژبینین"),
          SentencesRow(
            englishText:
                "The performers tell the story through song and dance.",
            kurdishText: "نمایشکاران چیرۆکەکە بە گۆرانی و سەما دەڵێنەوە.",
            onPressedBritish: () => speakdances4("en-GB"),
            onPressedAmerican: () => speakdances4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) سەماکردن"),
          SentencesRow(
            englishText: "Would you like a dance?",
            kurdishText: "حەز بە سەماکردنێک دەکەیت؟",
            onPressedBritish: () => speakdances5("en-GB"),
            onPressedAmerican: () => speakdances5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "In her delight she got up and did a little dance.",
            kurdishText: "لە خۆشیدا ھەستایە سەرپێ و کەمێک سەمای کرد.",
            onPressedBritish: () => speakdances6("en-GB"),
            onPressedAmerican: () => speakdances6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) بۆنەیەکی کۆمەڵایەتی کە تێیدا خەڵکی سەما دەکەن"),
          SentencesRow(
            englishText:
                "We hold a dance every year to raise money for charity.",
            kurdishText:
                "ھەموو ساڵێک سەمایەک ساز دەکەین بۆ کۆکردەوەی پارە بۆ ڕێکخراوە خێرخوازییەکە.",
            onPressedBritish: () => speakdances7("en-GB"),
            onPressedAmerican: () => speakdances7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They met at a dance.",
            kurdishText: "لە سەمایەک یەکیان بینی.",
            onPressedBritish: () => speakdances8("en-GB"),
            onPressedAmerican: () => speakdances8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (کردار) سەماکردن"),
          SentencesRow(
            englishText: "Do you want to dance?",
            kurdishText: "دەتەوێت سەما بکەیت؟",
            onPressedBritish: () => speakdances9("en-GB"),
            onPressedAmerican: () => speakdances9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He asked me to dance.",
            kurdishText: "داوای لێکردم سەما بکەم.",
            onPressedBritish: () => speakdances10("en-GB"),
            onPressedAmerican: () => speakdances10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They stayed up all night singing and dancing.",
            kurdishText: "تەواوی شەوەکە مانەوە بۆ گۆرانی گوتن و سەماکردن.",
            onPressedBritish: () => speakdances11("en-GB"),
            onPressedAmerican: () => speakdances11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (کردار) جوڵان بە جۆش و خرۆشییەوە"),
          SentencesRow(
            englishText: "The children danced around her.",
            kurdishText: "منداڵەکان بە دەوریدا سەمایان دەکرد.",
            onPressedBritish: () => speakdances12("en-GB"),
            onPressedAmerican: () => speakdances12("en-US"),
          ),
          // const DividerSentences(),
          // Row(
          // children: [
          // const Expanded(
          // child: Column(
          // children: [
          // ExampleSentenceEnglish(
          // text:
          // "The words danced before her tired eyes."),
          // ExampleSentenceKurdish(
          // text: "رستە_رستە_رستە_رستە."),
          // ],
          // ),
          // ),
          // const CustomSizedBoxForTTS(),
          // Column(
          // children: [
          // CustomIconButtonBritish(
          // onPressed: () => speakdances13("en-GB"),
          // ),
          // CustomIconButtonAmerican(
          // onPressed: () => speakdances13("en-US"),
          // ),
          // ],
          // ),
          // ],
          // ),
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
- Verb: dance (derived forms: dances, dancing, danced)
1. (dancing) move in a pattern; usually to musical accompaniment; do or perform a dance (= trip the light fantastic, trip the light fantastic toe)
"My husband and I like to dance at home to the radio";
 
2. Move in a graceful and rhythmical way
"The young girl danced into the room"
 
3. Skip, leap, or move up and down or sideways
"Dancing flames"; "The children danced with joy"

- Noun: dance (derived forms: dances)
1. Taking a series of rhythmical steps (and movements) in time to music (= dancing, terpsichore, saltation)
 
2. The art of dancing
 
3. A party of people assembled for dancing
 
4. A party for social dancing
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

  final String _videoId = 'r5cqa9V0mUo';
  final double _startSeconds = 437;

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

  final String _videoId = 'hTqtGJwsJVE';
  final double _startSeconds = 574;

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

  final String _videoId = 'fdQ_ltsODF8';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'PdrbNKXMzvg';
  final double _startSeconds = 64;

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

  final String _videoId = 'EzD5TsF8eC0';
  final double _startSeconds = 80;

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

  final String _videoId = '4brSh0g4uK8';
  final double _startSeconds = 166;

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

  final String _videoId = '4brSh0g4uK8';
  final double _startSeconds = 165;

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