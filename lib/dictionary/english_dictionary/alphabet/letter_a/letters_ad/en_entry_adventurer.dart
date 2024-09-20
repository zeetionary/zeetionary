import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadventurer extends StatefulWidget {
  const EnglishEntryadventurer({super.key});

  @override
  State<EnglishEntryadventurer> createState() => _EnglishEntryadventurerState();
}

class _EnglishEntryadventurerState extends State<EnglishEntryadventurer> {
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
- Noun: adventurer (derived forms: adventurers)
1. A person who enjoys taking risks (= venturer)
 
2. Someone who travels into little known regions (especially for some scientific purpose) (= explorer)
""",
  );
// 188888880002200

  final String keyword = "adventurer";
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
    await flutterTts.speak("""adventurer""");
  }

  Future<void> speakadve3566(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He was something of an adventurer, living most of his life abroad.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'qKfrgvO4IYs';
    const double startSecondsend = 66;
    const String videoIdone = 'qUNYPkroz18';
    const double startSecondsone = 38;
    const String videoIdtwo = 'tCqwT2MqLxI';
    const double startSecondstwo = 483;
    const String videoIdthree = 'iYCAwk5oxFE';
    const double startSecondsthree = 1022;
    const String videoIdfour = 'zX1J9-KMVXE';
    const double startSecondsfour = 102;
    const String videoIdfive = 'ZSd40poykjE';
    const double startSecondsfive = 1637;
    // const String videoIdsix = '14omrXWknpA';
    // const double startSecondssix = 711;
    // const String videoId = 'p5SygzMSLhM';
    // const double startSeconds = 164;
    // const String videoId = 'bSdnKu1k8Qg';
    // const double startSeconds = 543;

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
                      word: """adventurer""",
                      // alsoEnglishWord: "also: adventurer",
                      britshText: """IpaUK: /ədˈventʃərə(r)/""",
                      americanText: """IpaUS: /ədˈventʃərər/""",
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
کوردی: کێشەخواز، سەرکێش، جەربەزە، مەترسی‌کار، سەرورد، سەرەڕۆ، (بنیادەم) بەجەرگ
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) کەسێک کە حەزی بە ئەزموونی تازە و بەجۆشھێنەرە، بەتایبەتی ڕۆیشتن بۆ شوێنی تازە"
                            ""),
                    SentencesRow(
                      englishText:
                          "He was something of an adventurer, living most of his life abroad.",
                      kurdishText:
                          "کەسێکی تا ڕادەیەک سەرکێش بوو کە زۆرینەی ژیانی لە دەرەوە بەسەر دەبرد.",
                      onPressedBritish: () => speakadve3566("en-GB"),
                      onPressedAmerican: () => speakadve3566("en-US"),
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
