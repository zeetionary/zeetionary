import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappraise extends StatefulWidget {
  const EnglishEntryappraise({super.key});

  @override
  State<EnglishEntryappraise> createState() => _EnglishEntryappraiseState();
}

class _EnglishEntryappraiseState extends State<EnglishEntryappraise> {
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
- Verb: appraise (derived forms: appraises, appraising, appraised)
Estimate or determine the nature, value, quality, ability, extent, or significance of (= measure, evaluate, valuate, assess, value, scope)
"I will have the family jewels appraised by a professional";
 
2. Consider in a comprehensive way (= survey)
"He appraised the situation carefully before acting";
""",
  );
// 188888880002200

  final String keyword = "appraise";
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
    await flutterTts.speak("""appraise""");
  }

  Future<void> speakappraise910(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The architect gave the exterior an appraising glance.");
  }

  Future<void> speakappraise913(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They appraised the painting at £200 000.");
  }

  Future<void> speakappraise915(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Managers must appraise all staff.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'to_NIzL9jfE';
    const double startSecondsend = 350;
    const String videoIdone = 'L-P4HdT9ypQ';
    const double startSecondsone = 452;
    const String videoIdtwo = 'BYXfg_5Oaq8';
    const double startSecondstwo = 531;
    const String videoIdthree = 'GSnFH0jmzyE';
    const double startSecondsthree = 427;
    const String videoIdfour = 'UY-7-TIIW2w';
    const double startSecondsfour = 49;
    const String videoIdfive = 'njiv2BjLcOo';
    const double startSecondsfive = 107;
    // final String _videoId = '9igJ_aBJMVM';
    // final double _startSeconds = 1799;
    // final String _videoId = 'HW6Yaj0z-VM';
    // final double _startSeconds = 364;
    // final String _videoId = '4zGXX6kDPBs';
    // final double _startSeconds = 590;
    // final String _videoId = '8LXZTU9UbSc';
    // final double _startSeconds = 405;

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
                      word: """appraise""",
                      // alsoEnglishWord: "also: appraise",
                      britshText: """IpaUK: /əˈpreɪz/""",
                      americanText: """IpaUS: /əˈpreɪz/""",
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
١. (کردار) وردبوونەوە لە شتێک بۆ تێگەشتن لێی"""),
                    SentencesRow(
                      englishText:
                          "The architect gave the exterior an appraising glance.",
                      kurdishText:
                          "ئەندازیارەکە نیگایەکی کرد لە دەرەوەی بیناکە بۆ نرخاندنی.",
                      onPressedBritish: () => speakappraise910("en-GB"),
                      onPressedAmerican: () => speakappraise910("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) وردبوونەوە لە شتێک بۆ دانانی نرخێک لەسەری"""),
                    SentencesRow(
                      englishText: "They appraised the painting at £200 000.",
                      kurdishText: "تابلۆکەیان بە ٢٠٠٠٠٠ پاوەند نرخاند.",
                      onPressedBritish: () => speakappraise913("en-GB"),
                      onPressedAmerican: () => speakappraise913("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) ھەڵسەنگاندنی کاری کەسێک"""),
                    SentencesRow(
                      englishText: "Managers must appraise all staff.",
                      kurdishText:
                          "بەڕێوبەران دەبێت ھەڵسەنگاندن بۆ تەواوی ستافەکەیان بکەن.",
                      onPressedBritish: () => speakappraise915("en-GB"),
                      onPressedAmerican: () => speakappraise915("en-US"),
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
