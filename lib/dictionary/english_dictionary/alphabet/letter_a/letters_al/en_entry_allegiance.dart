import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryallegiance extends StatefulWidget {
  const EnglishEntryallegiance({super.key});

  @override
  State<EnglishEntryallegiance> createState() => _EnglishEntryallegianceState();
}

class _EnglishEntryallegianceState extends State<EnglishEntryallegiance> {
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
- Noun: allegiance (derived forms: allegiances)
1. The act of binding yourself (intellectually or emotionally) to a course of action (= commitment, loyalty, dedication)
"his long allegiance to public service";
 
2. The loyalty that citizens owe to their country (or subjects to their sovereign) (= fealty)
""",
  );
// 188888880002200

  final String keyword = "allegiance";
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
    await flutterTts.speak("""allegiance""");
  }

  Future<void> speakallegiance12566(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He affirmed his allegiance to the president.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'vqdG4FxX4FM';
    const double startSecondsend = 1;
    const String videoIdone = 'anV_ZjhL9Qo';
    const double startSecondsone = 15;
    const String videoIdtwo = 'yRmOWcWdQAo';
    const double startSecondstwo = 732;
    const String videoIdthree = 'Ir3eJ1t13fk';
    const double startSecondsthree = 1733;
    const String videoIdfour = '9Zja_cIAwY8';
    const double startSecondsfour = 192;
    const String videoIdfive = 'rSLWFA_glbk';
    const double startSecondsfive = 50;
    // final String _videoId = 'Gfj5f0GVLZ0';
    // final double _startSeconds = 337;
    // final String _videoId = 'vNEd9FyG5P4';
    // final double _startSeconds = 305;
    // final String _videoId = '1LYEB6_MW04';
    // final double _startSeconds = 182;
    // final String _videoId = 'S7bSLlN_C1A';
    // final double _startSeconds = 382;

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
                      word: """allegiance""",
                      // alsoEnglishWord: "also: allegiance",
                      britshText: """IpaUK: /əˈliːdʒəns/""",
                      americanText: """IpaUS: /əˈliːdʒəns/""",
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
کوردی: وەفاداری، دڵسۆزی، بەئەمەکی، پشتیوانی، داژداری، لایەنگری، ئالیگری، داکۆکی، پەیمان، بەڵێن، سۆز، گفت، لایەنگر، پشتیوان
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) دڵسۆزی و وەفاداری" ""),
                    SentencesRow(
                      englishText:
                          "He affirmed his allegiance to the president.",
                      kurdishText: "وەفاداری خۆی بۆ سەرۆک دووپاتکردەوە.",
                      onPressedBritish: () => speakallegiance12566("en-GB"),
                      onPressedAmerican: () => speakallegiance12566("en-US"),
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

