import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapplicable extends StatefulWidget {
  const EnglishEntryapplicable({super.key});

  @override
  State<EnglishEntryapplicable> createState() => _EnglishEntryapplicableState();
}

class _EnglishEntryapplicableState extends State<EnglishEntryapplicable> {
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
- Adjective: applicable 
1. Capable of being applied; having relevance
"gave applicable examples to support her argument"
""",
  );
// 188888880002200

  final String keyword = "applicable";
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
    await flutterTts.speak("""applicable""");
  }

  Future<void> speakapplicable646(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Much of the form was not applicable (= did not apply) to me.");
  }

  Future<void> speakapplicable648(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The law is applicable to everyone.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '58XEfDtU0Z4';
    const double startSecondsend = 733;
    const String videoIdone = 'ltOkMlHrGPc';
    const double startSecondsone = 233;
    const String videoIdtwo = 'iQ5GfDbjos8';
    const double startSecondstwo = 555;
    const String videoIdthree = 'HYbbmatf6w4';
    const double startSecondsthree = 711;
    const String videoIdfour = 'UO80u6G_zQM';
    const double startSecondsfour = 206;
    const String videoIdfive = 'Fkeltn6xVHs';
    const double startSecondsfive = 210;
    // final String _videoId = 'RJQPthD9rx8';
    // final double _startSeconds = 678;
    // final String _videoId = 'tDnax8d3v3k';
    // final double _startSeconds = 347;
    // final String _videoId = 'd-yWx772qFU';
    // final double _startSeconds = 64;
    // final String _videoId = 'v7hz64aVcRw';
    // final double _startSeconds = 13;

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
                      word: """applicable""",
                      // alsoEnglishWord: "also: applicable",
                      britshText: """IpaUK: /əˈplɪkəbl/, /ˈæplɪkəbl/""",
                      americanText: """IpaUS: /ˈæplɪkəbl/, /əˈplɪkəbl/""",
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
کوردی: کارپێکراو، جێبەجێ‌کراو، ئەکرێ، بەکارھێنراو، پیادەکراو، گونجاو، بەجێ، دروست، لەبار، لێوەشاو، پێوەندی‌دار
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) شتێک کە دەکرێت ڕاست بێت یان بگونجێت بۆ کەسێک/شتێک"
                            ""),
                    SentencesRow(
                      englishText:
                          "Much of the form was not applicable (= did not apply) to me.",
                      kurdishText: "زۆرینەی فۆرمەکە پەیوەندی بە منەوە نەبوو.",
                      onPressedBritish: () => speakapplicable646("en-GB"),
                      onPressedAmerican: () => speakapplicable646("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "The law is applicable to everyone.",
                      kurdishText: "یاساکە بەسەر ھەموواندا جێبەجێ‌دەکرێت.",
                      onPressedBritish: () => speakapplicable648("en-GB"),
                      onPressedAmerican: () => speakapplicable648("en-US"),
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

