import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappease extends StatefulWidget {
  const EnglishEntryappease({super.key});

  @override
  State<EnglishEntryappease> createState() => _EnglishEntryappeaseState();
}

class _EnglishEntryappeaseState extends State<EnglishEntryappease> {
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
- Verb: appease (derived forms: appeasing, appeases, appeased)
1. Cause to be more favourably inclined; gain the good will of (= pacify, lenify, conciliate, assuage, mollify, placate, gentle, gruntle)
"She managed to appease the angry customer";
 
2. Overcome or allay (= quell, stay)
"appease my hunger";
 
3. Make peace with (= propitiate)
""",
  );
// 188888880002200

  final String keyword = "appease";
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
    await flutterTts.speak("""appease""");
  }

  Future<void> speakappease1203(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The move was widely seen as an attempt to appease critics of the regime.");
  }

  Future<void> speakappease1205(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He was a crucial ally who the country needed to appease.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'QiKZYt9070U';
    const double startSecondsend = 888;
    const String videoIdone = 'Mx8JkGHaGUI';
    const double startSecondsone = 1163;
    const String videoIdtwo = 'GaLdHd2J-xM';
    const double startSecondstwo = 932;
    const String videoIdthree = '_h95pZQiKwI';
    const double startSecondsthree = 346;
    const String videoIdfour = 'b1reY72ktEc';
    const double startSecondsfour = 705;
    const String videoIdfive = '6s8ofnwQCbY';
    const double startSecondsfive = 434;
    // final String _videoId = '_gdd61k3xuI';
    // final double _startSeconds = 783;
    // final String _videoId = 'QW7tilt16tM';
    // final double _startSeconds = 32;
    // final String _videoId = 'LHqbfJ3tq4Y';
    // final double _startSeconds = 784;

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
                      word: """appease""",
                      // alsoEnglishWord: "also: appease",
                      britshText: """IpaUK: /əˈpiːz/""",
                      americanText: """IpaUS: /əˈpiːz/""",
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
٢. (کردار) ھێمنکردنەوەی کەسێک بە پێدانی ئەوەی دەیەوێ"""),
                    SentencesRow(
                      englishText:
                          "The move was widely seen as an attempt to appease critics of the regime.",
                      kurdishText:
                          "ھەنگاوەکە بەشێوەیەکی بەرفراوان بینرا بە ھەوڵێک بۆ ھێمنکردنەوەی ڕەخنەگرانی ڕژێمەکە.",
                      onPressedBritish: () => speakappease1203("en-GB"),
                      onPressedAmerican: () => speakappease1203("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "He was a crucial ally who the country needed to appease.",
                      kurdishText:
                          "ھاوپەیمانێکی گرنگی وڵاتەکە بوو کە دەبوو دڵی‌ڕابگیردرێ.",
                      onPressedBritish: () => speakappease1205("en-GB"),
                      onPressedAmerican: () => speakappease1205("en-US"),
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
