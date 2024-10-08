// end affront
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaffront extends StatefulWidget {
  const EnglishEntryaffront({super.key});

  @override
  State<EnglishEntryaffront> createState() => _EnglishEntryaffrontState();
}

class _EnglishEntryaffrontState extends State<EnglishEntryaffront> {
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
- Noun: affront (derived forms: affronts)
1. A deliberately offensive act or something producing the effect of deliberate disrespect (= insult)
"turning his back on me was a deliberate affront";

- Verb: affront (derived forms: affronted, affronting, affronts)
1. Treat, mention, or speak to rudely (= diss [informal], insult, dis [informal])
""",
  );
// 188888880002200

  final String keyword = "affront";
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
    await flutterTts.speak("""affront""");
  }

  Future<void> speakaffront92(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("His speech was an affront to many in the community.");
  }

  Future<void> speakaffron4599(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He hoped they would not feel affronted if they were not invited.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'QMiOMNIRs3k';
    const double startSecondsend = 346;
    const String videoIdone = 'rqoXs1TWMQw';
    const double startSecondsone = 1264;
    const String videoIdtwo = 'nMG_KN7GMXI';
    const double startSecondstwo = 179;
    const String videoIdthree = 'AIqxfBhlwx0';
    const double startSecondsthree = 1149;
    const String videoIdfour = 'xHYnFJ3l5jw';
    const double startSecondsfour = 260;
    const String videoIdfive = 'Ff58FmDSayY';
    const double startSecondsfive = 100;
    // const String videoId = 'u7j5a4Gz42Y';
    // const double startSeconds = 148;

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
                      word: """affront""",
                      // alsoEnglishWord: "also: affront",
                      britshText: """IpaUK: /əˈfrʌnt/""",
                      americanText: """IpaUS: /əˈfrʌnt/""",
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
کوردی: بێ‌ڕێزی، بێ‌حورمەتی، سووکایەتی، ئابڕووبردن
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) قسەیەک کە بێڕێزی تێدایە" ""),
                    SentencesRow(
                      englishText:
                          "His speech was an affront to many in the community.",
                      kurdishText:
                          "وتارەکەی بێحورمەتی بوو بە ژمارەیەکی زۆر خەڵک لە گەڕەکەکە.",
                      onPressedBritish: () => speakaffront92("en-GB"),
                      onPressedAmerican: () => speakaffront92("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) بێڕێزی پێکردن"""),
                    SentencesRow(
                      englishText:
                          "He hoped they would not feel affronted if they were not invited.",
                      kurdishText:
                          "ھیواداربوو ھەست بە بێڕێزی پێکردن نەکەن ئەگەر بانگھێشت نەکرابان.",
                      onPressedBritish: () => speakaffron4599("en-GB"),
                      onPressedAmerican: () => speakaffron4599("en-US"),
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
