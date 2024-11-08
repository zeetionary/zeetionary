// end alimentary canal
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalimentarycanal extends StatefulWidget {
  const EnglishEntryalimentarycanal({super.key});

  @override
  State<EnglishEntryalimentarycanal> createState() =>
      _EnglishEntryalimentarycanalState();
}

class _EnglishEntryalimentarycanalState
    extends State<EnglishEntryalimentarycanal> {
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
- Noun: alimentary canal (derived forms: alimentary canals)
1. Tubular passage of mucous membrane and muscle extending about 8.3 meters from mouth to anus; functions in digestion and elimination (= alimentary tract, digestive tube, digestive tract, gastrointestinal tract, GI tract)
""",
  );
// 188888880002200

  final String keyword = "alimentary canal";
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
    await flutterTts.speak("""alimentary canal""");
  }

  Future<void> speakalimentarycanal42588(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I had an abscess in the lower part of my alimentary canal.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'BMoF4iupwfw';
    const double startSecondsend = 91;
    const String videoIdone = 'eQzeHYI3Q7Q';
    const double startSecondsone = 257;
    const String videoIdtwo = 'dqJ2fk29NZA';
    const double startSecondstwo = 649;
    const String videoIdthree = 'sy9ztJuZu2c';
    const double startSecondsthree = 44;
    const String videoIdfour = 'iqkxmGN-Fek';
    const double startSecondsfour = 613;
    const String videoIdfive = 'fsqTowzxzK8';
    const double startSecondsfive = 129;
    // final String _videoId = 'WWpRX7g_qvo';
    // final double _startSeconds = 36;
    // final String _videoId = '26ycz1ouKL8';
    // final double _startSeconds = 1605;
    // final String _videoId = 'GG9ElcBP3ic';
    // final double _startSeconds = 157;

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
                      word: """alimentary canal""",
                      // alsoEnglishWord: "also: alimentary canal",
                      britshText: """IpaUK: /ˌælɪmentəri kəˈnæl/""",
                      americanText: """IpaUS: /ˌælɪmentəri kəˈnæl/""",
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
کوردی: کۆئەندامی ھەرس، بۆری یا جۆگەی ھەرس
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) جۆگەی خۆراک لە دەمەوە بۆ کۆم" ""),
                    SentencesRow(
                      englishText:
                          "I had an abscess in the lower part of my alimentary canal.",
                      kurdishText:
                          "دومەڵێکم ھەبوو لە بەشی خوارەوەی جۆگەی ھەرسم.",
                      onPressedBritish: () =>
                          speakalimentarycanal42588("en-GB"),
                      onPressedAmerican: () =>
                          speakalimentarycanal42588("en-US"),
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


