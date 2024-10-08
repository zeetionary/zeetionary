// end again
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryagain extends StatefulWidget {
  const EnglishEntryagain({super.key});

  @override
  State<EnglishEntryagain> createState() => _EnglishEntryagainState();
}

class _EnglishEntryagainState extends State<EnglishEntryagain> {
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
- Adverb: again
1. Another time, repeating (= once again, once more, over again)
"she tried again"; "they rehearsed the scene again"; "she tried once again";
""",
  );
// 188888880002200

  final String keyword = "again";
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
    await flutterTts.speak("""again""");
  }

  Future<void> speakagain493(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This must never happen again.");
  }

  Future<void> speakagai1822(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("If he does it again I'll have to tell him.");
  }

  Future<void> speakagain156(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was glad to be home again.");
  }

  Future<void> speakaga256(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The cost is about half as much again as it was two years ago.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'd0ZJvU2ciBM';
    const double startSecondsend = 134;
    const String videoIdone = 'MBXpB4bDp_o';
    const double startSecondsone = 11;
    const String videoIdtwo = 'AOcczgzRvH0';
    const double startSecondstwo = 151;
    const String videoIdthree = 'x1d4tCLbT04';
    const double startSecondsthree = 19;
    const String videoIdfour = 'vjxDZzA2wUc';
    const double startSecondsfour = 7;

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
                      word: """again""",
                      // alsoEnglishWord: "also: again",
                      britshText: """IpaUK: /əˈɡen/, /əˈɡeɪn/""",
                      americanText: """IpaUS: /əˈɡen/, /əˈɡeɪn/""",
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
کوردی: دیسان، جارێکی تر، دووبارە، ھەمیسان، سەرلەنوێ، لە سەرەتاوە، سەرەڕای ئەوەش، لەگەڵ ئەوەش، تر، دی، دیسانیش
"""),
                    const DefinitionKurdish(text: "١. (ھاوەڵکار) جارێکی تر" ""),
                    SentencesRow(
                      englishText: "This must never happen again.",
                      kurdishText: "ئەمە ئەبێت ھەرگیز ڕوونەداتەوە.",
                      onPressedBritish: () => speakagain493("en-GB"),
                      onPressedAmerican: () => speakagain493("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "If he does it again I'll have to tell him.",
                      kurdishText: "ئەگەر دووبارەی بکاتەوە دەبێت پێی بڵێم.",
                      onPressedBritish: () => speakagai1822("en-GB"),
                      onPressedAmerican: () => speakagai1822("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵکار) پیشاندانی ئەوەی کەسێک لە ھەمان شوێن یان بارودۆخ دەبێت کە پێشووتر لێی بووە"""),
                    SentencesRow(
                      englishText: "He was glad to be home again.",
                      kurdishText: "خۆشحاڵبوو کە دووبارە لە ماڵەوە بوو.",
                      onPressedBritish: () => speakagain156("en-GB"),
                      onPressedAmerican: () => speakagain156("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵکار) زیادبوون بۆ سەر ژمارەیەک"""),
                    SentencesRow(
                      englishText:
                          "The cost is about half as much again as it was two years ago.",
                      kurdishText:
                          "نرخەکەی نیوەی نرخی دوو ساڵ پێش ئێستای خۆی چووەتە سەر.",
                      onPressedBritish: () => speakaga256("en-GB"),
                      onPressedAmerican: () => speakaga256("en-US"),
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
                  // YoutubeEmbeddingWidget(
                  //   key: ValueKey(videoIdfive),
                  //   videoId: videoIdfive,
                  //   startSeconds: startSecondsfive,
                  // ),
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
