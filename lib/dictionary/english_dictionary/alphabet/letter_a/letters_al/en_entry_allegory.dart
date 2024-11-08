import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryallegory extends StatefulWidget {
  const EnglishEntryallegory({super.key});

  @override
  State<EnglishEntryallegory> createState() => _EnglishEntryallegoryState();
}

class _EnglishEntryallegoryState extends State<EnglishEntryallegory> {
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
- Noun: allegory (derived forms: allegories)
1. A short moral story (often with animal characters) (= fable, parable, apologue, exemplum)
 
2. A visible symbol representing an abstract idea (= emblem)
 
3. An expressive style that uses fictional characters and events to describe some subject by suggestive resemblances; an extended metaphor
""",
  );
// 188888880002200

  final String keyword = "allegory";
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
    await flutterTts.speak("""allegory""");
  }

  Future<void> speakallegory3566(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The play can be read as allegory.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'xOULKUK07kU';
    const double startSecondsend = 23;
    const String videoIdone = '_vQj3xtWa5A';
    const double startSecondsone = 42;
    const String videoIdtwo = '6dp8BcJuGnQ';
    const double startSecondstwo = 226;
    const String videoIdthree = 'MBl4eTzznSw';
    const double startSecondsthree = 1;
    const String videoIdfour = 'ZLNWpd_f4wE';
    const double startSecondsfour = 269;
    const String videoIdfive = 'm5XPJyhyqOs';
    const double startSecondsfive = 78;
    // final String _videoId = 'hwRni344t84';
    // final double _startSeconds = 213;
    // final String _videoId = 'Qk4ZWM3JFaI';
    // final double _startSeconds = 778;
    // final String _videoId = 'rosXoHCBxZc';
    // final double _startSeconds = 508;

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
                      word: """allegory""",
                      // alsoEnglishWord: "also: allegory",
                      britshText: """IpaUK: /ˈæləɡəri/""",
                      americanText: """IpaUS: /ˈæləɡɔːri/""",
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
کوردی: چیروکی ھێمایی، ھێماچیرۆک، چیرۆما (چیرۆک + ھێما)، ھێرۆک (ھێما + چیرۆک)، ھێما، نیشانە، خوازە
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) چیرۆکێک کە تێیدا ھەر کارەکتەرێک سمبولە بۆ بیرۆکەیەک یان چەمکێک"
                            ""),
                    SentencesRow(
                      englishText: "The play can be read as allegory.",
                      kurdishText: "شانۆکە دەکرێت وەک ھێرۆک ببینرێت.",
                      onPressedBritish: () => speakallegory3566("en-GB"),
                      onPressedAmerican: () => speakallegory3566("en-US"),
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

