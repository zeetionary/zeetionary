import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydig extends StatefulWidget {
  const EnglishEntrydig({super.key});

  @override
  State<EnglishEntrydig> createState() => _EnglishEntrydigState();
}

class _EnglishEntrydigState extends State<EnglishEntrydig> {
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
    return const EntryTitle(word: "dig");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dig");
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
    return const IPAofEnglish(text: "IpaUK: /dɪɡ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdig(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dig");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdig("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪɡ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdig(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dig");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdig("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdigs1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I think I'll do some digging in the garden.");
  }

  Future<void> speakdigs2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They dug deeper and deeper but still found nothing.");
  }

  Future<void> speakdigs3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We could only dig down a few feet.");
  }

  Future<void> speakdigs4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I've been digging the garden.");
  }

  Future<void> speakdigs5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'll dig some potatoes for lunch.");
  }

  Future<void> speakdigs6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I dug around in my bag for a pen.");
  }

  Future<void> speakdigs7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She gave him a dig in the ribs.");
  }

  Future<void> speakdigs8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He kept making little digs at me.");
  }

  Future<void> speakdigs9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I resisted the temptation to get in a dig at Fred.");
  }

  Future<void> speakdigs10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I went on a dig over the summer.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: سیخورمە، مستەکۆڵە، گوڕمیچ، تێ‌کوتان، تێ‌وەژاندن،	پلار، توانج، زیپک،	دانەوە، ھەڵکۆڵین، ھەڵکەندن،	شوێنی دانەوە، شوێنی کە شوێنەوارناسەکان دەیدەنەوە، کۆڵینی شوێنەوارناسی‌یانە
"""),
          const DefinitionKurdish(text: "١. (کردار) ھەڵکەندن"),
          SentencesRow(
            englishText: "I think I'll do some digging in the garden.",
            kurdishText: "پێموایە کەمێک ھەڵکەندن لە باخچەکەدا دەکەم.", // dig
            onPressedBritish: () => speakdigs1("en-GB"),
            onPressedAmerican: () => speakdigs1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "They dug deeper and deeper but still found nothing.",
            kurdishText: "زیاتر و زیاتریان کەند بەڵام ھیچیان نەدۆزییەوە.",
            onPressedBritish: () => speakdigs2("en-GB"),
            onPressedAmerican: () => speakdigs2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We could only dig down a few feet.",
            kurdishText: "توانیمان تەنھا چەند پێیەک بکەنین.",
            onPressedBritish: () => speakdigs3("en-GB"),
            onPressedAmerican: () => speakdigs3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I've been digging the garden.",
            kurdishText: "بە کەندنی باخچەکەوە سەرقاڵ بوومە.",
            onPressedBritish: () => speakdigs4("en-GB"),
            onPressedAmerican: () => speakdigs4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) دەرکردن لە زەوی بە ئامێرێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "I'll dig some potatoes for lunch.",
            kurdishText: "ھەندێک پەتاتە بۆ نانی نیوەڕی دەردێنم.",
            onPressedBritish: () => speakdigs5("en-GB"),
            onPressedAmerican: () => speakdigs5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) گەڕان لە شتێکدا بۆ دۆزینەوەی شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "I dug around in my bag for a pen.",
            kurdishText: "لە جانتاکەمدا بۆ پنووسێک گەڕام.",
            onPressedBritish: () => speakdigs6("en-GB"),
            onPressedAmerican: () => speakdigs6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ناو) پاڵنانێکی ھێواش بە پەنجە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "She gave him a dig in the ribs.",
            kurdishText: "پاڵێکی بە پەراسوویەوە نا.",
            onPressedBritish: () => speakdigs7("en-GB"),
            onPressedAmerican: () => speakdigs7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) قسەیەک کە ئامانج لێی ئەوەیە کە کەسێک بێزار بکات"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "He kept making little digs at me.",
            kurdishText: "بەردوام بوو لەوەی توانجی بچووکم لێبدا.",
            onPressedBritish: () => speakdigs8("en-GB"),
            onPressedAmerican: () => speakdigs8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I resisted the temptation to get in a dig at Fred.",
            kurdishText:
                "بەسەر ئەو حەزە زاڵ بووم کە بکەومە توانج لێدان لەگەڵ فرێد.",
            onPressedBritish: () => speakdigs9("en-GB"),
            onPressedAmerican: () => speakdigs9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) ھەڵکۆڵین بۆ زانینی زانیاری لەسەر مێژووی شتێک"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "I went on a dig over the summer.",
            kurdishText: "لە ھاویندا چووم بۆ ھەڵکۆڵین.",
            onPressedBritish: () => speakdigs10("en-GB"),
            onPressedAmerican: () => speakdigs10("en-US"),
          ),
          // digs1100"),
          // digs11
          // digs1200"),
          // digs12
          // digs1300"),
          // digs13
          // digs1400"),
          // digs14
          // digs1500"),
          // digs15
          // digs1600"),
          // digs16
          // digs1700"),
          // digs17
          // digs1800"),
          // digs18
          // digs1900"),
          // digs19
          // digs_2000"),
          // digs20
          // digs2100"),
          // digs21
          // digs2200"),
          // digs22("en-US"),
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
- Verb: dig (derived forms: digs, dug, digging)
1. Turn up, loosen, or remove earth (= delve [archaic], cut into, turn over)
"Dig we must";
 
2. Create by digging (= dig out)
"dig a hole"; "dig out a channel";
 
3. [US, informal] Work hard (= labor [US], labour [Brit, Cdn], toil, fag [informal], travail [literary], grind [informal], drudge, moil [N. Amer])
"She was digging away at her maths homework";
 
4. Remove, harvest, or recover by digging (= dig up, dig out)
"dig salt"; "dig coal"; "dig up salt";
 
5. Thrust down or into
"dig the oars into the water"; "dig your foot into the floor"
 
6. Remove the inner part or the core of (= excavate, hollow)
"the mining company wants to dig the hillside";
 
7. Push suddenly or strongly with a finger or something pointed (= jab, prod, stab, poke)
"he dug his finger into her ribs";
 
8. [informal] Get the meaning of something (= grok [N. Amer, informal], get the picture, comprehend, savvy, grasp, compass, apprehend)
"Do you dig the meaning of this letter?";

- Noun: dig (derived forms: digs)
1. (archeology) the site of an archeological exploration (= excavation, archeological site)
"they set up camp next to the dig";
 
2. [informal] An aggressive remark directed at a person like a missile and intended to have a telling effect (= shot, shaft, slam, barb, jibe, gibe)
"she takes a dig at me every chance she gets";
 
3. A small gouge (as in the cover of a book)
"the book was in good condition except for a dig in the back cover"
 
4. The act of digging (= excavation, digging)
"there's an interesting dig going on near Princeton";
 
5. The act of touching someone suddenly with your finger or elbow (= jab)
"she gave me a sharp dig in the ribs";
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

  final String _videoId = 'DPZzrlFCD_I';
  final double _startSeconds = 60;

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

  final String _videoId = 'AtI7g6ax7rI';
  final double _startSeconds = 272;

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

  final String _videoId = 's3B-qp3U5G0';
  final double _startSeconds = 465;

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

  final String _videoId = 'QLq6GEiHqR8';
  final double _startSeconds = 1229;

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

  final String _videoId = 'aAByKcPJ5NQ';
  final double _startSeconds = 144;

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

  final String _videoId = 'lGSOWwUvJiU';
  final double _startSeconds = 363;

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

  final String _videoId = 'XlHzvTEstz8';
  final double _startSeconds = 306;

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