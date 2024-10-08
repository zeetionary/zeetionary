// end ailing
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryailing extends StatefulWidget {
  const EnglishEntryailing({super.key});

  @override
  State<EnglishEntryailing> createState() => _EnglishEntryailingState();
}

class _EnglishEntryailingState extends State<EnglishEntryailing> {
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
- Adjective: ailing 
1. Somewhat ill, feeling or being in bad health (= indisposed, peaked, poorly, sickly, unwell, under the weather [informal], seedy [archaic], off-colour [Brit, informal], out of sorts [informal], grotty [Brit, informal], crook [Austral, NZ, informal])
"my poor ailing grandmother";
""",
  );
// 188888880002200

  final String keyword = "ailing";
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
    await flutterTts.speak("""ailing""");
  }

  Future<void> speakailing25388(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She looked after her ailing father.");
  }

  Future<void> speakailing4899956(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Ted asked me if I could help him fix his ailing car.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'owVtsJ56WXE';
    const double startSecondsend = 1;
    const String videoIdone = '6QGtKkpJlV8';
    const double startSecondsone = 1;
    const String videoIdtwo = 'x6btmJSRueE';
    const double startSecondstwo = 356;
    const String videoIdthree = 'l6PlMpncVuc';
    const double startSecondsthree = 194;
    const String videoIdfour = 'NIgqhU4lkgo';
    const double startSecondsfour = 891;
    const String videoIdfive = 'OXhEBfK3Njc';
    const double startSecondsfive = 151;
    // final String _videoId = 'D9s5Brovelc';
    // final double _startSeconds = 794;
    // final String _videoId = 'Q97K6CDje3w';
    // final double _startSeconds = 53;

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
                      word: """ailing""",
                      // alsoEnglishWord: "also: ailing",
                      britshText: """IpaUK: /ˈeɪlɪŋ/""",
                      americanText: """IpaUS: /ˈeɪlɪŋ/""",
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
کوردی: نەخۆش، ناساخ، سیسەڵە، دەردەدار، لاواز، بێ‌بازاڕ
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) نەخۆش بەبێ باشتربوون" ""),
                    SentencesRow(
                      englishText: "She looked after her ailing father.",
                      kurdishText: "چاودێری باوکە ناساخەکەی دەکات.",
                      onPressedBritish: () => speakailing25388("en-GB"),
                      onPressedAmerican: () => speakailing25388("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) شتێک کە لە بارودۆخێکی باش نییە"""),
                    SentencesRow(
                      englishText:
                          "Ted asked me if I could help him fix his ailing car.",
                      kurdishText:
                          "تێد داوای لێ‌کردم کە یارمەتی بدەم ئۆتۆمبێلە داشقەکەی چاکبکاتەوە.",
                      onPressedBritish: () => speakailing4899956("en-GB"),
                      onPressedAmerican: () => speakailing4899956("en-US"),
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

