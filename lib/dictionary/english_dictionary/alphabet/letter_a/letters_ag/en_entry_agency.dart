// end agency
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryagency extends StatefulWidget {
  const EnglishEntryagency({super.key});

  @override
  State<EnglishEntryagency> createState() => _EnglishEntryagencyState();
}

class _EnglishEntryagencyState extends State<EnglishEntryagency> {
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
- Noun: agency (derived forms: agencies)
1. An administrative unit of government (= federal agency, government agency, bureau, office, authority)
"the Central Intelligence Agency";
 
2. A business or organization that provides a particular service, especially the mediation of transactions between two parties
 
3. The state of being in action or exerting power
"the agency of providence"; "she has free agency"
 
4. The state of serving as an official and authorized delegate or agent (= representation, delegacy)
 
5. To have the ability to produce a particular effect or achieve an end (= means, way)
"an example is the best agency of instruction";
""",
  );
// 188888880002200

  final String keyword = "agency";
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
    await flutterTts.speak("""agency""");
  }

  Future<void> speakagency27469(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She works for an surveillance agency.");
  }

  Future<void> speakagency2593(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Some laboratories are operated by government agencies.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'tMn5F8UJqdU';
    const double startSecondsend = 34;
    const String videoIdone = 'joiEpLYGNjE';
    const double startSecondsone = 6;
    const String videoIdtwo = '0NwMJiaMFvk';
    const double startSecondstwo = 7;
    const String videoIdthree = 'wfN-hKP4rFM';
    const double startSecondsthree = 447;
    const String videoIdfour = 'ECFHOftsGfI';
    const double startSecondsfour = 24;
    const String videoIdfive = 'f-UASWrHqj4';
    const double startSecondsfive = 2;
    // final String _videoId = '14WPcn4BXa0';
    // final double _startSeconds = 176;
    // final String _videoId = 'kBdfcR-8hEY';
    // final double _startSeconds = 2432;
    // final String _videoId = 'KKXNmYoPkx0';
    // final double _startSeconds = 13;
    // final String _videoId = 'EmT0i0xG6zg';
    // final double _startSeconds = 6010;

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
                      word: """agency""",
                      // alsoEnglishWord: "also: agency",
                      britshText: """IpaUK: /ˈeɪdʒənsi/""",
                      americanText: """IpaUS: /ˈeɪdʒənsi/""",
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
کوردی: ئاژانس، دەزگا، کارگێڕی، نووسینگەی کارداری، لق، نوێنەرایەتی، بەڕێوەبەری نوێنەرایەتی، یارمەتی، نێوگژیوانی، ناوبەری، دەڵاڵی، ناوبژێتی، بەشی کارگێڕی، بەشی بەڕێوەبەری، کار
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) دامەزراوەیەک کە خزمەتگوزارییەک پێشکەش دەکات"
                            ""),
                    SentencesRow(
                      englishText: "She works for an surveillance agency.",
                      kurdishText: "بۆ دەزگایەکی چاودێری کاردەکات.",
                      onPressedBritish: () => speakagency27469("en-GB"),
                      onPressedAmerican: () => speakagency27469("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) فەرمانگەیەکی حکومەت کە خزمەتگوزارییەکی دیاریکراو پێشکەش دەکات"""),
                    SentencesRow(
                      englishText:
                          "Some laboratories are operated by government agencies.",
                      kurdishText:
                          "ھەندێک تاقیگە لەلایەن فەرمانگەکانی حکومەتەوە بەڕێوەدەبردرێن.",
                      onPressedBritish: () => speakagency2593("en-GB"),
                      onPressedAmerican: () => speakagency2593("en-US"),
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

