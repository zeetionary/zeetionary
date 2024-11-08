import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamplifier extends StatefulWidget {
  const EnglishEntryamplifier({super.key});

  @override
  State<EnglishEntryamplifier> createState() => _EnglishEntryamplifierState();
}

class _EnglishEntryamplifierState extends State<EnglishEntryamplifier> {
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
- Noun: amplifier (derived forms: amplifiers)
Electronic equipment that increases strength of signals passing through it (= amp [informal])
"he didn't have the right connector between the amplifier and the speakers";
""",
  );
// 188888880002200

  final String keyword = "amplifier";
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
    await flutterTts.speak("""amplifier""");
  }

  Future<void> speakamplifier40990(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Have you connected the speakers to the amplifier?");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'YqVhihVQQKw';
    const double startSecondsend = 8;
    const String videoIdone = 'Jv562s9Dz3s';
    const double startSecondsone = 11;
    const String videoIdtwo = '9PF32APSjrk';
    const double startSecondstwo = 37;
    const String videoIdthree = '8nh26lRmRdQ';
    const double startSecondsthree = 379;
    const String videoIdfour = '6B0OlQaD_i4';
    const double startSecondsfour = 1;
    const String videoIdfive = 'lYjaP37WZU8';
    const double startSecondsfive = 20;
    // final String _videoId = 'X-32VWOrY_k';
    // final double _startSeconds = 5;
    // final String _videoId = 'IgF3OX8nT0w';
    // final double _startSeconds = 821;
    // final String _videoId = 'Oij-BdIkPgQ';
    // final double _startSeconds = 160;
    // final String _videoId = '7J7X7aZvMXQ';
    // final double _startSeconds = 1041;
    // final String _videoId = 'Ni9ccFfnOJg';
    // final double _startSeconds = 419;
    // final String _videoId = '9xpPXpnnCNI';
    // final double _startSeconds = 2013;

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
                      word: """amplifier""",
                      // alsoEnglishWord: "also: amplifier",
                      britshText: """IpaUK: /ˈæmplɪfaɪə(r)/""",
                      americanText: """IpaUS: /ˈæmplɪfaɪər/""",
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
کوردی: (دەزگا) دەنگ‌پێدەر، ئەمپلیفایەر
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) پارچەیەکی ئەلیکترۆنی کە دەنگ بەرزدەکاتەوە"
                            ""),
                    SentencesRow(
                      englishText:
                          "Have you connected the speakers to the amplifier?",
                      kurdishText:
                          "بڵیندگۆکانت پەیوەست‌کردووە بە دەنگپێدەرەکەوە؟",
                      onPressedBritish: () => speakamplifier40990("en-GB"),
                      onPressedAmerican: () => speakamplifier40990("en-US"),
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

