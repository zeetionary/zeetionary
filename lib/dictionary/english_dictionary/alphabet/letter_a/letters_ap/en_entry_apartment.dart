import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapartment extends StatefulWidget {
  const EnglishEntryapartment({super.key});

  @override
  State<EnglishEntryapartment> createState() => _EnglishEntryapartmentState();
}

class _EnglishEntryapartmentState extends State<EnglishEntryapartment> {
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
- Noun: apartment (derived forms: apartments) 
1. A suite of rooms usually on one floor of an apartment house (= flat [Brit])
"the estate agent took her on a walk-through of the apartment";
""",
  );
// 188888880002200

  final String keyword = "apartment";
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
    await flutterTts.speak("""apartment""");
  }

  Future<void> speakapartment1150(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I was renting a two-bedroom apartment in an old building.");
  }

  Future<void> speakapartment1152(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was evicted from his Manhattan apartment.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'py4zetCEYzA';
    const double startSecondsend = 101;
    const String videoIdone = 'vnYJxD2jd7k';
    const double startSecondsone = 1;
    const String videoIdtwo = 'zaf6StO4gy4';
    const double startSecondstwo = 1;
    const String videoIdthree = 'f2fUhZrAq_s';
    const double startSecondsthree = 10;
    const String videoIdfour = 'kUMQ-bRxOjw';
    const double startSecondsfour = 1;
    const String videoIdfive = 'byt6WYw6J6g';
    const double startSecondsfive = 1;
    // final String _videoId = 'BYG1qf3XJNM';
    // final double _startSeconds = 583;
    // final String _videoId = 'yjv-NN_rusc';
    // final double _startSeconds = 28;
    // final String _videoId = 'FPoSemTTNvg';
    // final double _startSeconds = 371;
    // final String _videoId = 'd6hBAvIw25o';
    // final double _startSeconds = 10;
    // final String _videoId = 'V_Qq1H2ceQk';
    // final double _startSeconds = 76;

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
                      word: """apartment""",
                      // alsoEnglishWord: "also: apartment",
                      britshText: """IpaUK: /əˈpɑːtmənt/""",
                      americanText: """IpaUS: /əˈpɑːrtmənt/""",
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
کوردی: دەستەژوور، دەستەخانوو، باڵاخانە، وارخان، ژوور، دیو
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) ژمارەیەک ژوور بۆ ژیان تێیدا، زۆرجار لە نھۆمێکی بینایەکی گەورە"
                            ""),
                    SentencesRow(
                      englishText:
                          "I was renting a two-bedroom apartment in an old building.",
                      kurdishText:
                          "دەستەژوورێکی دوو ژووریم بە کرێ گرت‌بوو لە باڵەخانەیەکی کۆن.",
                      onPressedBritish: () => speakapartment1150("en-GB"),
                      onPressedAmerican: () => speakapartment1150("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "He was evicted from his Manhattan apartment.",
                      kurdishText: "لە دەستەژوورەکەی لە مانھاتن دەرکرا.",
                      onPressedBritish: () => speakapartment1152("en-GB"),
                      onPressedAmerican: () => speakapartment1152("en-US"),
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
