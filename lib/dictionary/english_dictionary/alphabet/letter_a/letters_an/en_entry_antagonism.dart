import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantagonism extends StatefulWidget {
  const EnglishEntryantagonism({super.key});

  @override
  State<EnglishEntryantagonism> createState() => _EnglishEntryantagonismState();
}

class _EnglishEntryantagonismState extends State<EnglishEntryantagonism> {
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
- Noun: antagonism (derived forms: antagonisms)
1. A state of deep-seated ill-will (= hostility, enmity)
 
2. The relation between opposing principles, forces or factors
"the inherent antagonism of capitalism and socialism"
 
3. An actively expressed feeling of dislike and hostility
 
4. (biochemistry) interference in or inhibition of the physiological action of a chemical substance by another having a similar structure
""",
  );
// 188888880002200

  final String keyword = "antagonism";
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
    await flutterTts.speak("""antagonism""");
  }

  Future<void> speakantagonism1204(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The antagonism he felt towards his old enemy was still very strong.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'LagLa4GDpHY';
    const double startSecondsend = 41;
    const String videoIdone = 'Solb9uA-tgQ';
    const double startSecondsone = 17737;
    const String videoIdtwo = 'sig8X_kojco';
    const double startSecondstwo = 1903;
    const String videoIdthree = 'pt5sGR303p8';
    const double startSecondsthree = 620;
    const String videoIdfour = 'ubNKSgdT1FQ';
    const double startSecondsfour = 859;
    const String videoIdfive = 'Xu1FMCxoEFc';
    const double startSecondsfive = 5146;
    // final String _videoId = 'qAOIwKxPy1Q';
    // final double _startSeconds = 97;
    // final String _videoId = 'EF9qpIIh1pI';
    // final double _startSeconds = 226;
    // final String _videoId = 'qOMxkhSRZaU';
    // final double _startSeconds = 490;
    // final String _videoId = 'flXkLHpVCTI';
    // final double _startSeconds = 250;
    // final String _videoId = 'yAMIQn78iAA';
    // final double _startSeconds = 273;
    // final String _videoId = '9T5vHi-WrMk';
    // final double _startSeconds = 228;

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
                      word: """antagonism""",
                      // alsoEnglishWord: "also: antagonism",
                      britshText: """IpaUK: /ænˈtæɡənɪzəm/""",
                      americanText: """IpaUS: /ænˈtæɡənɪzəm/""",
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
کوردی: دوژمنایەتی، قین‌گێڕی، دژایەتی، ناکۆکی، بەربەرەکایەتی، ڕکەبەرایەتی
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) ھەستی ڕکابەری و ڕق"""),
                    SentencesRow(
                      englishText:
                          "The antagonism he felt towards his old enemy was still very strong.",
                      kurdishText:
                          "ئەو دوژمنایەتییەی دژ بە دوژمنە کۆنەکەی ھەیبوو ھێشتا بەھێز بوو.",
                      onPressedBritish: () => speakantagonism1204("en-GB"),
                      onPressedAmerican: () => speakantagonism1204("en-US"),
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


