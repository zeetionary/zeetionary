import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanalyst extends StatefulWidget {
  const EnglishEntryanalyst({super.key});

  @override
  State<EnglishEntryanalyst> createState() => _EnglishEntryanalystState();
}

class _EnglishEntryanalystState extends State<EnglishEntryanalyst> {
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
- Noun: analyst (derived forms: analysts)
1. Someone who is skilled at analysing data
 
2. An expert who studies financial data (on credit, securities, sales or financial patterns etc.) and recommends appropriate business actions
 
3. A licensed practitioner of psychoanalysis (= psychoanalyst)
""",
  );
// 188888880002200

  final String keyword = "analyst";
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
    await flutterTts.speak("""analyst""");
  }

  Future<void> speakanalyst45888(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("City analysts forecast huge profits this year.");
  }

  Future<void> speakanalyst7401(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She is a financial analyst.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '0jltioeaEyY';
    const double startSecondsend = 1;
    const String videoIdone = 'cMBrvHsFD_8';
    const double startSecondsone = 730;
    const String videoIdtwo = 'qr4MSVxfYBE';
    const double startSecondstwo = 985;
    const String videoIdthree = '8PJGIEz5YJ4';
    const double startSecondsthree = 677;
    const String videoIdfour = 'VG5bRHbzWdg';
    const double startSecondsfour = 10;
    const String videoIdfive = 'knjliFs3gR8';
    const double startSecondsfive = 1057;
    // final String _videoId = 'P6bVl47kdNk';
    // final double _startSeconds = 372;
    // final String _videoId = 'tCAt8eEKPDc';
    // final double _startSeconds = 732;
    // final String _videoId = 'zvFD5KBAb0Q';
    // final double _startSeconds = 90;
    // final String _videoId = 'fWNxA-ClfSI';
    // final double _startSeconds = 32;
    // final String _videoId = 'uK3OBAxCi6k';
    // final double _startSeconds = 442;

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
                      word: """analyst""",
                      // alsoEnglishWord: "also: analyst",
                      britshText: """IpaUK: /ˈænəlɪst/""",
                      americanText: """IpaUS: /ˈænəlɪst/""",
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
کوردی: شیکار، شی‌کەرەوە، لێکدەرەوە، لێکۆڵەرەوە، دەروون‌شیکار
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) کەسێک کە کاری لێکۆڵینەوە و توێژینەوەیە بۆ تێگەشتن لە بابەتێک"
                            ""),
                    SentencesRow(
                      englishText:
                          "City analysts forecast huge profits this year.",
                      kurdishText:
                          "توێژەرانی شارەکە ئەمساڵ پێشبینی قازانجی زەبەلاح دەکەن.",
                      onPressedBritish: () => speakanalyst45888("en-GB"),
                      onPressedAmerican: () => speakanalyst45888("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "She is a financial analyst.",
                      kurdishText: "لێکۆڵەرێکی ئابوورییە.",
                      onPressedBritish: () => speakanalyst7401("en-GB"),
                      onPressedAmerican: () => speakanalyst7401("en-US"),
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


