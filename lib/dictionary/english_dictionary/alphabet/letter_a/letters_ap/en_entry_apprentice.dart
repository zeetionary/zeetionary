import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapprentice extends StatefulWidget {
  const EnglishEntryapprentice({super.key});

  @override
  State<EnglishEntryapprentice> createState() => _EnglishEntryapprenticeState();
}

class _EnglishEntryapprenticeState extends State<EnglishEntryapprentice> {
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
- Noun: apprentice (derived forms: apprentices)
1. Someone who works for an expert in order to learn a trade (= learner, prentice)

- Verb: apprentice (derived forms: apprenticing, apprenticed, apprentices)
1. Be or work as an apprentice
"She apprenticed with the great master"
""",
  );
// 188888880002200

  final String keyword = "apprentice";
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
    await flutterTts.speak("""apprentice""");
  }

  Future<void> speakapprentice956(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Most of the work was done by apprentices.");
  }

  Future<void> speakapprentice959(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was apprenticed to his uncle as a carpenter.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '4VUGrAcER5c';
    const double startSecondsend = 1;
    const String videoIdone = 'O48IdevmbGI';
    const double startSecondsone = 61;
    const String videoIdtwo = 'rmQ-6Cib2nA';
    const double startSecondstwo = 16;
    const String videoIdthree = 'QL8g1LCEvRo';
    const double startSecondsthree = 1;
    const String videoIdfour = 'ODwMZj36G4k';
    const double startSecondsfour = 88;
    const String videoIdfive = 'dHPTR96Sc1g';
    const double startSecondsfive = 96;
    // final String _videoId = 'tSfrKccioxA';
    // final double _startSeconds = 2306;
    // final String _videoId = 'HBhXvLlB-kY';
    // final double _startSeconds = 8423;
    // final String _videoId = '-ju6y-pHByw';
    // final double _startSeconds = 791;
    // final String _videoId = 'C1KT8PS6Zs4';
    // final double _startSeconds = 229;
    // final String _videoId = 'IqmW-MdLC6M';
    // final double _startSeconds = 819;

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
                      word: """apprentice""",
                      // alsoEnglishWord: "also: apprentice",
                      britshText: """IpaUK: /əˈprentɪs/""",
                      americanText: """IpaUS: /əˈprentɪs/""",
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
کوردی: شاگرد، بەروەستا، فێرخواز، پیشەشاگرد، تازەکار، نۆفێر، تازەفێر
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کەسێک کە لەلای کەسێکی شارەزا کاردەکات بۆ فێربوونی بەھرەکە، زۆرجار بە پارەیەکی کەم"""),
                    SentencesRow(
                      englishText: "Most of the work was done by apprentices.",
                      kurdishText: "زۆرینەی کارەکە لەلایەن شاگردەکان کرا.",
                      onPressedBritish: () => speakapprentice956("en-GB"),
                      onPressedAmerican: () => speakapprentice956("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) کارکردن وەک شاگردێک بۆ فێربوونی شارەزایی"""),
                    SentencesRow(
                      englishText:
                          "He was apprenticed to his uncle as a carpenter.",
                      kurdishText: "وەک شاگردێکی دارتاشی درا بە خاڵی.",
                      onPressedBritish: () => speakapprentice959("en-GB"),
                      onPressedAmerican: () => speakapprentice959("en-US"),
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
