// end afloat
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryafloat extends StatefulWidget {
  const EnglishEntryafloat({super.key});

  @override
  State<EnglishEntryafloat> createState() => _EnglishEntryafloatState();
}

class _EnglishEntryafloatState extends State<EnglishEntryafloat> {
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
- Adjective: afloat
1. Borne on the water; floating
 
2. Without a clear purpose or direction (= adrift, aimless, directionless, planless, rudderless, undirected)
"Russia is afloat and chaotic";
 
3. Covered with water (= awash, flooded, inundated, overflowing)
"the main deck was afloat";
""",
  );
// 188888880002200

  final String keyword = "afloat";
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
    await flutterTts.speak("""afloat""");
  }

  Future<void> speakaflo45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They were struggling to keep the vessel afloat.");
  }

  Future<void> speakafl5988(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Many small businesses are struggling to stay afloat.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'JiqGzwvAW1c';
    const double startSecondsend = 199;
    const String videoIdone = 'zqllxbPWKNI';
    const double startSecondsone = 1011;
    const String videoIdtwo = 'mY3SEMTROas';
    const double startSecondstwo = 100;
    const String videoIdthree = 'X6X23MGrhg8';
    const double startSecondsthree = 513;
    const String videoIdfour = '62EGPCEmeh4';
    const double startSecondsfour = 600;
    const String videoIdfive = 'XFJnWp1tAdU';
    const double startSecondsfive = 947;
    // const String videoId = 'u0hrhZoL9Cg';
    // const double startSeconds = 227;
    // const String videoId = 'A90BDh1ZrHI';
    // const double startSeconds = 242;
    // const String videoId = '4C9948aQF8U';
    // const double startSeconds = 449;

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
                      word: """afloat""",
                      // alsoEnglishWord: "also: afloat",
                      britshText: """IpaUK: /əˈfləʊt/""",
                      americanText: """IpaUS: /əˈfləʊt/""",
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
کوردی: سەراوکەوتە، سواراو، لەسەرئاو، بەسەر ئاوەوە، لەسەراو، بە حەواوە، لە حەوادا، ڕۆییو، ڕۆیندە، لەجووڵەدا، باو، سەرزمان‌کەوتوو، لە دەریا (دا)، لەسەر کەشتی یان گەمی، پارەی تەواوی ھەیە بۆ دانەوەی قەرزەکان
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) سەرئاوکەوتوو" ""),
                    SentencesRow(
                      englishText:
                          "They were struggling to keep the boat afloat.",
                      kurdishText:
                          "تەقەڵایان بوو بۆ ئەوەی بەلەمەکە سەراوکەوتە بھێڵنەوە.",
                      onPressedBritish: () => speakaflo45("en-GB"),
                      onPressedAmerican: () => speakaflo45("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) ھەبوونی بەشی پێویست پارە بۆ دانەوەی قەرزەکانی کۆمپانیایەک و توانای مانەوە"""),
                    SentencesRow(
                      englishText:
                          "Many small businesses are struggling to stay afloat.",
                      kurdishText:
                          "ژمارەیەکی زۆر بزنسی بچووک تەقەڵایانە ئیفلاس نەکەن.",
                      onPressedBritish: () => speakafl5988("en-GB"),
                      onPressedAmerican: () => speakafl5988("en-US"),
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
