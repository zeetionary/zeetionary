import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanemone extends StatefulWidget {
  const EnglishEntryanemone({super.key});

  @override
  State<EnglishEntryanemone> createState() => _EnglishEntryanemoneState();
}

class _EnglishEntryanemoneState extends State<EnglishEntryanemone> {
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
- Noun: anemone (derived forms: anemones)
1. Any woodland plant of the genus Anemone grown for its beautiful flowers and whorls of dissected leaves (= windflower)
 
2. Marine polyps that resemble flowers but have oral rings of tentacles; differ from corals in forming no hard skeleton (= sea anemone)
""",
  );
// 188888880002200

  final String keyword = "anemone";
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
    await flutterTts.speak("""anemone""");
  }

  Future<void> speakanemone588(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We saw wild anemones in the woods.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'mdV0e2xRjYI';
    const double startSecondsend = 35;
    const String videoIdone = 'lezDKl4NB08';
    const double startSecondsone = 0;
    const String videoIdtwo = 'NB2K1TEfUiE';
    const double startSecondstwo = 11;
    const String videoIdthree = 'xs7I_dko-JE';
    const double startSecondsthree = 1;
    const String videoIdfour = 'uRaCPosCvN8';
    const double startSecondsfour = 44;
    const String videoIdfive = 'miM6sftkEXI';
    const double startSecondsfive = 10;
    // final String _videoId = 'D244b4E3yuA';
    // final double _startSeconds = 301;
    // final String _videoId = 'hGLY5MAAFO4';
    // final double _startSeconds = 1143;
    // final String _videoId = '7jjege3W92E';
    // final double _startSeconds = 1171;
    // final String _videoId = 'h0oSw5aHWEs';
    // final double _startSeconds = 38;

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
                      word: """anemone""",
                      // alsoEnglishWord: "also: anemone",
                      britshText: """IpaUK: /əˈneməni/""",
                      americanText: """IpaUS: /əˈneməni/""",
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
کوردی: گوڵەنیسان، گوڵاڵە، باتینۆک، گاگرۆ، گوڵ‌بەھار
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) ڕووەکێک کە گوڵی سوور و سپی و شین و مۆریان ھەیە، شێوەیان وەک پیاڵەیە و ناوەڕاستیان ڕەشە"
                            ""),
                    SentencesRow(
                      englishText: "We saw wild anemones in the woods.",
                      kurdishText: "گوڵاڵەی دەشتیمان بینی لە دارستانەکان.",
                      onPressedBritish: () => speakanemone588("en-GB"),
                      onPressedAmerican: () => speakanemone588("en-US"),
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


