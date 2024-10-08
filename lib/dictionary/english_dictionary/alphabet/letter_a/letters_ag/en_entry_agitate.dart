// end agitate
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryagitate extends StatefulWidget {
  const EnglishEntryagitate({super.key});

  @override
  State<EnglishEntryagitate> createState() => _EnglishEntryagitateState();
}

class _EnglishEntryagitateState extends State<EnglishEntryagitate> {
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
- Verb: agitate (derived forms: agitating, agitates, agitated)
1. Try to stir up public opinion (= foment, stir up)
 
2. Cause to be agitated, excited, or roused (= rouse, turn on, charge, commove, excite, charge up)
 
3. Exert oneself continuously, vigorously, or obtrusively to gain an end or engage in a crusade for a certain cause or person; be an advocate for (= crusade, fight, press, campaign, push)
"She is agitating for women's rights";
 
4. Move very slightly (= stir, shift, budge, scooch [informal])
"He agitated in his seat";
 
5. Move or cause to move back and forth (= shake)
"The chemist agitated the flask vigorously";
 
6. Change the arrangement or position of (= vex, disturb, commove, shake up, stir up, raise up)
""",
  );
// 188888880002200

  final String keyword = "agitate";
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
    await flutterTts.speak("""agitate""");
  }

  Future<void> speakagit125(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Her family are agitating to have her transferred to a prison in the UK.");
  }

  Future<void> speakagit7592(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I didn't want to agitate her by telling her.");
  }

  Future<void> speakagita3477(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Agitate the mixture to dissolve the powder.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'LfWRyt1vj2w';
    const double startSecondsend = 57;
    const String videoIdone = '4U-u4CsnygA';
    const double startSecondsone = 142;
    const String videoIdtwo = 'XEZfGlyLQnA';
    const double startSecondstwo = 375;
    const String videoIdthree = 'rPdln-PUZuE';
    const double startSecondsthree = 264;
    const String videoIdfour = 'qoHnwOHLiMk';
    const double startSecondsfour = 148;
    const String videoIdfive = '7zpojhD4hpI';
    const double startSecondsfive = 856;
    // final String _videoId = 'I2MfxX0N7dQ';
    // final double _startSeconds = 191;
    // final String _videoId = '2QljlPEwe98';
    // final double _startSeconds = 121;

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
                      word: """agitate""",
                      // alsoEnglishWord: "also: agitate",
                      britshText: """IpaUK: /ˈædʒɪteɪt/""",
                      americanText: """IpaUS: /ˈædʒɪteɪt/""",
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
١. (کردار) داواکردنی شتێک بە سەرسەختی"""),
                    SentencesRow(
                      englishText:
                          "Her family are agitating to have her transferred to a prison in the UK.",
                      kurdishText:
                          "خێزانەکەی بە پەشێوانە ھەوڵ دەدەن بتگوێزنەوە بۆ زیندانێک لە شانشینی یەکگرتوو.",
                      onPressedBritish: () => speakagit125("en-GB"),
                      onPressedAmerican: () => speakagit125("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) تووڕەکردنی کەسێک"""),
                    SentencesRow(
                      englishText:
                          "I didn't want to agitate her by telling her.",
                      kurdishText: "نامەوێ توورەی بکەم بە پێ وتنی.",
                      onPressedBritish: () => speakagit7592("en-GB"),
                      onPressedAmerican: () => speakagit7592("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) تێکدانی شلەیەک بۆ تێکەڵکردنی"""),
                    SentencesRow(
                      englishText:
                          "Agitate the mixture to dissolve the powder.",
                      kurdishText:
                          "تێکەڵەکە تێک بدە بۆ ئەوەی ئاردەڵووکەکە بتوێتەوە.",
                      onPressedBritish: () => speakagita3477("en-GB"),
                      onPressedAmerican: () => speakagita3477("en-US"),
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
