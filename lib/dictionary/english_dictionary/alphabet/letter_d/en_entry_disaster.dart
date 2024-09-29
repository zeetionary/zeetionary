import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydisaster extends StatefulWidget {
  const EnglishEntrydisaster({super.key});

  @override
  State<EnglishEntrydisaster> createState() => _EnglishEntrydisasterState();
}

class _EnglishEntrydisasterState extends State<EnglishEntrydisaster> {
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
    return const EntryTitle(word: "disaster");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: disaster");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈzɑːstə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisaster(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("disaster");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdisaster("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈzæstər/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisaster(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("disaster");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdisaster("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisasters1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Thousands died in the disaster.");
  }

  Future<void> speakdisasters2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They provided more than £2.3 billion in disaster relief.");
  }

  Future<void> speakdisasters3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Europe's worst environmental disaster is unfolding at this very moment.");
  }

  Future<void> speakdisasters4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He called for a full investigation to help prevent future disasters.");
  }

  Future<void> speakdisasters5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("In a disaster everyone needs to keep calm.");
  }

  Future<void> speakdisasters6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Losing your job doesn't have to be such a disaster.");
  }

  Future<void> speakdisasters7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Disaster struck when the wheel came off.");
  }

  Future<void> speakdisasters8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Archie has to act quickly to avert disaster.");
  }

  Future<void> speakdisasters9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Many business partnerships end in disaster.");
  }

  Future<void> speakdisasters10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Letting her organize the party is a recipe for disaster.");
  }

  Future<void> speakdisasters11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The play's first night was a total disaster.");
  }

  Future<void> speakdisasters12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("As a teacher, he's a disaster.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: بەڵا، تەڵەزگە، ڕووداوی ناخۆش، کۆست، مەینەتی، نەھامەتی، کارەسات، بێ‌بەختی، بەدبەختی، لێ‌قەوماوی، ڕۆژەڕەشی، کڵۆڵی، قوڕبەسەری،	تێ‌شکان، شکست،	نافەرمی مایەی ئابڕووچوون یان تێ‌شکان
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) کارەسات؛ ڕووداوێکی خراپی وەک لافاو یان ئاگر کە خەڵکێکی زۆر دەکوژێت و دەبێتە ھۆکاری زیانی گەورە"),
          SentencesRow(
            englishText: "Thousands died in the disaster.",
            kurdishText: "ھەزاران لە کارەساتەکە مردن.",
            onPressedBritish: () => speakdisasters1("en-GB"),
            onPressedAmerican: () => speakdisasters1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "They provided more than £2.3 billion in disaster relief.",
            kurdishText:
                "زیاتر لە ٢,٣ ملیۆن پاوەندیان بۆ بەھاناوەھاتنی کارەساتەکە دابینکرد.",
            onPressedBritish: () => speakdisasters2("en-GB"),
            onPressedAmerican: () => speakdisasters2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Europe's worst environmental disaster is unfolding at this very moment.",
            kurdishText:
                "خراپترین کارەساتی ژینگەیی ئەورووپا ڕێک لەم ساتەدا ڕوودەدات.",
            onPressedBritish: () => speakdisasters3("en-GB"),
            onPressedAmerican: () => speakdisasters3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He called for a full investigation to help prevent future disasters.",
            kurdishText:
                "داوای لێکۆڵینەوەی تەواوی کرد بۆ ڕێگری لە کارەسات لە ئایندەدا.",
            onPressedBritish: () => speakdisasters4("en-GB"),
            onPressedAmerican: () => speakdisasters4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "In a disaster everyone needs to keep calm.",
            kurdishText: "لە کارەساتێکدا ھەموان دەبێت ھێمنی بپارێزن.",
            onPressedBritish: () => speakdisasters5("en-GB"),
            onPressedAmerican: () => speakdisasters5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) دۆخێکی زۆر خراپ کە دەبێتە ھۆکاری کێشە"),
          SentencesRow(
            englishText: "Losing your job doesn't have to be such a disaster.",
            kurdishText: "لەدەستدانی کارەکەت پێویست ناکات ھێندە نەھامەتی بێت.",
            onPressedBritish: () => speakdisasters6("en-GB"),
            onPressedAmerican: () => speakdisasters6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Disaster struck when the wheel came off.",
            kurdishText: "بەڵایەک ڕوویدا کە ویلەکە لێبوویەوە.",
            onPressedBritish: () => speakdisasters7("en-GB"),
            onPressedAmerican: () => speakdisasters7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Archie has to act quickly to avert disaster.",
            kurdishText:
                "ئارچی پێویست بوو زوو ھەنگاو بنێت بۆ دووربوون لە کارەسات.",
            onPressedBritish: () => speakdisasters8("en-GB"),
            onPressedAmerican: () => speakdisasters8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Many business partnerships end in disaster.",
            kurdishText: "زۆر ھاوبەشی بازرگانی بە کارەسات کۆتایی دێت.",
            onPressedBritish: () => speakdisasters9("en-GB"),
            onPressedAmerican: () => speakdisasters9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Letting her organize the party is a recipe for disaster (= something that is likely to go badly wrong).",
            kurdishText:
                "ڕێگەدان بە ئەو کە پارتەکە ڕێکبخات ڕێخۆشکەرە بۆ کارەسات.",
            onPressedBritish: () => speakdisasters10("en-GB"),
            onPressedAmerican: () => speakdisasters10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) شکستێکی تەواو"),
          SentencesRow(
            englishText: "The play's first night was a total disaster.",
            kurdishText: "یەکەم شەوی شانۆکە شکستێکی گەورە بوو.",
            onPressedBritish: () => speakdisasters11("en-GB"),
            onPressedAmerican: () => speakdisasters11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "As a teacher, he's a disaster.",
            kurdishText: "وەک مامۆستایەک، مایەی ئابڕووچوونە.",
            onPressedBritish: () => speakdisasters12("en-GB"),
            onPressedAmerican: () => speakdisasters12("en-US"),
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

// Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Noun: disaster (derived forms: disasters)
1. A state of extreme (usually irremediable) ruin and misfortune (= catastrophe)
"his policies were a disaster";
 
2. An event resulting in great loss and misfortune (= calamity, catastrophe, tragedy, cataclysm)
"the earthquake was a disaster";
 
3. An act that has disastrous consequences
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

  final String _videoId = 'nUzb1s3kqLk';
  final double _startSeconds = 459;

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

  final String _videoId = 'kMcL2atljwY';
  final double _startSeconds = 146;

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

  final String _videoId = 'fZtXYXBEIn4';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = '1tqDH6MmEEg';
  final double _startSeconds = 61;

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

  final String _videoId = 'tLS9IK693KI';
  final double _startSeconds = 26;

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

  final String _videoId = 'M6wEFDfwfnE';
  final double _startSeconds = 34;

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

  final String _videoId = 'YstpxrVMnQM';
  final double _startSeconds = 20;

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