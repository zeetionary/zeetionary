import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryambiguity extends StatefulWidget {
  const EnglishEntryambiguity({super.key});

  @override
  State<EnglishEntryambiguity> createState() => _EnglishEntryambiguityState();
}

class _EnglishEntryambiguityState extends State<EnglishEntryambiguity> {
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
- Noun: ambiguity (derived forms: ambiguities)
1. An expression whose meaning cannot be determined from its context
 
2. Unclearness by virtue of having more than one meaning (= equivocalness)
""",
  );
// 188888880002200

  final String keyword = "ambiguity";
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
    await flutterTts.speak("""ambiguity""");
  }

  Future<void> speakambiguity23555(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Write clear definitions in order to avoid ambiguity.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'FYvimGit3nQ';
    const double startSecondsend = 54;
    const String videoIdone = 'x3m7qzsVJqQ';
    const double startSecondsone = 8;
    const String videoIdtwo = 'eyIWwxztjLY';
    const double startSecondstwo = 712;
    const String videoIdthree = 'G7uimtMUP4Y';
    const double startSecondsthree = 284;
    const String videoIdfour = 'hw6ZIxf9qk0';
    const double startSecondsfour = 6;
    const String videoIdfive = 'iK7lICvUhCI';
    const double startSecondsfive = 18;
    // final String _videoId = '0ST4_hmop9Y';
    // final double _startSeconds = 1340;
    // final String _videoId = 'p7iwXvBnbIE';
    // final double _startSeconds = 433;
    // final String _videoId = 'V8zaOhtbKxo';
    // final double _startSeconds = 701;
    // final String _videoId = 'RTOuKWojGss';
    // final double _startSeconds = 543;

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
                      word: """ambiguity""",
                      // alsoEnglishWord: "also: ambiguity",
                      britshText: """IpaUK: /ˌæmbɪˈɡjuːəti/""",
                      americanText: """IpaUS: /ˌæmbɪˈɡjuːəti/""",
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
کوردی: تەژمەیی، تەماوی‌بوون، دووواتایی، دوومانایی، بەپێچ‌وپەنایی، تەم‌ومژاوی‌بوون، ڕوون‌نەبوون، ئاڵۆزی، لێڵی، ناڕوونی، ناکۆکی، یەک‌نەگرتنەوە، دژایەتی، یەک‌نەخوێندنەوە
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) ھەبوونی ناڕوونی"""),
                    SentencesRow(
                      englishText:
                          "Write clear definitions in order to avoid ambiguity.",
                      kurdishText:
                          "پێناسەی ڕوون بنووسە بۆ ئەوەی لە ناڕوونی بەدوور بیت.",
                      onPressedBritish: () => speakambiguity23555("en-GB"),
                      onPressedAmerican: () => speakambiguity23555("en-US"),
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
