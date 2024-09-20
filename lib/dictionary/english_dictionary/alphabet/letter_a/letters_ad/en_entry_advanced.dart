import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadvanced extends StatefulWidget {
  const EnglishEntryadvanced({super.key});

  @override
  State<EnglishEntryadvanced> createState() => _EnglishEntryadvancedState();
}

class _EnglishEntryadvancedState extends State<EnglishEntryadvanced> {
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
- Adjective: advanced 
1. Farther along in physical or mental development
"the child's skeletal age was classified as 'advanced'"; "children in the advanced classes in elementary school read far above grade average"
 
2. Comparatively late in a course of development
"the illness had reached an advanced stage"; "an advanced state of exhaustion"
 
3. Ahead of the times (= forward-looking, innovative, modern, forward-thinking)
"the advanced teaching methods"; "had advanced views on the subject";
 
4. At a higher level in training, knowledge or skill
"an advanced degree"; "an advanced text in physics"; "special seminars for small groups of advanced students at the University"
 
5. Ahead in development; complex or intricate (= sophisticated)
"advanced technology";

6. Far along in time (= ripe)
"a man of advanced age"; "advanced in years";
 
7. (of societies) highly developed especially in technology or industry
"advanced societies"; "an advanced country technologically"
 
8. Situated ahead or going before (= advance, in advance)
"at that time the most advanced outpost was still east of the Rockies";
""",
  );
// 188888880002200

  final String keyword = "advanced";
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
    await flutterTts.speak("""advanced""");
  }

  Future<void> speakadvanc2534(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Scientists are working on highly advanced technology to replace fossil fuels.");
  }

  Future<void> speakadvan2546(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He hopes to pursue an advanced degree in economics.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'mr7FXvTSYpA';
    const double startSecondsend = 57;
    const String videoIdone = 'Zo7sRijXG00';
    const double startSecondsone = 17;
    const String videoIdtwo = '5ad6grll-ak';
    const double startSecondstwo = 33;
    const String videoIdthree = 'jpSRHB-wJ14';
    const double startSecondsthree = 42;
    const String videoIdfour = '19fxN2lXQXU';
    const double startSecondsfour = 14;
    const String videoIdfive = 'aPEy3QwsKjQ';
    const double startSecondsfive = 8;
    // const String videoId = 'Fa4jyM-p8zI';
    // const double startSeconds = 24;
    // const String videoId = 'dsN6FiF9ncI';
    // const double startSeconds = 64;

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
                      word: """advanced""",
                      // alsoEnglishWord: "also: advanced",
                      britshText: """IpaUK: /ədˈvɑːnst/""",
                      americanText: """IpaUS: /ədˈvænst/""",
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
کوردی: پێشکەوتوو، بەرکەوتوو، پێشوەچوو، پێشبڕۆ، سەرە، زۆر، لەسەرێ، بەسەرچوو، ڕابردوو
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) ھەبوونی شتی سەردەمی و بیردۆز و ئایدیای تازە پەرەپێدراو"
                            ""),
                    SentencesRow(
                      englishText:
                          "Scientists are working on highly advanced technology to replace fossil fuels.",
                      kurdishText:
                          "زاناکان کار دەکەن لەسەر تەکنۆلۆژیای زۆر پێشکەوتوو بۆ شوێنگرتنەوەی سوتەمەنی بەبەردبوو.",
                      onPressedBritish: () => speakadvanc2534("en-GB"),
                      onPressedAmerican: () => speakadvanc2534("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) لە ئاستێکی بەرزدا"""),
                    SentencesRow(
                      englishText:
                          "He hopes to pursue an advanced degree in economics.",
                      kurdishText:
                          "ھیواخوازە بڕوانامەیەکی بەرز لە ئابووریدا بەدەستبھێنێت.",
                      onPressedBritish: () => speakadvan2546("en-GB"),
                      onPressedAmerican: () => speakadvan2546("en-US"),
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
