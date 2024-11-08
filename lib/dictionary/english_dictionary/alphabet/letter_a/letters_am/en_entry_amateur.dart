import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamateur extends StatefulWidget {
  const EnglishEntryamateur({super.key});

  @override
  State<EnglishEntryamateur> createState() => _EnglishEntryamateurState();
}

class _EnglishEntryamateurState extends State<EnglishEntryamateur> {
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
Noun: amateur (derived forms: amateurs)
1. Someone who pursues a study or sport as a pastime
 
2. An athlete who does not play for pay
 
3. Someone who is unqualified or not skilful enough

- Adjective: amateur
1. Engaged in as a pastime (= recreational, unpaid)
"an amateur painter"; "gained valuable experience in amateur theatricals";
 
2. Lacking professional skill or expertise (= amateurish, inexpert, unskilled, rookie [informal])
"a very amateur job";
""",
  );
// 188888880002200

  final String keyword = "amateur";
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
    await flutterTts.speak("""amateur""");
  }

  Future<void> speakamateur44451(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He was an amateur photographer until the age of 40, when he turned professional.");
  }

  Future<void> speakamateur47955(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The performance sounded very amateur, I’m afraid.");
  }

  Future<void> speakamateur49555(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This work was done by a bunch of amateurs!");
  }

  Future<void> speakamateur44592(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The tournament is open to both amateurs and professionals.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'NnkuQ47v8d8';
    const double startSecondsend = 36;
    const String videoIdone = 'vK4jyLKWGKk';
    const double startSecondsone = 10;
    const String videoIdtwo = 'ZzGqFF1IXgc';
    const double startSecondstwo = 1;
    const String videoIdthree = 'LWSIcpLEurA';
    const double startSecondsthree = 557;
    const String videoIdfour = 'Rvt9CaR4_7k';
    const double startSecondsfour = 6;
    const String videoIdfive = 'K6twIhtexDA';
    const double startSecondsfive = 53;
    // final String _videoId = '0AJE4_Xo4ng';
    // final double _startSeconds = 104;
    // final String _videoId = '6dDlkawN3s0';
    // final double _startSeconds = 8;
    // final String _videoId = 'fgWCjEGW5GI';
    // final double _startSeconds = 1;
    // final String _videoId = 'GisqGBMqocA';
    // final double _startSeconds = 7;
    // final String _videoId = '6uKdMQHRM8k';
    // final double _startSeconds = 1;
    // final String _videoId = '-cHKXgam04M';
    // final double _startSeconds = 46;

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
                      word: """amateur""",
                      // alsoEnglishWord: "also: amateur",
                      britshText: """IpaUK: /ˈæmətə(r)/, /ˈæmətʃə(r)/""",
                      americanText: """IpaUS: /ˈæmətər/, /ˈæmətʃər/""",
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
کوردی: ئاماتۆڕ، ھەوەس‌کار، کەیفی، حەزکار، خۆشی‌کار، ناپیشەیی، ناشارەزا، تازەکار، ناشی
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کردنی شتێک بۆ ئارەزووی خۆت، نەک وەک پیشە"""),
                    SentencesRow(
                      englishText:
                          "He was an amateur photographer until the age of 40, when he turned professional.",
                      kurdishText:
                          "تاوەک تەمەنی ٤٠ ساڵیش ھەر وێنەگرێکی ھەوەس‌کار بوو، لەوەو بەدوا بوو کە بوو بە پڕۆفیشناڵ.",
                      onPressedBritish: () => speakamateur44451("en-GB"),
                      onPressedAmerican: () => speakamateur44451("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) شتێک کە بە باشی و شارەزاییەوە نەکراوە"""),
                    SentencesRow(
                      englishText:
                          "The performance sounded very amateur, I’m afraid.",
                      kurdishText:
                          "بەداخەوەم بەڵام نمایشەکە زۆر تازەکارانە دیاربوو.",
                      onPressedBritish: () => speakamateur47955("en-GB"),
                      onPressedAmerican: () => speakamateur47955("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) کەسێک کە بۆ خۆشی و ھەوەس بەژداری چالاکییەک دەکات، نەک وەک پیشە"""),
                    SentencesRow(
                      englishText:
                          "The tournament is open to both amateurs and professionals.",
                      kurdishText:
                          "پاڵەوانێتییەکە بۆ حەزکاران و پڕۆفیشناڵان کراوەیە.",
                      onPressedBritish: () => speakamateur44592("en-GB"),
                      onPressedAmerican: () => speakamateur44592("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ناو) کەسێک کە شارەزایی پێویستی نییە بۆ کردنی کارێک"""),
                    SentencesRow(
                      englishText: "This work was done by a bunch of amateurs!",
                      kurdishText:
                          "ئەم ئیشە لەلایەن ژمارەیەک تازە کارەوە ئەنجام دراوە!",
                      onPressedBritish: () => speakamateur49555("en-GB"),
                      onPressedAmerican: () => speakamateur49555("en-US"),
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

