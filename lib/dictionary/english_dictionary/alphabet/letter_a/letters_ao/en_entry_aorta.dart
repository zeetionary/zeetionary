import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaorta extends StatefulWidget {
  const EnglishEntryaorta({super.key});

  @override
  State<EnglishEntryaorta> createState() => _EnglishEntryaortaState();
}

class _EnglishEntryaortaState extends State<EnglishEntryaorta> {
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
- Noun: aorta (derived forms: aortae, aortas)
1. The large trunk artery that carries blood from the left ventricle of the heart to branch arteries
""",
  );
// 188888880002200

  final String keyword = "aorta";
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
    await flutterTts.speak("""aorta""");
  }

  Future<void> speakaorta1053(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The blood can dissect up or down the aorta.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '2X2Z2PLJsZo';
    const double startSecondsend = 212;
    const String videoIdone = 'l1Kq3WIk0fk';
    const double startSecondsone = 117;
    const String videoIdtwo = 'J1NupXw1grg';
    const double startSecondstwo = 1;
    const String videoIdthree = 'P3POIAZ5U4o';
    const double startSecondsthree = 1;
    const String videoIdfour = '9vUNzxR-45w';
    const double startSecondsfour = 1;
    const String videoIdfive = 'JmS4hh2V-NI';
    const double startSecondsfive = 12;
    // final String _videoId = 'xBNfOg0FxDM';
    // final double _startSeconds = 151;
    // final String _videoId = '5zI9sG3pjVU';
    // final double _startSeconds = 383;
    // final String _videoId = 'dcnPK1HYSqQ';
    // final double _startSeconds = 283;
    // final String _videoId = 'kzcgQalDWUU';
    // final double _startSeconds = 43;
    // final String _videoId = 'qgd_V5WqLjg';
    // final double _startSeconds = 507;
    // final String _videoId = 'z3H6fJ3t-Cs';
    // final double _startSeconds = 33;

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
                      word: """aorta""",
                      // alsoEnglishWord: "also: aorta",
                      britshText: """IpaUK: /eɪˈɔːtə/""",
                      americanText: """IpaUS: /eɪˈɔːrtə/""",
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
١. (ناو) شاخوێن‌بەر؛ خوێن‌بەری سەرەکیی دڵی مرۆڤ کە خوێن بۆ ئەندامەکانی تری جەستە دەنێرێت لە دوای تێپەڕبوون بە سنگذا"""),
                    SentencesRow(
                      englishText:
                          "The blood can dissect up or down the aorta.",
                      kurdishText:
                          "خوێن دەکرێت بە شاخوێن‌بەردا دڵ جێبھێڵێت یان بێتە ناوی.",
                      onPressedBritish: () => speakaorta1053("en-GB"),
                      onPressedAmerican: () => speakaorta1053("en-US"),
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
