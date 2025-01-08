import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapparent extends StatefulWidget {
  const EnglishEntryapparent({super.key});

  @override
  State<EnglishEntryapparent> createState() => _EnglishEntryapparentState();
}

class _EnglishEntryapparentState extends State<EnglishEntryapparent> {
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
- Adjective: apparent 
1. Clearly revealed to the mind or the senses or judgment (= evident, manifest, palpable, patent, plain, unmistakable, unmistakeable)
"the effects of the drought are apparent to anyone who sees the parched fields";
 
2. Appearing as such but not necessarily so (= ostensible, seeming)
"for all his apparent wealth he had no money to pay the rent"; "the committee investigated some apparent discrepancies";
""",
  );
// 188888880002200

  final String keyword = "apparent";
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
    await flutterTts.speak("""apparent""");
  }

  Future<void> speakapparent852(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Then, for no apparent reason, the train suddenly stopped.");
  }

  Future<void> speakapparent853(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It soon became apparent to everyone that he couldn't sing.");
  }

  Future<void> speakapparent858(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "My parents were concerned at my apparent lack of enthusiasm for school.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'SX9mF288Tb8';
    const double startSecondsend = 54;
    const String videoIdone = 'XEZfGlyLQnA';
    const double startSecondsone = 1048;
    const String videoIdtwo = 'qg2nGY1aqlg';
    const double startSecondstwo = 380;
    const String videoIdthree = 'YrMGIqecu0Y';
    const double startSecondsthree = 464;
    const String videoIdfour = 'Am1lDj2mUVY';
    const double startSecondsfour = 579;
    const String videoIdfive = '-I6YmMAThZ8';
    const double startSecondsfive = 651;
    // final String _videoId = 'oHSehKtDyoI';
    // final double _startSeconds = 727;
    // final String _videoId = 'ZPFo_dXzwKE';
    // final double _startSeconds = 437;
    // final String _videoId = 'Zn0GBm1ltIk';
    // final double _startSeconds = 384;
    // final String _videoId = 'SwQhKFMxmDY';
    // final double _startSeconds = 420;
    // final String _videoId = 'YkmlPaGui5k';
    // final double _startSeconds = 589;

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
                      word: """apparent""",
                      // alsoEnglishWord: "also: apparent",
                      britshText: """IpaUK: /əˈpærənt/""",
                      americanText: """IpaUS: /əˈpærənt/""",
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
کوردی: دیار، ئاشکرا، بەرچاو، ڕاشکاو، خۆیا، کفش، ڕواڵەتی، ڕووکەشی
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) ئاسان بۆ بینین و تێگەشتن"""),
                    SentencesRow(
                      englishText:
                          "Then, for no apparent reason, the train suddenly stopped.",
                      kurdishText:
                          "دواتر، بەبێ ھیچ ھۆکارێکی ڕوون، شەمەندەفەرەکە وەستا لە کارکردن.",
                      onPressedBritish: () => speakapparent852("en-GB"),
                      onPressedAmerican: () => speakapparent852("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "It soon became apparent to everyone that he couldn't sing.",
                      kurdishText:
                          "ھەرزوو بۆ ھەموان ڕوونبووەوە کە توانای گۆرانی‌وتنی نەبوو.",
                      onPressedBritish: () => speakapparent853("en-GB"),
                      onPressedAmerican: () => speakapparent853("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) شتێک وەک ڕاستی دەردەکەوێت بەڵام ئەگەری ھەیە وا نەبێ"""),
                    SentencesRow(
                      englishText:
                          "My parents were concerned at my apparent lack of enthusiasm for school.",
                      kurdishText:
                          "دایک و باوکم نیگەران بوون بە کەمی ڕووکەشانەی تامەزرۆییم بۆ قوتابخانە.",
                      onPressedBritish: () => speakapparent858("en-GB"),
                      onPressedAmerican: () => speakapparent858("en-US"),
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
