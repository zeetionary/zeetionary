import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryagenda extends StatefulWidget {
  const EnglishEntryagenda({super.key});

  @override
  State<EnglishEntryagenda> createState() => _EnglishEntryagendaState();
}

class _EnglishEntryagendaState extends State<EnglishEntryagenda> {
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
-Noun: agenda (derived forms: agendas)
1. A temporally organized plan for matters to be attended to (= docket, schedule)
 
2. A list of matters to be taken up (as at a meeting) (= order of business)
 
3. Individual objectives or perspective
"Ultimately, each individual has his own agenda, and will look for the slant that fits his own cause"; "Each member organization had its own agenda and programs"
""",
  );
// 188888880002200

  final String keyword = "agenda";
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
    await flutterTts.speak("""agenda""");
  }

  Future<void> speakagend562221(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We have a very full agenda of issues to discuss.");
  }

  Future<void> speakagenda15622(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Education is now at the top of the government's agenda.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'PIaSII8cvLY';
    const double startSecondsend = 1;
    const String videoIdone = '2hGjiCWOxco';
    const double startSecondsone = 1;
    const String videoIdtwo = 'B1jZ3CpSN2g';
    const double startSecondstwo = 6;
    const String videoIdthree = '3C9wZf88y4Q';
    const double startSecondsthree = 234;
    const String videoIdfour = 'HAnw168huqA';
    const double startSecondsfour = 246;
    const String videoIdfive = 'lGITudIVBE8';
    const double startSecondsfive = 430;
    // final String _videoId = 'hGLY5MAAFO4';
    // final double _startSeconds = 1067;
    // final String _videoId = 'zoWI7MzUOwo';
    // final double _startSeconds = 60;
    // final String _videoId = 'snFyGHu8gUs';
    // final double _startSeconds = 222222222222222;

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
                      word: """agenda""",
                      // alsoEnglishWord: "also: agenda",
                      britshText: """IpaUK: /əˈdʒendə/""",
                      americanText: """IpaUS: /əˈdʒendə/""",
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
کوردی: کارنامە، بەرنامەی کار، بابەت‌نامەی کۆبوونەوە
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) کۆمەڵە بابەتێک کە لە کۆبوونەوەیەک باسدەکرێن"
                            ""),
                    SentencesRow(
                      englishText:
                          "We have a very full agenda of issues to discuss.",
                      kurdishText:
                          "کارنامەمان بابەتێکی زۆر لەخۆدەگرێت بۆ باسکردن.",
                      onPressedBritish: () => speakagend562221("en-GB"),
                      onPressedAmerican: () => speakagend562221("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) کۆمەڵە شتێک کە دەبێت بکرێن، یان کۆمەڵە کێشەیەک کە دەبێت چارەسەر بکرێن"""),
                    SentencesRow(
                      englishText:
                          "Education is now at the top of the government's agenda (= most important).",
                      kurdishText:
                          "پەروەردە و فێرکردن لە گرنگترین خاڵەکانی کارنامەی حکومەتە.",
                      onPressedBritish: () => speakagenda15622("en-GB"),
                      onPressedAmerican: () => speakagenda15622("en-US"),
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

