// end airing
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryairing extends StatefulWidget {
  const EnglishEntryairing({super.key});

  @override
  State<EnglishEntryairing> createState() => _EnglishEntryairingState();
}

class _EnglishEntryairingState extends State<EnglishEntryairing> {
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
- Noun: airing
1. The opening of a subject to widespread discussion and debate (= dissemination, public exposure, spreading)
 
2. A short excursion (a walk or ride) in the open air
"he took the dogs for an airing"
 
3. The act of supplying fresh air and getting rid of foul air (= ventilation)
""",
  );
// 188888880002200

  final String keyword = "airing";
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
    await flutterTts.speak("""airing""");
  }

  Future<void> speakairing4522(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The subject got a thorough airing in the British press.");
  }

  Future<void> speakairing4155(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Open the windows and give the house a good airing.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'zVEEpngT_uk';
    const double startSecondsend = 1067;
    const String videoIdone = '82-wa1g_Gwo';
    const double startSecondsone = 12;
    const String videoIdtwo = 'hwhwvX0YIjw';
    const double startSecondstwo = 413;
    const String videoIdthree = 'p3M80rbfM3E';
    const double startSecondsthree = 48;
    const String videoIdfour = 'ZKTUbn2hxJE';
    const double startSecondsfour = 63;
    const String videoIdfive = 'FfSTFLEtoQY';
    const double startSecondsfive = 258;
    // final String _videoId = 'CQT7pI4_hPA';
    // final double _startSeconds = 343;
    // final String _videoId = 'yvc_VRZyuVw';
    // final double _startSeconds = 139;
    // final String _videoId = 'PKI4c0gsrD4';
    // final double _startSeconds = 148;
    // final String _videoId = '9X06tUKBX2k';
    // final double _startSeconds = 110;

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
                      word: """airing""",
                      // alsoEnglishWord: "also: airing",
                      britshText: """IpaUK: /ˈeərɪŋ/""",
                      americanText: """IpaUS: /ˈerɪŋ/""",
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
کوردی: ھەواگۆڕی، ھەواخۆری، لەبەر ھەوادا دانان، وشک‌کردنەوە، کزرکردنەوە، ھەڵخستن، دەربڕین، دەرنوو، بڵاوکردنەوەی تەلەفیزیۆنی یا ڕادیۆیی
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) گەنگەشەی بابەتێک لەبەردەم ڕای گشتی"""),
                    SentencesRow(
                      englishText:
                          "The subject got a thorough airing in the British press.",
                      kurdishText:
                          "بابەتەکە گەنگەشەی تەواوی لەسەر کرا لە میدیای بەریتانیا.",
                      onPressedBritish: () => speakairing4522("en-GB"),
                      onPressedAmerican: () => speakairing4522("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ڕێگەدان بە ھەواگۆڕکێ بۆ ئەوەی شتێک تازە و وشک بکاتەوە"""),
                    SentencesRow(
                      englishText:
                          "Open the windows and give the house a good airing.",
                      kurdishText:
                          "پەنجەرەکان بکەوە و ھەواگۆڕکێیەکی باش بدە بە ژوورەکە.",
                      onPressedBritish: () => speakairing4155("en-GB"),
                      onPressedAmerican: () => speakairing4155("en-US"),
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
