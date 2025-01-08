import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanxious extends StatefulWidget {
  const EnglishEntryanxious({super.key});

  @override
  State<EnglishEntryanxious> createState() => _EnglishEntryanxiousState();
}

class _EnglishEntryanxiousState extends State<EnglishEntryanxious> {
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
- Adjective: anxious 
1. Causing or fraught with or showing anxiety (= nervous, queasy, uneasy, unquiet)
"spent an anxious night waiting for the test results"; "cast anxious glances behind her";
 
2. Eagerly desirous (= dying)
"anxious to see the new show at the museum";
""",
  );
// 188888880002200

  final String keyword = "anxious";
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
    await flutterTts.speak("""anxious""");
  }

  Future<void> speakanxious733(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The bus was late and Sue began to get anxious.");
  }

  Future<void> speakanxious735(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I felt very anxious and depressed about the future.");
  }

  Future<void> speakanxious738(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There were a few anxious moments in the baseball game.");
  }

  Future<void> speakanxious743(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was anxious to finish school and get a job.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'nO6ty4Oy2YA';
    const double startSecondsend = 1;
    const String videoIdone = 'psQkuax3xj0';
    const double startSecondsone = 200;
    const String videoIdtwo = 'CGzPHT7YJ0I';
    const double startSecondstwo = 159;
    const String videoIdthree = 'bS2LPNlO07s';
    const double startSecondsthree = 9;
    const String videoIdfour = 'FJ8W5IZ8j7Q';
    const double startSecondsfour = 71;
    const String videoIdfive = 'jOiCXni8430';
    const double startSecondsfive = 12;
    // final String _videoId = '7bOQD3mR3CA';
    // final double _startSeconds = 1;
    // final String _videoId = 'EEEMKbkuHfY';
    // final double _startSeconds = 98;
    // final String _videoId = 'DXp5RQIqklE';
    // final double _startSeconds = 207;
    // final String _videoId = 'OFsjOjE6KCs';
    // final double _startSeconds = 18;
    // final String _videoId = 'Je_Zdf86OCI';
    // final double _startSeconds = 41;
    // final String _videoId = 'Vb_lV0UiiGQ';
    // final double _startSeconds = 107;

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
                      word: """anxious""",
                      // alsoEnglishWord: "also: anxious",
                      britshText: """IpaUK: /ˈæŋkʃəs/""",
                      americanText: """IpaUS: /ˈæŋkʃəs/""",
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
کوردی: بێ‌ئۆقرە، ئارام‌لێ‌ھەڵگیراو، ناڕەحەت، بەخەتەرە، بژاڵ، پڕدڵەڕاوکێ، پەرێشان، نیگەران، بەتەنگەوە، تامەزرۆ، بەتین، بەپەرۆش
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) ھەست‌کردن بە نیگەرانی و شڵەژاوی"""),
                    SentencesRow(
                      englishText:
                          "The bus was late and Sue began to get anxious.",
                      kurdishText:
                          "پاسەکە درەنگ کەوتبوو و سوو دەستی‌کرد بە شڵەژان.",
                      onPressedBritish: () => speakanxious733("en-GB"),
                      onPressedAmerican: () => speakanxious733("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "I felt very anxious and depressed about the future.",
                      kurdishText:
                          "زۆر ھەستم بە نیگەرانی و بێزاری دەکرد سەبارەت بە داھاتوو.",
                      onPressedBritish: () => speakanxious735("en-GB"),
                      onPressedAmerican: () => speakanxious735("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) شتێک کە دەبێتە ھۆی نیگەرانی"""),
                    SentencesRow(
                      englishText:
                          "There were a few anxious moments in the baseball game.",
                      kurdishText:
                          "ھەندێک ساتی ئۆقرەبڕ ھەبوو لە یاری بەیسبۆڵەکە.",
                      onPressedBritish: () => speakanxious738("en-GB"),
                      onPressedAmerican: () => speakanxious738("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) ویستنی زۆری شتێک"""),
                    SentencesRow(
                      englishText:
                          "She was anxious to finish school and get a job.",
                      kurdishText:
                          "تامەزرۆ بوو قوتابجانە تەواو بکات و کارێک بکات.",
                      onPressedBritish: () => speakanxious743("en-GB"),
                      onPressedAmerican: () => speakanxious743("en-US"),
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
