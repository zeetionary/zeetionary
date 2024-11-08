import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaltitude extends StatefulWidget {
  const EnglishEntryaltitude({super.key});

  @override
  State<EnglishEntryaltitude> createState() => _EnglishEntryaltitudeState();
}

class _EnglishEntryaltitudeState extends State<EnglishEntryaltitude> {
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
- Noun: altitude (derived forms: altitudes)
1. Elevation especially above sea level or above the earth's surface (= height)
"the altitude gave her a headache";
 
2. The perpendicular distance from the base of a geometric figure to the opposite vertex (or side if parallel)
 
3. Angular distance above the horizon (especially of a celestial object) (= elevation, EL, ALT)
""",
  );
// 188888880002200

  final String keyword = "altitude";
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
    await flutterTts.speak("""altitude""");
  }

  Future<void> speakaltitude222(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We are flying at an altitude of 6 000 metres.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'Lqjl1Bz56zY';
    const double startSecondsend = 127;
    const String videoIdone = 'wSZrU2kJWGM';
    const double startSecondsone = 28;
    const String videoIdtwo = 'Wi2KKtnLDyI';
    const double startSecondstwo = 405;
    const String videoIdthree = 'a8BhszJOVjo';
    const double startSecondsthree = 120;
    const String videoIdfour = 'A2EoUUZNjpY';
    const double startSecondsfour = 138;
    const String videoIdfive = '33N9KW86yVM';
    const double startSecondsfive = 7;
    // final String _videoId = '2cBYviyc3x0';
    // final double _startSeconds = 21;
    // final String _videoId = 'p2WdRK6lW0o';
    // final double _startSeconds = 35;
    // final String _videoId = 'ReQjbI6wpeI';
    // final double _startSeconds = 28;
    // final String _videoId = '6hNu-fklBks';
    // final double _startSeconds = 1;
    // final String _videoId = 'SzPynrSYOaw';
    // final double _startSeconds = 27;

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
                      word: """altitude""",
                      // alsoEnglishWord: "also: altitude",
                      britshText: """IpaUK: /ˈæltɪtjuːd/""",
                      americanText: """IpaUS: /ˈæltɪtjuːd/""",
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
کوردی: بەرزایی، بەرزی، بڵیندایی، گڤاندە
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) بەرزایی لە سەروو ئاستی دەریا" ""),
                    SentencesRow(
                      englishText:
                          "We are flying at an altitude of 6 000 metres.",
                      kurdishText: "لە بەرزی ٦٠٠٠ مەتردا دەفڕین.",
                      onPressedBritish: () => speakaltitude222("en-GB"),
                      onPressedAmerican: () => speakaltitude222("en-US"),
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

