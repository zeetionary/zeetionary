import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalive extends StatefulWidget {
  const EnglishEntryalive({super.key});

  @override
  State<EnglishEntryalive> createState() => _EnglishEntryaliveState();
}

class _EnglishEntryaliveState extends State<EnglishEntryalive> {
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
- Adjective: alive 
1. Possessing life (= live)
"the happiest person alive"; "the nerve is alive"; "doctors are working hard to keep him alive"; "burned alive";
 
2. Having life, vigour or spirit (= animated)
"an alive and expressive face";
 
3. (often followed by 'with') full of life and spirit
"she was wonderfully alive for her age"; "a face alive with mischief"
 
4. (followed by 'to' or 'of') aware of
"is alive to the moods of others"
 
5. In operation (= active)
"keep hope alive"; "the tradition was still alive";
 
6. Mentally perceptive and responsive (= alert, awake, on the ball)
"alive to what is going on";
 
7. Capable of erupting (= live)
"the volcano is very much alive";
""",
  );
// 188888880002200

  final String keyword = "alive";
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
    await flutterTts.speak("""alive""");
  }

  Future<void> speakalive65666(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She had to steal food just to stay alive.");
  }

  Future<void> speakalive69142(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We don't know whether he's alive or dead.");
  }

  Future<void> speakalive3599(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Ed was alive with happiness.");
  }

  Future<void> speakalive75236(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The old customs are still very much alive in this region.");
  }

  Future<void> speakalive378514(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The pool was alive with goldfish.");
  }

  Future<void> speakalive35961(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "They are alive to the fact that the opposing team has not lost a game this season.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'VWWEUChKo6s';
    const double startSecondsend = 30;
    const String videoIdone = '8jNs5G88TiI';
    const double startSecondsone = 62;
    const String videoIdtwo = 's3YTfhJmh1I';
    const double startSecondstwo = 28;
    const String videoIdthree = 'oHLMla-75QA';
    const double startSecondsthree = 27;
    const String videoIdfour = '9plfckcV3pw';
    const double startSecondsfour = 36;
    const String videoIdfive = '8eraNZHM1to';
    const double startSecondsfive = 47;
    // final String _videoId = 'ifhY_AHbSRA';
    // final double _startSeconds = 132;
    // final String _videoId = 'Ze9jxpur47M';
    // final double _startSeconds = 1;
    // final String _videoId = 'EsMz4WLtk78';
    // final double _startSeconds = 113;
    // final String _videoId = 'Uz6wUQ6yGYk';
    // final double _startSeconds = 77;

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
                      word: """alive""",
                      // alsoEnglishWord: "also: alive",
                      britshText: """IpaUK: /əˈlaɪv/""",
                      americanText: """IpaUS: /əˈlaɪv/""",
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
کوردی: زیندوو، لەژیان‌دا، نەمردوو، بەکەیف، بەگوڕ، بەدەماخ، بەجم‌وجوڵ، ھەڵسووڕ، چالاک، بزۆر، ئاگادار، بەخەبەر، ھەڵبوو، داگیرساو، کڵپەکردوو، پڕ (لە)
"""),
                    const DefinitionKurdish(text: "١. (ھاوەڵناو) زیندوو" ""),
                    SentencesRow(
                      englishText: "She had to steal food just to stay alive.",
                      kurdishText:
                          "پێویست بوو خواردن بدزێت بۆ ئەوەی بە زیندوویی بمێنێتەوە.",
                      onPressedBritish: () => speakalive65666("en-GB"),
                      onPressedAmerican: () => speakalive65666("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "We don't know whether he's alive or dead.",
                      kurdishText: "نازانین زیندووە یان مردووە.",
                      onPressedBritish: () => speakalive69142("en-GB"),
                      onPressedAmerican: () => speakalive69142("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) پڕ لە شتێک"""),
                    SentencesRow(
                      englishText: "Ed was alive with happiness.",
                      kurdishText: "ئێد پڕ بوو لە خۆشی.",
                      onPressedBritish: () => speakalive3599("en-GB"),
                      onPressedAmerican: () => speakalive3599("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) بەردەوام"""),
                    SentencesRow(
                      englishText:
                          "The old customs are still very much alive in this region.",
                      kurdishText: "نەریتە کۆنەکان ھێشتا زیندوون لەم ھەرێمە.",
                      onPressedBritish: () => speakalive75236("en-GB"),
                      onPressedAmerican: () => speakalive75236("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ھاوەڵناو) پڕ لە زیندەوەر یان شتی جووڵاو"""),
                    SentencesRow(
                      englishText: "The pool was alive with goldfish.",
                      kurdishText: "حەوزەکە پڕ لە زەردەماسی بوو.",
                      onPressedBritish: () => speakalive378514("en-GB"),
                      onPressedAmerican: () => speakalive378514("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (ھاوەڵناو) ئاگادار لە شتێک"""),
                    SentencesRow(
                      englishText:
                          "They are alive to the fact that the opposing team has not lost a game this season.",
                      kurdishText:
                          "باش ئاگاداری ئەو ڕاستییەن کە تیمی بەرامبەر ئەم وەرزە ھیچ یارییەکی نەدۆڕاندووە.",
                      onPressedBritish: () => speakalive35961("en-GB"),
                      onPressedAmerican: () => speakalive35961("en-US"),
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


