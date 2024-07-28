import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryemerge extends StatefulWidget {
  const EnglishEntryemerge({super.key});

  @override
  State<EnglishEntryemerge> createState() => _EnglishEntryemergeState();
}

class _EnglishEntryemergeState extends State<EnglishEntryemerge> {
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
  final String keyword = "emerge";
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
    return const EntryTitle(word: "emerge");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: emerge");
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
    return const IPAofEnglish(text: "IpaUK: /ɪˈmɜːdʒ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakemerge(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("emerge");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakemerge("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ɪˈmɜːrdʒ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakemerge(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("emerge");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakemerge("en-US" ""),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakemerges1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The crabs emerge at low tide to look for food.");
  }

  Future<void> speakemerges2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She finally emerged from her room at noon.");
  }

  Future<void> speakemerges3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The swimmer emerged from the lake.");
  }

  Future<void> speakemerges4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He emerged from the shadows.");
  }

  Future<void> speakemerges5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("No new evidence emerged during the investigation.");
  }

  Future<void> speakemerges6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "More details have emerged of his relationship with the film star.");
  }

  Future<void> speakemerges7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Problems with this drug are now beginning to emerge.");
  }

  Future<void> speakemerges8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It emerged that the company was going to be sold.");
  }

  Future<void> speakemerges9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("After the elections opposition groups began to emerge.");
  }

  Future<void> speakemerges10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He emerged as a key figure in the campaign");
  }

  Future<void> speakemerges11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The University of Colorado emerged as the overall winner.");
  }

  Future<void> speakemerges12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She emerged from the scandal with her reputation intact.");
  }

  Future<void> speakemerges13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The world is slowly emerging from recession.");
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
کوردی: دەرکەوتن، ھاتنەدەر، سەرھەڵدان
"""),
          const DefinitionKurdish(text: """١. (کردار) دەرکەوتن"""),
          SentencesRow(
            englishText: """The crabs emerge at low tide to look for food.""",
            kurdishText:
                """قرژاڵەکان لە شەپۆلی نزمدا دەردەکەون بۆ  گەڕان بۆ خواردن.""", // emerge
            onPressedBritish: () => speakemerges1("en-GB"),
            onPressedAmerican: () => speakemerges1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She finally emerged from her room at noon.""",
            kurdishText: """لەکۆتاییدا لە نیوەڕۆدا لە ژوورەکەی ھاتە دەرەوە.""",
            onPressedBritish: () => speakemerges2("en-GB"),
            onPressedAmerican: () => speakemerges2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The swimmer emerged from the lake.""",
            kurdishText: """مەلەوانەکە لە دەریاچەکە ھاتە دەرەوە.""",
            onPressedBritish: () => speakemerges3("en-GB"),
            onPressedAmerican: () => speakemerges3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """He emerged from the shadows.""",
            kurdishText: """لە تاریکییەکە ھاتە دەرەوە.""",
            onPressedBritish: () => speakemerges4("en-GB"),
            onPressedAmerican: () => speakemerges4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٢. (کردار) کە دەزاندرێن"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """No new evidence emerged during the investigation.""",
            kurdishText: """ھیچ بەڵگەی تازە لە ماوەی لێکۆڵینەوەکە نەزاندرا.""",
            onPressedBritish: () => speakemerges5("en-GB"),
            onPressedAmerican: () => speakemerges5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """More details have emerged of his relationship with the film star.""",
            kurdishText:
                """وردەکاریی زیاتر دەرکەوتووە سەبارەت بە پەیوەندییەکەی لەگەڵ ئەستێرە فیلمییەکە.""",
            onPressedBritish: () => speakemerges6("en-GB"),
            onPressedAmerican: () => speakemerges6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Problems with this drug are now beginning to emerge.""",
            kurdishText:
                """کێشەکانی ئەم دەرمانە لە ئێستادا دەست بە دەرکەوتن دەکەن.""",
            onPressedBritish: () => speakemerges7("en-GB"),
            onPressedAmerican: () => speakemerges7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """It emerged that the company was going to be sold.""",
            kurdishText: """ئەوە زاندرا کە کۆمپانیاکە دەفرۆشردرێت.""",
            onPressedBritish: () => speakemerges8("en-GB"),
            onPressedAmerican: () => speakemerges8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٣. (کردار) دەستکردن بە ھەبوون"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """After the elections opposition groups began to emerge.""",
            kurdishText:
                """لە دوای ھەڵبژاردنەکان گرووپی ئۆپۆزسیۆن دەستیان کرد بە درووست بوون.""",
            onPressedBritish: () => speakemerges9("en-GB"),
            onPressedAmerican: () => speakemerges9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """He emerged as a key figure in the campaign""",
            kurdishText: """وەک کەسایەتییەکی سەرەکی لە کەمپینەکە دەرکەوت.""",
            onPressedBritish: () => speakemerges10("en-GB"),
            onPressedAmerican: () => speakemerges10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """The University of Colorado emerged as the overall winner.""",
            kurdishText: """زانکۆی کۆلۆرادۆ وەک براوەی گشتی دەرکەوت.""",
            onPressedBritish: () => speakemerges11("en-GB"),
            onPressedAmerican: () => speakemerges11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (کردار) ڕزگاربوون لە دۆخێک یان ئەزموونێکی سەخت"""),
          // const DividerSentences(),
          SentencesRow(
            englishText:
                """She emerged from the scandal with her reputation intact.""",
            kurdishText:
                """لە ئابڕووچوونەکە ڕزگاری بوو بە مانەوەی ناوبانگی بە سەلامەتی.""",
            onPressedBritish: () => speakemerges12("en-GB"),
            onPressedAmerican: () => speakemerges12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """The world is slowly emerging from recession.""",
            kurdishText: """جیھان بە ھێواشی لە قەیرانەکە دەردەچێت.""",
            onPressedBritish: () => speakemerges13("en-GB"),
            onPressedAmerican: () => speakemerges13("en-US"),
          ),
          // emerges1400emerges14
          // speakemerges14("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // emerges1500emerges15
          // speakemerges15("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // emerges1600emerges16
          // speakemerges16("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // emerges1700emerges17
          // speakemerges17("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // emerges1800emerges18
          // speakemerges18("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // emerges1900emerges19
          // speakemerges19("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // emerges_2000emerges20
          // speakemerges20("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // emerges2100emerges21
          // speakemerges21("en-US"""),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // emerges2200emerges22
          // speakemerges22("en-US"""),
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
- Verb: emerge (derived forms: emerged, emerging, emerges)
1. Come out into view, as from concealment
"Suddenly, the proprietor emerged from his office"
 
2. Come out of (= issue, come out, come forth, go forth, egress)
"Water emerged from the hole in the wall";
 
3. Become known or apparent
"Some nice results emerged from the study"
 
4. Come up to the surface of or rise
"He felt new emotions emerge"
 
5. Happen or occur as a result of something (= come forth)
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

  final String _videoId = 'kDdUdvNQndo';
  final double _startSeconds = 103;

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

  final String _videoId = 'SwQhKFMxmDY';
  final double _startSeconds = 6345;

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

  final String _videoId = 'OZ_xhkg32nk';
  final double _startSeconds = 4;

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

  final String _videoId = 'oiLdWXLXDeA';
  final double _startSeconds = 85;

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

  final String _videoId = 'GVsUOuSjvcg';
  final double _startSeconds = 586;

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

  final String _videoId = 'unk6n3_QdlM';
  final double _startSeconds = 1333;

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

  final String _videoId = 'b1reY72ktEc';
  final double _startSeconds = 1430;

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