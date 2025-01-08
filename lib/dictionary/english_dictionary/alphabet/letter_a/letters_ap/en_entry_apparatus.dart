import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapparatus extends StatefulWidget {
  const EnglishEntryapparatus({super.key});

  @override
  State<EnglishEntryapparatus> createState() => _EnglishEntryapparatusState();
}

class _EnglishEntryapparatusState extends State<EnglishEntryapparatus> {
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
- Noun: apparatus (derived forms: apparatuses)
1. Equipment designed to serve a specific function (= setup)
 
2. (anatomy) a group of body parts that work together to perform a given function
"the breathing apparatus"
 
3. The structure by which things are made to happen in an organization
"the Government has laid down a policy to reform the organizational apparatus at all levels"
""",
  );
// 188888880002200

  final String keyword = "apparatus";
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
    await flutterTts.speak("""apparatus""");
  }

  Future<void> speakapparatus841(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Firefighters needed breathing apparatus to enter the burning house.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '6M9jj1M_Nis';
    const double startSecondsend = 164;
    const String videoIdone = 'ChdLv9N3_ek';
    const double startSecondsone = 15;
    const String videoIdtwo = 'jqy064F2wyA';
    const double startSecondstwo = 48;
    const String videoIdthree = 'Ir3eJ1t13fk';
    const double startSecondsthree = 522;
    const String videoIdfour = 'mqxgP8WlxJQ';
    const double startSecondsfour = 739;
    const String videoIdfive = '4IaOeVgZ-wc';
    const double startSecondsfive = 2057;
    // final String _videoId = 'xC7qKMDKS0c';
    // final double _startSeconds = 129;
    // final String _videoId = 'qNv9QquB_IQ';
    // final double _startSeconds = 263;
    // final String _videoId = 'BFRxx29i6h8';
    // final double _startSeconds = 688;
    // final String _videoId = 'ZUCaSpaO5W4';
    // final double _startSeconds = 115;

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
                      word: """apparatus""",
                      // alsoEnglishWord: "also: apparatus",
                      britshText: """IpaUK: /ˌæpəˈreɪtəs/""",
                      americanText: """IpaUS: /ˌæpəˈrætəs/""",
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
کوردی: دەزگا، کەرەسە، ئامێر، ڕەخت، ئامراز، کەل‌وپەل، دام‌ودەزگا، داوودەزگا
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) ئەو کەرەستانەی کە پێویستن بۆ چالاکییەک یان ئەرکێکی دیاریکراو"
                            ""),
                    SentencesRow(
                      englishText:
                          "Firefighters needed breathing apparatus to enter the burning house.",
                      kurdishText:
                          "ئاگرکوژێنەرەوەکان پێویستیان بە ھەندێک دەزگای ھەناسەدان ھەبوو بۆ ئەوەی بچنە ناو خانووە سووتاوەکە.",
                      onPressedBritish: () => speakapparatus841("en-GB"),
                      onPressedAmerican: () => speakapparatus841("en-US"),
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
