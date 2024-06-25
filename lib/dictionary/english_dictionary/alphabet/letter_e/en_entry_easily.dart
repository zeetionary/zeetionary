import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryeasily extends StatefulWidget {
  const EnglishEntryeasily({super.key});

  @override
  State<EnglishEntryeasily> createState() => _EnglishEntryeasilyState();
}

class _EnglishEntryeasilyState extends State<EnglishEntryeasily> {
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
  final String keyword = "easily";
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
    return const EntryTitle(word: "easily");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: easily");
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
    return const IPAofEnglish(text: "IpaUK: /ˈiːzəli/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeasily(String languageCode) async {
    // DOPSUM: CHANGE speakeasily
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("easily");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakeasily("en-GB" ""),
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
    return const IPAofEnglish(text: "IpaUS: /ˈiːzəli/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeasily(String languageCode) async {
    // DOPSUM: CHANGE speakeasily
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("easily");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakeasily("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeasilys1(String languageCode) async {
    // DOPSUM: CHANGE speakeasily
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The software is easily available.");
  }

  Future<void> speakeasilys2(String languageCode) async {
    // DOPSUM: CHANGE speakeasily
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I can easily finish it tonight.");
  }

  Future<void> speakeasilys3(String languageCode) async {
    // DOPSUM: CHANGE speakeasily
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The major problems of the city can be easily identified.");
  }

  Future<void> speakeasilys4(String languageCode) async {
    // DOPSUM: CHANGE speakeasily
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We won easily by six goals to two.");
  }

  Future<void> speakeasilys5(String languageCode) async {
    // DOPSUM: CHANGE speakeasily
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Are you sure you locked the gate? You could easily have forgotten.");
  }

  Future<void> speakeasilys6(String languageCode) async {
    // DOPSUM: CHANGE speakeasily
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The situation might all too easily have become a disaster.");
  }

  Future<void> speakeasilys7(String languageCode) async {
    // DOPSUM: CHANGE speakeasily
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's easily the best play I've seen this year.");
  }

  Future<void> speakeasilys8(String languageCode) async {
    // DOPSUM: CHANGE speakeasily
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She is easily the most experienced teacher in the school.");
  }

  Future<void> speakeasilys9(String languageCode) async {
    // DOPSUM: CHANGE speakeasily
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I get bored easily.");
  }

  Future<void> speakeasilys10(String languageCode) async {
    // DOPSUM: CHANGE speakeasily
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's easily distracted.");
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
کوردی: بە ئاسوودەیی، سووکێ، (بە) سووک، بە ئاسانی،	بێ‌گومان، بێ‌شک، بە دڵنیایی‌یەوە،	ڕەنگە، لەوانەیە، پێدەچێ، زوو
"""),
          const DefinitionKurdish(text: """١. (ھاوەڵکار) بە ئاسانی"""),
          SentencesRow(
            englishText: """The software is easily available.""",
            kurdishText: """نەرمامێرەکە بەئاسانی بەردەستە.""", // easily
            onPressedBritish: () => speakeasilys1("en-GB"),
            onPressedAmerican: () => speakeasilys1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I can easily finish it tonight.""",
            kurdishText: """بە ئاسانی دەتوانم ئەمشەو تەواوی بکەم.""",
            onPressedBritish: () => speakeasilys2("en-GB"),
            onPressedAmerican: () => speakeasilys2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The major problems of the city can be easily identified.""",
            kurdishText:
                """کێشە سەرەکییەکانی شارەکە دەکرێت بە ئاسانی بناسرێنەوە.""",
            onPressedBritish: () => speakeasilys3("en-GB"),
            onPressedAmerican: () => speakeasilys3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """We won easily by six goals to two.""",
            kurdishText: """بەئاسانی شەش بە دوو بردمانەوە.""",
            onPressedBritish: () => speakeasilys4("en-GB"),
            onPressedAmerican: () => speakeasilys4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٢. (ھاوەڵکار) کە ئەگەری زۆری ھەیە"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """Are you sure you locked the gate? You could easily have forgotten.""",
            kurdishText:
                """دڵنیایت دەروازەکەت قوفڵ کرد؟ ئەگەری زۆر ھەیە بیرت چووبێت.""",
            onPressedBritish: () => speakeasilys5("en-GB"),
            onPressedAmerican: () => speakeasilys5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The situation might all too easily have become a disaster.""",
            kurdishText: """دۆخەکە بەئاسانی دەکرا ببوایە بە کارەسات.""",
            onPressedBritish: () => speakeasilys6("en-GB"),
            onPressedAmerican: () => speakeasilys6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٣. (ھاوەڵکار) بێ گومان"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """It's easily the best play I've seen this year.""",
            kurdishText: """بەدڵنیاییەوە باشترین یارییە تا ئێستا بینیبێتم.""",
            onPressedBritish: () => speakeasilys7("en-GB"),
            onPressedAmerican: () => speakeasilys7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """She is easily the most experienced teacher in the school.""",
            kurdishText:
                """بەدڵنیاییەوە بە ئەزموونترین مامۆستایە لە قوتابخانەکە.""",
            onPressedBritish: () => speakeasilys8("en-GB"),
            onPressedAmerican: () => speakeasilys8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (ھاوەڵکار) بەخێرایی؛ خێراتر لە ئاسایی"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """I get bored easily.""",
            kurdishText: """بە ئاسانی بێزار دەبم.""",
            onPressedBritish: () => speakeasilys9("en-GB"),
            onPressedAmerican: () => speakeasilys9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """He's easily distracted.""",
            kurdishText: """بە ئاسانی سەرنجی دەچێت.""",
            onPressedBritish: () => speakeasilys10("en-GB"),
            onPressedAmerican: () => speakeasilys10("en-US"),
          ),
          // easilys1100easilys11
          // speakeasilys11
          // easilys1200easilys12
          // speakeasilys12
          // easilys1300easilys13
          // speakeasilys13
          // easilys1400easilys14
          // speakeasilys14
          // easilys1500easilys15
          // speakeasilys15
          // easilys1600easilys16
          // speakeasilys16
          // easilys1700easilys17
          // speakeasilys17
          // easilys1800easilys18
          // speakeasilys18
          // easilys1900easilys19
          // speakeasilys19
          // easilys_2000easilys20
          // speakeasilys20
          // easilys2100easilys21
          // speakeasilys21
          // easilys2200easilys22
          // speakeasilys22("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
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
- Adverb: easily 
1. With ease ('easy' is sometimes used informally for 'easily') (= easy)
"she was easily excited"; "was easily confused"; "he won easily"; "this china breaks very easily";
 
2. Without doubt
"easily the best book she's written"
 
3. Indicating high probability; in all likelihood (= well)
"a mistake that could easily have ended in disaster";
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

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 594;

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

  final String _videoId = 'DO9U_XxN-Kc';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'nRafaCcfrcI';
  final double _startSeconds = 308;

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

  final String _videoId = 'rsaLUIeurZ8';
  final double _startSeconds = 508;

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

  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 1037;

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

  final String _videoId = 'yjhibJ-OqxE';
  final double _startSeconds = 396;

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

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 347;

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