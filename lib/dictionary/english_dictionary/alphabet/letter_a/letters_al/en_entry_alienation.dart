import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalienation extends StatefulWidget {
  const EnglishEntryalienation({super.key});

  @override
  State<EnglishEntryalienation> createState() => _EnglishEntryalienationState();
}

class _EnglishEntryalienationState extends State<EnglishEntryalienation> {
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
- Noun: alienation (derived forms: alienations)
1. The feeling of being alienated from other people (= disaffection, estrangement)
 
2. Separation resulting from hostility (= estrangement)
 
3. (law) the voluntary and absolute transfer of title and possession of real property from one person to another
"the power of alienation is an essential ingredient of ownership"
 
4. The action of alienating; the action of causing to become unfriendly
""",
  );
// 188888880002200

  final String keyword = "alienation";
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
    await flutterTts.speak("""alienation""");
  }

  Future<void> speakalienation73555(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The new policy resulted in the alienation of many voters.");
  }

  Future<void> speakalienation422121(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Many young people suffer from a sense of alienation.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'ezBJ3954mKw';
    const double startSecondsend = 155;
    const String videoIdone = 'LKcFELuhWNo';
    const double startSecondsone = 1;
    const String videoIdtwo = 'wmTXqRf5V-Y';
    const double startSecondstwo = 270;
    const String videoIdthree = 'BOdca_kJimE';
    const double startSecondsthree = 485;
    const String videoIdfour = 'ankXS-bCrgQ';
    const double startSecondsfour = 554;
    const String videoIdfive = 'WfivkjgGdmI';
    const double startSecondsfive = 540;
    // final String _videoId = 'DGujsKb2e10';
    // final double _startSeconds = 235;
    // final String _videoId = '3xzYkcJdmUE';
    // final double _startSeconds = 986;

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
                      word: """alienation""",
                      // alsoEnglishWord: "also: alienation",
                      britshText: """IpaUK: /ˌeɪliəˈneɪʃn/""",
                      americanText: """IpaUS: /ˌeɪliəˈneɪʃn/""",
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
کوردی: بیانێتی، بێگانەیی، نامۆیی، لاتەریکی، گۆشەگیری، تەنیایی، لەخونامۆبوون، خۆلێ‌گۆڕان، لەخۆبوونەوە، بێ‌خۆیی، ڕاگوێستن، بەنێوکردن، فرۆشتن، (دەروون‌ناسی) شێتی
"""),
                    const DefinitionKurdish(text: "١. (ناو) دوورەپەرێزبوون" ""),
                    SentencesRow(
                      englishText:
                          "The new policy resulted in the alienation of many voters.",
                      kurdishText: "سیاسەتە تازەکە زۆر دەنگدەری وەلاخست.",
                      onPressedBritish: () => speakalienation73555("en-GB"),
                      onPressedAmerican: () => speakalienation73555("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ھەستی نامۆیی؛ ئەوەی کە لە شوێنی گونجاوی خۆت نیت"""),
                    SentencesRow(
                      englishText:
                          "Many young people suffer from a sense of alienation.",
                      kurdishText:
                          "زۆر کەسی گەنج بەدەست ھەستی نامۆیی دەناڵێنن.",
                      onPressedBritish: () => speakalienation422121("en-GB"),
                      onPressedAmerican: () => speakalienation422121("en-US"),
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
