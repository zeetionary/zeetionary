import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadequate extends StatefulWidget {
  const EnglishEntryadequate({super.key});

  @override
  State<EnglishEntryadequate> createState() => _EnglishEntryadequateState();
}

class _EnglishEntryadequateState extends State<EnglishEntryadequate> {
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
- Adjective: adequate 
1. Having the requisite qualities or resources to meet a task (= equal)
"she had adequate training"; "her training was adequate"; "she was adequate to the job";
 
2. Sufficient for the purpose (= enough, nuff [non-standard])
"an adequate income"; "the food was adequate";
 
3. About average; acceptable (= passable, fair to middling, tolerable)
"more than adequate as a secretary";
""",
  );
// 188888880002200

  final String keyword = "adequate";
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
    await flutterTts.speak("""adequate""");
  }

  Future<void> speakadequa44855(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The room was small but adequate.");
  }

  Future<void> speakadequ99965(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He didn't give an adequate answer to the question.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'u4bBQ2tNLCY';
    const double startSecondsend = 1;
    const String videoIdone = '-iPq3-b8pwU';
    const double startSecondsone = 1;
    const String videoIdtwo = 'YeLpUt04Ses';
    const double startSecondstwo = 1;
    const String videoIdthree = 'y4DTW4B3Sjs';
    const double startSecondsthree = 135;
    const String videoIdfour = 'dl5FHmL_6rE';
    const double startSecondsfour = 67;
    const String videoIdfive = 'aCPNlZ7bvRc';
    const double startSecondsfive = 86;
    // const String videoId = 'SDpCzJw2xm4';
    // const double startSeconds = 667;

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
                      word: """adequate""",
                      // alsoEnglishWord: "also: adequate",
                      britshText: """IpaUK: /ˈædɪkwət/""",
                      americanText: """IpaUS: /ˈædɪkwət/""",
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
کوردی: لێھاتوو، ژێھاتی، لێوەشاو، گونجاو، بەس، بەش‌کردوو، سەروزیاد، سەرومڕ، سەروبەر، بێ‌کەم‌وزیاد، تەواو
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) بە پێی پێویست باش یان زۆر بۆ مەبەستێک"
                            ""),
                    SentencesRow(
                      englishText: "The room was small but adequate.",
                      kurdishText: "ژوورەکە بچووک بوو، بەڵام بەشمانی دەکرد.",
                      onPressedBritish: () => speakadequa44855("en-GB"),
                      onPressedAmerican: () => speakadequa44855("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "He didn't give an adequate answer to the question.",
                      kurdishText: "وەڵامێکی تەواوی پرسیارەکەی نەداوە.",
                      onPressedBritish: () => speakadequ99965("en-GB"),
                      onPressedAmerican: () => speakadequ99965("en-US"),
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
