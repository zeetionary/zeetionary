import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapartfrom extends StatefulWidget {
  const EnglishEntryapartfrom({super.key});

  @override
  State<EnglishEntryapartfrom> createState() => _EnglishEntryapartfromState();
}

class _EnglishEntryapartfromState extends State<EnglishEntryapartfrom> {
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
- Preposition: apart from
1. Not including, other than, except for (= aside from, save, excluding, except, with the exception of)
"All present members ratified it, apart from one";
 
2. In addition to (= besides, over and above, as well as, aside from)
""",
  );
// 188888880002200

  final String keyword = "apart from";
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
    await flutterTts.speak("""apart from""");
  }

  Future<void> speakapartfrom1125(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I've finished apart from the last question.");
  }

  Future<void> speakapartfrom1127(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Apart from their house in London, they also have a villa in Spain.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '9yjZpBq1XBE';
    const double startSecondsend = 2220;
    const String videoIdone = 'LJ0Hfc8hvpE';
    const double startSecondsone = 332;
    const String videoIdtwo = 'PtkqwslbLY8';
    const double startSecondstwo = 162;
    const String videoIdthree = 'XG4rnKlgCN8';
    const double startSecondsthree = 1081;
    const String videoIdfour = 'lkM8nxcJanM';
    const double startSecondsfour = 362;
    const String videoIdfive = 'Xc4YH0nv_90';
    const double startSecondsfive = 760;
    // final String _videoId = 'zFCFe38EIfE';
    // final double _startSeconds = 590;
    // final String _videoId = 'IkWhSslf7d8';
    // final double _startSeconds = 149;
    // final String _videoId = 'um-SEQDQidM';
    // final double _startSeconds = 2654;
    // final String _videoId = 'w5mnuCHyYaY';
    // final double _startSeconds = 243;
    // final String _videoId = 'Js_Hs0wTIS4';
    // final double _startSeconds = 145;
    // final String _videoId = '5BO0J2l6fLM';
    // final double _startSeconds = 86;

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
                      word: """apart from""",
                      // alsoEnglishWord: "also: apart from",
                      britshText: """IpaUK: /əˈpɑːt frəm/""",
                      americanText: """IpaUS: /əˈpɑːrt frəm/""",
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
کوردی: سەرەڕای، بێجگەلە، جیا لە
"""),
                    const DefinitionKurdish(text: """١. (ئامراز) جگە لە"""),
                    SentencesRow(
                      englishText:
                          "I've finished apart from the last question.",
                      kurdishText: "ھەمووم تەواوکردە جگە لە کۆتا پرسیار.",
                      onPressedBritish: () => speakapartfrom1125("en-GB"),
                      onPressedAmerican: () => speakapartfrom1125("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ئامراز) سەرەڕای شتێک، ھەروەھا"""),
                    SentencesRow(
                      englishText:
                          "Apart from their house in London, they also have a villa in Spain.",
                      kurdishText:
                          "جگە لە ماڵەکەیان لە لەندەن، ڤێلایەکیشیان لە ئیسپانیا ھەبوو.",
                      onPressedBritish: () => speakapartfrom1127("en-GB"),
                      onPressedAmerican: () => speakapartfrom1127("en-US"),
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

