import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaftereffect extends StatefulWidget {
  const EnglishEntryaftereffect({super.key});

  @override
  State<EnglishEntryaftereffect> createState() =>
      _EnglishEntryaftereffectState();
}

class _EnglishEntryaftereffectState extends State<EnglishEntryaftereffect> {
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
- Noun: aftereffect (derived forms: aftereffects)
1. Any result that follows its cause after an interval
 
2. A delayed effect of a drug or therapy
"the drug had unexpected aftereffects"
""",
  );
// 188888880002200

  final String keyword = "aftereffect";
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
    await flutterTts.speak("""aftereffect""");
  }

  Future<void> speakaftere3599(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Headaches are an aftereffect of this sort of accident.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoId0 = 'sJG-rXBbmCc';
    const double startSeconds0 = 3007;
    const String videoId1 = 'TZKhK5uA-v4';
    const double startSeconds1 = 454;
    const String videoId2 = 'cpE_s5K4J4g';
    const double startSeconds2 = 279;
    const String videoId3 = 'RSfCWAClNmM';
    const double startSeconds3 = 1653;
    const String videoId4 = 'NJunwbvkzAU';
    const double startSeconds4 = 749;
    const String videoId5 = 'bAkuNXtgrLA';
    const double startSeconds5 = 2538;
    // const String videoId = 'LCEsoH1F-Us';
    // const double startSeconds = 15;

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
                      word: """aftereffect""",
                      // alsoEnglishWord: "also: aftereffect",
                      britshText: """IpaUK: /ˈɑːftər ɪfekt/""",
                      americanText: """IpaUS: /ˈɑːftər ɪfekt/""",
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
کوردی: (زۆرتر کۆ) نیشانەکانی دواتر، پاشە(ئە)نجام، کاریگەری پاشین یان دواتر، پاش‌نیشانە (وەک ھی دەرمان، نەخۆشی و ھتد)
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کاریگەری دەرمانێک یان ڕووداوێک کە دواتر دەردەکەوێت"""),
                    SentencesRow(
                      englishText:
                          "Headaches are an aftereffect of this sort of accident.",
                      kurdishText: "سەرئێشە دەرئەنجامی ئەم جۆرە ڕووداوانەیە.",
                      onPressedBritish: () => speakaftere3599("en-GB"),
                      onPressedAmerican: () => speakaftere3599("en-US"),
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
                    key: ValueKey(videoId0),
                    videoId: videoId0,
                    startSeconds: startSeconds0,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoId1),
                    videoId: videoId1,
                    startSeconds: startSeconds1,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoId2),
                    videoId: videoId2,
                    startSeconds: startSeconds2,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoId3),
                    videoId: videoId3,
                    startSeconds: startSeconds3,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoId4),
                    videoId: videoId4,
                    startSeconds: startSeconds4,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoId5),
                    videoId: videoId5,
                    startSeconds: startSeconds5,
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

