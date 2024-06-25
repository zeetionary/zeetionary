import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryembargo extends StatefulWidget {
  const EnglishEntryembargo({super.key});

  @override
  State<EnglishEntryembargo> createState() => _EnglishEntryembargoState();
}

class _EnglishEntryembargoState extends State<EnglishEntryembargo> {
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
  final String keyword = "embargo";
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
    return const EntryTitle(word: "embargo");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: embargo");
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
    return const IPAofEnglish(text: "IpaUK: /ɪmˈbɑːɡəʊ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakembargo(String languageCode) async {
    // DOPSUM: CHANGE speakembargo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("embargo");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakembargo("en-GB" ""),
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
    return const IPAofEnglish(text: "IpaUS: /ɪmˈbɑːrɡəʊ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakembargo(String languageCode) async {
    // DOPSUM: CHANGE speakembargo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("embargo");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakembargo("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakembargos1(String languageCode) async {
    // DOPSUM: CHANGE speakembargo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We knew the arms embargo was being broken.");
  }

  Future<void> speakembargos2(String languageCode) async {
    // DOPSUM: CHANGE speakembargo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He opposed the US trade embargo against Cuba.");
  }

  Future<void> speakembargos3(String languageCode) async {
    // DOPSUM: CHANGE speakembargo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There is a complete embargo on taking photographs in court.");
  }

  Future<void> speakembargos4(String languageCode) async {
    // DOPSUM: CHANGE speakembargo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There have been calls to embargo all arms shipments to the region.");
  }

  Future<void> speakembargos5(String languageCode) async {
    // DOPSUM: CHANGE speakembargo
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The report is strictly embargoed for publication until Friday.");
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
کوردی: قەدەغە(کردن)، بەربەندێتی، ئابڵۆقە، گەمارۆ، لەمپەر، تەگەرە
"""),
          const DefinitionKurdish(
              text:
                  """١. (ناو) بڕیارێکی فەرمی کە بازرگانی لەگەڵ وڵاتێک دەوەستێنێت"""),
          SentencesRow(
            englishText: """We knew the arms embargo was being broken.""",
            kurdishText: """دەمانزانی کە گەمارۆکان دەشکێندرێن.""", // embargo
            onPressedBritish: () => speakembargos1("en-GB"),
            onPressedAmerican: () => speakembargos1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """He opposed the US trade embargo against Cuba.""",
            kurdishText: """دژ بە ئابڵۆقەی بازرگانی ئەمریکا دژ بە کوبا بوو.""",
            onPressedBritish: () => speakembargos2("en-GB"),
            onPressedAmerican: () => speakembargos2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٢. (ناو) قەدەغەکردنی فەرمیی چالاکییەک"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """There is a complete embargo on taking photographs in court.""",
            kurdishText: """قەدەغەی تەواو ھەیە لەسەر وێنەگرتن لە دادگادا.""",
            onPressedBritish: () => speakembargos3("en-GB"),
            onPressedAmerican: () => speakembargos3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (کردار) بە فەرمی قەدەغەکردنی بازرگانی لەگەڵ وڵاتێک"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """There have been calls to embargo all arms shipments to the region.""",
            kurdishText:
                """داواکراوە ھەموو ناردنێکی چەک بۆ ھەرێمەکە قەدەغە بکرێت .""",
            onPressedBritish: () => speakembargos4("en-GB"),
            onPressedAmerican: () => speakembargos4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (کردار) بە فەرمی قەدەغەکردنی بڵاوکردنەوەی شتێک"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """The report is strictly embargoed for publication until Friday.""",
            kurdishText:
                """ڕاپۆرتەکە بە توندی قەدەغەکراوە بۆ بڵاوکردنەوە تاوەکو ھەینی.""",
            onPressedBritish: () => speakembargos5("en-GB"),
            onPressedAmerican: () => speakembargos5("en-US"),
          ),
          // embargos600embargos6
          // speakembargos6("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // embargos700embargos7
          // speakembargos7("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // embargos800embargos8
          // speakembargos8("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // embargos900embargos9
          // speakembargos9("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // embargos_1000embargos10
          // speakembargos10("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // embargos1100embargos11
          // speakembargos11("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // embargos1200embargos12
          // speakembargos12("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // embargos1300embargos13
          // speakembargos13("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // embargos1400embargos14
          // speakembargos14("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // embargos1500embargos15
          // speakembargos15("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // embargos1600embargos16
          // speakembargos16("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // embargos1700embargos17
          // speakembargos17("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // embargos1800embargos18
          // speakembargos18("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // embargos1900embargos19
          // speakembargos19("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // embargos_2000embargos20
          // speakembargos20("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // embargos2100embargos21
          // speakembargos21("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // embargos2200embargos22
          // speakembargos22("en-US"""),
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
- Noun: embargo (derived forms: embargoes)
1. A government order imposing a trade barrier (= trade embargo, trade stoppage)

- Verb: embargo (derived forms: embargoed, embargoes, embargoing)
1. Ban the publication of (documents), as for security or copyright reasons
"embargoed publications"
 
2. Prevent commerce
"The U.S. embargoes Libya"
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

  final String _videoId = '161WT6TeYig';
  final double _startSeconds = 113;

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
  final double _startSeconds = 887;

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

  final String _videoId = 'zWaoe_HCiCA';
  final double _startSeconds = 259;

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

  final String _videoId = 'vA_j6rjsBec';
  final double _startSeconds = 322;

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

  final String _videoId = 'TLQkoZX9Mog';
  final double _startSeconds = 291;

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

  final String _videoId = 'jEccWyHUXYY';
  final double _startSeconds = 678;

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

  final String _videoId = 'rG0UXdRKEoc';
  final double _startSeconds = 49;

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