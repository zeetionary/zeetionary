import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamong extends StatefulWidget {
  const EnglishEntryamong({super.key});

  @override
  State<EnglishEntryamong> createState() => _EnglishEntryamongState();
}

class _EnglishEntryamongState extends State<EnglishEntryamong> {
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
- Preposition: among
1. In the middle of (= amid, amidst, amongst)
"I found it among the trees";
 
2. In division, with shares to each (= amongst, between)
"the top leadership divides the spoils among themselves";
 
3. Internal to, involving members of (a group of people) (= amongst, between, within)
"they argued among themselves";
 
4. Being a member (or members) of, in the class of (= amongst)
"among other things, she said...";
""",
  );
// 188888880002200

  final String keyword = "among";
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
    await flutterTts.speak("""among""");
  }

  Future<void> speakamong7655(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I saw a few familiar faces among the crowd.");
  }

  Future<void> speakamong4666(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A British woman was among the survivors.");
  }

  Future<void> speakamong4111(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He divided the country among his sons.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'VrKW58MS12g';
    const double startSecondsend = 1106;
    const String videoIdone = 'AAGIi62-sAU';
    const double startSecondsone = 1682;
    const String videoIdtwo = '7t8pzP87X14';
    const double startSecondstwo = 339;
    const String videoIdthree = 'nDb6-9-MTw4';
    const double startSecondsthree = 1552;
    const String videoIdfour = 'mY3SEMTROas';
    const double startSecondsfour = 1543;
    const String videoIdfive = 'PXsZntwnArQ';
    const double startSecondsfive = 408;
    // final String _videoId = '-cPdImejxEQ';
    // final double _startSeconds = 87;
    // final String _videoId = 'SrDEtSlqJC4';
    // final double _startSeconds = 1485;
    // final String _videoId = '5G0j_Huv2Fg';
    // final double _startSeconds = 2762;
    // final String _videoId = 'Di310WS8zLk';
    // final double _startSeconds = 70;
    // final String _videoId = 'X3TAROotFfM';
    // final double _startSeconds = 201;
    // final String _videoId = 'n5x7GLl-mMo';
    // final double _startSeconds = 291;

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
                      word: """among""",
                      // alsoEnglishWord: "also: among",
                      britshText: """IpaUK: /əˈmʌŋ/""",
                      americanText: """IpaUS: /əˈmʌŋ/""",
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
کوردی: (لە) نێوان، لەنێو، لەنێوەڕاست، ل ئۆرتا، لە ڕێزەی، یەکێ لە
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ئامراز) دەوردراو بە کەسێک/شتێک، لە ناوەڕاستی کەسێک/شتێک"
                            ""),
                    SentencesRow(
                      englishText:
                          "I saw a few familiar faces among the crowd.",
                      kurdishText:
                          "چەند ڕووخسارێکی ناسیاوم بینی لەناو جەماوەرەکەدا.",
                      onPressedBritish: () => speakamong7655("en-GB"),
                      onPressedAmerican: () => speakamong7655("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ئامراز) بوون بە بەشێک لە گرووپێک"""),
                    SentencesRow(
                      englishText: "A British woman was among the survivors.",
                      kurdishText: "ژنێکی بەریتانی لەناو ڕزگاربووان بوو.",
                      onPressedBritish: () => speakamong4666("en-GB"),
                      onPressedAmerican: () => speakamong4666("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ئامراز) دابەشکردن لە نێوان سێ کەس یان زیاتر"""),
                    SentencesRow(
                      englishText: "He divided the country among his sons.",
                      kurdishText: "وڵاتەکەی لە نێوان کوڕەکانی دابەش‌کرد.",
                      onPressedBritish: () => speakamong4111("en-GB"),
                      onPressedAmerican: () => speakamong4111("en-US"),
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

