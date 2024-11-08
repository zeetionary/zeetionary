import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalong extends StatefulWidget {
  const EnglishEntryalong({super.key});

  @override
  State<EnglishEntryalong> createState() => _EnglishEntryalongState();
}

class _EnglishEntryalongState extends State<EnglishEntryalong> {
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
- Adverb: along 
1. With a forward motion (= on)
"we drove along admiring the view"; "the horse trotted along at a steady pace"; "move along";
 
2. In accompaniment or as a companion
"his little sister came along to the movies"; "I brought my camera along"; "working along with his father"
 
3. To a more advanced state
"the work is moving along"; "well along in their research"; "hurrying their education along"; "getting along in years"
 
4. In addition (usually followed by 'with')
"we sent them food and some clothing went along in the package"; "along with the package came a bill"; "consider the advantages along with the disadvantages"
 
5. In line with a length or direction (often followed by 'by' or 'beside')
"pass the word along"; "ran along beside me"; "cottages along by the river"

- Preposition: along 
1. On, in traversing (= by)
"came along the path";
""",
  );
// 188888880002200

  final String keyword = "along";
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
    await flutterTts.speak("""along""");
  }

  Future<void> speakalong457(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They walked slowly along the road.");
  }

  Future<void> speakalong4451(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Houses had been built along both sides of the river.");
  }

  Future<void> speakalong451(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Somewhere along this road there's a garage.");
  }

  Future<void> speakalong45169(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We were going along at about 50 miles an hour.");
  }

  Future<void> speakalong4516(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'll be along in a few minutes.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'BMTZ9lhqsFg';
    const double startSecondsend = 108;
    const String videoIdone = '4L4GsJIHXg8';
    const double startSecondsone = 691;
    const String videoIdtwo = 'TgXb_G9c9_o';
    const double startSecondstwo = 45;
    const String videoIdthree = 'LpwaUU6sGFA';
    const double startSecondsthree = 55;
    const String videoIdfour = 'fyfro2hgdcQ';
    const double startSecondsfour = 1665;
    const String videoIdfive = 'L-xJCVaV5Hw';
    const double startSecondsfive = 1372;
    // final String _videoId = 'drJ-D_uURIc';
    // final double _startSeconds = 37;
    // final String _videoId = 'gGOxvKoaGDw';
    // final double _startSeconds = 383;
    // final String _videoId = 'hRb8VFoQRss';
    // final double _startSeconds = 636;
    // final String _videoId = 'J5eNXtVFYUE';
    // final double _startSeconds = 41;
    // final String _videoId = 'rv6UXrINqEk';
    // final double _startSeconds = 40;
    // final String _videoId = 'h30EaHV6Lz8';
    // final double _startSeconds = 50;

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
                      word: """along""",
                      // alsoEnglishWord: "also: along",
                      britshText: """IpaUK: /əˈlɒŋ/""",
                      americanText: """IpaUS: /əˈlɔːŋ/""",
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
کوردی: پێشەوە، پێشێ، ڕوولەپێشێ، بەرەوپێشەوە، بەدرێژایی، بەدرێژی، لە سەرانسەری، لەگەڵ
"""),
                    const DefinitionKurdish(
                        text: "١. (ئامراز) لەلایەکی شتێک بۆ لاکەی تری" ""),
                    SentencesRow(
                      englishText: "They walked slowly along the road.",
                      kurdishText: "بەھێواشی بەدرێژایی ڕێگاکە ڕێیان کرد.",
                      onPressedBritish: () => speakalong457("en-GB"),
                      onPressedAmerican: () => speakalong457("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ئامراز) لەسەر ھێڵێک بەدرێژایی شتێکی درێژ"""),
                    SentencesRow(
                      englishText:
                          "Houses had been built along both sides of the river.",
                      kurdishText:
                          "خانوو بەدرێژایی ھەردوو لای ڕووبارەکە بنیاتنراون.",
                      onPressedBritish: () => speakalong4451("en-GB"),
                      onPressedAmerican: () => speakalong4451("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ئامراز) لە شوێنێکی دیاریکراوی شوێنێکی درێژ، یان لە نزیکی"""),
                    SentencesRow(
                      englishText:
                          "Somewhere along this road there's a garage.",
                      kurdishText:
                          "لە شوێنێک بەدرێژایی ئەم شەقامە گەراجێک ھەیە.",
                      onPressedBritish: () => speakalong451("en-GB"),
                      onPressedAmerican: () => speakalong451("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ھاوەڵکار) بۆ پێشەوە"""),
                    SentencesRow(
                      englishText:
                          "We were going along at about 50 miles an hour.",
                      kurdishText:
                          "بۆ پێشەوە دەچووین بەخێرایی نزاکەی ٥٠ میل لە کاتژمێرێکدا.",
                      onPressedBritish: () => speakalong45169("en-GB"),
                      onPressedAmerican: () => speakalong45169("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (ھاوەڵکار) لەگەڵ کەسێک"""),
                    SentencesRow(
                      englishText:
                          "I'll be along (= I'll join you) in a few minutes.",
                      kurdishText: "لە چەند خولەکێکدا دەگەمە لاتان.",
                      onPressedBritish: () => speakalong4516("en-GB"),
                      onPressedAmerican: () => speakalong4516("en-US"),
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

