import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanorak extends StatefulWidget {
  const EnglishEntryanorak({super.key});

  @override
  State<EnglishEntryanorak> createState() => _EnglishEntryanorakState();
}

class _EnglishEntryanorakState extends State<EnglishEntryanorak> {
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
- Noun: anorak (derived forms: anoraks)
1. A kind of heavy jacket (= parka, windbreaker [N. Amer], windcheater [Brit])
 
2. [Brit, informal] Someone considered boring because of their obsessive hobby or narrow solitary interests (= trainspotter [Brit, informal], nerd [informal], spod [Brit, informal])
""",
  );
// 188888880002200

  final String keyword = "anorak";
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
    await flutterTts.speak("""anorak""");
  }

  Future<void> speakanorak836(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My Mum made me take my anorak in case it rained.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'hw0opXl3LcI';
    const double startSecondsend = 78;
    const String videoIdone = 'o9mGF-mtX-4';
    const double startSecondsone = 90;
    const String videoIdtwo = 'E4Zd7cmQQmQ';
    const double startSecondstwo = 986;
    const String videoIdthree = 'c5XzjxbMC_w';
    const double startSecondsthree = 166;
    const String videoIdfour = 'tLEPDV7U9QA';
    const double startSecondsfour = 154;
    const String videoIdfive = 'jRq8zrAUPTU';
    const double startSecondsfive = 221;
    // final String _videoId = 'r-E-88UdF6M';
    // final double _startSeconds = 656;
    // final String _videoId = 'lzjaArV9n0o';
    // final double _startSeconds = 419;
    // final String _videoId = '-TKORm5IepY';
    // final double _startSeconds = 1248;
    // final String _videoId = 'q9cLHwszHzI';
    // final double _startSeconds = 214;
    // final String _videoId = 'Oi3wmmkaXy0';
    // final double _startSeconds = 242;

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
                      word: """anorak""",
                      // alsoEnglishWord: "also: anorak",
                      britshText: """IpaUK: /ˈænəræk/""",
                      americanText: """IpaUS: /ˈænəræk/""",
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
کوردی: ئەنورەک، باڵتە، باگیر، باگێڕەوە
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) پاڵتاوێکی کورت لەگەڵ کڵاوێک بۆ پاراستن لە باران"
                            ""),
                    SentencesRow(
                      englishText:
                          "My Mum made me take my anorak in case it rained.",
                      kurdishText:
                          "دایکم زۆری لێ‌کردم پاڵتاوەکەم ببەم نەوەک باران ببارێ.",
                      onPressedBritish: () => speakanorak836("en-GB"),
                      onPressedAmerican: () => speakanorak836("en-US"),
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

