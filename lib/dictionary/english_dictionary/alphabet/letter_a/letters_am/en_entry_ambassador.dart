import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryambassador extends StatefulWidget {
  const EnglishEntryambassador({super.key});

  @override
  State<EnglishEntryambassador> createState() => _EnglishEntryambassadorState();
}

class _EnglishEntryambassadorState extends State<EnglishEntryambassador> {
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
- Noun: ambassador (derived forms: ambassadors)
1. A diplomat of the highest rank; accredited as representative from one country to another (= embassador)
 
2. An informal representative
"an ambassador of good will"
""",
  );
// 188888880002200

  final String keyword = "ambassador";
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
    await flutterTts.speak("""ambassador""");
  }

  Future<void> speakambassador56661(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The US ambassador to Egypt was recalled to Washington in protest.");
  }

  Future<void> speakambassador8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He's former ambassador of Germany to the UN.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'COD9hcTpGWQ';
    const double startSecondsend = 53;
    const String videoIdone = 'xGVc5ex6RiQ';
    const double startSecondsone = 24;
    const String videoIdtwo = 'TUL1KzYbEm8';
    const double startSecondstwo = 57;
    const String videoIdthree = 'TRGHIN2PGIA';
    const double startSecondsthree = 1269;
    const String videoIdfour = 'FLqvTE1Eqfg';
    const double startSecondsfour = 543;
    const String videoIdfive = 'ihwAF-zahsA';
    const double startSecondsfive = 1378;
    // final String _videoId = 'wPQzenQMxKs';
    // final double _startSeconds = 274;
    // final String _videoId = 'yCdR82Odndw';
    // final double _startSeconds = 143;
    // final String _videoId = '3yvxFFsjcYs';
    // final double _startSeconds = 1216;
    // final String _videoId = 'xjmXzYdxuTQ';
    // final double _startSeconds = 498;

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
                      word: """ambassador""",
                      // alsoEnglishWord: "also: ambassador",
                      britshText: """IpaUK: /æmˈbæsədə(r)/""",
                      americanText: """IpaUS: /æmˈbæsədər/""",
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
کوردی: باڵوێز، باڵیۆز، نێردە، نێردراو، نوێنەری دەسەڵات‌پێدراو یان دەسەڵات‌بەدەست
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) باڵیۆز؛ نوێنەری وڵاتێک لە وڵاتێکی تر"
                            ""),
                    SentencesRow(
                      englishText:
                          "The US ambassador to Egypt was recalled to Washington in protest.",
                      kurdishText:
                          "باڵیۆزی ئەمریکا لە ناڕەزاییدا کشێندرایەوە لە میسر.",
                      onPressedBritish: () => speakambassador56661("en-GB"),
                      onPressedAmerican: () => speakambassador56661("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "He's former ambassador of Germany to the UN.",
                      kurdishText:
                          "نێردەی پێشووتری ئەڵمانیایە بۆ نەتەوە یەکگرتووەکان.",
                      onPressedBritish: () => speakambassador8("en-GB"),
                      onPressedAmerican: () => speakambassador8("en-US"),
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

