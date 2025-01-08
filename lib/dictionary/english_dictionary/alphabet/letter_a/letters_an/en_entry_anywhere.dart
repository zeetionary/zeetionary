import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanywhere extends StatefulWidget {
  const EnglishEntryanywhere({super.key});

  @override
  State<EnglishEntryanywhere> createState() => _EnglishEntryanywhereState();
}

class _EnglishEntryanywhereState extends State<EnglishEntryanywhere> {
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
- Adverb: anywhere 
1. At, in or to any place (= anyplace [N. Amer, informal])
"you can find this food anywhere";
""",
  );
// 188888880002200

  final String keyword = "anywhere";
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
    await flutterTts.speak("""anywhere""");
  }

  Future<void> speakanywhere949(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I can't see it anywhere.");
  }

  Future<void> speakanywhere951(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Put the box down anywhere.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'VrKW58MS12g';
    const double startSecondsend = 1362;
    const String videoIdone = 'Cd1EmYRZynw';
    const double startSecondsone = 852;
    const String videoIdtwo = '_wNsZEqpKUA';
    const double startSecondstwo = 145;
    const String videoIdthree = '4J0xFUyz1nw';
    const double startSecondsthree = 570;
    const String videoIdfour = '1SO0uvexcew';
    const double startSecondsfour = 405;
    const String videoIdfive = 'tXjHb5QmDV0';
    const double startSecondsfive = 241;
    // final String _videoId = 'F5pgG1M_h_U';
    // final double _startSeconds = 164;
    // final String _videoId = 'NdTalMWrQ7c';
    // final double _startSeconds = 125;
    // final String _videoId = 'kGg44zdgHYM';
    // final double _startSeconds = 504;
    // final String _videoId = 'kHrjgWoy8qY';
    // final double _startSeconds = 190;
    // final String _videoId = '737Xp2J2KSs';
    // final double _startSeconds = 51;
    // final String _videoId = 'yOp0cyWp_P4';
    // final double _startSeconds = 786;

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
                      word: """anywhere""",
                      // alsoEnglishWord: "also: anywhere",
                      britshText: """IpaUK: /ˈeniweə(r)/""",
                      americanText: """IpaUS: /ˈeniwer/""",
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
کوردی: بۆ ھەر کوێ، لە ھەر شوێنێ، لە ھەر جێیێ، ھەر شوێنێ، ھەر شوێنێ کە، ھیچ کوێیێ، ھیچ‌جێیێ، ھەر شوێنێکی تر، جێگایێ، شوێنێ
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵکار) لە ڕستەی نەرێ و پرسیاری بۆ ئاماژە بۆ شوێن بەکاردێ"""),
                    SentencesRow(
                      englishText: "I can't see it anywhere.",
                      kurdishText: "لە ھیچ شوێنێک نایبینم.",
                      onPressedBritish: () => speakanywhere949("en-GB"),
                      onPressedAmerican: () => speakanywhere949("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵکار) لە ھەر شوێنێک، گرنگ نییە کوێ"""),
                    SentencesRow(
                      englishText: "Put the box down anywhere.",
                      kurdishText: "سنووقەکە لە ھەر کوێ دادەنێی دایبنە.",
                      onPressedBritish: () => speakanywhere951("en-GB"),
                      onPressedAmerican: () => speakanywhere951("en-US"),
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
