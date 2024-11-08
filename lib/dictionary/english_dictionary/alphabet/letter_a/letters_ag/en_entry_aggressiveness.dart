import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaggressiveness extends StatefulWidget {
  const EnglishEntryaggressiveness({super.key});

  @override
  State<EnglishEntryaggressiveness> createState() =>
      _EnglishEntryaggressivenessState();
}

class _EnglishEntryaggressivenessState
    extends State<EnglishEntryaggressiveness> {
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
- Noun: aggressiveness
1. The quality of being bold and enterprising
 
2. A feeling of hostility that arouses thoughts of attack (= aggression)
 
3. A natural disposition to be hostile (= belligerence, pugnacity, pugnaciousness)
""",
  );
// 188888880002200

  final String keyword = "aggressiveness";
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
    await flutterTts.speak("""aggressiveness""");
  }

  Future<void> speakaggressiv3749(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Our addiction to oil feeds belligerence, aggressiveness, and war. Wherever oil is drilled, people are killed for profit.");
  }

  Future<void> speakaggressive4699(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Her talent and aggressiveness make her a tennis star of the future.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'mXqDdgiz_MM';
    const double startSecondsend = 97;
    const String videoIdone = 'BD44SVoCIFo';
    const double startSecondsone = 240;
    const String videoIdtwo = 'fYJvJ3FOL3o';
    const double startSecondstwo = 976;
    const String videoIdthree = 'kw9Bd96c1ug';
    const double startSecondsthree = 867;
    const String videoIdfour = 'V7kXMTflQKU';
    const double startSecondsfour = 159;
    const String videoIdfive = 'NRdcrrO35bU';
    const double startSecondsfive = 906;
    // final String _videoId = 'nBYhHDpkUgM';
    // final double _startSeconds = 2558;

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
                      word: """aggressiveness""",
                      // alsoEnglishWord: "also: aggressiveness",
                      britshText: """IpaUK: /əˈɡresɪvnəs/""",
                      americanText: """IpaUS: /əˈɡresɪvnəs/""",
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
کوردی: دەس‌درێژی، دەساوێژی، شەڕان‌خوویی، دڕی
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) شەڕەنخوازی و توندوتیژی" ""),
                    SentencesRow(
                      englishText:
                          "Our addiction to oil feeds belligerence, aggressiveness, and war. Wherever oil is drilled, people are killed for profit.",
                      kurdishText:
                          "خووگرتنمان بە نەوت تەنھا دوژمنایەتی و توندوتیژی و شەڕی لێ دەکەوێتەوە. لە ھەرکوێ نەوت دەربھێندرێت، خەڵکی بۆ پارە دەکوژرێن.",
                      onPressedBritish: () => speakaggressiv3749("en-GB"),
                      onPressedAmerican: () => speakaggressiv3749("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) سەرسەختی لە ھەوڵدان بۆ سەرکەوتن"""),
                    SentencesRow(
                      englishText:
                          "Her talent and aggressiveness make her a tennis star of the future.",
                      kurdishText:
                          "بەھرە و سەرسەختیی بۆ سەرکەوتن وا دەکات ببێت بە ئەستێرەیەکی تێنس لە داھاتوودا.",
                      onPressedBritish: () => speakaggressive4699("en-GB"),
                      onPressedAmerican: () => speakaggressive4699("en-US"),
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
