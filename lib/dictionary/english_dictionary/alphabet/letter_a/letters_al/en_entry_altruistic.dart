import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaltruistic extends StatefulWidget {
  const EnglishEntryaltruistic({super.key});

  @override
  State<EnglishEntryaltruistic> createState() => _EnglishEntryaltruisticState();
}

class _EnglishEntryaltruisticState extends State<EnglishEntryaltruistic> {
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
- Adjective: altruistic 
1. Showing unselfish concern for the welfare of others
"the company tried to project an altruistic image";
""",
  );
// 188888880002200

  final String keyword = "altruistic";
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
    await flutterTts.speak("""altruistic""");
  }

  Future<void> speakaltruistic4583(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I doubt whether her motives for donating the money are altruistic - she's probably looking for publicity.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'unX4FQqM6vI';
    const double startSecondsend = 609;
    const String videoIdone = '9yjZpBq1XBE';
    const double startSecondsone = 2187;
    const String videoIdtwo = '7eM7pb5M5DU';
    const double startSecondstwo = 396;
    const String videoIdthree = '7xRit3yRim0';
    const double startSecondsthree = 1229;
    const String videoIdfour = '9wk4ApHloHM';
    const double startSecondsfour = 95;
    const String videoIdfive = 'bwvGL21aJ_s';
    const double startSecondsfive = 74;
    // final String _videoId = 'znwUCNrjpD4';
    // final double _startSeconds = 336;
    // final String _videoId = 'fqzaHvJ-yvw';
    // final double _startSeconds = 84;
    // final String _videoId = '5jjdErDkDZE';
    // final double _startSeconds = 1651;

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
                      word: """altruistic""",
                      // alsoEnglishWord: "also: altruistic",
                      britshText: """IpaUK: /ˌæltruˈɪstɪk/""",
                      americanText: """IpaUS: /ˌæltruˈɪstɪk/""",
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
کوردی: لەخۆبردووانە، ئەویدی‌خوازانە، لەخۆبردوو، گیان‌بەخت‌کەر، فەداکار، گیان‌باز
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) ھەبوونی خاسیەتی لەخۆبردوویی؛ یارمەتیدانی کەسانی تر بەبێ ھیچ ھۆکارێکی کەسی"
                            ""),
                    SentencesRow(
                      englishText:
                          "I doubt whether her motives for donating the money are altruistic - she's probably looking for publicity.",
                      kurdishText:
                          "گومانم ھەیە مەبەستی لە بەخشینی پارەکە تەنھا لەخۆبردووی بێت، پێدەچێت بۆ ناوبانگ بگەڕێت.",
                      onPressedBritish: () => speakaltruistic4583("en-GB"),
                      onPressedAmerican: () => speakaltruistic4583("en-US"),
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

