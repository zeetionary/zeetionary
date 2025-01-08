import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapparition extends StatefulWidget {
  const EnglishEntryapparition({super.key});

  @override
  State<EnglishEntryapparition> createState() => _EnglishEntryapparitionState();
}

class _EnglishEntryapparitionState extends State<EnglishEntryapparition> {
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
- Noun: apparition (derived forms: apparitions)
1. A ghostly appearing figure (= phantom, phantasm, phantasma, fantasm, specter [US], spectre [Brit, Cdn])
"we were unprepared for the apparition that confronted us";
 
2. The appearance of a ghostlike figure
"I was recalled to the present by the apparition of a frightening spectre"
 
3. Something existing in perception only (= phantom, phantasm, phantasma, fantasm, shadow)
"a ghostly apparition at midnight";
 
4. An act of appearing or becoming visible unexpectedly
"natives were amazed at the apparition of this white stranger"
""",
  );
// 188888880002200

  final String keyword = "apparition";
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
    await flutterTts.speak("""apparition""");
  }
  
  Future<void> speakapparition917(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Apparitions of a woman in white robes have been reported.");
  }


  @override
  Widget build(BuildContext context) {

  const String videoIdend = '94O7hjS5dHg';
  const double startSecondsend = 517;
  const String videoIdone = 'PkUg89kLLBE';
  const double startSecondsone = 397;
  const String videoIdtwo = 'LXhLlWQtdt0';
  const double startSecondstwo = 791;
  const String videoIdthree = '0Anx3VQ2dcc';
  const double startSecondsthree = 1030;
  const String videoIdfour = 'bcdEFos9YQQ';
  const double startSecondsfour = 366;
  const String videoIdfive = 'b8WnPAxVxRY';
  const double startSecondsfive = 325;
  // final String _videoId = 'fU-8Rg4CgeI';
  // final double _startSeconds = 75;
  // final String _videoId = 'jMw1NAwYDbQ';
  // final double _startSeconds = 456;
  // final String _videoId = 'BEd5p68GUXw';
  // final double _startSeconds = 450;

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
                      word: """apparition""",
                      // alsoEnglishWord: "also: apparition",
                      britshText: """IpaUK: /ˌæpəˈrɪʃn/""",
                      americanText: """IpaUS: /ˌæpəˈrɪʃn/""",
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
کوردی: دەرکەوتن، پەیدابوون، ھاتنەڕوو، سەرھەڵدان (سەیر یان چاوەڕوان‌نەکراو)، خێو، تارمایی، ڕۆح، تاپۆ
"""),
                          const DefinitionKurdish(
                              text: "١. (ھاوەڵناو) تارمایی کەسێکی مردوو" ""),
                          SentencesRow(
                            englishText:
                                "Apparitions of a woman in white robes have been reported.",
                            kurdishText:
                                "تارمایی ژنێک بە ڕۆبەی سپییەوە ڕاگەیەندراوە.",
                            onPressedBritish: () => speakapparition917("en-GB"),
                            onPressedAmerican: () =>
                                speakapparition917("en-US"),
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

