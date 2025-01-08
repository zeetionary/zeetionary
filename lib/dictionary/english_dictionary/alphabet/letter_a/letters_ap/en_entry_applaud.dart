import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapplaud extends StatefulWidget {
  const EnglishEntryapplaud({super.key});

  @override
  State<EnglishEntryapplaud> createState() => _EnglishEntryapplaudState();
}

class _EnglishEntryapplaudState extends State<EnglishEntryapplaud> {
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
- Verb: applaud (derived forms: applauded, applauds, applauding)
1. Clap one's hands or shout after performances to indicate approval (= clap, spat, acclaim)
 
2. Express that something is worthy of praise
"I applaud your efforts"
""",
  );
// 188888880002200

  final String keyword = "applaud";
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
    await flutterTts.speak("""applaud""");
  }

  Future<void> speakapplaud517(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He started to applaud and the others joined in.");
  }

  Future<void> speakapplaud520(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("His efforts to improve the situation are to be applauded.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'VrKW58MS12g';
    const double startSecondsend = 1148;
    const String videoIdone = 'LXrWIFYdtCE';
    const double startSecondsone = 528;
    const String videoIdtwo = 'NICir0cWsEY';
    const double startSecondstwo = 551;
    const String videoIdthree = 'iht8e_HtLso';
    const double startSecondsthree = 2109;
    const String videoIdfour = 'VjFFrYEZsAQ';
    const double startSecondsfour = 940;
    const String videoIdfive = 'qSmyimnMOBo';
    const double startSecondsfive = 4457;
    // final String _videoId = 'HY_OIwideLg';
    // final double _startSeconds = 250;
    // final String _videoId = 'EM4odIQZVgw';
    // final double _startSeconds = 183;
    // final String _videoId = 'brKw9KtNm04';
    // final double _startSeconds = 16;
    // final String _videoId = 'sL-PL1hpnM0';
    // final double _startSeconds = 1467;

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
                      word: """applaud""",
                      // alsoEnglishWord: "also: applaud",
                      britshText: """IpaUK: /əˈplɔːd/""",
                      americanText: """IpaUS: /əˈplɔːd/""",
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
                    const DefinitionKurdish(text: """
١. (کردار) دەربڕینی بەدڵبوونت بۆ کەسێک بە چەپڵەلێدان"""),
                    SentencesRow(
                      englishText:
                          "He started to applaud and the others joined in.",
                      kurdishText:
                          "دەستی بە چەپڵەلێدان کرد و ئەوانی تریش بەدوایدا.",
                      onPressedBritish: () => speakapplaud517("en-GB"),
                      onPressedAmerican: () => speakapplaud517("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) پەسندانی کەسێک بەھۆی بەدڵبوونی کارەکەیان لات"""),
                    SentencesRow(
                      englishText:
                          "His efforts to improve the situation are to be applauded.",
                      kurdishText:
                          "ھەوڵەکانی بۆ باشترکردنی دۆخەکە جێگەی دەستخۆشییە.",
                      onPressedBritish: () => speakapplaud520("en-GB"),
                      onPressedAmerican: () => speakapplaud520("en-US"),
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
