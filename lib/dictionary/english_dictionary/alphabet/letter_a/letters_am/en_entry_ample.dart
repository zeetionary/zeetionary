import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryample extends StatefulWidget {
  const EnglishEntryample({super.key});

  @override
  State<EnglishEntryample> createState() => _EnglishEntryampleState();
}

class _EnglishEntryampleState extends State<EnglishEntryample> {
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
- Adjective: ample (derived forms: amplest, ampler)
1. More than enough in size, scope or capacity
"had ample food for the party"; "an ample supply"
 
2. Affording an abundant supply (= copious, plenteous, plentiful, rich)
"had ample food for the party";
 
3. Fairly large in size (= sizable, sizeable)
"an ample waistline"; "of ample proportions";
""",
  );
// 188888880002200

  final String keyword = "ample";
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
    await flutterTts.speak("""ample""");
  }

  Future<void> speakample001(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There was ample time to get to the airport.");
  }

  Future<void> speakample4408(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("These clothes belonged to a man of more ample girth.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'dNKQYjsxgPU';
    const double startSecondsend = 240;
    const String videoIdone = 'F0jr-HQeT74';
    const double startSecondsone = 262;
    const String videoIdtwo = 'VfShZEWRbXw';
    const double startSecondstwo = 621;
    const String videoIdthree = '7eM7pb5M5DU';
    const double startSecondsthree = 2327;
    const String videoIdfour = 'hCsPV0eiqxg';
    const double startSecondsfour = 734;
    const String videoIdfive = 'tfn-LC254Hk';
    const double startSecondsfive = 426;
    // final String _videoId = 'qW_ThmMnZI0';
    // final double _startSeconds = 210;
    // final String _videoId = 'hGkVxIyKnEA';
    // final double _startSeconds = 634;
    // final String _videoId = 'vntKopJeeuo';
    // final double _startSeconds = 270;
    // final String _videoId = '1Y0F7zZ_Ws0';
    // final double _startSeconds = 936;
    // final String _videoId = 'RL7BECNn-RI';
    // final double _startSeconds = 631;
    // final String _videoId = 'UeRa9bEhgXg';
    // final double _startSeconds = 1426;

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
                      word: """ample""",
                      // alsoEnglishWord: "also: ample",
                      britshText: """IpaUK: /ˈæmpl/""",
                      americanText: """IpaUS: /ˈæmpl/""",
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
کوردی: فرە، زۆر، زەبەن، فراوان، فت‌وفراوان، پان، بەرین، گەورە، بەربڵاو، بەئەندازە، تەواو، ئەندازە
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) بەشی پێویست، یان زیاتر"""),
                    SentencesRow(
                      englishText:
                          "There was ample time to get to the airport.",
                      kurdishText: "کاتی پێویست ھەبوو بۆ گەشتن بە فڕۆکەخانەکە.",
                      onPressedBritish: () => speakample001("en-GB"),
                      onPressedAmerican: () => speakample001("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) کەسێک کە جەستەیەکی گەورە و پتەو و جوانی ھەیە"""),
                    SentencesRow(
                      englishText:
                          "These clothes belonged to a man of more ample girth.",
                      kurdishText: "ئەم جلانە ھی پیاوێکی کەمەر زل‌ترە.",
                      onPressedBritish: () => speakample4408("en-GB"),
                      onPressedAmerican: () => speakample4408("en-US"),
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

