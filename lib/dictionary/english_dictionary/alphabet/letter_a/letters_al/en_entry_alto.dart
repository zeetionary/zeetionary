import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalto extends StatefulWidget {
  const EnglishEntryalto({super.key});

  @override
  State<EnglishEntryalto> createState() => _EnglishEntryaltoState();
}

class _EnglishEntryaltoState extends State<EnglishEntryalto> {
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
- Adjective: alto 
1. Of or being the lowest female voice (= contralto)
 
2. Of or being the highest male voice; having a range above that of tenor (= countertenor)
 
3. (of a musical instrument) second highest member of a group
"alto clarinet or recorder"

- Noun: alto (derived forms: altos)
1. A singer whose voice lies in the alto clef
 
2. The lowest female singing voice (= contralto)
 
3. The highest adult male singing voice (= countertenor)
 
4. (of a musical instrument) the second highest instrument in a family of musical instruments
 
5. The pitch range of the lowest female voice
""",
  );
// 188888880002200

  final String keyword = "alto";
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
    await flutterTts.speak("""alto""");
  }

  Future<void> speakalto4565(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She began by singing soprano, then changed to alto.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'YWHZqhfLTTs';
    const double startSecondsend = 7;
    const String videoIdone = '96F5CgEIIbs';
    const double startSecondsone = 113;
    const String videoIdtwo = 'fprLGuGyRJE';
    const double startSecondstwo = 3;
    const String videoIdthree = 'oMH286AE7Gc';
    const double startSecondsthree = 51;
    const String videoIdfour = '-hrbn2e16Rg';
    const double startSecondsfour = 1;
    const String videoIdfive = 'qW0tE4D6x-M';
    const double startSecondsfive = 200;
    // final String _videoId = 'WxNGO7FwTWc';
    // final double _startSeconds = 382;
    // final String _videoId = '87y1_IbJRZE';
    // final double _startSeconds = 406;
    // final String _videoId = 'MHkmeDQNBJ0';
    // final double _startSeconds = 77;
    // final String _videoId = 'zRokDjsES0c';
    // final double _startSeconds = 229;
    // final String _videoId = 'xFFs9UgOAlE';
    // final double _startSeconds = 3073;
    // final String _videoId = 'peZzbo26fzc';
    // final double _startSeconds = 885;

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
                      word: """alto""",
                      // alsoEnglishWord: "also: alto",
                      britshText: """IpaUK: /ˈæltəʊ/""",
                      americanText: """IpaUS: /ˈæltəʊ/""",
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
١. (ناو) دەنگێکی گۆرانی وتن کە نزمترە لە سۆپرانۆ (بەرزترین ئاست)، کەسێک کە بەم شێوەیە گۆرانی دەڵێت"""),
                    SentencesRow(
                      englishText:
                          "She began by singing soprano, then changed to alto.",
                      kurdishText:
                          "دەستی پێکرد بە چڕینی سۆپرانۆ، و دواتر گۆڕی بۆ ئالتۆ.",
                      onPressedBritish: () => speakalto4565("en-GB"),
                      onPressedAmerican: () => speakalto4565("en-US"),
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

