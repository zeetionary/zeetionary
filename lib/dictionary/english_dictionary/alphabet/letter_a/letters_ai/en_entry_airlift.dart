// end airlift
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryairlift extends StatefulWidget {
  const EnglishEntryairlift({super.key});

  @override
  State<EnglishEntryairlift> createState() => _EnglishEntryairliftState();
}

class _EnglishEntryairliftState extends State<EnglishEntryairlift> {
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
- Noun: airlift (derived forms: airlifting, airlifted, airlifts)
1. Transportation of people or goods by air (especially when other means of access are unavailable) (= lift)

1. Verb: airlift 
1. Fly people or goods to or from places not accessible by other means (= lift)
"Food is airlifted into Bosnia";
""",
  );
// 188888880002200

  final String keyword = "airlift";
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
    await flutterTts.speak("""airlift""");
  }

  Future<void> speakairlift43555(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The German authorities are considering an airlift if the situation becomes critical.");
  }

  Future<void> speakairlift3522(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Over 200 residents were airlifted off the island.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'sHu0NgiQpQY';
    const double startSecondsend = 311;
    const String videoIdone = 'FQ4hvLqNfqo';
    const double startSecondsone = 925;
    const String videoIdtwo = 'b4wRdoWpw0w';
    const double startSecondstwo = 983;
    const String videoIdthree = 'C0mDENSW3VQ';
    const double startSecondsthree = 1587;
    const String videoIdfour = 'aqPvVxxIDr0';
    const double startSecondsfour = 2531;
    const String videoIdfive = 'm2cSpKh9aUU';
    const double startSecondsfive = 428;
    // final String _videoId = 'QpTmSVK6-qM';
    // final double _startSeconds = 613;
    // final String _videoId = 'o06_sSn7tuA';
    // final double _startSeconds = 555;
    // final String _videoId = '_uIXQvIt9F0';
    // final double _startSeconds = 630;
    // final String _videoId = 'Ho5AaVHjRrY';
    // final double _startSeconds = 1159;

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
                      word: """airlift""",
                      // alsoEnglishWord: "also: airlift",
                      britshText: """IpaUK: /ˈeəlɪft/""",
                      americanText: """IpaUS: /ˈerlɪft/""",
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
١. (ناو) ئۆپەراسیۆنی گواستنەوەی خەڵکی بە فڕۆکە لە ناوچەیەکی مەترسیدار یان لێقەوماو"""),
                    SentencesRow(
                      englishText:
                          "The German authorities are considering an airlift if the situation becomes critical.",
                      kurdishText:
                          "دەسەڵاتدارانی ئەڵمانیا بیر لە ئۆپەراسیۆنی گواستنەوەی ڕزگارکردن بە فڕۆکە دەکەنەوە لە حاڵەتی خراپبوونی دۆخەکە.",
                      onPressedBritish: () => speakairlift43555("en-GB"),
                      onPressedAmerican: () => speakairlift43555("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) گواستنەوەی کەسێک بە فڕۆکە لە شوێنێکی مەترسیدار یان لێقەوماو"""),
                    SentencesRow(
                      englishText:
                          "Over 200 residents were airlifted off the island.",
                      kurdishText:
                          "زیاتر لە ٢٠٠ کەس لە دوورگەکە بە فڕۆکە ڕزگارکران.",
                      onPressedBritish: () => speakairlift3522("en-GB"),
                      onPressedAmerican: () => speakairlift3522("en-US"),
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



