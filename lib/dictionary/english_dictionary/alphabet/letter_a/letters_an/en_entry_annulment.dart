import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryannulment extends StatefulWidget {
  const EnglishEntryannulment({super.key});

  @override
  State<EnglishEntryannulment> createState() => _EnglishEntryannulmentState();
}

class _EnglishEntryannulmentState extends State<EnglishEntryannulment> {
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
- Noun: annulment (derived forms: annulments)
1. The state of being cancelled or annulled (= revocation)
 
2. (law) a formal termination (of a relationship or a judicial proceeding etc) (= invalidation)
 
3. The act of abrogating; an official or legal cancellation (= abrogation, repeal)
""",
  );
// 188888880002200

  final String keyword = "annulment";
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
    await flutterTts.speak("""annulment""");
  }

  Future<void> speakannulment917(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Henry VIII sought an annulment of his marriage to Catherine of Aragon.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'U2QcP1OF6P0';
    const double startSecondsend = 1;
    const String videoIdone = 'w_lDeCxjLQc';
    const double startSecondsone = 91;
    const String videoIdtwo = 'dfuPBC-v5NE';
    const double startSecondstwo = 1168;
    const String videoIdthree = '9MNUBBjHYrQ';
    const double startSecondsthree = 96;
    const String videoIdfour = 'PbABZl_nAcE';
    const double startSecondsfour = 403;
    const String videoIdfive = 'B3VHd2D-SLM';
    const double startSecondsfive = 400;
    // final String _videoId = 'lBB-o9kknEY';
    // final double _startSeconds = 182;
    // final String _videoId = 'lhuUEYVYXfM';
    // final double _startSeconds = 353;
    // final String _videoId = 'pZbN1x_wgq8';
    // final double _startSeconds = 288;
    // final String _videoId = 'utdWNAp0tBY';
    // final double _startSeconds = 22;
    // final String _videoId = '36erMl7IgRo';
    // final double _startSeconds = 806;

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
                      word: """annulment""",
                      // alsoEnglishWord: "also: annulment",
                      britshText: """IpaUK: /əˈnʌlmənt/""",
                      americanText: """IpaUS: /əˈnʌlmənt/""",
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
کوردی: ھەڵوەشاندنەوە، ھەڵوەشاندن، پووچەڵ‌کردنەوە، بەتاڵ‌کردنەوە، پووکاندنەوە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کرداری بەفەرمی ناساندنی ئەوەی شتێک، بەتایبەتی ھاوسەرگیری، لەڕووی یاساییەوە نەناسراوە"""),
                    SentencesRow(
                      englishText:
                          "Henry VIII sought an annulment of his marriage to Catherine of Aragon.",
                      kurdishText:
                          "پاشا ھەوڵی‌دا ھاوسەرگیرییەکەی لەگەڵ کاسرینی ئاراگۆندا ھەڵبوەشێنێتەوە.",
                      onPressedBritish: () => speakannulment917("en-GB"),
                      onPressedAmerican: () => speakannulment917("en-US"),
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

