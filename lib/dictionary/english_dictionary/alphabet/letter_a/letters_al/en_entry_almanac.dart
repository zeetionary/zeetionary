import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalmanac extends StatefulWidget {
  const EnglishEntryalmanac({super.key});

  @override
  State<EnglishEntryalmanac> createState() => _EnglishEntryalmanacState();
}

class _EnglishEntryalmanacState extends State<EnglishEntryalmanac> {
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
- Noun: almanac (derived forms: almanacs)
1. An annual publication including weather forecasts and other miscellaneous information arranged according to the calendar of a given year (= farmer's calendar, almanack [non-standard])
 
2. An annual publication containing tabular information in a particular field or fields arranged according to the calendar of a given year (= almanack [non-standard])
""",
  );
// 188888880002200

  final String keyword = "almanac";
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
    await flutterTts.speak("""almanac""");
  }

  Future<void> speakalmanac4932(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The almanac says there will be above normal rainfall in the first half of the winter in California.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'tsxmyL7TUJg';
    const double startSecondsend = 85;
    const String videoIdone = 'eIQuuoTQIoc';
    const double startSecondsone = 278;
    const String videoIdtwo = '4Q1FzhMY8FQ';
    const double startSecondstwo = 571;
    const String videoIdthree = 'iT-HFkChZEA';
    const double startSecondsthree = 766;
    const String videoIdfour = 'rhNDsPMaK_A';
    const double startSecondsfour = 273;
    const String videoIdfive = 'qfqkT54LoHg';
    const double startSecondsfive = 43;
    // final String _videoId = 'Jzj-mmo7qjw';
    // final double _startSeconds = 909;
    // final String _videoId = 'Wx50em257tQ';
    // final double _startSeconds = 160;
    // final String _videoId = 'ejjZLk2iUcQ';
    // final double _startSeconds = 147;

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
                      word: """almanac""",
                      // alsoEnglishWord: "also: almanac",
                      britshText: """IpaUK: /ˈɔːlmənæk/, /ˈælmənæk/""",
                      americanText: """IpaUS: /ˈɔːlmənæk/, /ˈælmənæk/""",
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
کوردی: ئۆلمەنەک، ڕۆژمێر، ساڵنامە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) پەرتووکێک یان سەرچاوەیەکی ئەلیکترۆنی کە ھەموو ساڵێک بڵاودەکرێتەوە بۆ چالاکییەکانی ساڵە"""),
                    SentencesRow(
                      englishText:
                          "The almanac says there will be above normal rainfall in the first half of the winter in California.",
                      kurdishText:
                          "ساڵنامەکە دەڵێت ئەمساڵ زیاتر لە کاتی ئاسایی باران دەبێت لە نیوەی یەکەمی زستان لە کالیفۆرنیا.",
                      onPressedBritish: () => speakalmanac4932("en-GB"),
                      onPressedAmerican: () => speakalmanac4932("en-US"),
                    ),
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



