import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaffectation extends StatefulWidget {
  const EnglishEntryaffectation({super.key});

  @override
  State<EnglishEntryaffectation> createState() =>
      _EnglishEntryaffectationState();
}

class _EnglishEntryaffectationState extends State<EnglishEntryaffectation> {
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
- Noun: affectation (derived forms: affectations)
1. A deliberate pretence or exaggerated display (= mannerism, pose, affectedness)
""",
  );
// 188888880002200

  final String keyword = "affectation";
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
    await flutterTts.speak("""affectation""");
  }

  Future<void> speakaffecta25699(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She has many annoying little affectations.");
  }

  Future<void> speakaffect6277(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He raised his eyebrows with an affectation of surprise.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'RN5X1yia2R4';
    const double startSecondsend = 397;
    const String videoIdone = 's0lAOpNKFrg';
    const double startSecondsone = 379;
    const String videoIdtwo = 'UtcoJ8xX8Ps';
    const double startSecondstwo = 149;
    const String videoIdthree = 'vjIZARv_6nc';
    const double startSecondsthree = 498;
    const String videoIdfour = 'ml5H4dQkvMY';
    const double startSecondsfour = 796;
    const String videoIdfive = '0WKyuVMDT5U';
    const double startSecondsfive = 257;

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
                      word: """affectation""",
                      // alsoEnglishWord: "also: affectation",
                      britshText: """IpaUK: /ˌæfekˈteɪʃn/""",
                      americanText: """IpaUS: /ˌæfekˈteɪʃn/""",
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
کوردی: (وا)خۆنیشان‌دان، (وا)خۆنواندن، واخۆدەرخستن، ھەڵس‌وکەوت یان جووڵانەوەی بەدرۆ، ئەدا (دەرھێنان)، تەوروئەدا، قەمزەوناز، نازوئەدا، کزونیر، خۆتەنگ‌کردنەوە، ناز
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) گفت و ڕەفتار کە سرووشتی نییە و ئامانج لێی ئەوەیە کەسانی تر سەرسام بکەی"""),
                    SentencesRow(
                      englishText: "She has many annoying little affectations.",
                      kurdishText: "ژمارەیەکی زۆر مەکربازیی بچووکی ھەیە.",
                      onPressedBritish: () => speakaffecta25699("en-GB"),
                      onPressedAmerican: () => speakaffecta25699("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "He raised his eyebrows with an affectation of surprise (= pretending to be surprised).",
                      kurdishText:
                          "برۆیەکانی بەرزکردەوە بە خۆنواندنی ئەوەی کە سەرسامە.",
                      onPressedBritish: () => speakaffect6277("en-GB"),
                      onPressedAmerican: () => speakaffect6277("en-US"),
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
