import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapprehensive extends StatefulWidget {
  const EnglishEntryapprehensive({super.key});

  @override
  State<EnglishEntryapprehensive> createState() =>
      _EnglishEntryapprehensiveState();
}

class _EnglishEntryapprehensiveState extends State<EnglishEntryapprehensive> {
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
- Adjective: apprehensive 
1. Quick to understand (= discerning)
"a kind and apprehensive friend";
 
2. Mentally upset over possible misfortune or danger etc (= worried)
"apprehensive about her job"; "felt apprehensive about the consequences";
 
3. In fear or dread of possible evil or harm
"apprehensive for one's life"; "apprehensive of danger"
""",
  );
// 188888880002200

  final String keyword = "apprehensive";
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
    await flutterTts.speak("""apprehensive""");
  }

  Future<void> speakapprehensive946(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I was a little apprehensive about the effects of what I had said.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'yWhU40m-6uU';
    const double startSecondsend = 54;
    const String videoIdone = 'vzSfnduxNDg';
    const double startSecondsone = 369;
    const String videoIdtwo = 'mRyJpB1frvc';
    const double startSecondstwo = 1094;
    const String videoIdthree = 'JcpboMScfIY';
    const double startSecondsthree = 3279;
    const String videoIdfour = 'DVa4tfzpZ90';
    const double startSecondsfour = 449;
    const String videoIdfive = '5ueSUnUL3ek';
    const double startSecondsfive = 910;
    // final String _videoId = 'vsMydMDi3rI';
    // final double _startSeconds = 349;
    // final String _videoId = 'KhY8zFImic4';
    // final double _startSeconds = 150;

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
                      word: """apprehensive""",
                      // alsoEnglishWord: "also: apprehensive",
                      britshText: """IpaUK: /ˌæprɪˈhensɪv/""",
                      americanText: """IpaUS: /ˌæprɪˈhensɪv/""",
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
کوردی: نگەران، دڵ‌لەدوا، بێ‌ئارام، ئۆقرەلێھەڵگیراو، زووتێگەیشتوو، زیرەک
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) نیگەران یان تۆقاو لە ڕوودانی شتێکی خراپ"
                            ""),
                    SentencesRow(
                      englishText:
                          "I was a little apprehensive about the effects of what I had said.",
                      kurdishText:
                          "کەمێک نیگەران بووم سەبارەت بە کاریگەرییەکانی ئەوەی وتم.",
                      onPressedBritish: () => speakapprehensive946("en-GB"),
                      onPressedAmerican: () => speakapprehensive946("en-US"),
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

// end WORD_WEB
