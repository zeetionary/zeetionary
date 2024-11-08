import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryambitious extends StatefulWidget {
  const EnglishEntryambitious({super.key});

  @override
  State<EnglishEntryambitious> createState() => _EnglishEntryambitiousState();
}

class _EnglishEntryambitiousState extends State<EnglishEntryambitious> {
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
- Adjective: ambitious 
1. Having a strong desire for success or achievement (= aspirational)
"The Group of Eight rich nations will likely agree to an ambitious target for cutting greenhouse costs";
 
2. Requiring full use of your abilities or resources (= challenging)
"ambitious schedule";
""",
  );
// 188888880002200

  final String keyword = "ambitious";
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
    await flutterTts.speak("""ambitious""");
  }

  Future<void> speakambitious344(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'm not ambitious enough to try for the top.");
  }

  Future<void> speakambitious7666(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The students are all ambitious to do well.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'FVLM3v8FosI';
    const double startSecondsend = 9;
    const String videoIdone = 'bpVd-aCm9po';
    const double startSecondsone = 8;
    const String videoIdtwo = 'utQ1T47_4yE';
    const double startSecondstwo = 17;
    const String videoIdthree = '-Bx4raUusb0';
    const double startSecondsthree = 74;
    const String videoIdfour = '0dJhded2GHY';
    const double startSecondsfour = 1;
    const String videoIdfive = 'MJ1zfidJrzo';
    const double startSecondsfive = 14;
    // final String _videoId = '1iwky6g4gRY';
    // final double _startSeconds = 7;
    // final String _videoId = 'EqBcn-Q5vPM';
    // final double _startSeconds = 332;
    // final String _videoId = 'e0QLQe13gww';
    // final double _startSeconds = 1;
    // final String _videoId = 'mY3SEMTROas';
    // final double _startSeconds = 245;
    // final String _videoId = 'T48_SrFCdaQ';
    // final double _startSeconds = 205;
    // final String _videoId = 'yVGCECHT6Is';
    // final double _startSeconds = 1015;

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
                      word: """ambitious""",
                      // alsoEnglishWord: "also: ambitious",
                      britshText: """IpaUK: /æmˈbɪʃəs/""",
                      americanText: """IpaUS: /æmˈbɪʃəs/""",
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
کوردی: بەرزەفڕ، بەرز(ە)خواز، ھێزخواز، پاوانخواز، باڵاخواز، تەماح‌کار
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) ڕشت لەسەر ئەوەی دەوڵەمەند و سەرکەوتووبیت"""),
                    SentencesRow(
                      englishText:
                          "I'm not ambitious enough to try for the top.",
                      kurdishText: "ھێندە تەماح‌کار نیم ھەوڵ بۆ باشترین بدەم.",
                      onPressedBritish: () => speakambitious344("en-GB"),
                      onPressedAmerican: () => speakambitious344("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "The students are all ambitious to do well.",
                      kurdishText: "خوێنکاران ھەموویان ئامانجیانە باش بن.",
                      onPressedBritish: () => speakambitious7666("en-GB"),
                      onPressedAmerican: () => speakambitious7666("en-US"),
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
