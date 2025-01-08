import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappeasement extends StatefulWidget {
  const EnglishEntryappeasement({super.key});

  @override
  State<EnglishEntryappeasement> createState() =>
      _EnglishEntryappeasementState();
}

class _EnglishEntryappeasementState extends State<EnglishEntryappeasement> {
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
- Noun: appeasement (derived forms: appeasements)
1. The act of appeasing (as by acceding to the demands of) (= calming)
 
2. Political policy of trying to pacify a hostile country, e.g. by granting concessions
""",
  );
// 188888880002200

  final String keyword = "appeasement";
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
    await flutterTts.speak("""appeasement""");
  }

  Future<void> speakappeasement1238(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "When he agreed to talks with the prime minister, he was accused of appeasement.");
  }

  Future<void> speakappeasement1242(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The statues were devoted to the glory and appeasement of the gods.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '_yEpBKpK2Yw';
    const double startSecondsend = 61;
    const String videoIdone = 'OnjI-FBdRTQ';
    const double startSecondsone = 12072;
    const String videoIdtwo = 'Xm6Y3Rl9u1Q';
    const double startSecondstwo = 795;
    const String videoIdthree = 'eL9RB_jG6SY';
    const double startSecondsthree = 482;
    const String videoIdfour = 'Solb9uA-tgQ';
    const double startSecondsfour = 20194;
    const String videoIdfive = '2YhD3mpDIZQ';
    const double startSecondsfive = 293;
    // final String _videoId = 'huRVCqOyDcU';
    // final double _startSeconds = 271;
    // final String _videoId = '7f6u7WOBXGE';
    // final double _startSeconds = 336;

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
                      word: """appeasement""",
                      // alsoEnglishWord: "also: appeasement",
                      britshText: """IpaUK: /əˈpiːzmənt/""",
                      americanText: """IpaUS: /əˈpiːzmənt/""",
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
کوردی: دامرکاندن، دڵ‌دانەوە، ئارام‌کردنەوە، نیشاندنەوە، ھێورکردنەوە، ژیرکردنەوە، ڕازی‌کردن، قایل‌کردن، ڕێک‌کەوتن، سازان، بۆش‌کردن
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) ئارامکردنەوە یان ڕێگری لە ناکۆکی بە پێدانی ئەوەی کەسێک دەیەوێ"
                            ""),
                    SentencesRow(
                      englishText:
                          "When he agreed to talks with the prime minister, he was accused of appeasement.",
                      kurdishText:
                          "کە ڕازیبوو بە دانیشتن لەگەڵ سەرۆک وەزیران، بە ھەوڵدان بۆ دانوستان تۆمەتبارکرا.",
                      onPressedBritish: () => speakappeasement1238("en-GB"),
                      onPressedAmerican: () => speakappeasement1238("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "The statues were devoted to the glory and appeasement of the gods.",
                      kurdishText:
                          "پەیکەرەکان بەخشران بۆ پیاھەڵدان و دڵ‌ڕەواندنەوەی خوداکان.",
                      onPressedBritish: () => speakappeasement1242("en-GB"),
                      onPressedAmerican: () => speakappeasement1242("en-US"),
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
