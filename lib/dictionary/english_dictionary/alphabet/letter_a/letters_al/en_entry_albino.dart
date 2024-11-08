import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalbino extends StatefulWidget {
  const EnglishEntryalbino({super.key});

  @override
  State<EnglishEntryalbino> createState() => _EnglishEntryalbinoState();
}

class _EnglishEntryalbinoState extends State<EnglishEntryalbino> {
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
- Adjective: albino 
1. Having albinism

- Noun: albino (derived forms: albinos)
1. An animal with congenital albinism
 
2. A person with congenital albinism: white hair and milky skin; eyes are usually pink
""",
  );
// 188888880002200

  final String keyword = "albino";
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
    await flutterTts.speak("""albino""");
  }

  Future<void> speakalbino4855(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I ended up living with this albino guy who was cleaning windshields.");
  }

  Future<void> speakalbino3411(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was not an albino, but nearly so.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'WGwA0_ILI6s';
    const double startSecondsend = 1;
    const String videoIdone = 'HV8QFX63d88';
    const double startSecondsone = 32;
    const String videoIdtwo = 'Wt1AvIE4cLk';
    const double startSecondstwo = 662;
    const String videoIdthree = 'RNwn4BqmtGE';
    const double startSecondsthree = 94;
    const String videoIdfour = 'TtP7t98rrP0';
    const double startSecondsfour = 37;
    const String videoIdfive = 'OGcAmut3Tj0';
    const double startSecondsfive = 10;
    // final String _videoId = 'Ax5eAzV5U5s';
    // final double _startSeconds = 23;
    // final String _videoId = 'EzNo6yzP994';
    // final double _startSeconds = 654;

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
                      word: """albino""",
                      // alsoEnglishWord: "also: albino",
                      britshText: """IpaUK: /ælˈbiːnəʊ/""",
                      americanText: """IpaUS: /ælˈbaɪnəʊ/""",
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
کوردی: زاڵ، کەور، ئەلبینۆ: گیانەوەر یان کەسێ کە پیگمێنتی لە پێست، موو و چاوەکانی‌دا نییە (و زۆرتر پەمەیین)
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) کەسێک یان ئاژەڵێک کە ڕەنگ لە پێستی یان قژی نییە و سپی دەردەکەون، یان لە چاوەکانی کە پەمەیی دەردەکەون"
                            ""),
                    SentencesRow(
                      englishText:
                          "I ended up living with this albino guy who was an engineer.",
                      kurdishText:
                          "لەکۆتاییدا کەوتم لەگەڵ کابرایەکی ئەلباینۆ کە ئەندازیار بوو.",
                      onPressedBritish: () => speakalbino4855("en-GB"),
                      onPressedAmerican: () => speakalbino4855("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) کەسێکی ئەلباینۆ"""),
                    SentencesRow(
                      englishText: "She was not an albino, but nearly so.",
                      kurdishText: "کەسێکی ئەلباینۆ نەبوو، بەڵام نزیک بوو لێی.",
                      onPressedBritish: () => speakalbino3411("en-GB"),
                      onPressedAmerican: () => speakalbino3411("en-US"),
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


