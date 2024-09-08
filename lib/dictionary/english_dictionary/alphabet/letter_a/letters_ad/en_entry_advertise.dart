import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadvertise extends StatefulWidget {
  const EnglishEntryadvertise({super.key});

  @override
  State<EnglishEntryadvertise> createState() => _EnglishEntryadvertiseState();
}

class _EnglishEntryadvertiseState extends State<EnglishEntryadvertise> {
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
- Verb: advertise (derived forms: advertises, advertising, advertised)
1. Call attention to (= publicize, advertize [US, non-standard], publicise [Brit])
"Please don't advertise the fact that he has AIDS";
 
2. Make publicity for; try to sell (a product) (= advertize [US, non-standard], promote, push, flack [N. Amer, informal])
"The company is heavily advertising their new laptops";
""",
  );
// 188888880002200

  final String keyword = "advertise";
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
    await flutterTts.speak("""advertise""");
  }

  Future<void> speakadve2568(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("If you want to attract customers you need to advertise.");
  }

  Future<void> speakadver6384(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The best jobs are not always advertised in newspapers.");
  }

  Future<void> speakadve35984(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She coughed to advertise her presence.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'oK4c3Yw0JJw';
    const double startSecondsend = 671;
    const String videoIdone = 'b34mH9oHeJo';
    const double startSecondsone = 45;
    const String videoIdtwo = 'EvsKF8UaJeY';
    const double startSecondstwo = 1;
    const String videoIdthree = 'IYrgd4D7CeU';
    const double startSecondsthree = 1;
    const String videoIdfour = 'C2HJEMmQyIo';
    const double startSecondsfour = 90;
    const String videoIdfive = 'iqhK6QGehtQ';
    const double startSecondsfive = 104;
    // const String videoId = 'fHsa9DqmId8';
    // const double startSeconds = 290;
    // const String videoId = 'zJtJH46dyDE';
    // const double startSeconds = 1124;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """advertise""",
                      // alsoEnglishWord: "also: advertise",
                      britshText: """IpaUK: /ˈædvətaɪz/""",
                      americanText: """IpaUS: /ˈædvərtaɪz/""",
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
                    const DefinitionKurdish(text: """
١. (کردار) ڕیکلامکردن بۆ کاڵایەک یان خزمەتگوزارییەک"""),
                    SentencesRow(
                      englishText:
                          "If you want to attract customers you need to advertise.",
                      kurdishText:
                          "ئەگەر دەتەوێت کڕیار ڕابکێشیت ئەوا دەبێت ڕیکلام بکەیت.",
                      onPressedBritish: () => speakadve2568("en-GB"),
                      onPressedAmerican: () => speakadve2568("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) بانگەشەکردن بۆ شتێک"""),
                    SentencesRow(
                      englishText:
                          "The best jobs are not always advertised in newspapers.",
                      kurdishText:
                          "باشترین کارەکان زۆرجار لە ڕۆژنامەکان بانگەشەیان بۆ ناکرێت.",
                      onPressedBritish: () => speakadver6384("en-GB"),
                      onPressedAmerican: () => speakadver6384("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) وتن یان پیشاندانی شتێک لەسەر خۆت"""),
                    SentencesRow(
                      englishText: "She coughed to advertise her presence.",
                      kurdishText: "کۆکی بۆ پیشاندانی ئامادەییبوونی.",
                      onPressedBritish: () => speakadve35984("en-GB"),
                      onPressedAmerican: () => speakadve35984("en-US"),
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
