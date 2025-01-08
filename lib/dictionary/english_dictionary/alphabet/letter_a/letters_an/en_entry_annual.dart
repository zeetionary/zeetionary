import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryannual extends StatefulWidget {
  const EnglishEntryannual({super.key});

  @override
  State<EnglishEntryannual> createState() => _EnglishEntryannualState();
}

class _EnglishEntryannualState extends State<EnglishEntryannual> {
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
- Adjective: annual  
1. (botany) completing its life cycle within a year (= one-year)
"a border of annual flowering plants";

2. Occurring or payable every year (= yearly)
"an annual trip to Paris"; "annual income";

- Noun: annual (derived forms: annuals)
1. (botany) a plant that completes its entire life cycle within the space of a year
 
2. A reference book that is published regularly once every year (= yearly, yearbook)
""",
  );
// 188888880002200

  final String keyword = "annual";
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
    await flutterTts.speak("""annual""");
  }

  Future<void> speakannual817(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She organized this year's annual Christmas dinner dance.");
  }

  Future<void> speakannual819(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Companies publish annual reports to inform the public about the previous year's activities.");
  }

  Future<void> speakannual821(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I have decided to take my annual leave to be with my wife and baby.");
  }

  Future<void> speakannual829(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The children usually asked for comic or sporting annuals for Christmas.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'AAGIi62-sAU';
    const double startSecondsend = 605;
    const String videoIdone = 'YRhqMWUH2Ig';
    const double startSecondsone = 1354;
    const String videoIdtwo = '092PIJKKgFo';
    const double startSecondstwo = 467;
    const String videoIdthree = 'sAiTuitN5b8';
    const double startSecondsthree = 242;
    const String videoIdfour = '-I6YmMAThZ8';
    const double startSecondsfour = 13;
    const String videoIdfive = 'GVsUOuSjvcg';
    const double startSecondsfive = 666;
    // final String _videoId = 'TJvHHgGerJg';
    // final double _startSeconds = 1003;
    // final String _videoId = 'y4DTW4B3Sjs';
    // final double _startSeconds = 1316;
    // final String _videoId = 'CupbRr2m_sM';
    // final double _startSeconds = 255;

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
                      word: """annual""",
                      // alsoEnglishWord: "also: annual",
                      britshText: """IpaUK: /ˈænjuəl/""",
                      americanText: """IpaUS: /ˈænjuəl/""",
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
کوردی: ساڵانە، ساڵی، ساڵیانە، یەک‌ساڵە، ھەر ساڵ، یەک‌ساڵە، یەک‌ساڵەژی، ساڵنامە، ڕووەک یان گیای یەک‌ساڵە
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) شتێک کە ساڵی جارێک ڕووبدات"""),
                    SentencesRow(
                      englishText:
                          "She organized this year's annual Christmas dinner dance.",
                      kurdishText:
                          "سەمای ساڵانەی ئێوارەی کریسمسی بۆ ئەمساڵ ڕێکخست.",
                      onPressedBritish: () => speakannual817("en-GB"),
                      onPressedAmerican: () => speakannual817("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "Companies publish annual reports to inform the public about the previous year's activities.",
                      kurdishText:
                          "کۆمپانیاکان ڕاپۆرتی ساڵانە بڵاودەکەنەوە بۆ ئەوەی ڕای‌ گشتی ئاگاداربکەنەوە سەبارەت بە چالاکییەکانی ساڵی پێشوویان.",
                      onPressedBritish: () => speakannual819("en-GB"),
                      onPressedAmerican: () => speakannual819("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) بۆ ماوەی یەک ساڵ"""),
                    SentencesRow(
                      englishText:
                          "I have decided to take my annual leave to be with my wife and baby.",
                      kurdishText:
                          "بڕیارم‌داوە مۆڵەتی ساڵانەم وەربگرم بۆ ئەوەی لەگەڵ ژنەکەم و منداڵەکەم بم.",
                      onPressedBritish: () => speakannual821("en-GB"),
                      onPressedAmerican: () => speakannual821("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) کتێبێک کە بۆ منداڵانە و ساڵی جارێک بە ھەمان ناونیشان بەڵام ناوەڕۆکی جیاواز بڵاودەبێتەوە"""),
                    SentencesRow(
                      englishText:
                          "The children usually asked for comic or sporting annuals for Christmas.",
                      kurdishText:
                          "منداڵەکان زۆرجار داوای کتێبی کۆمیک یان وەرزشییان دەکرد بۆ کریسمس.",
                      onPressedBritish: () => speakannual829("en-GB"),
                      onPressedAmerican: () => speakannual829("en-US"),
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


