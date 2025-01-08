import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanatomy extends StatefulWidget {
  const EnglishEntryanatomy({super.key});

  @override
  State<EnglishEntryanatomy> createState() => _EnglishEntryanatomyState();
}

class _EnglishEntryanatomyState extends State<EnglishEntryanatomy> {
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
- Noun: anatomy (derived forms: anatomies)
1. The branch of morphology that deals with the structure of animals (= general anatomy)
 
2. The physical body of a human being (= human body, physical body, material body, soma, build, figure, physique, shape, bod [informal], chassis [informal], frame, form, flesh)
 
3. A detailed analysis
"he studied the anatomy of crimes"
""",
  );
// 188888880002200

  final String keyword = "anatomy";
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
    await flutterTts.speak("""anatomy""");
  }

  Future<void> speakanatomy409(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("An understanding of human anatomy is important to a dancer.");
  }

  Future<void> speakanatomy499(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The female anatomy includes organs like the ovaries and uterus.");
  }

  Future<void> speakanatomy9500(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Various parts of his anatomy were clearly visible.");
  }

  Future<void> speakanatomy5582(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The article explores an anatomy of the current recession's causes.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '0foq0Krn9yI';
    const double startSecondsend = 1;
    const String videoIdone = 'gl0VUHLJuls';
    const double startSecondsone = 1;
    const String videoIdtwo = 'hA95iw4B2jg';
    const double startSecondstwo = 1218;
    const String videoIdthree = 'Fa13JKGG0ds';
    const double startSecondsthree = 388;
    const String videoIdfour = 'fZJGTevM3QI';
    const double startSecondsfour = 120;
    const String videoIdfive = 'IlU-zDU6aQ0';
    const double startSecondsfive = 2491;
    // final String _videoId = '0olmZzsF4Xo';
    // final double _startSeconds = 685;
    // final String _videoId = 'KdpkxdP9Thw';
    // final double _startSeconds = 258;
    // final String _videoId = '6SGvnwsbf88';
    // final double _startSeconds = 188;
    // final String _videoId = 'eKUEZY3R3cI';
    // final double _startSeconds = 5;
    // final String _videoId = 'xuObV1RvXNk';
    // final double _startSeconds = 291;
    // final String _videoId = 'qk97w6ZmV90';
    // final double _startSeconds = 148;

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
                      word: """anatomy""",
                      // alsoEnglishWord: "also: anatomy",
                      britshText: """IpaUK: /əˈnætəmi/""",
                      americanText: """IpaUS: /əˈnætəmi/""",
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
کوردی: ئاناتۆمی، توێکاری، یەکاڵاکردنەوە، توێ‌توێ‌کردن، دارەڕا، چوارچێوە، پێکھاتە، داروبار، لەش، جەستە، تاوتوێ(کردن)، لێکدانەوە، شی‌کردنەوە، پێکھاتە یان داڕشتەی پێچەڵاوپێچ
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) وردبوونەوەی زانستی لە پێکھاتەی فیزیکی مرۆڤ، ئاژەڵ، و ڕووەک"""),
                    SentencesRow(
                      englishText:
                          "An understanding of human anatomy is important to a dancer.",
                      kurdishText:
                          "تێگەشتن لە پێکھاتەی درووست بوونی لەشی مرۆڤ گرنگە بۆ سەماکارێک.",
                      onPressedBritish: () => speakanatomy409("en-GB"),
                      onPressedAmerican: () => speakanatomy409("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) پێکھاتەی فیزیکی مرۆڤ، ئاژەڵ، یان ڕووەک"""),
                    SentencesRow(
                      englishText:
                          "The female anatomy includes organs like the ovaries and uterus.",
                      kurdishText:
                          "جەستەی مێینە ئەندامەکانی وەک ھێلکەدان و مناڵ‌دان لەخۆدەگرێت.",
                      onPressedBritish: () => speakanatomy499("en-GB"),
                      onPressedAmerican: () => speakanatomy499("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) جەستەی مرۆڤێک"""),
                    SentencesRow(
                      englishText:
                          "Various parts of his anatomy were clearly visible.",
                      kurdishText:
                          "ژمارەیەک لە بەشەکانی جەستەی بەڕوونی دیاربوون.",
                      onPressedBritish: () => speakanatomy9500("en-GB"),
                      onPressedAmerican: () => speakanatomy9500("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ناو) لێکۆڵینەوەی ورد لە بابەتێک"""),
                    SentencesRow(
                      englishText:
                          "The article explores an anatomy of the current recession's causes.",
                      kurdishText:
                          "وتارەکە لێکۆڵینەوەیەکی وردە لە ھۆکارەکانی ئەم قەیرانەی ئێستا.",
                      onPressedBritish: () => speakanatomy5582("en-GB"),
                      onPressedAmerican: () => speakanatomy5582("en-US"),
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


