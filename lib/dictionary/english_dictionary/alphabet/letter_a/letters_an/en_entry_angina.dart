import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryangina extends StatefulWidget {
  const EnglishEntryangina({super.key});

  @override
  State<EnglishEntryangina> createState() => _EnglishEntryanginaState();
}

class _EnglishEntryanginaState extends State<EnglishEntryangina> {
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
- Noun: angina (derived forms: anginas)
1. Any disease of the throat or fauces marked by spasmodic attacks of intense suffocative pain
 
2. A heart condition marked by paroxysms of chest pain due to reduced oxygen to the heart (= angina pectoris)
""",
  );
// 188888880002200

  final String keyword = "angina";
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
    await flutterTts.speak("""angina""");
  }

  Future<void> speakangina440(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("If you experience angina while exercising, stop.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'u6xKEKkkvKk';
    const double startSecondsend = 51;
    const String videoIdone = 'HgF52E8jk7g';
    const double startSecondsone = 97;
    const String videoIdtwo = 'eYM7rt8Fhv8';
    const double startSecondstwo = 126;
    const String videoIdthree = '3Pz-5X-wxc0';
    const double startSecondsthree = 5;
    const String videoIdfour = 'x_15xUSUR68';
    const double startSecondsfour = 1;
    const String videoIdfive = 'd0ItVdi8Jkg';
    const double startSecondsfive = 147;
    // final String _videoId = '8ipbkwzyO_8';
    // final double _startSeconds = 595;
    // final String _videoId = 'IrStg3cn2u0';
    // final double _startSeconds = 157;
    // final String _videoId = 'qknPk0nICkE';
    // final double _startSeconds = 267;
    // final String _videoId = 'FqmXdU5w6E4';
    // final double _startSeconds = 155;
    // final String _videoId = 'm3DvyRrJDYE';
    // final double _startSeconds = 65;

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
                      word: """angina""",
                      // alsoEnglishWord: "also: angina",
                      britshText: """IpaUK: /ænˈdʒaɪnə/""",
                      americanText: """IpaUS: /ænˈdʒaɪnə/""",
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
کوردی: سنگ‌ئێشە، ژانەسنگ، گەرووئێشە، دووشاخە، ماسینی گەروو، وەناق، ئەنژین
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) ژانەسگ بەھۆی کەمی چوونی خوێن بۆ دڵ"""),
                    SentencesRow(
                      englishText:
                          "If you experience angina while exercising, stop.",
                      kurdishText:
                          "ئەگەر تووشی سنگ‌ئێشە دەبیت لە کاتی ڕاھێنان، بوەستە.",
                      onPressedBritish: () => speakangina440("en-GB"),
                      onPressedAmerican: () => speakangina440("en-US"),
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

