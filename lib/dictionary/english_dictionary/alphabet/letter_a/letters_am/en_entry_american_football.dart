import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamericanfootball extends StatefulWidget {
  const EnglishEntryamericanfootball({super.key});

  @override
  State<EnglishEntryamericanfootball> createState() => _EnglishEntryamericanfootballState();
}

class _EnglishEntryamericanfootballState extends State<EnglishEntryamericanfootball> {
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
- Noun: American football
1. A game played by two teams of 11 players on a rectangular field 100 yards long; teams try to get possession of the ball and advance it across the opponents goal line in a series of (running or passing) plays (= American football game)
""",
  );
// 188888880002200

  final String keyword = "American football";
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
    await flutterTts.speak("""American football""");
  }


  Future<void> speakamericanfootball45777(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("American Football doesn't interest me at all.");
  }
  
  @override
  Widget build(BuildContext context) {

  const String videoIdend = 'OVM9tbIbtN4';
  const double startSecondsend = 164;
  const String videoIdone = 'BAUKC8wFgik';
  const double startSecondsone = 266;
  const String videoIdtwo = 'uM9iLQJzMO0';
  const double startSecondstwo = 30;
  const String videoIdthree = 'nj9vm6r-Tu8';
  const double startSecondsthree = 1;
  const String videoIdfour = 'r_iNRGac_uM';
  const double startSecondsfour = 248;
  const String videoIdfive = 'ifhY_AHbSRA';
  const double startSecondsfive = 188;
  // final String _videoId = 'iX4JVcGjfP8';
  // final double _startSeconds = 73;
  // final String _videoId = 'pJ_LUFBSoqM';
  // final double _startSeconds = 44;
  // final String _videoId = 'BUz_0DM7F48';
  // final double _startSeconds = 897;
  // final String _videoId = '6P77DBlKHE0';
  // final double _startSeconds = 357;

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
                      word: """American football""",
                      // alsoEnglishWord: "also: American football",
                      britshText: """IpaUK: /əˌmerɪkən ˈfʊtbɔːl/""",
                      americanText: """IpaUS: /əˌmerɪkən ˈfʊtbɔːl/""",
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
١. (ناو) یارییەک کە لەلایەن دوو تیمی ١١ کەسی دەکرێت بە تۆپێکی ھێلکەیی کە یاریزانان ھەوڵ دەدەن تێی ھەڵبدەن، بیھاوێژن، یان ھەڵیبگرن، و بیخەنە ھێڵی تیمی بەرامبەر"""),
                          SentencesRow(
                            englishText:
                                "American Football doesn't interest me at all.",
                            kurdishText: "ھیچ حەزم بە تۆپێنی ئەمریکی نییە.",
                            onPressedBritish: () =>
                                speakamericanfootball45777("en-GB"),
                            onPressedAmerican: () =>
                                speakamericanfootball45777("en-US"),
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


