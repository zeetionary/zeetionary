import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanticlimax extends StatefulWidget {
  const EnglishEntryanticlimax({super.key});

  @override
  State<EnglishEntryanticlimax> createState() => _EnglishEntryanticlimaxState();
}

class _EnglishEntryanticlimaxState extends State<EnglishEntryanticlimax> {
  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    flutterTts.setLanguage("en-US");
    fetchSentences();
  }

  FlutterTts flutterTts = FlutterTts();

  bool isSpeaking = false;

  Future<void> startSpeaking(
      String languageCode, EnglishMeaningConst englishMeaningConst) async {
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
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
- Noun: anticlimax (derived forms: anticlimaxes)
1. A disappointing decline after a previous rise
"the anticlimax of a brilliant career"
 
2. A change from a serious subject to a disappointing one (= bathos)
""",
  );
// 188888880002200

  final String keyword = "anticlimax";
  List<Map<String, dynamic>> filteredSentences = [];

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

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""anticlimax""");
  }

  Future<void> speakanticlimax843(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "When you really look forward to something it's often an anticlimax when it actually happens.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'Ix6vtM4gP8g';
    const double startSecondsend = 380;
    const String videoIdone = 'm_zHSxuHHcQ';
    const double startSecondsone = 529;
    const String videoIdtwo = 'WiJfGq-iyp0';
    const double startSecondstwo = 4318;
    const String videoIdthree = 'jNUFSLY83YQ';
    const double startSecondsthree = 2450;
    const String videoIdfour = 'm2OuV0sEa9o';
    const double startSecondsfour = 119;
    const String videoIdfive = 'Ctd3iL9I0zw';
    const double startSecondsfive = 511;
    // final String _videoId = 'BLKD2Wf8_wk';
    // final double _startSeconds = 12151;
    // final String _videoId = 'oAg2Zybtzoc';
    // final double _startSeconds = 1790;
    // final String _videoId = 'aQS2UtB5Nks';
    // final double _startSeconds = 962;
    // final String _videoId = 'TFQimOBEoSE';
    // final double _startSeconds = 617;
    // final String _videoId = '0yjX2wN3oUo';
    // final double _startSeconds = 59;

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
                      word: """anticlimax""",
                      // alsoEnglishWord: "also: anticlimax",
                      britshText: """IpaUK: /ˌæntiˈklaɪmæks/""",
                      americanText:
                          """IpaUS: /ˌæntiˈklaɪmæks/, /ˌæntaɪˈklaɪmæks/""",
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
              SingleChildScrollView(
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
              ),
              SingleChildScrollView(
                child: CustomColumnWidget(
                  children: [
                    const KurdishVocabulary(text: """
کوردی: داکەوتن، داشکان، شۆڕبوونەوە، داچوون، ھاتنەخوارێ، لێژبوونەوە، ڕووداو، قۆناخ یان ئەنجامێ کە بە شێوەیەکی بەرچاو لە گرنگایەتی چاوەڕوان‌کراوی کەم‌تر دەبێتەوە، کەوتنان، داکەوتن، داشکان (وەک لە داستان و چیرۆکەکان‌دا، وەک "ژنەکەم مرد، ماڵەکەمیان برد و سەگەکەشم گوم بوو.")، ناھومێدی، دڵساردی
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) شتێکی کە ڕوودەدات لە کاتێکدا شتێکی خۆش لە بەرزترین ئاستە، و دەبێتەھۆی ئەوەی شتە خۆشەکە چێژی لەدەست‌بدات یان کەمتر بێت لەوەی پێشبینیت دەکرد "
                            ""),
                    SentencesRow(
                      englishText:
                          "When you really look forward to something it's often an anticlimax when it actually happens.",
                      kurdishText:
                          "کاتێک زۆر چاوەڕیی شتێک دەکەیت زۆرجار نائومێدییەک ھەیە کە لە ڕاستیدا ڕوودەدات.",
                      onPressedBritish: () => speakanticlimax843("en-GB"),
                      onPressedAmerican: () => speakanticlimax843("en-US"),
                    ),
                    // const DividerSentences(),
                    // const DividerDefinition(),
                  ],
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  if (filteredSentences.isEmpty) {
                    return const NoSentencesFromDatabase();
                  } else {
                    return ListView.builder(
                      itemCount: filteredSentences.length,
                      itemBuilder: (context, index) {
                        final sentence = filteredSentences[index];
                        final showDivider = filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1;
                        return CustomSentenceWidget(
                          englishText: sentence['english'].toString(),
                          frenchText: sentence['french'].toString(),
                          keyword: keyword,
                          onPressedBritish: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-GB",
                          ),
                          onPressedAmerican: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-US",
                          ),
                          showDivider: showDivider,
                        );
                      },
                    );
                  }
                },
              ),
              const YouTubeScroller(
                children: [
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdend),
                    videoId: videoIdend,
                    startSeconds: startSecondsend,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdone),
                    videoId: videoIdone,
                    startSeconds: startSecondsone,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdtwo),
                    videoId: videoIdtwo,
                    startSeconds: startSecondstwo,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdthree),
                    videoId: videoIdthree,
                    startSeconds: startSecondsthree,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfour),
                    videoId: videoIdfour,
                    startSeconds: startSecondsfour,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfive),
                    videoId: videoIdfive,
                    startSeconds: startSecondsfive,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// end WORD_WEB


