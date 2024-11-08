import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalmost extends StatefulWidget {
  const EnglishEntryalmost({super.key});

  @override
  State<EnglishEntryalmost> createState() => _EnglishEntryalmostState();
}

class _EnglishEntryalmostState extends State<EnglishEntryalmost> {
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
Adverb: almost 
1. (of actions or states) slightly short of or not quite accomplished; all but (= about, most, nearly, near, nigh, virtually, well-nigh, all but)
"the baby was almost asleep when the alarm sounded"; "we're almost finished";
""",
  );
// 188888880002200

  final String keyword = "almost";
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
    await flutterTts.speak("""almost""");
  }

  Future<void> speakalmost4211(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I like almost all of them.");
  }

  Future<void> speakalmost2489(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The castle is almost entirely surrounded by water.");
  }

  Future<void> speakalmost4958(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The painting is almost certainly a forgery.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '0Kr4JO9591c';
    const double startSecondsend = 93;
    const String videoIdone = '9hvjBi4PKWA';
    const double startSecondsone = 807;
    const String videoIdtwo = 'dOOYvTc2vgA';
    const double startSecondstwo = 1;
    const String videoIdthree = 'T8uc3NzU7J4';
    const double startSecondsthree = 1029;
    const String videoIdfour = 'l5XP6T7xqek';
    const double startSecondsfour = 22;
    const String videoIdfive = 'UeH426gwVRc';
    const double startSecondsfive = 1591;
    // final String _videoId = 'EMoSsCDgZys';
    // final double _startSeconds = 46;
    // final String _videoId = 'Pu0AboUn1bY';
    // final double _startSeconds = 356;
    // final String _videoId = 'rKrNfTKiG-M';
    // final double _startSeconds = 1032;

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
                      word: """almost""",
                      // alsoEnglishWord: "also: almost",
                      britshText: """IpaUK: /ˈɔːlməʊst/""",
                      americanText: """IpaUS: /ˈɔːlməʊst/""",
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
١. (ھاوەڵکار) نزیکەی، لە دەوروبەری"""),
                    SentencesRow(
                      englishText: "I like almost all of them.",
                      kurdishText: "بە نزیکەیی حەزم لە ھەموویانە.",
                      onPressedBritish: () => speakalmost4211("en-GB"),
                      onPressedAmerican: () => speakalmost4211("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "The castle is almost entirely surrounded by water.",
                      kurdishText: "قەڵاکە بە نزیکەیی تەواو بە ئاو دەوردراوە.",
                      onPressedBritish: () => speakalmost2489("en-GB"),
                      onPressedAmerican: () => speakalmost2489("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "The painting is almost certainly a forgery.",
                      kurdishText: "تابلۆکە بە ئەگەری زۆر ساختەیە.",
                      onPressedBritish: () => speakalmost4958("en-GB"),
                      onPressedAmerican: () => speakalmost4958("en-US"),
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

