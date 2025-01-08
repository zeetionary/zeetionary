import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappoint extends StatefulWidget {
  const EnglishEntryappoint({super.key});

  @override
  State<EnglishEntryappoint> createState() => _EnglishEntryappointState();
}

class _EnglishEntryappointState extends State<EnglishEntryappoint> {
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
- Verb: appoint (derived forms: appoints, appointing, appointed)
1. Create and charge with a task or function (= name, nominate, constitute)
"appoint a committee";
 
2. Assign a duty, responsibility or obligation to (= charge)
"He was appointed deputy manager";
 
3. Furnish
"a beautifully appointed house"
""",
  );
// 188888880002200

  final String keyword = "appoint";
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
    await flutterTts.speak("""appoint""");
  }

  Future<void> speakappoint820(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They have appointed a new head teacher at my son's school.");
  }

  Future<void> speakappoint822(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A date for the meeting is still to be appointed.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '-VRx0GRo-Ws';
    const double startSecondsend = 15;
    const String videoIdone = 'XeJ2vOHaATg';
    const double startSecondsone = 757;
    const String videoIdtwo = 'mICxKmCjF-4';
    const double startSecondstwo = 353;
    const String videoIdthree = '8AeZbgfEgO4';
    const double startSecondsthree = 186;
    const String videoIdfour = 'GegdKMHnxxY';
    const double startSecondsfour = 417;
    const String videoIdfive = 'Aqk-5gvyHCM';
    const double startSecondsfive = 3631;
    // final String _videoId = '9goS1nHM_-E';
    // final double _startSeconds = 490;
    // final String _videoId = '1NUSOVELsd0';
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
                      word: """appoint""",
                      // alsoEnglishWord: "also: appoint",
                      britshText: """IpaUK: /əˈpɔɪnt/""",
                      americanText: """IpaUS: /əˈpɔɪnt/""",
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
١. (کردار) دیاریکردنی کەسێک بۆ کارێک یان بەرپرسیاریەتییەک"""),
                    SentencesRow(
                      englishText:
                          "They have appointed a new head teacher at my son's school.",
                      kurdishText:
                          "بەڕێوبەرێکی تازەیان دیاریکردووە لە قوتابخانەکەی کوڕەکەم.",
                      onPressedBritish: () => speakappoint820("en-GB"),
                      onPressedAmerican: () => speakappoint820("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) دیاریکردنی کات یان شوێنی شتێک"""),
                    SentencesRow(
                      englishText:
                          "A date for the meeting is still to be appointed.",
                      kurdishText:
                          "دیاریکردنی ڕێکەوتێک بۆ کۆبوونەوەکە ھێشتا قسەی لەسەر دەکرێت.",
                      onPressedBritish: () => speakappoint822("en-GB"),
                      onPressedAmerican: () => speakappoint822("en-US"),
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
