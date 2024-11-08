import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaltogether extends StatefulWidget {
  const EnglishEntryaltogether({super.key});

  @override
  State<EnglishEntryaltogether> createState() => _EnglishEntryaltogetherState();
}

class _EnglishEntryaltogetherState extends State<EnglishEntryaltogether> {
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
- Adverb: altogether 
1. To a complete degree or to the full or entire extent; Completely or entirely (= wholly, entirely, completely, totally, all, whole, right, totes [informal])
"it was not altogether her fault"; "an altogether new approach";
 
2. With everything included or counted (= all told, in all)
"altogether he earns close to a million dollars";
 
3. With everything considered (and neglecting details) (= all in all, on the whole, tout ensemble)
"altogether, I'm sorry it happened";

- Noun: altogether (derived forms: altogethers)
Usage: informal
1. The state of being without clothing or covering of any kind (= nakedness, nudity, nudeness, raw [informal], birthday suit [informal])
"in the altogether";
""",
  );
// 188888880002200

  final String keyword = "altogether";
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
    await flutterTts.speak("""altogether""");
  }

  Future<void> speakaltogether588(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The train went slower and slower until it stopped altogether.");
  }

  Future<void> speakaltogether45666(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It was an altogether different situation.");
  }

  Future<void> speakaltogether523333(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You owe me £68 altogether.");
  }

  Future<void> speakaltogether4144(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The food was good and we loved the music. Altogether it was a great evening.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'hFZFjoX2cGg';
    const double startSecondsend = 849;
    const String videoIdone = 'IqsLnLiASmA';
    const double startSecondsone = 474;
    const String videoIdtwo = 'lex6USTugUU';
    const double startSecondstwo = 1017;
    const String videoIdthree = 'kTaYet07Ioo';
    const double startSecondsthree = 55;
    const String videoIdfour = '6QgR6Tjle7g';
    const double startSecondsfour = 237;
    const String videoIdfive = '-7bIDbaU_zQ';
    const double startSecondsfive = 311;
    // final String _videoId = 'GIJ_olY4BnE';
    // final double _startSeconds = 580;
    // final String _videoId = 'VVsdb90aOmA';
    // final double _startSeconds = 1560;
    // final String _videoId = '3n99jqOdeSw';
    // final double _startSeconds = 923;

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
                      word: """altogether""",
                      // alsoEnglishWord: "also: altogether",
                      britshText: """IpaUK: /ˌɔːltəˈɡeðə(r)/""",
                      americanText: """IpaUS: /ˌɔːltəˈɡeðər/""",
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
کوردی: سەرجەم، تێکڕا، ھەمەبەھەم، لە ھەموو لایەکەوە، لەسەریەک، بەتەواوەتی
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵکار) بە تەواوی؛ ھەموو پێکەوە" ""),
                    SentencesRow(
                      englishText:
                          "The train went slower and slower until it stopped altogether.",
                      kurdishText:
                          "شەمەندەفەرەکە ھێواشتر و ھێواشتر چوو تا بە تەواوی وەستا.",
                      onPressedBritish: () => speakaltogether588("en-GB"),
                      onPressedAmerican: () => speakaltogether588("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "It was an altogether different situation.",
                      kurdishText: "بە تەواوی بارودۆخێکی گونجاو بوو.",
                      onPressedBritish: () => speakaltogether45666("en-GB"),
                      onPressedAmerican: () => speakaltogether45666("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵکار) کۆی گشتی"""),
                    SentencesRow(
                      englishText: "You owe me £68 altogether.",
                      kurdishText: "کۆی گشتی ٦٨ پاوەند قەرزارمی.",
                      onPressedBritish: () => speakaltogether523333("en-GB"),
                      onPressedAmerican: () => speakaltogether523333("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵکار) بەکورتی"""),
                    SentencesRow(
                      englishText:
                          "The food was good and we loved the music. Altogether it was a great evening.",
                      kurdishText:
                          "خواردنەکە باش بوو. حەزیشمان بە میوزیکەکە بوو. بەکورتی، شەوێکی خۆش بوو.",
                      onPressedBritish: () => speakaltogether4144("en-GB"),
                      onPressedAmerican: () => speakaltogether4144("en-US"),
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


