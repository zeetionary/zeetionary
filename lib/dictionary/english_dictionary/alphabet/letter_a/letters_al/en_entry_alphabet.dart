import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalphabet extends StatefulWidget {
  const EnglishEntryalphabet({super.key});

  @override
  State<EnglishEntryalphabet> createState() => _EnglishEntryalphabetState();
}

class _EnglishEntryalphabetState extends State<EnglishEntryalphabet> {
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
- Noun: alphabet (derived forms: alphabets)
1. A character set that includes letters and is used to write a language (= ABC, ABC's, ABCs)
 
2. The elementary stages of any subject (usually plural) (= rudiments, first principles, elements)
""",
  );
// 188888880002200

  final String keyword = "alphabet";
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
    await flutterTts.speak("""alphabet""");
  }

  Future<void> speakalphabet4721(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Alpha is the first letter of the Greek alphabet.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '783EsrHchXA';
    const double startSecondsend = 1;
    const String videoIdone = '83YOia5cegA';
    const double startSecondsone = 1;
    const String videoIdtwo = '67JzSRnyXr4';
    const double startSecondstwo = 179;
    const String videoIdthree = 'KN4mysljHYc';
    const double startSecondsthree = 22;
    const String videoIdfour = 'zUrDUxh5xS0';
    const double startSecondsfour = 47;
    const String videoIdfive = '7BUIfsKe4c0';
    const double startSecondsfive = 17;
    // final String _videoId = 'ezEdMZhA5jk';
    // final double _startSeconds = 9;
    // final String _videoId = 'Gr7Cs6ETjWI';
    // final double _startSeconds = 123;
    // final String _videoId = 'lgHFaUl-OHE';
    // final double _startSeconds = 1;
    // final String _videoId = 'vZoYlEg1irk';
    // final double _startSeconds = 22;
    // final String _videoId = '_RIX6j10nJU';
    // final double _startSeconds = 22;
    // final String _videoId = '2XGuSlGMphY';
    // final double _startSeconds = 20;

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
                      word: """alphabet""",
                      // alsoEnglishWord: "also: alphabet",
                      britshText: """IpaUK: /ˈælfəbet/""",
                      americanText: """IpaUS: /ˈælfəbet/""",
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
کوردی: ئاوبێ، ئەلفوبێ، ئەلفابێت، پیتەمەنی، بنەماکان، سەرەتاکان
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) ئەلفیبێی زمانێک"""),
                    SentencesRow(
                      englishText:
                          "Alpha is the first letter of the Greek alphabet.",
                      kurdishText: "ئەلفا یەکەم پیتی ئەلفوبێی یۆنانییە.",
                      onPressedBritish: () => speakalphabet4721("en-GB"),
                      onPressedAmerican: () => speakalphabet4721("en-US"),
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

