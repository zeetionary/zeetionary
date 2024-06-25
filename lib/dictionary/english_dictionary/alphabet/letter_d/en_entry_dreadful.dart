import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydreadful extends StatefulWidget {
  const EnglishEntrydreadful({super.key});

  @override
  State<EnglishEntrydreadful> createState() => _EnglishEntrydreadfulState();
}

class _EnglishEntrydreadfulState extends State<EnglishEntrydreadful> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
                    SentencesIconForTab(),
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
              const SentencesFromDatabase(),
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
  }
}

class SentencesFromDatabase extends StatefulWidget {
  const SentencesFromDatabase({super.key});

  @override
  State<SentencesFromDatabase> createState() => _SentencesFromDatabaseState();
}

class _SentencesFromDatabaseState extends State<SentencesFromDatabase> {
  final String keyword = "dreadful";
  late FlutterTts flutterTts;
  List<Map<String, dynamic>> filteredSentences = [];

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    fetchSentences();
  }

  Future<void> fetchSentences() async {
    final sentences =
        await DatabaseUtils.instance.fetchFilteredSentences(keyword: keyword);
    setState(() {
      filteredSentences = sentences;
    });
  }

  void speakEnglish(String text, {String? languageCode}) async {
    await flutterTts.setLanguage(languageCode ?? "en-GB");
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          if (filteredSentences.isEmpty) {
            return const NoSentencesFromDatabase();
          } else {
            return ListView.builder(
              itemCount: filteredSentences.length,
              itemBuilder: (context, index) {
                final sentence = filteredSentences[index];
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: DatabaseUtils.instance.highlightText(
                                      sentence['english'].toString(),
                                      keyword,
                                      ref,
                                      context,
                                    ),
                                  ),
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child:
                                          DatabaseUtils.instance.highlightText(
                                        sentence['french'].toString(),
                                        keyword,
                                        ref,
                                        context,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(),
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-GB",
                                  ),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-US",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1)
                          const DividerSentences(),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
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
    return const EntryTitle(word: "dreadful");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dreadful");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdredfl/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdreadful(String languageCode) async {
    // DOPSUM: CHANGE speakdreadful
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dreadful");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdreadful("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdredfl/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdreadful(String languageCode) async {
    // DOPSUM: CHANGE speakdreadful
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dreadful");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdreadful("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdreadfuls1(String languageCode) async {
    // DOPSUM: CHANGE speakdreadful
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What dreadful weather!");
  }

  Future<void> speakdreadfuls2(String languageCode) async {
    // DOPSUM: CHANGE speakdreadful
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What a dreadful thing to say!");
  }

  Future<void> speakdreadfuls3(String languageCode) async {
    // DOPSUM: CHANGE speakdreadful
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's dreadful the way they treat their staff.");
  }

  Future<void> speakdreadfuls4(String languageCode) async {
    // DOPSUM: CHANGE speakdreadful
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's making a dreadful mess of things.");
  }

  Future<void> speakdreadfuls5(String languageCode) async {
    // DOPSUM: CHANGE speakdreadful
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I'm afraid there's been a dreadful mistake.");
  }

  Future<void> speakdreadfuls6(String languageCode) async {
    // DOPSUM: CHANGE speakdreadful
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("They suffered dreadful injuries.");
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
کوردی: پڕمەترسی، پڕترس، ترسناک، بەسام، پڕئەندێش، ورەبەر، ترسێنەر، تۆقێنەر، جێی‌ترس، ترس‌دار،	شپرزە، خراپ، وەڕەزکەر، یەکجار، گەلێ
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) زۆر خراپ و ناخۆش"),
          SentencesRow(
            englishText: "What dreadful weather!",
            kurdishText: "چی کەشێکی ناخۆشە!", // dreadful
            onPressedBritish: () => speakdreadfuls1("en-GB"),
            onPressedAmerican: () => speakdreadfuls1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "What a dreadful thing to say!",
            kurdishText: "چی شتێکی چەوت بۆ گوتن!",
            onPressedBritish: () => speakdreadfuls2("en-GB"),
            onPressedAmerican: () => speakdreadfuls2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "It's dreadful the way they treat their staff.",
            kurdishText: "شێوەی مامەڵەکردنیان لەگەڵ ستافەکەیان بێزراوە.",
            onPressedBritish: () => speakdreadfuls3("en-GB"),
            onPressedAmerican: () => speakdreadfuls3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵناو) بۆ جەختکردنەوە لەوەی کە شتێک چەندە خراپە"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "She's making a dreadful mess of things.",
            kurdishText: "شپرزەییەکی تەواو لە شتەکان درووست دەکات.",
            onPressedBritish: () => speakdreadfuls4("en-GB"),
            onPressedAmerican: () => speakdreadfuls4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I'm afraid there's been a dreadful mistake.",
            kurdishText: "بەداخەوەم کە ھەڵەیەکی ترسناک ڕوویداوە.",
            onPressedBritish: () => speakdreadfuls5("en-GB"),
            onPressedAmerican: () => speakdreadfuls5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ھاوەڵناو) کە ترس و ئازار و ناڕەحەتی درووست دەکات"),
          // const DividerSentences(),
          SentencesRow(
            englishText: "They suffered dreadful injuries.",
            kurdishText: "تووشی برینی سامناک بوونەوە.",
            onPressedBritish: () => speakdreadfuls6("en-GB"),
            onPressedAmerican: () => speakdreadfuls6("en-US"),
          ),
          // dreadfuls700"),
          // speakdreadfuls7
          // dreadfuls7("en-US"),
          // dreadfuls800"),
          // speakdreadfuls8
          // dreadfuls8("en-US"),
          // dreadfuls900"),
          // speakdreadfuls9
          // dreadfuls9("en-US"),
          // dreadfuls_1000"),
          // speakdreadfuls10
          // dreadfuls10("en-US"),
          // dreadfuls1100"),
          // speakdreadfuls11
          // dreadfuls11("en-US"),
          // dreadfuls1200"),
          // speakdreadfuls12
          // dreadfuls12("en-US"),
          // dreadfuls1300"),
          // speakdreadfuls13
          // dreadfuls13("en-US"),
          // dreadfuls1400"),
          // speakdreadfuls14
          // dreadfuls14("en-US"),
          // dreadfuls1500"),
          // speakdreadfuls15
          // dreadfuls15("en-US"),
          // dreadfuls1600"),
          // speakdreadfuls16
          // dreadfuls16("en-US"),
          // dreadfuls1700"),
          // speakdreadfuls17
          // dreadfuls17("en-US"),
          // dreadfuls1800"),
          // speakdreadfuls18
          // dreadfuls18("en-US"),
          // dreadfuls1900"),
          // speakdreadfuls19
          // dreadfuls19("en-US"),
          // dreadfuls_2000"),
          // speakdreadfuls20
          // dreadfuls20("en-US"),
          // dreadfuls2100"),
          // speakdreadfuls21
          // dreadfuls21("en-US"),
          // dreadfuls2200"),
          // speakdreadfuls22
          // dreadfuls22("en-US"),
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
- Adjective: dreadful 
1. Causing fear, dread or terror (= awful, dire, direful, dread, dreaded, fearful, fearsome, frightening, horrendous, horrific, terrible)
"a dreadful storm";
 
2. Exceptionally bad or displeasing (= atrocious, abominable, awful, painful, terrible, unspeakable, horrible)
"dreadful manners";
 
3. Extremely disagreeable and unpleasant
"don't go out, the weather is dreadful"
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

  final String _videoId = 'G2r_I1G_mfA';
  final double _startSeconds = 149;

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

  final String _videoId = 'qGZCFThN9z4';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = '-UEs4Ikf-_4';
  final double _startSeconds = 432;

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

  final String _videoId = 'IiyBo-qLDeM';
  final double _startSeconds = 1155;

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

  final String _videoId = 'j0iOuOMh_JE';
  final double _startSeconds = 1303;

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

  final String _videoId = 'GusUQlZXNyI';
  final double _startSeconds = 1742;

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

  final String _videoId = '_V8_f2jUfac';
  final double _startSeconds = 53;

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