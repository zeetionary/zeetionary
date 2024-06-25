import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryelse extends StatefulWidget {
  const EnglishEntryelse({super.key});

  @override
  State<EnglishEntryelse> createState() => _EnglishEntryelseState();
}

class _EnglishEntryelseState extends State<EnglishEntryelse> {
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
  final String keyword = "else";
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
    return const EntryTitle(word: "else");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: else");
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
    return const IPAofEnglish(text: "IpaUK: /els/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakelse(String languageCode) async {
    // DOPSUM: CHANGE speakelse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("else");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakelse("en-GB" ""),
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
    return const IPAofEnglish(text: "IpaUS: /els/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakelse(String languageCode) async {
    // DOPSUM: CHANGE speakelse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("else");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakelse("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakelses1(String languageCode) async {
    // DOPSUM: CHANGE speakelse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("What else did he say?");
  }

  Future<void> speakelses2(String languageCode) async {
    // DOPSUM: CHANGE speakelse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I don't want anything else, thanks.");
  }

  Future<void> speakelses3(String languageCode) async {
    // DOPSUM: CHANGE speakelse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I'm taking a few clothes and some books, not much else.");
  }

  Future<void> speakelses4(String languageCode) async {
    // DOPSUM: CHANGE speakelse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Ask somebody else to help you.");
  }

  Future<void> speakelses5(String languageCode) async {
    // DOPSUM: CHANGE speakelse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Haven't you got anything else to wear?");
  }

  Future<void> speakelses6(String languageCode) async {
    // DOPSUM: CHANGE speakelse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Why didn't you come? Everybody else was there.");
  }

  Future<void> speakelses7(String languageCode) async {
    // DOPSUM: CHANGE speakelse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Yes I did give it to her. What else could I do?");
  }

  Future<void> speakelses8(String languageCode) async {
    // DOPSUM: CHANGE speakelse
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Keep your mouth shut, else we'll be in trouble.");
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
کوردی: تر، دی، دن، ھی تر، ئیدی، ئیتر، ئەگەنا، ئەگینا
"""),
          const DefinitionKurdish(
              text: """١. (ھاوەڵکار) سەرەڕای شتێکی دیکە کە باسکراوە"""),
          SentencesRow(
            englishText: """What else did he say?""",
            kurdishText: """چی دیکەی گوت؟""", // else
            onPressedBritish: () => speakelses1("en-GB"),
            onPressedAmerican: () => speakelses1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I don't want anything else, thanks.""",
            kurdishText: """ھیچی دیکەم ناوێت، سوپاس.""",
            onPressedBritish: () => speakelses2("en-GB"),
            onPressedAmerican: () => speakelses2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I'm taking a few clothes and some books, not much else.""",
            kurdishText: """کەمێک جل و ھەندێک کتێب دەبەم، ھیچی تر نا.""",
            onPressedBritish: () => speakelses3("en-GB"),
            onPressedAmerican: () => speakelses3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٢. (ھاوەڵکار) جیاواز"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """Ask somebody else to help you.""",
            kurdishText: """بە کەسێکی دیکە بڵێ یارمەتیت بدات.""",
            onPressedBritish: () => speakelses4("en-GB"),
            onPressedAmerican: () => speakelses4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Haven't you got anything else to wear?""",
            kurdishText: """ھیچی دیکەت نییە لەبەری بکەیت؟""",
            onPressedBritish: () => speakelses5("en-GB"),
            onPressedAmerican: () => speakelses5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Why didn't you come? Everybody else was there.""",
            kurdishText: """بۆچی نەھاتی؟ ھەموانی دیکە لەوێ بوون.""",
            onPressedBritish: () => speakelses6("en-GB"),
            onPressedAmerican: () => speakelses6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Yes I did give it to her. What else could I do?""",
            kurdishText: """بەڵی پێمدا. دەمتوانی چی دیکە بکەم؟""",
            onPressedBritish: () => speakelses7("en-GB"),
            onPressedAmerican: () => speakelses7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٣. (ھاوەڵکار) ئەگەر نا"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """Keep your mouth shut, else we'll be in trouble.""",
            kurdishText: """دامت دابخە ئەگەرنا لە کێشەدا دەبین.""",
            onPressedBritish: () => speakelses8("en-GB"),
            onPressedAmerican: () => speakelses8("en-US"),
          ),
          // elses900elses9
          // speakelses9("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // elses_1000elses10
          // speakelses10("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // elses1100elses11
          // speakelses11("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // elses1200elses12
          // speakelses12("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // elses1300elses13
          // speakelses13("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // elses1400elses14
          // speakelses14("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // elses1500elses15
          // speakelses15("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // elses1600elses16
          // speakelses16("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // elses1700elses17
          // speakelses17("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // elses1800elses18
          // speakelses18("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // elses1900elses19
          // speakelses19("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // elses_2000elses20
          // speakelses20("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // elses2100elses21
          // speakelses21("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // elses2200elses22
          // speakelses22("en-US"""),
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
- Adverb: else
1. Other than what is under consideration or implied
"I don't know what else to do"; "where else can we look?"; "ask somebody else"
 
2. (usually used with 'or') if not, then
"leave or else I'll get angry"; "watch your step or else you may fall"
 
3. Additional to or different from this one or place or time or manner
"she ignored everything else"; "I don't know where else to look"; "when else can we have the party?"; "couldn't decide how else it could be done"; "nobody else is here"

- Conjunction: else
1. Because otherwise
"the predator would have to find other food, else it would also become extinct"
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

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 852;

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

  final String _videoId = 'rPe4yziWiOg';
  final double _startSeconds = 270;

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

  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 366;

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

  final String _videoId = '47MNn4bsmSw';
  final double _startSeconds = 2396;

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

  final String _videoId = 'r8E1Hq5tktg';
  final double _startSeconds = 130;

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

  final String _videoId = 'MPS2fwRMFgM';
  final double _startSeconds = 37;

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

  final String _videoId = 'r5cqa9V0mUo';
  final double _startSeconds = 225;

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