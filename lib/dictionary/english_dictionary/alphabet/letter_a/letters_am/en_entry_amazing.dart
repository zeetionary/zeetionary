import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamazing extends StatefulWidget {
  const EnglishEntryamazing({super.key});

  @override
  State<EnglishEntryamazing> createState() => _EnglishEntryamazingState();
}

class _EnglishEntryamazingState extends State<EnglishEntryamazing> {
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
- Adjective: amazing 
1. Surprising greatly (= astonishing, jaw-dropping [informal], incredible)
"she does an amazing amount of work";
 
2. Inspiring awe, admiration or wonder (= awe-inspiring, awesome, awful [archaic], awing, breathtaking)
"New York is an amazing city";
""",
  );
// 188888880002200

  final String keyword = "amazing";
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
    await flutterTts.speak("""amazing""");
  }

  Future<void> speakamazing45555(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The amazing thing is, he really believes he'll get away with it.");
  }

  Future<void> speakamazing95314(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I find it amazing that people can be so irresponsible.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '_a8u4949t_k';
    const double startSecondsend = 22;
    const String videoIdone = 'JGNiafLl0iA';
    const double startSecondsone = 135;
    const String videoIdtwo = 'ygZW8DAmbxU';
    const double startSecondstwo = 263;
    const String videoIdthree = '_JZxFm4MXMI';
    const double startSecondsthree = 520;
    const String videoIdfour = 'aCSXz3eBTiU';
    const double startSecondsfour = 118;
    const String videoIdfive = 's4c-S3Xm4JE';
    const double startSecondsfive = 178;
    // final String _videoId = 'U8Gv83xiFP8';
    // final double _startSeconds = 99;
    // final String _videoId = '98v11x3e9HU';
    // final double _startSeconds = 7;

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
                      word: """amazing""",
                      // alsoEnglishWord: "also: amazing",
                      britshText: """IpaUK: /əˈmeɪzɪŋ/""",
                      americanText: """IpaUS: /əˈmeɪzɪŋ/""",
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
١. (ھاوەڵناو) سەیر و سەرسوڕھێنەر"""),
                    SentencesRow(
                      englishText:
                          "The amazing thing is, he really believes he'll get away with it.",
                      kurdishText:
                          "ئەوەی سەیرە ئەوەیە پێی‌وایە لەمە دەربازی دەبێت.",
                      onPressedBritish: () => speakamazing45555("en-GB"),
                      onPressedAmerican: () => speakamazing45555("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "I find it amazing that people can be so irresponsible.",
                      kurdishText: "لام سەیرە خەڵکی دەکرێت ھێندە نابەرپرس بن.",
                      onPressedBritish: () => speakamazing95314("en-GB"),
                      onPressedAmerican: () => speakamazing95314("en-US"),
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

