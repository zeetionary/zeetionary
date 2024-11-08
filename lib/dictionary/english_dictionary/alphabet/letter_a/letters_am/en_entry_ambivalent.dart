import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryambivalent extends StatefulWidget {
  const EnglishEntryambivalent({super.key});

  @override
  State<EnglishEntryambivalent> createState() => _EnglishEntryambivalentState();
}

class _EnglishEntryambivalentState extends State<EnglishEntryambivalent> {
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
- Adjective: ambivalent  
1. Uncertain or unable to decide about what course to follow
"was ambivalent about having children"
""",
  );
// 188888880002200

  final String keyword = "ambivalent";
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
    await flutterTts.speak("""ambivalent""");
  }

  Future<void> speakambivalent4633(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She seems to feel ambivalent about her new job.");
  }

  Future<void> speakambivalent46777(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The party's position on nuclear weapons is deeply ambivalent.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'i-8lMiG32N4';
    const double startSecondsend = 1;
    const String videoIdone = 'Sbp_EeBk-As';
    const double startSecondsone = 1358;
    const String videoIdtwo = '0J3RQCVXLcA';
    const double startSecondstwo = 247;
    const String videoIdthree = 'o8F2ZKZ5XsQ';
    const double startSecondsthree = 692;
    const String videoIdfour = 'YDvXOHjV4UM';
    const double startSecondsfour = 674;
    const String videoIdfive = 'FiOU5peDFDQ';
    const double startSecondsfive = 146;
    // final String _videoId = '_637LY0s3Qs';
    // final double _startSeconds = 330;
    // final String _videoId = 'CuIYD-zTEDc';
    // final double _startSeconds = 335;
    // final String _videoId = 'ytMNr9gLqE4';
    // final double _startSeconds = 920;
    // final String _videoId = 'd_P2XDDcPc0';
    // final double _startSeconds = 234;
    // final String _videoId = '0tYm41hb48o';
    // final double _startSeconds = 4762;
    // final String _videoId = 'X8CD2QEYo6Q';
    // final double _startSeconds = 1547;

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
                      word: """ambivalent""",
                      // alsoEnglishWord: "also: ambivalent",
                      britshText: """IpaUK: /æmˈbɪvələnt/""",
                      americanText: """IpaUS: /æmˈbɪvələnt/""",
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
کوردی: دوودڵ، دڕدۆنگ، بەشک، ڕاڕا، وازی‌وازی، تاوتاو، دڵاودڵ، دژبەیەک، پێک‌ناکۆک، پێک‌دژ، یەک‌نەگرەوە، دوولا(یەنە)گەر
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) دوودڵ، ھەبوونی ھەستی ئەرێنی و ەرێنی لە یەک کاتدا"
                            ""),
                    SentencesRow(
                      englishText:
                          "She seems to feel ambivalent about her new job.",
                      kurdishText:
                          "وادیاربوو دوودڵ بێت سەبارەت بە کارە تازەکەی.",
                      onPressedBritish: () => speakambivalent4633("en-GB"),
                      onPressedAmerican: () => speakambivalent4633("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "The party's position on nuclear weapons is deeply ambivalent.",
                      kurdishText:
                          "ھەڵوێستی پارتەکە سەبارەت بە چەکی ئەتۆمی پێک‌دژانەیە.",
                      onPressedBritish: () => speakambivalent46777("en-GB"),
                      onPressedAmerican: () => speakambivalent46777("en-US"),
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
