import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadvertising extends StatefulWidget {
  const EnglishEntryadvertising({super.key});

  @override
  State<EnglishEntryadvertising> createState() =>
      _EnglishEntryadvertisingState();
}

class _EnglishEntryadvertisingState extends State<EnglishEntryadvertising> {
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
- Noun: advertising
1. A public promotion of some product or service (= ad [informal], advertisement, advertizement [US, non-standard], advertizing [US, non-standard], advert [Brit])
 
2. The business of drawing public attention to goods and services (= publicizing, merchandising, publicising [Brit])
""",
  );
// 188888880002200

  final String keyword = "advertising";
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
    await flutterTts.speak("""advertising""");
  }

  Future<void> speakadver2537(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Paid advertising on social media is an assured way to reach out to customers.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'XnbCSboujF4';
    const double startSecondsend = 200;
    const String videoIdone = 'YRhqMWUH2Ig';
    const double startSecondsone = 84;
    const String videoIdtwo = 'LxdoC2sG1i4';
    const double startSecondstwo = 55;
    const String videoIdthree = 'EM4SJlhsXSE';
    const double startSecondsthree = 591;
    const String videoIdfour = 'fn--IVarumw';
    const double startSecondsfour = 1270;
    const String videoIdfive = 'kHTcoPoAnys';
    const double startSecondsfive = 432;
    // const String videoId = 'cwf2c7ByOas';
    // const double startSeconds = 1040;
    // const String videoId = 'M7ikhWfHQc8';
    // const double startSeconds = 122;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """advertising""",
                      // alsoEnglishWord: "also: advertising",
                      britshText: """IpaUK: /ˈædvətaɪzɪŋ/""",
                      americanText: """IpaUS: /ˈædvərtaɪzɪŋ/""",
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
کوردی: بانگەشە، ئاگاداری، ئاگادارکردنەوە، پیشەسازی بانگەشە یان ڕاگەیاندن، پیشەگەری بانگەشە، پیشەی پلان‌دانان و داڕشتن و نووسینی بانگەشەکان
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) چالاکی یان پیشەسازی ڕیکلامکرن" ""),
                    SentencesRow(
                      englishText:
                          "Paid advertising on social media is an assured way to reach out to customers.",
                      kurdishText:
                          "ڕیکلامکردن لەسەر سۆشیال میدیا ڕێگایەکی زۆرباشە بۆ گەشتن بە کڕیاران.",
                      onPressedBritish: () => speakadver2537("en-GB"),
                      onPressedAmerican: () => speakadver2537("en-US"),
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
