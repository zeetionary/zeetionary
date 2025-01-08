import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantic extends StatefulWidget {
  const EnglishEntryantic({super.key});

  @override
  State<EnglishEntryantic> createState() => _EnglishEntryanticState();
}

class _EnglishEntryanticState extends State<EnglishEntryantic> {
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
- Noun: antic (derived forms: antics)
1. A ludicrous or grotesque act done for fun and amusement (= joke, prank, trick, caper [informal], put-on [N. Amer, informal], dido [N. Amer, informal])

- Adjective: antic 
Usage: archaic
1. Ludicrously odd (= fantastic, fantastical, grotesque)
"Hamlet's assumed antic disposition";

- Verb: antic (derived forms: antics, anticking, anticked)
Usage: archaic
- Act as or like a clown (= clown, clown around)
""",
  );
// 188888880002200

  final String keyword = "antic";
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
    await flutterTts.speak("""antic""");
  }

  Future<void> speakantic923(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The bank staff got up to all sorts of antics to raise money for charity.");
  }

  Future<void> speakantic929(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Such an antic comedy does not need to be realistic.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'HfwPL-bd_mk';
    const double startSecondsend = 3154;
    const String videoIdone = 'DJ86QWzI2Wo';
    const double startSecondsone = 188;
    const String videoIdtwo = 'Q8fqMYZsJBk';
    const double startSecondstwo = 119;
    const String videoIdthree = 'p3N6fR6QtZI';
    const double startSecondsthree = 30;
    const String videoIdfour = 'gF4kT4faFO0';
    const double startSecondsfour = 298;
    const String videoIdfive = 'shRBKH5CHwM';
    const double startSecondsfive = 1578;
    // final String _videoId = 'gWPx7XbNYC0';
    // final double _startSeconds = 135;
    // final String _videoId = 'fiD4YvUswKY';
    // final double _startSeconds = 404;
    // final String _videoId = 'Zmz5nRMi5v8';
    // final double _startSeconds = 260;
    // final String _videoId = 'xSB93dGMGeg';
    // final double _startSeconds = 1745;
    // final String _videoId = 'jMn4I3P4dI0';
    // final double _startSeconds = 199;

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
                      word: """antic""",
                      // alsoEnglishWord: "also: antic",
                      britshText: """IpaUK: /ˈæntɪk/""",
                      americanText: """IpaUS: /ˈæntɪk/""",
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
کوردی: ڕەفتار یان ھەڵس‌وکەوتی سەیر، شانۆی گاڵتەجاڕ
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) ڕەفتاری سەیر یان گاڵتەجاڕی بەشێوەیەک کە خەڵکی حەزیان لێیە"
                            ""),
                    SentencesRow(
                      englishText:
                          "The bank staff got up to all sorts of antics to raise money for charity.",
                      kurdishText:
                          "ستافی بانکەکە ھەموو جۆرە کارێکی سەیریان دەکرد بۆ کۆکردنەوەی پارە بۆ ڕێکخراوە خێرخوازییەکە.",
                      onPressedBritish: () => speakantic923("en-GB"),
                      onPressedAmerican: () => speakantic923("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "Such an antic comedy does not need to be realistic.",
                      kurdishText:
                          "بەرھەمێکی کۆمیدی وەھا گاڵتەجاڕی پێویست ناکات ڕاستی وێنا بکات.",
                      onPressedBritish: () => speakantic929("en-GB"),
                      onPressedAmerican: () => speakantic929("en-US"),
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





