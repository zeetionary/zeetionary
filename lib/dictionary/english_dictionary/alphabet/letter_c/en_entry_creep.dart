import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycreep extends StatefulWidget {
  const EnglishEntrycreep({super.key});

  @override
  State<EnglishEntrycreep> createState() => _EnglishEntrycreepState();
}

class _EnglishEntrycreepState extends State<EnglishEntrycreep> {
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
    return const EntryTitle(word: "creep");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: creep");
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
    return const IPAofEnglish(text: "IpaUK: /kriːp/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcreep(String languageCode) async {
    // DOPSUM: CHANGE speakcreep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("creep");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcreep("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kriːp/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcreep(String languageCode) async {
    // DOPSUM: CHANGE speakcreep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("creep");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcreep("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcreeps1(String languageCode) async {
    // DOPSUM: CHANGE speakcreep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I crept up the stairs, trying not to wake my parents.");
  }

  Future<void> speakcreeps2(String languageCode) async {
    // DOPSUM: CHANGE speakcreep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She crept up behind me.");
  }

  Future<void> speakcreeps3(String languageCode) async {
    // DOPSUM: CHANGE speakcreep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She turned off the light and crept through the door.");
  }

  Future<void> speakcreeps4(String languageCode) async {
    // DOPSUM: CHANGE speakcreep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her arms crept around his neck.");
  }

  Future<void> speakcreeps5(String languageCode) async {
    // DOPSUM: CHANGE speakcreep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A slight feeling of suspicion crept over me.");
  }

  Future<void> speakcreeps6(String languageCode) async {
    // DOPSUM: CHANGE speakcreep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's always creeping to the boss.");
  }

  Future<void> speakcreeps7(String languageCode) async {
    // DOPSUM: CHANGE speakcreep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's a nasty little creep!");
  }

  Future<void> speakcreeps8(String languageCode) async {
    // DOPSUM: CHANGE speakcreep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He’s the sort of creep who would do that kind of thing!");
  }

  Future<void> speakcreeps9(String languageCode) async {
    // DOPSUM: CHANGE speakcreep
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We need to prevent this slow creep of costs.");
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
کوردی: کەسێکی سووک و چروک،	خشکان، خشان، خزانی ڕوویی،	خزەخۆڵ، خۆڵەخزکە، خۆڵەخزە (لە داوێنی کێوەوە بەرەو خوارێ دەخزێ)،	ویرەویر، مێروولە(کردنی لەش)
"""),
          const DefinitionKurdish(
              text:
                  "١. (کردار) جوڵان بە ھێواشی و لەسەرخۆیی و وریایی، چونکە ناتەوێت کەس بتبینێت یان گوێی لێت بێت"),
          SentencesRow(
            englishText:
                "I crept up the stairs, trying not to wake my parents.",
            kurdishText:
                "بە پلەکانەکاندا بە پێ‌خشکە چوومە سەرەوە و ھەوڵمدا دایک و باوکم ھەڵنەسێنم.", // creep", please follow LX instructions
            onPressedBritish: () => speakcreeps1("en-GB"),
            onPressedAmerican: () => speakcreeps1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She crept up behind me.",
            kurdishText: "بەبێ خشپە لە دوامەوە ھات.",
            onPressedBritish: () => speakcreeps2("en-GB"),
            onPressedAmerican: () => speakcreeps2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (کردار) گاگوڵکێ کردن"),
          SentencesRow(
            englishText: "She turned off the light and crept through the door.",
            kurdishText: "ڕۆشناییەکەی کوژاندەوە و بە دەرگاکە بە گاگوڵکێ چوو.",
            onPressedBritish: () => speakcreeps3("en-GB"),
            onPressedAmerican: () => speakcreeps3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) زۆر ھێواش جوڵان یان گەشەکردن"),
          SentencesRow(
            englishText: "Her arms crept around his neck.",
            kurdishText: "باڵی بە دەوری ملیدا سووڕدا.",
            onPressedBritish: () => speakcreeps4("en-GB"),
            onPressedAmerican: () => speakcreeps4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "A slight feeling of suspicion crept over me.",
            kurdishText: "کەمێک ھەستی گومان بە سەرمدا زاڵ بوو.",
            onPressedBritish: () => speakcreeps5("en-GB"),
            onPressedAmerican: () => speakcreeps5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) زۆر ھاوڕێیانە و دۆست لەگەڵ کەسێکی دەسەڵاتدار کە کارت پێی ھەیە"),
          SentencesRow(
            englishText: "He's always creeping to the boss.",
            kurdishText: "ھەمیشە بە دەوری بەڕێوبەرەکەدا خۆی بادەدات.",
            onPressedBritish: () => speakcreeps6("en-GB"),
            onPressedAmerican: () => speakcreeps6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) کەسێک کە زۆر ڕقت لێیە"),
          SentencesRow(
            englishText: "He's a nasty little creep!",
            kurdishText: "سووکێکی ھیچی قێزەونە.",
            onPressedBritish: () => speakcreeps7("en-GB"),
            onPressedAmerican: () => speakcreeps7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (ناو) کەسێکی کە مەرایت بۆ دەکات بۆ ئەوەی لێی ڕازی بیت"),
          SentencesRow(
            englishText:
                "He’s the sort of creep who would do that kind of thing!",
            kurdishText: "ئەو ماستاوچییەیە کە ئەو جۆرە کارە دەکات.",
            onPressedBritish: () => speakcreeps8("en-GB"),
            onPressedAmerican: () => speakcreeps8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (ناو) تێپەڕاندنی سنووری دانراو"),
          SentencesRow(
            englishText: "We need to prevent this slow creep of costs.",
            kurdishText: "دەبێت ڕێگری لەم زیادبوونە ھێواشەی تێچوو بکەین.",
            onPressedBritish: () => speakcreeps9("en-GB"),
            onPressedAmerican: () => speakcreeps9("en-US"),
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
- Verb: creep (derived forms: crept, creeping, creeps)
1. Move slowly; in the case of people or animals with the body near the ground (=crawl)
"The crocodile was creeping along the riverbed";
 
2. To go stealthily or furtively (= sneak, mouse, pussyfoot [informal])
"..stead of creeping around spying on the neighbour's house";
 
3. Grow or spread, often in such a way as to cover (a surface)
"ivy crept over the walls of the university buildings"
 
4. Change or develop gradually

- Noun: creep (derived forms: creeps)
1. [informal] Someone unpleasantly strange or eccentric (= weirdo [informal], weirdie [informal], weirdy [informal])
 
2. A slow longitudinal movement or deformation
 
3. A slow mode of locomotion on hands and knees or dragging the body (= crawl, crawling, creeping)
"the traffic moved at a creep";
 
4. A small gradual change or deviation in a quantity
 
5. A pen that is fenced so that young animals can enter but adults cannot
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

  final String _videoId = '_wNsZEqpKUA';
  final double _startSeconds = 1118;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 295;

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

  final String _videoId = 'rRymSi8SmqA';
  final double _startSeconds = 196;

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

  final String _videoId = 'dqcSk-EDrRo';
  final double _startSeconds = 836;

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

  final String _videoId = 'ObqbX1eLTwo';
  final double _startSeconds = 681;

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

  final String _videoId = 'mcZdTvOqmvI';
  final double _startSeconds = 1003;

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

  final String _videoId = 'kElsSj8hky4';
  final double _startSeconds = 407;

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