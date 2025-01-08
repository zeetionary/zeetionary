import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryankle extends StatefulWidget {
  const EnglishEntryankle({super.key});

  @override
  State<EnglishEntryankle> createState() => _EnglishEntryankleState();
}

class _EnglishEntryankleState extends State<EnglishEntryankle> {
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
Noun: ankle (derived forms: ankles)
1. The joint connecting the foot with the leg (derived forms: ankling, ankles, ankled)

Verb: ankle (derived forms: ankling, ankles, ankled)
Usage: N. Amer, informal
1. Walk (= foot [informal], leg it [informal], hoof [informal], hoof it [informal])
""",
  );
// 188888880002200

  final String keyword = "ankle";
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
    await flutterTts.speak("""ankle""");
  }

  Future<void> speakankle1112(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She suffered a serious ankle injury in training.");
  }

  Future<void> speakankle1114(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My ankles have swollen.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'hzmbCSHcSts';
    const double startSecondsend = 242;
    const String videoIdone = 'xS3RSQvyFbY';
    const double startSecondsone = 199;
    const String videoIdtwo = 'pzy289wmsKQ';
    const double startSecondstwo = 6;
    const String videoIdthree = 'GV7liQO4nTU';
    const double startSecondsthree = 1;
    const String videoIdfour = 'ew4mOJtZN40';
    const double startSecondsfour = 1;
    const String videoIdfive = 'EK0aBMtgGOc';
    const double startSecondsfive = 1;
    // final String _videoId = 'rlyo6xspteI';
    // final double _startSeconds = 1;
    // final String _videoId = 'iRdX8FyqtJc';
    // final double _startSeconds = 150;
    // final String _videoId = '4Wu_mAa_WxM';
    // final double _startSeconds = 15;
    // final String _videoId = '3JJayVC0-20';
    // final double _startSeconds = 1;
    // final String _videoId = '2d-mVqEwgbo';
    // final double _startSeconds = 26;
    // final String _videoId = 'Sb0jWK7iiFY';
    // final double _startSeconds = 1;

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
                      word: """ankle""",
                      // alsoEnglishWord: "also: ankle",
                      britshText: """IpaUK: /ˈæŋkl/""",
                      americanText: """IpaUS: /ˈæŋkl/""",
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
کوردی: قولەپێ، قولاپە، قولەپا، گوێزینگ، گۆزینک، قول
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) ئەو بەشەی جەستە کە پێ و لاق پێکەوە دەبەستێت"
                            ""),
                    SentencesRow(
                      englishText:
                          "She suffered a serious ankle injury in training.",
                      kurdishText:
                          "تووشی گورزێکی کوشندە بوو لە قولەپێ‌یدا لە کاتی ڕاھێنان.",
                      onPressedBritish: () => speakankle1112("en-GB"),
                      onPressedAmerican: () => speakankle1112("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "My ankles have swollen.",
                      kurdishText: "قولەپێ‌یەکانم ئاوساون.",
                      onPressedBritish: () => speakankle1114("en-GB"),
                      onPressedAmerican: () => speakankle1114("en-US"),
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


