import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryakin extends StatefulWidget {
  const EnglishEntryakin({super.key});

  @override
  State<EnglishEntryakin> createState() => _EnglishEntryakinState();
}

class _EnglishEntryakinState extends State<EnglishEntryakin> {
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
- Adjective: akin
1. Similar in quality or character (= kindred)
"a feeling akin to terror";
 
2. Related by blood (= blood-related, cognate, consanguine, consanguineous, consanguineal, kin)
""",
  );
// 188888880002200

  final String keyword = "akin";
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
    await flutterTts.speak("""akin""");
  }

  Future<void> speakakin3544(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What he felt was more akin to pity than love.");
  }

  Future<void> speakakin5366(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They speak a language akin to French.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'mY3SEMTROas';
    const double startSecondsend = 376;
    const String videoIdone = 'AAGIi62-sAU';
    const double startSecondsone = 579;
    const String videoIdtwo = '9-8pkESUztc';
    const double startSecondstwo = 582;
    const String videoIdthree = 'MBsQOTvWL3Q';
    const double startSecondsthree = 301;
    const String videoIdfour = '2Hq4CtLfnZs';
    const double startSecondsfour = 166;
    const String videoIdfive = 'fE4Z5hFLrqI';
    const double startSecondsfive = 223;
    // final String _videoId = 'EmT0i0xG6zg';
    // final double _startSeconds = 3949;
    // final String _videoId = '895AKrvz_AI';
    // final double _startSeconds = 358;

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
                      word: """akin""",
                      // alsoEnglishWord: "also: akin",
                      britshText: """IpaUK: /əˈkɪn/""",
                      americanText: """IpaUS: /əˈkɪn/""",
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
کوردی: لێکچوو، وەکیەک، ھاوشێوە، ھاو ڕەگەز، خزم، نزیک، ھاوشێوە، شێوەی، وەکوو، سەربە
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) لێکچوو لەگەڵ شتێک" ""),
                    SentencesRow(
                      englishText:
                          "What he felt was more akin to pity than love.",
                      kurdishText:
                          "ھەستەکەی زیاتر لە بەزەیی دەچوو وەک لە خۆشەویستی.",
                      onPressedBritish: () => speakakin3544("en-GB"),
                      onPressedAmerican: () => speakakin3544("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "They speak a language akin to French.",
                      kurdishText: "بە زمانێک قسەدەکەن کە نزیکە لە فەرەنسی.",
                      onPressedBritish: () => speakakin5366("en-GB"),
                      onPressedAmerican: () => speakakin5366("en-US"),
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



