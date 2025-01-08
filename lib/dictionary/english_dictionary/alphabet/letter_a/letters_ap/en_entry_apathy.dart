import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapathy extends StatefulWidget {
  const EnglishEntryapathy({super.key});

  @override
  State<EnglishEntryapathy> createState() => _EnglishEntryapathyState();
}

class _EnglishEntryapathyState extends State<EnglishEntryapathy> {
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
- Noun: apathy (derived forms: apathies)
1. An absence of emotion or enthusiasm
 
2. The trait of lacking enthusiasm for or interest in things generally (= indifference, numbness, spiritlessness)
""",
  );
// 188888880002200

  final String keyword = "apathy";
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
    await flutterTts.speak("""apathy""");
  }

  Future<void> speakapathy1212(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Such attitudes can only lead to apathy.");
  }

  Future<void> speakapathy1215(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There is a growing sense of apathy among teens and a feeling that there are no opportunities, he said.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'uUR-Zk9S5bE';
    const double startSecondsend = 28;
    const String videoIdone = '4FE2f2I7hVg';
    const double startSecondsone = 261;
    const String videoIdtwo = 'RKVSDQaxHjE';
    const double startSecondstwo = 386;
    const String videoIdthree = 'Skqs0-cmlbo';
    const double startSecondsthree = 1;
    const String videoIdfour = 'ewLpXw6uN28';
    const double startSecondsfour = 943;
    const String videoIdfive = 'sJVxU2zpeLk';
    const double startSecondsfive = 180;
    // final String _videoId = 'vv2vPAzj8S4';
    // final double _startSeconds = 140;
    // final String _videoId = 'mviTS_cIWXg';
    // final double _startSeconds = 169;
    // final String _videoId = '-_nka_Nkli8';
    // final double _startSeconds = 399;
    // final String _videoId = 'HnZkLu13_BU';
    // final double _startSeconds = 1752;

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
                      word: """apathy""",
                      // alsoEnglishWord: "also: apathy",
                      britshText: """IpaUK: /ˈæpəθi/""",
                      americanText: """IpaUS: /ˈæpəθi/""",
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
کوردی: کەمتەرخەمی، بێ‌دەربەستی، بێ‌ھەستی، بێ‌تاقەتی، دڵ‌مردوویی، ساردوسڕی، خەمساری، ناھومێدی، دڵساردی، ناھۆگری، ناتامەزرۆیی، بێ‌ھیوایی
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) نەبوونی تامەزرۆیی یان حەز بپ شتێک، یان ھەموو شتێک بە گشتی"
                            ""),
                    SentencesRow(
                      englishText: "Such attitudes can only lead to apathy.",
                      kurdishText:
                          "ھەڵوێستی وەھا ئەنجامەکەی تەنھا بێ‌ھەستی دەبێت.",
                      onPressedBritish: () => speakapathy1212("en-GB"),
                      onPressedAmerican: () => speakapathy1212("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "There is a growing sense of apathy among teens and a feeling that there are no opportunities.",
                      kurdishText:
                          "ھەستی بێ‌دەربەستیی ڕوولەزۆری لەناو گەنجان ھەیە، و ھەستی ئەوەی ھیچ ھەلێک نییە.",
                      onPressedBritish: () => speakapathy1215("en-GB"),
                      onPressedAmerican: () => speakapathy1215("en-US"),
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
