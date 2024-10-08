// end ahead of
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaheadof extends StatefulWidget {
  const EnglishEntryaheadof({super.key});

  @override
  State<EnglishEntryaheadof> createState() => _EnglishEntryaheadofState();
}

class _EnglishEntryaheadofState extends State<EnglishEntryaheadof> {
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
- Preposition: ahead of 
1. in front of or before.
"she walked ahead of him along the corridor";

2. in store for; awaiting.
"we have a long drive ahead of us";

3. earlier than.
"elimination of trade barriers came five years ahead of schedule";
""",
  );
// 188888880002200

  final String keyword = "ahead of";
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
    await flutterTts.speak("""ahead of""");
  }

  Future<void> speakahead25355(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Two boys were ahead of us.");
  }

  Future<void> speakaheadof2377(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Ahead of us lay ten days of intensive training.");
  }

  Future<void> speakahead3522(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I finished several days ahead of the deadline.");
  }

  Future<void> speakaheadof3596(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She was always well ahead of the rest of the class.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 't6fIp7mMJ90';
    const double startSecondsend = 237;
    const String videoIdone = 'rsaLUIeurZ8';
    const double startSecondsone = 487;
    const String videoIdtwo = 'GjMmsEwIcl0';
    const double startSecondstwo = 128;
    const String videoIdthree = 'dSEyHI-Jj0k';
    const double startSecondsthree = 955;
    const String videoIdfour = '-L7o6HtX8Vg';
    const double startSecondsfour = 664;
    const String videoIdfive = '_pc1kON-doU';
    const double startSecondsfive = 718;
    // final String _videoId = 'B35E8QleVhg';
    // final double _startSeconds = 43;
    // final String _videoId = 'Tuk04k5YLwk';
    // final double _startSeconds = 684;
    // final String _videoId = 'IlU-zDU6aQ0';
    // final double _startSeconds = 2070;

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
                      word: """ahead of""",
                      // alsoEnglishWord: "also: ahead of",
                      britshText: """IpaUK: /əˈhed əv/""",
                      americanText: """IpaUS: /əˈhed əv/""",
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
                    const DefinitionKurdish(text: """
١. (ئامراز) کات یان شوێنی لەپێش"""),
                    SentencesRow(
                      englishText: "Two boys were ahead of us.",
                      kurdishText: "دوو کوڕ لە پێشمانەوە بوون.",
                      onPressedBritish: () => speakahead25355("en-GB"),
                      onPressedAmerican: () => speakahead25355("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "Ahead of us lay ten days of intensive training.",
                      kurdishText: "دە ڕۆژی پڕ لە ڕاھێنانی سەختمان لە پێشە.",
                      onPressedBritish: () => speakaheadof2377("en-GB"),
                      onPressedAmerican: () => speakaheadof2377("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ئامراز) پێش کەسێک/شتێک"""),
                    SentencesRow(
                      englishText:
                          "I finished several days ahead of the deadline.",
                      kurdishText: "چەند ڕۆژێک پێش وادەی دیاریکراو تەواو بووم.",
                      onPressedBritish: () => speakahead3522("en-GB"),
                      onPressedAmerican: () => speakahead3522("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ئامراز) باشتر لە کەسێک"""),
                    SentencesRow(
                      englishText:
                          "She was always well ahead of the rest of the class.",
                      kurdishText: "ھەمیشە لەپێش ئەوانی دیکەی پۆلەکە بووە.",
                      onPressedBritish: () => speakaheadof3596("en-GB"),
                      onPressedAmerican: () => speakaheadof3596("en-US"),
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
