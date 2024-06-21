import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydescriptive extends StatefulWidget {
  const EnglishEntrydescriptive({super.key});

  @override
  State<EnglishEntrydescriptive> createState() =>
      _EnglishEntrydescriptiveState();
}

class _EnglishEntrydescriptiveState extends State<EnglishEntrydescriptive> {
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
    return const EntryTitle(word: "descriptive");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: descriptive");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈskrɪptɪv/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdescriptive(String languageCode) async {
    // DOPSUM: CHANGE speakdescriptive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("descriptive");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdescriptive("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈskrɪptɪv/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdescriptive(String languageCode) async {
    // DOPSUM: CHANGE speakdescriptive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("descriptive");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdescriptive("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdescriptives1(String languageCode) async {
    // DOPSUM: CHANGE speakdescriptive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The term I used was meant to be purely descriptive.");
  }

  Future<void> speakdescriptives2(String languageCode) async {
    // DOPSUM: CHANGE speakdescriptive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The terms are descriptive of strong emotion.");
  }

  Future<void> speakdescriptives20(String languageCode) async {
    // DOPSUM: CHANGE speakdescriptive
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The terms are descriptive of strong emotion.0");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
//           const KurdishVocabulary(text: """
// کوردی: (ڕێزمان) لێکدانەوەیی، لەسەر بنەمای باس‌کردن، باسەکی، باسکردی
// """),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) کە باسی شتێک دەکات"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The term I used was meant to be purely descriptive (= not judging)."),
                    ExampleSentenceKurdish(
                        text: "ئەو وشەیەی بەکارمھێنا تەنھا ناسێنەر بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "descriptive", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdescriptives1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdescriptives1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ھاوەڵناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The terms are descriptive of strong emotion."),
                    ExampleSentenceKurdish(text: "وشەکان دەربڕی ھەستی بەھێزن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdescriptives2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdescriptives2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // descriptives300"),
          // speakdescriptives3
          // descriptives3("en-US"),
          // descriptives400"),
          // speakdescriptives4
          // descriptives4("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // descriptives500"),
          // speakdescriptives5
          // descriptives5("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // descriptives600"),
          // speakdescriptives6
          // descriptives6("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // descriptives700"),
          // speakdescriptives7
          // descriptives7("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // descriptives800"),
          // speakdescriptives8
          // descriptives8("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // descriptives900"),
          // speakdescriptives9
          // descriptives9("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // descriptives1000"),
          // speakdescriptives10
          // descriptives10("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // descriptives1100"),
          // speakdescriptives11
          // descriptives11("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // descriptives1200"),
          // speakdescriptives12
          // descriptives12("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // descriptives1300"),
          // speakdescriptives13
          // descriptives13("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // descriptives1400"),
          // speakdescriptives14
          // descriptives14("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // descriptives1500"),
          // speakdescriptives15
          // descriptives15("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // descriptives1600"),
          // speakdescriptives16
          // descriptives16("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // descriptives1700"),
          // speakdescriptives17
          // descriptives17("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // descriptives1800"),
          // speakdescriptives18
          // descriptives18("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // descriptives1900"),
          // speakdescriptives19
          // descriptives19("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "The terms are descriptive of strong emotion.0"),
          // speakdescriptives20
          // descriptives20("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // descriptives2100"),
          // speakdescriptives21
          // descriptives21("en-US"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          // descriptives2200"),
          // speakdescriptives22
          // descriptives22("en-US"),
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

    // Update the state to reflect that TTS is in progress
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
- Adjective: descriptive 
1. Serving to describe, inform or characterized by description
"the descriptive variable"; "a descriptive passage"
 
2. (linguistics) of or relating to an approach to linguistic analysis that aims at the description of a language's forms, structures and usage
"descriptive grammar"
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Using the EnglishButtonTTS class
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

class YoutubeEmbeddedend extends StatefulWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  State<YoutubeEmbeddedend> createState() => _YoutubeEmbeddedendState();
}

class _YoutubeEmbeddedendState extends State<YoutubeEmbeddedend> {
  late YoutubePlayerController _controller;
  final String _videoId = 'YbNeOLbFZVg';
  final double _startSeconds = 677;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatefulWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  State<YoutubeEmbeddedone> createState() => _YoutubeEmbeddedoneState();
}

class _YoutubeEmbeddedoneState extends State<YoutubeEmbeddedone> {
  late YoutubePlayerController _controller;
  final String _videoId = '4brrubUsqB0';
  final double _startSeconds = 323;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatefulWidget {
  const YoutubeEmbeddedtwo({super.key});

  @override
  State<YoutubeEmbeddedtwo> createState() => _YoutubeEmbeddedtwoState();
}

class _YoutubeEmbeddedtwoState extends State<YoutubeEmbeddedtwo> {
  late YoutubePlayerController _controller;
  final String _videoId = 'FoOiWhTgI3o';
  final double _startSeconds = 394;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatefulWidget {
  const YoutubeEmbeddedthree({super.key});

  @override
  State<YoutubeEmbeddedthree> createState() => _YoutubeEmbeddedthreeState();
}

class _YoutubeEmbeddedthreeState extends State<YoutubeEmbeddedthree> {
  late YoutubePlayerController _controller;
  final String _videoId = 'vstnLLViSgM';
  final double _startSeconds = 2322;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatefulWidget {
  const YoutubeEmbeddedfour({super.key});

  @override
  State<YoutubeEmbeddedfour> createState() => _YoutubeEmbeddedfourState();
}

class _YoutubeEmbeddedfourState extends State<YoutubeEmbeddedfour> {
  late YoutubePlayerController _controller;
  final String _videoId = '8jb7XZ40pHo';
  final double _startSeconds = 207;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatefulWidget {
  const YoutubeEmbeddedfive({super.key});

  @override
  State<YoutubeEmbeddedfive> createState() => _YoutubeEmbeddedfiveState();
}

class _YoutubeEmbeddedfiveState extends State<YoutubeEmbeddedfive> {
  late YoutubePlayerController _controller;
  final String _videoId = 'iQ190Bf-6J0';
  final double _startSeconds = 388;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatefulWidget {
  const YoutubeEmbeddedsix({super.key});

  @override
  State<YoutubeEmbeddedsix> createState() => _YoutubeEmbeddedsixState();
}

class _YoutubeEmbeddedsixState extends State<YoutubeEmbeddedsix> {
  late YoutubePlayerController _controller;
  final String _videoId = 'Jt5WpKRPIlE';
  final double _startSeconds = 1508;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
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
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
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