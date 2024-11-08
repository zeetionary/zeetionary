import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaloft extends StatefulWidget {
  const EnglishEntryaloft({super.key});

  @override
  State<EnglishEntryaloft> createState() => _EnglishEntryaloftState();
}

class _EnglishEntryaloftState extends State<EnglishEntryaloft> {
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
- Adverb: aloft
1. At or on or to the masthead or upper rigging of a ship
"climbed aloft to unfurl the sail"
 
2. Upward
"the good news sent her spirits aloft"
 
3. At or to great height; high up in or into the air
"eagles were soaring aloft"; "dust is whirled aloft"
 
4. In the higher atmosphere above the earth
"weather conditions aloft are fine"
""",
  );
// 188888880002200

  final String keyword = "aloft";
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
    await flutterTts.speak("""aloft""");
  }

  Future<void> speakaloft4256(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She held the glass aloft.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'LqU9CdPs6ek';
    const double startSecondsend = 155;
    const String videoIdone = '3oBCtTv6yOw';
    const double startSecondsone = 272;
    const String videoIdtwo = 'ElQdUHSXkME';
    const double startSecondstwo = 313;
    const String videoIdthree = 'yio2JNgQKBM';
    const double startSecondsthree = 770;
    const String videoIdfour = 'V1o_jEplpmw';
    const double startSecondsfour = 671;
    const String videoIdfive = 'Uc8VE1KS9GI';
    const double startSecondsfive = 576;
    // final String _videoId = 'ZjBgEkbnX2I';
    // final double _startSeconds = 217;
    // final String _videoId = 'j1pE4DJqRWw';
    // final double _startSeconds = 308;
    // final String _videoId = 'WeuZRrLmLDI';
    // final double _startSeconds = 669;
    // final String _videoId = 'TSfd8kJU8XE';
    // final double _startSeconds = 165;

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
                      word: """aloft""",
                      // alsoEnglishWord: "also: aloft",
                      britshText: """IpaUK: /əˈlɒft/""",
                      americanText: """IpaUS: /əˈlɔːft/""",
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
کوردی: لەحەوا، لە سەروو، لە ژوور، ژوورسەروو، بان، لە فڕین‌دا، بەسەر داراڵای کەشتی لەسەرووی پشتی کەشتی
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) لە حەوادا"""),
                    SentencesRow(
                      englishText: "She held the glass aloft.",
                      kurdishText: "گڵاسەکەی لەحەوادا گرت.",
                      onPressedBritish: () => speakaloft4256("en-GB"),
                      onPressedAmerican: () => speakaloft4256("en-US"),
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

