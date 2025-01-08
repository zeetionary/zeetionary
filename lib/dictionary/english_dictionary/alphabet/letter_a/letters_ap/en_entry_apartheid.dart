import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapartheid extends StatefulWidget {
  const EnglishEntryapartheid({super.key});

  @override
  State<EnglishEntryapartheid> createState() => _EnglishEntryapartheidState();
}

class _EnglishEntryapartheidState extends State<EnglishEntryapartheid> {
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
Noun: apartheid (derived forms: apartheids)
1. A social policy or racial segregation involving political and economic and legal discrimination against people who are not Whites; the former official policy in South Africa
""",
  );
// 188888880002200

  final String keyword = "apartheid";
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
    await flutterTts.speak("""apartheid""");
  }

  Future<void> speakapartheid1139(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "During the late 1980s and 1990s, South Africa was undergoing its dramatic transition from apartheid to black majority rule.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'MknerYjob0w';
    const double startSecondsend = 27;
    const String videoIdone = 'aEdGcej-6D0';
    const double startSecondsone = 77;
    const String videoIdtwo = '1s5iz6ml-qA';
    const double startSecondstwo = 18;
    const String videoIdthree = '5SoHckYyhUY';
    const double startSecondsthree = 221;
    const String videoIdfour = 'vd-BB5U9BAg';
    const double startSecondsfour = 1;
    const String videoIdfive = '9ud2muAvbRA';
    const double startSecondsfive = 5;
    // final String _videoId = '6TLe4J7Dvd0';
    // final double _startSeconds = 9;
    // final String _videoId = 'CFeKwv4GkZI';
    // final double _startSeconds = 1;
    // final String _videoId = '5qLrRMFD84k';
    // final double _startSeconds = 49;
    // final String _videoId = 'zYX6DY-hm0o';
    // final double _startSeconds = 24;

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
                      word: """apartheid""",
                      // alsoEnglishWord: "also: apartheid",
                      britshText: """IpaUK: /əˈpɑːtaɪt/, /əˈpɑːteɪt/""",
                      americanText: """IpaUS: /əˈpɑːrtaɪt/, /əˈpɑːrteɪt/""",
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
١. (ناو) سیستەمی پێشووتری حکومڕانیی ئەفریقای باشوور کە تێیدا تەنھا سپی‌پێستەکان مافی تەواوی سیاسییان ھەبوو و ئەوانی تر، بەتایبەتی ڕەشپێستەکان، ناچاردەکران بەجیا بژین و بچنە و قوتابخانە و دامەزراوەی دیکەی خۆیان"""),
                    SentencesRow(
                      englishText:
                          "During the late 1980s and 1990s, South Africa was undergoing its dramatic transition from apartheid to black majority rule.",
                      kurdishText:
                          "لە ساڵانی ١٩٨٠ و ١٩٩٠ ەکان ئەفریقای باشوور بە بە گۆڕانی بەرچاو تێدەپەڕی لە سیستەمی ئەپارتەیدەوە بۆ سیستەمی زۆرینە ڕەشپێست.",
                      onPressedBritish: () => speakapartheid1139("en-GB"),
                      onPressedAmerican: () => speakapartheid1139("en-US"),
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

