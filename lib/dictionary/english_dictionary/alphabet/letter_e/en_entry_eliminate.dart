import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryeliminate extends StatefulWidget {
  const EnglishEntryeliminate({super.key});

  @override
  State<EnglishEntryeliminate> createState() => _EnglishEntryeliminateState();
}

class _EnglishEntryeliminateState extends State<EnglishEntryeliminate> {
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
  final String keyword = "eliminate";
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
    return const EntryTitle(word: "eliminate");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: eliminate");
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
    return const IPAofEnglish(text: "IpaUK: /ɪˈlɪmɪneɪt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeliminate(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("eliminate");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakeliminate("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ɪˈlɪmɪneɪt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeliminate(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("eliminate");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakeliminate("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakeliminates1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Credit cards eliminate the need to carry a lot of cash.");
  }

  Future<void> speakeliminates2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This diet claims to eliminate toxins from the body.");
  }

  Future<void> speakeliminates3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The risk cannot be eliminated altogether.");
  }

  Future<void> speakeliminates4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The police have eliminated two suspects from their investigation.");
  }

  Future<void> speakeliminates5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Malaria was eliminated as a cause of death.");
  }

  Future<void> speakeliminates6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All the English teams were eliminated in the early stages of the competition.");
  }

  Future<void> speakeliminates7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She was eliminated from the tournament in the first round.");
  }

  Future<void> speakeliminates8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Most of the regime's opponents were eliminated.");
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
کوردی: وەلانان، لابردن، پاککردنەوە، حەلکردن
"""),
          const DefinitionKurdish(
              text: """١. (کردار) لابردن یان ڕزگاربوون لە شتێک"""),
          SentencesRow(
            englishText:
                """Credit cards eliminate the need to carry a lot of cash.""",
            kurdishText:
                """کرێدیت کارد ئەو پێویستییە ناھێڵن کە ڕێژەیەکی زۆر کاش ھەڵبگریت.""", // eliminate
            onPressedBritish: () => speakeliminates1("en-GB"),
            onPressedAmerican: () => speakeliminates1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """This diet claims to eliminate toxins from the body.""",
            kurdishText:
                """ئەم ژەمە خواردنە بانگەشەی ئەوە دەکات کە زەھراو لە جەستە دەربکات.""",
            onPressedBritish: () => speakeliminates2("en-GB"),
            onPressedAmerican: () => speakeliminates2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The risk cannot be eliminated altogether.""",
            kurdishText: """ناتوانرێت مەترسییەکە بە تەواوی بنبڕ بکرێت.""",
            onPressedBritish: () => speakeliminates3("en-GB"),
            onPressedAmerican: () => speakeliminates3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٢. (کردار) وەستان لەوەی کە بیربکەیتەوە کەسێک/شتێک ڕەنگە بەرپرس بێت بۆ شتێک یان ھەڵببژێردرێت"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """The police have eliminated two suspects from their investigation.""",
            kurdishText:
                """پۆلیس وازیان لە دوو گومانلێکراو ھێناوە لە لێکۆڵینەوەکەیان.""",
            onPressedBritish: () => speakeliminates4("en-GB"),
            onPressedAmerican: () => speakeliminates4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """Malaria was eliminated as a cause of death.""",
            kurdishText: """مەلاریا وەک ھۆکارێکی مردن نەھێڵدرا.""",
            onPressedBritish: () => speakeliminates5("en-GB"),
            onPressedAmerican: () => speakeliminates5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٣. (کردار) تێکشکاندنی تیمێک یان کەسێک بەشێوەیەک کە چی دیکە بەژداری ڕکابەرییەک نەکەن"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """All the English teams were eliminated in the early stages of the competition.""",
            kurdishText:
                """ھەموو تیمە ئینگلیزییەکان لە قۆناغەکانی سەرەتای پاڵەوانێتییەکە دەرکردران.""",
            onPressedBritish: () => speakeliminates6("en-GB"),
            onPressedAmerican: () => speakeliminates6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """She was eliminated from the tournament in the first round.""",
            kurdishText: """لە یەکەم قۆناغدا لە پاڵەوانێتییەکە دەرکرا.""",
            onPressedBritish: () => speakeliminates7("en-GB"),
            onPressedAmerican: () => speakeliminates7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٤. (کردار) کوشتنی کەسێک"""),
          // const DividerSentences(),
          SentencesRow(
            englishText: """Most of the regime's opponents were eliminated.""",
            kurdishText: """زۆرێک لە دژبەرانی ڕژێمەکە کوژران.""",
            onPressedBritish: () => speakeliminates8("en-GB"),
            onPressedAmerican: () => speakeliminates8("en-US"),
          ),
          // eliminates900eliminates9
          // speakeliminates9("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // eliminates_1000eliminates10
          // speakeliminates10("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // eliminates1100eliminates11
          // speakeliminates11("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // eliminates1200eliminates12
          // speakeliminates12("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // eliminates1300eliminates13
          // speakeliminates13("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // eliminates1400eliminates14
          // speakeliminates14("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // eliminates1500eliminates15
          // speakeliminates15("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // eliminates1600eliminates16
          // speakeliminates16("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // eliminates1700eliminates17
          // speakeliminates17("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // eliminates1800eliminates18
          // speakeliminates18("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // eliminates1900eliminates19
          // speakeliminates19("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // eliminates_2000eliminates20
          // speakeliminates20("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // eliminates2100eliminates21
          // speakeliminates21("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // eliminates2200eliminates22
          // speakeliminates22("en-US"""),
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
- Verb: eliminate (derived forms: eliminating, eliminated, eliminates)
1. Terminate, end, or take out (= extinguish, get rid of, do away with)
"Let's eliminate the course on Akkadian hieroglyphics"; "eliminate my debts";
 
2. Get rid of something (= obviate, rid of)
 
3. Kill in large numbers (= annihilate, extinguish, eradicate, wipe out, decimate, carry off)
"the plague eliminated an entire population";
 
4. Dismiss from consideration or a contest (= rule out, winnow out, reject)
"This possibility can be eliminated from our consideration";
 
5. Expel from the body (= excrete, egest, pass)
"eliminate a kidney stone";
 
6. Remove from a contest or race
"The cyclist has eliminated all the competitors in the race"
 
7. (mathematics) remove (an unknown variable) from two or more equations
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

  final String _videoId = 'PUT_VID';
  final double _startSeconds = 222222222222222;

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

  final String _videoId = 'DWmGArQBtFI';
  final double _startSeconds = 183;

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

  final String _videoId = 'Js2UoMSumx4';
  final double _startSeconds = 614;

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

  final String _videoId = '0SeM5eqlNVg';
  final double _startSeconds = 135;

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

  final String _videoId = 'k7YVxLLIuGM';
  final double _startSeconds = 138;

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

  final String _videoId = 'Unzc731iCUY';
  final double _startSeconds = 1715;

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

  final String _videoId = '05gCLHlpzTU';
  final double _startSeconds = 1385;

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