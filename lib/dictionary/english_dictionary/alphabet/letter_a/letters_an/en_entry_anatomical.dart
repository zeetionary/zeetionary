import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanatomical extends StatefulWidget {
  const EnglishEntryanatomical({super.key});

  @override
  State<EnglishEntryanatomical> createState() => _EnglishEntryanatomicalState();
}

class _EnglishEntryanatomicalState extends State<EnglishEntryanatomical> {
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
- Adjective: anatomical 
1. Of or relating to the structure of the body (= anatomic)
"anatomical features";

2. Of or relating to the branch of morphology that studies the structure of organisms (= anatomic)
"anatomical research";

- Noun: anatomical (derived forms: anatomicals)
1. An expression that relates to anatomy (= anatomical reference)
""",
  );
// 188888880002200

  final String keyword = "anatomical";
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
    await flutterTts.speak("""anatomical""");
  }

  Future<void> speakanatomical460(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "All medical students are required to do an anatomical dissection of a human body.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'KqgTERrYbQ4';
    const double startSecondsend = 4;
    const String videoIdone = 'Te1BP6Zl7lM';
    const double startSecondsone = 9;
    const String videoIdtwo = 'xvb32PnDjS0';
    const double startSecondstwo = 517;
    const String videoIdthree = 'oClWPnCphfA';
    const double startSecondsthree = 111;
    const String videoIdfour = 'jpeF6kt2xek';
    const double startSecondsfour = 25;
    const String videoIdfive = '-v8LFty5fpQ';
    const double startSecondsfive = 32;
    // final String _videoId = 'qg2nGY1aqlg';
    // final double _startSeconds = 362;
    // final String _videoId = 'w5zV_GusqvQ';
    // final double _startSeconds = 261;
    // final String _videoId = 'RYibowrZJeg';
    // final double _startSeconds = 370;
    // final String _videoId = 'BMoF4iupwfw';
    // final double _startSeconds = 232;
    // final String _videoId = 'e0u7x2qPosA';
    // final double _startSeconds = 662;
    // final String _videoId = 'oJLA8iNUV-0';
    // final double _startSeconds = 457;

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
                      word: """anatomical""",
                      // alsoEnglishWord: "also: anatomical",
                      britshText: """IpaUK: /ˌænəˈtɒmɪkl/""",
                      americanText: """IpaUS: /ˌænəˈtɑːmɪkl/""",
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
کوردی: ئاناتۆمیکاڵ، یەکاڵاکردنەوەیی، توێکاری‌یانە
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) پەیوەندیدار بە پێکھاتەی فیزیکی مرۆڤ، ئاژەڵ، یان ڕووەک"
                            ""),
                    SentencesRow(
                      englishText:
                          "All medical students are required to do an anatomical dissection of a human body.",
                      kurdishText:
                          "ھەموو خوێندکارانی پزیشکی دەبێت توێکارییەکی یەکاڵاکردنەوەیی جەستەی مرۆڤ بکەن.",
                      onPressedBritish: () => speakanatomical460("en-GB"),
                      onPressedAmerican: () => speakanatomical460("en-US"),
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

