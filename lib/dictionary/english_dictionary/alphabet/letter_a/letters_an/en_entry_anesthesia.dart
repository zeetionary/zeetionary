import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanesthesia extends StatefulWidget {
  const EnglishEntryanesthesia({super.key});

  @override
  State<EnglishEntryanesthesia> createState() => _EnglishEntryanesthesiaState();
}

class _EnglishEntryanesthesiaState extends State<EnglishEntryanesthesia> {
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
- Noun: anesthesia (derived forms: anesthesias)
Usage: N. Amer (elsewhere: anaesthesia)
1. Loss of bodily sensation with or without loss of consciousness (= anaesthesia [Brit, Cdn])
""",
  );
// 188888880002200

  final String keyword = "anesthesia";
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
    await flutterTts.speak("""anesthesia""");
  }

  Future<void> speakanesthesia25630(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The surgery is performed under general anesthesia.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '76f2-qAukAY';
    const double startSecondsend = 172;
    const String videoIdone = '2rCCzLcMioU';
    const double startSecondsone = 173;
    const String videoIdtwo = 'uSlx0s5dtPM';
    const double startSecondstwo = 671;
    const String videoIdthree = 'jIBZFl7lBXU';
    const double startSecondsthree = 1235;
    const String videoIdfour = 'VJBrby1ZrAE';
    const double startSecondsfour = 282;
    const String videoIdfive = 'ZbqjXt_vCYs';
    const double startSecondsfive = 121;
    // final String _videoId = '6_G_o1KPYyk';
    // final double _startSeconds = 131;
    // final String _videoId = 'pWEzTpWmbsM';
    // final double _startSeconds = 277;
    // final String _videoId = 'ggJXEYG9KT0';
    // final double _startSeconds = 181;

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
                      word: """anesthesia""",
                      // alsoEnglishWord: "also: anesthesia",
                      britshText: """IpaUK: /ˌænəsˈθiːziə/""",
                      americanText: """IpaUS: /ˌænəsˈθiːʒə/""",
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
کوردی: بێ‌ھۆشی، بێ‌ھەستی، سڕی، تەزیوی، لەژێربەنج
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) لەژێربەنج؛ بارودۆخێک کە تێیدا کەسێک ھەست بە ئازار ناکات بۆھۆی ئەوەی بەنج‌کراوە"
                            ""),
                    SentencesRow(
                      englishText:
                          "The surgery is performed under general anesthesia.",
                      kurdishText:
                          "نەشتەرگەرییەکە لەژێر سڕکردنی تەواو دەکرێت (=نەخۆشەکە بێ‌ھۆش دەخرێت).",
                      onPressedBritish: () => speakanesthesia25630("en-GB"),
                      onPressedAmerican: () => speakanesthesia25630("en-US"),
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


