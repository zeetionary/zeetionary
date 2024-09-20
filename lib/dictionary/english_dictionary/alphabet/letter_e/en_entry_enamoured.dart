import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryenamoured extends StatefulWidget {
  const EnglishEntryenamoured({super.key});

  @override
  State<EnglishEntryenamoured> createState() => _EnglishEntryenamouredState();
}

class _EnglishEntryenamouredState extends State<EnglishEntryenamoured> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("enamoured");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: "enamoured",
                      // alsoEnglishWord: "also: enamoured",
                      britshText: "IpaUK: /ɪˈnæməd/",
                      americanText: "IpaUS: /ɪˈnæmərd/",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                bottom: const CustomTabBarNew(
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
              const YouTubeScroller(
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
              ),
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
  final String keyword = "enamoured";
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

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was less than enamoured of the music.");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I'm not exactly enamoured with the idea of spending a whole day with them.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const KurdishVocabulary(text: """
کوردی: ھۆگر، بەتاسە، تامەزرۆ، سەوداسەر، شەیدا، دڵبەستە، دڵ‌تێچوو
"""),
          const DefinitionKurdish(
              text: """١. (ھاوەڵناو) زۆر حەزکردن لە شتێک"""),
          SentencesRow(
            englishText: """He was less than enamoured of the music.""",
            kurdishText: """زۆر حەزی بە میوزیکەکە نەبوو.""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """I'm not exactly enamoured with the idea of spending a whole day with them.""",
            kurdishText:
                """زۆر حەز بە بەسەربردنی ڕۆژێکی تەواو لەگەڵیان ناکەم.""",
            onPressedBritish: () => speaksentence2("en-GB"),
            onPressedAmerican: () => speaksentence2("en-US" ""),
          ),
          // const DividerSentences(),
          // SentencesRow(
          //   englishText: """speaksentence300""",
          //   onPressedBritish: () => speaksentence3("en-GB"),
          //   onPressedAmerican: () => speaksentence3sentence400""",
          //   onPressedBritish: () => speaksentence4("en-GB"),
          //   onPressedAmerican: () => speaksentence4sentence500""",
          //   onPressedBritish: () => speaksentence5("en-GB"),
          //   onPressedAmerican: () => speaksentence5sentence600""",
          //   onPressedBritish: () => speaksentence6("en-GB"),
          //   onPressedAmerican: () => speaksentence6sentence700""",
          //   onPressedBritish: () => speaksentence7("en-GB"),
          //   onPressedAmerican: () => speaksentence7sentence800""",
          //   onPressedBritish: () => speaksentence8("en-GB"),
          //   onPressedAmerican: () => speaksentence8sentence900""",
          //   onPressedBritish: () => speaksentence9("en-GB"),
          //   onPressedAmerican: () => speaksentence9sentence_1000""",
          //   onPressedBritish: () => speaksentence10("en-GB"),
          //   onPressedAmerican: () => speaksentence10sentence1100""",
          //   onPressedBritish: () => speaksentence11("en-GB"),
          //   onPressedAmerican: () => speaksentence11sentence1200""",
          //   onPressedBritish: () => speaksentence12("en-GB"),
          //   onPressedAmerican: () => speaksentence12sentence1300""",
          //   onPressedBritish: () => speaksentence13("en-GB"),
          //   onPressedAmerican: () => speaksentence13sentence1400""",
          //   onPressedBritish: () => speaksentence14("en-GB"),
          //   onPressedAmerican: () => speaksentence14sentence1500""",
          //   onPressedBritish: () => speaksentence15("en-GB"),
          //   onPressedAmerican: () => speaksentence15sentence1600""",
          //   onPressedBritish: () => speaksentence16("en-GB"),
          //   onPressedAmerican: () => speaksentence16sentence1700""",
          //   onPressedBritish: () => speaksentence17("en-GB"),
          //   onPressedAmerican: () => speaksentence17sentence1800""",
          //   onPressedBritish: () => speaksentence18("en-GB"),
          //   onPressedAmerican: () => speaksentence18sentence1900""",
          //   onPressedBritish: () => speaksentence19("en-GB"),
          //   onPressedAmerican: () => speaksentence19sentence_2000""",
          //   onPressedBritish: () => speaksentence20("en-GB"),
          //   onPressedAmerican: () => speaksentence20sentence2100""",
          //   onPressedBritish: () => speaksentence21("en-GB"),
          //   onPressedAmerican: () => speaksentence21sentence2200""",
          //   onPressedBritish: () => speaksentence22("en-GB"),
          //   onPressedAmerican: () => speaksentence22sentence2300""",
          //   onPressedBritish: () => speaksentence23("en-GB"),
          //   onPressedAmerican: () => speaksentence23sentence2400""",
          //   onPressedBritish: () => speaksentence24("en-GB"),
          //   onPressedAmerican: () => speaksentence24sentence2500""",
          //   onPressedBritish: () => speaksentence25("en-GB"),
          //   onPressedAmerican: () => speaksentence25sentence2600""",
          //   onPressedBritish: () => speaksentence26("en-GB"),
          //   onPressedAmerican: () => speaksentence26sentence2700""",
          //   onPressedBritish: () => speaksentence27("en-GB"),
          //   onPressedAmerican: () => speaksentence27sentence2800""",
          //   onPressedBritish: () => speaksentence28("en-GB"),
          //   onPressedAmerican: () => speaksentence28sentence2900""",
          //   onPressedBritish: () => speaksentence29("en-GB"),
          //   onPressedAmerican: () => speaksentence29sentence_3000""",
          //   onPressedBritish: () => speaksentence30("en-GB"),
          //   onPressedAmerican: () => speaksentence30sentence3100""",
          //   onPressedBritish: () => speaksentence31("en-GB"),
          //   onPressedAmerican: () => speaksentence31sentence3200""",
          //   onPressedBritish: () => speaksentence32("en-GB"),
          //   onPressedAmerican: () => speaksentence32sentence3300""",
          //   onPressedBritish: () => speaksentence33("en-GB"),
          //   onPressedAmerican: () => speaksentence33sentence3400""",
          //   onPressedBritish: () => speaksentence34("en-GB"),
          //   onPressedAmerican: () => speaksentence34sentence3500""",
          //   onPressedBritish: () => speaksentence35("en-GB"),
          //   onPressedAmerican: () => speaksentence35sentence3600""",
          //   onPressedBritish: () => speaksentence36("en-GB"),
          //   onPressedAmerican: () => speaksentence36sentence3700""",
          //   onPressedBritish: () => speaksentence37("en-GB"),
          //   onPressedAmerican: () => speaksentence37sentence3800""",
          //   onPressedBritish: () => speaksentence38("en-GB"),
          //   onPressedAmerican: () => speaksentence38sentence3900""",
          //   onPressedBritish: () => speaksentence39("en-GB"),
          //   onPressedAmerican: () => speaksentence39sentence_4000""",
          //   onPressedBritish: () => speaksentence40("en-GB"),
          //   onPressedAmerican: () => speaksentence40sentence4100""",
          //   onPressedBritish: () => speaksentence41("en-GB"),
          //   onPressedAmerican: () => speaksentence41sentence4200""",
          //   onPressedBritish: () => speaksentence42("en-GB"),
          //   onPressedAmerican: () => speaksentence42sentence4300""",
          //   onPressedBritish: () => speaksentence43("en-GB"),
          //   onPressedAmerican: () => speaksentence43sentence4400""",
          //   onPressedBritish: () => speaksentence44("en-GB"),
          //   onPressedAmerican: () => speaksentence44sentence4500""",
          //   onPressedBritish: () => speaksentence45("en-GB"),
          //   onPressedAmerican: () => speaksentence45sentence4600""",
          //   onPressedBritish: () => speaksentence46("en-GB"),
          //   onPressedAmerican: () => speaksentence46sentence4700""",
          //   onPressedBritish: () => speaksentence47("en-GB"),
          //   onPressedAmerican: () => speaksentence47sentence4800""",
          //   onPressedBritish: () => speaksentence48("en-GB"),
          //   onPressedAmerican: () => speaksentence48sentence4900""",
          //   onPressedBritish: () => speaksentence49("en-GB"),
          //   onPressedAmerican: () => speaksentence49sentence_5000""",
          //   onPressedBritish: () => speaksentence50("en-GB"),
          //   onPressedAmerican: () => speaksentence50sentence5100""",
          //   onPressedBritish: () => speaksentence51("en-GB"),
          //   onPressedAmerican: () => speaksentence51sentence5200""",
          //   onPressedBritish: () => speaksentence52("en-GB"),
          //   onPressedAmerican: () => speaksentence52sentence5300""",
          //   onPressedBritish: () => speaksentence53("en-GB"),
          //   onPressedAmerican: () => speaksentence53sentence5400""",
          //   onPressedBritish: () => speaksentence54("en-GB"),
          //   onPressedAmerican: () => speaksentence54sentence5500""",
          //   onPressedBritish: () => speaksentence55("en-GB"),
          //   onPressedAmerican: () => speaksentence55sentence5600""",
          //   onPressedBritish: () => speaksentence56("en-GB"),
          //   onPressedAmerican: () => speaksentence56sentence5700""",
          //   onPressedBritish: () => speaksentence57("en-GB"),
          //   onPressedAmerican: () => speaksentence57sentence5800""",
          //   onPressedBritish: () => speaksentence58("en-GB"),
          //   onPressedAmerican: () => speaksentence58sentence5900""",
          //   onPressedBritish: () => speaksentence59("en-GB"),
          //   onPressedAmerican: () => speaksentence59sentence_6000""",
          //   onPressedBritish: () => speaksentence60("en-GB"),
          //   onPressedAmerican: () => speaksentence60sentence6100""",
          //   onPressedBritish: () => speaksentence61("en-GB"),
          //   onPressedAmerican: () => speaksentence61sentence6200""",
          //   onPressedBritish: () => speaksentence62("en-GB"),
          //   onPressedAmerican: () => speaksentence62sentence6300""",
          //   onPressedBritish: () => speaksentence63("en-GB"),
          //   onPressedAmerican: () => speaksentence63sentence6400""",
          //   onPressedBritish: () => speaksentence64("en-GB"),
          //   onPressedAmerican: () => speaksentence64sentence6500""",
          //   onPressedBritish: () => speaksentence65("en-GB"),
          //   onPressedAmerican: () => speaksentence65sentence6600""",
          //   onPressedBritish: () => speaksentence66("en-GB"),
          //   onPressedAmerican: () => speaksentence66sentence6700""",
          //   onPressedBritish: () => speaksentence67("en-GB"),
          //   onPressedAmerican: () => speaksentence67sentence6800""",
          //   onPressedBritish: () => speaksentence68("en-GB"),
          //   onPressedAmerican: () => speaksentence68sentence6900""",
          //   onPressedBritish: () => speaksentence69("en-GB"),
          //   onPressedAmerican: () => speaksentence69sentence_7000""",
          //   onPressedBritish: () => speaksentence70("en-GB"),
          //   onPressedAmerican: () => speaksentence70sentence7100""",
          //   onPressedBritish: () => speaksentence71("en-GB"),
          //   onPressedAmerican: () => speaksentence71sentence7200""",
          //   onPressedBritish: () => speaksentence72("en-GB"),
          //   onPressedAmerican: () => speaksentence72sentence7300""",
          //   onPressedBritish: () => speaksentence73("en-GB"),
          //   onPressedAmerican: () => speaksentence73sentence7400""",
          //   onPressedBritish: () => speaksentence74("en-GB"),
          //   onPressedAmerican: () => speaksentence74sentence7500""",
          //   onPressedBritish: () => speaksentence75("en-GB"),
          //   onPressedAmerican: () => speaksentence75sentence7600""",
          //   onPressedBritish: () => speaksentence76("en-GB"),
          //   onPressedAmerican: () => speaksentence76sentence7700""",
          //   onPressedBritish: () => speaksentence77("en-GB"),
          //   onPressedAmerican: () => speaksentence77sentence7800""",
          //   onPressedBritish: () => speaksentence78("en-GB"),
          //   onPressedAmerican: () => speaksentence78sentence7900""",
          //   onPressedBritish: () => speaksentence79("en-GB"),
          //   onPressedAmerican: () => speaksentence79sentence_8000""",
          //   onPressedBritish: () => speaksentence80("en-GB"),
          //   onPressedAmerican: () => speaksentence80sentence8100""",
          //   onPressedBritish: () => speaksentence81("en-GB"),
          //   onPressedAmerican: () => speaksentence81sentence8200""",
          //   onPressedBritish: () => speaksentence82("en-GB"),
          //   onPressedAmerican: () => speaksentence82sentence8300""",
          //   onPressedBritish: () => speaksentence83("en-GB"),
          //   onPressedAmerican: () => speaksentence83sentence8400""",
          //   onPressedBritish: () => speaksentence84("en-GB"),
          //   onPressedAmerican: () => speaksentence84("en-US" ""),
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

  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Adjective: enamoured
Usage: Brit, Cdn (US: enamored)
1. Feeling strong, obsessive or foolish love (= enamored [US], infatuated, in love, potty [Brit, informal], smitten, soft on, taken with, besotted, lovestruck [informal])
"Narcissus was a beautiful Greek youth who became enamoured of his own reflection";
 
2. Full of admiration, strong liking or love (= taken with, enamored [US])
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'tkxR1TcG4n4';
  final double _startSeconds = 893;

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

  final String _videoId = 'FVh-n93cWzw';
  final double _startSeconds = 145;

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

  final String _videoId = 'qAITegD3MZo';
  final double _startSeconds = 451;

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

  final String _videoId = 'LuHheuhzJIE';
  final double _startSeconds = 499;

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

  final String _videoId = 'tPRG-l-YR94';
  final double _startSeconds = 152;

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

  final String _videoId = 'ArsBC8HWiOs';
  final double _startSeconds = 329;

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

  final String _videoId = 'eKtHaq1Rycs';
  final double _startSeconds = 158;

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

// end WORD_WEB