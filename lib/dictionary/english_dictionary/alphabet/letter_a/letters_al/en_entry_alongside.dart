import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalongside extends StatefulWidget {
  const EnglishEntryalongside({super.key});

  @override
  State<EnglishEntryalongside> createState() => _EnglishEntryalongsideState();
}

class _EnglishEntryalongsideState extends State<EnglishEntryalongside> {
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
- Adverb: alongside  
1. Side by side (= aboard)
"anchored close alongside another ship";

- Preposition: alongside 
1. Next to, at the side of (= beside)
"the shop alongside the station";
""",
  );
// 188888880002200

  final String keyword = "alongside";
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
    await flutterTts.speak("""alongside""");
  }

  Future<void> speakalongside4592(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Nick caught up with me and rode alongside.");
  }

  Future<void> speakalongside4597(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The new pill will be used alongside existing medicines.");
  }

  Future<void> speakalongside9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Most of the staff refused to work alongside the new team.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'gNie7TOut2k';
    const double startSecondsend = 1;
    const String videoIdone = 'jtwXiLblJtw';
    const double startSecondsone = 34;
    const String videoIdtwo = '1_0WbPq2lhs';
    const double startSecondstwo = 123;
    const String videoIdthree = 'TfE2cUK43IM';
    const double startSecondsthree = 23;
    const String videoIdfour = 'PP2XvaHD07M';
    const double startSecondsfour = 544;
    const String videoIdfive = 'gC5VF5DHKI4';
    const double startSecondsfive = 3;
    // final String _videoId = 'k07_v9vggo0';
    // final double _startSeconds = 28;
    // final String _videoId = 'M3djHzuPRxA';
    // final double _startSeconds = 243;
    // final String _videoId = 'wir7jmefyec';
    // final double _startSeconds = 67;

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
                      word: """alongside""",
                      // alsoEnglishWord: "also: alongside",
                      britshText: """IpaUK: /əˌlɒŋˈsaɪd/""",
                      americanText: """IpaUS: /əˌlɔːŋˈsaɪd/""",
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
کوردی: لەپاڵ، لەتەنیشت، لەلای، پێکەوە لەگەڵ، تەنیشت بە تەنیشت، پاڵ بە پاڵی، شان بە شان
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵکار) شان بە شان یان لە تەنیشت" ""),
                    SentencesRow(
                      englishText: "Nick caught up with me and rode alongside.",
                      kurdishText: "نیک گەشتەوە پێم و شان بە شانم لێیخوڕی.",
                      onPressedBritish: () => speakalongside4592("en-GB"),
                      onPressedAmerican: () => speakalongside4592("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ئامراز) لە تەنیشت، یان لەگەڵ"""),
                    SentencesRow(
                      englishText:
                          "The new pill will be used alongside existing medicines.",
                      kurdishText:
                          "حەبە تازەکە دەکرێت لەگەڵ دەرمانی دیکە بەکاربێت.",
                      onPressedBritish: () => speakalongside4597("en-GB"),
                      onPressedAmerican: () => speakalongside4597("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "Most of the staff refused to work alongside the new team.",
                      kurdishText:
                          "زۆرینەی ستافەکە ڕەتیان کردەوە شان بە شانی تیمە تازەکە کاربکەن.",
                      onPressedBritish: () => speakalongside9("en-GB"),
                      onPressedAmerican: () => speakalongside9("en-US"),
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
