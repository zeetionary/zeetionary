import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryagnostic extends StatefulWidget {
  const EnglishEntryagnostic({super.key});

  @override
  State<EnglishEntryagnostic> createState() => _EnglishEntryagnosticState();
}

class _EnglishEntryagnosticState extends State<EnglishEntryagnostic> {
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
- Noun: agnostic (derived forms: agnostics)
1. Someone who is doubtful or noncommittal about something (= doubter)
 
2. A person who claims that they cannot have true knowledge about the existence of God (but does not deny that God might exist)

- Adjective: agnostic
1. Of or pertaining to an agnostic or agnosticism
 
2. Uncertain of all claims to knowledge (= agnostical)
""",
  );
// 188888880002200

  final String keyword = "agnostic";
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
    await flutterTts.speak("""agnostic""");
  }

  Future<void> speakagnos15666(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Although he was raised a Catholic, he was an agnostic for most of his adult life.");
  }

  Future<void> speakag45822(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Whether we are religious, atheist, or agnostic, there are some moral values we all share.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'ekNaONTnZTE';
    const double startSecondsend = 109;
    const String videoIdone = '5rh_QyvDs9A';
    const double startSecondsone = 71;
    const String videoIdtwo = 'uk8TM2DIRcU';
    const double startSecondstwo = 4;
    const String videoIdthree = 'MUY73E-olf0';
    const double startSecondsthree = 231;
    const String videoIdfour = 'OnyTyUU6juA';
    const double startSecondsfour = 1;
    const String videoIdfive = '3DxMSufIIqY';
    const double startSecondsfive = 158;
    // final String _videoId = 'jeyVV9Ckpt4';
    // final double _startSeconds = 25;
    // final String _videoId = 'uCM0Tvp6Dko';
    // final double _startSeconds = 739;

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
                      word: """agnostic""",
                      // alsoEnglishWord: "also: agnostic",
                      britshText: """IpaUK: /æɡˈnɒstɪk/""",
                      americanText: """IpaUS: /æɡˈnɑːstɪk/""",
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
کوردی: نازانم‌بێژ، نازانم‌باوەڕ (= کەسێ کە پێی‌وایە ھیچ شتێ ناتوانرێ دەربارەی بوون یان سروشتی خوداوە (یان دوایین ھۆ) بزانرێ (و لە زانینیش نایەن) بێجگەلە شتە مادی‌یەکان)
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) کەسێک کە باوەڕی وایە ناتوانرێت بزانرێت خودا بوونی ھەیە یان نا"
                            ""),
                    SentencesRow(
                      englishText:
                          "Although he was raised a Catholic, he was an agnostic for most of his adult life.",
                      kurdishText:
                          "ئەگەرچی وەک کاسۆلیکێک گەورە کرا، بەڵام زۆرینەی تەمەنی پێگەشتوویی وەک ئەگنۆستیکێک بەسەربرد.",
                      onPressedBritish: () => speakagnos15666("en-GB"),
                      onPressedAmerican: () => speakagnos15666("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) ھەڵگری باوەڕی ئەگنۆستیکس"""),
                    SentencesRow(
                      englishText:
                          "Whether we are religious, atheist, or agnostic, there are some moral values we all share.",
                      kurdishText:
                          "ئەوەی کە ئایینی، بێدین، یان ئەگنۆستیک بوو نازانرێت.",
                      onPressedBritish: () => speakag45822("en-GB"),
                      onPressedAmerican: () => speakag45822("en-US"),
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
