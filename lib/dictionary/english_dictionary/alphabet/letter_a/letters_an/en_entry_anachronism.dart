import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanachronism extends StatefulWidget {
  const EnglishEntryanachronism({super.key});

  @override
  State<EnglishEntryanachronism> createState() =>
      _EnglishEntryanachronismState();
}

class _EnglishEntryanachronismState extends State<EnglishEntryanachronism> {
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
- Noun: anachronism (derived forms: anachronisms)
1. Something located at a time when it could not have existed or occurred (= mistiming, misdating)
 
2. An artifact that belongs to another time
 
3. A person who seems to be displaced in time; who belongs to another age
""",
  );
// 188888880002200

  final String keyword = "anachronism";
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
    await flutterTts.speak("""anachronism""");
  }

  Future<void> speakanachronism4599(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The monarchy is seen by many people as an anachronism in the modern world.");
  }

  Future<void> speakanachronism0205(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The book is full of anachronisms which suggests there were parts rewritten in later centuries.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'Evi7SoXKcGs';
    const double startSecondsend = 53;
    const String videoIdone = 'Yb3iaKwMh_0';
    const double startSecondsone = 235;
    const String videoIdtwo = 'BsbVPgh9VWA';
    const double startSecondstwo = 1152;
    const String videoIdthree = 'Aruca1m4nYg';
    const double startSecondsthree = 146;
    const String videoIdfour = 'qarOwn74AjQ';
    const double startSecondsfour = 725;
    const String videoIdfive = 'LQ6EXYXF58Q';
    const double startSecondsfive = 1038;
    // final String _videoId = 'i0Q4zPR4G7M';
    // final double _startSeconds = 17;
    // final String _videoId = '8n-n0lF5MbM';
    // final double _startSeconds = 388;
    // final String _videoId = 'wAMwmfkZ6_8';
    // final double _startSeconds = 447;
    // final String _videoId = 'zJ8GLqW6kOw';
    // final double _startSeconds = 130;
    // final String _videoId = 'GGm0FQ6i74U';
    // final double _startSeconds = 2824;
    // final String _videoId = 'cbzyHaWlcHI';
    // final double _startSeconds = 743;

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
                      word: """anachronism""",
                      // alsoEnglishWord: "also: anachronism",
                      britshText: """IpaUK: /əˈnækrənɪzəm/""",
                      americanText: """IpaUS: /əˈnækrənɪzəm/""",
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
کوردی: ھەڵەی مێژوویی، شتێ کە لەگەڵ ڕەوتی مێژوو یەک‌نەگرێتەوە، شتێکی نەگونجاو لەگەڵ قۆناخێکی مێژوویی، دانانی بە ھەڵەی شتێ لە قۆناخێکی مێژوویی‌دا، پاش‌وپێش‌گەری
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کۆنەپەرستی؛ شتێک کە پەیوەندی بە ڕابردوو ھەیە و لەگەڵ سەردەمدا یەکناگرێتەوە"""),
                    SentencesRow(
                      englishText:
                          "The monarchy is seen by many people as an anachronism in the modern world.",
                      kurdishText:
                          "پاشایەتی لەلایەن زۆر کەس بە بەشێک لە ڕابردوو دادەنرێت لە جیھانی ئەمڕۆدا.",
                      onPressedBritish: () => speakanachronism4599("en-GB"),
                      onPressedAmerican: () => speakanachronism4599("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. شتێک کە یەکناگرێتەوە لەگەڵ ئەو سەردەمەی باسی‌دەکات"""),
                    SentencesRow(
                      englishText:
                          "The book is full of anachronisms which suggests there were parts rewritten in later centuries.",
                      kurdishText:
                          "کتێبەکە پڕە لە پاش‌وپێش‌گەری، ئەمەش واتە ھەندێکی دووبارە نووسرایەوە لە سەدەکانی دواتر.",
                      onPressedBritish: () => speakanachronism0205("en-GB"),
                      onPressedAmerican: () => speakanachronism0205("en-US"),
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


