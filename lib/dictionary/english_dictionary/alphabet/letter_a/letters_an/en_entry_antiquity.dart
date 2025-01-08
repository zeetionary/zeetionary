import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantiquity extends StatefulWidget {
  const EnglishEntryantiquity({super.key});

  @override
  State<EnglishEntryantiquity> createState() => _EnglishEntryantiquityState();
}

class _EnglishEntryantiquityState extends State<EnglishEntryantiquity> {
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
- Noun: antiquity (derived forms: antiquities)
1. The historic period preceding the Middle Ages in Europe
 
2. Extreme oldness (= ancientness)
 
3. An artifact surviving from the past
""",
  );
// 188888880002200

  final String keyword = "antiquity";
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
    await flutterTts.speak("""antiquity""");
  }

  Future<void> speakantiquity1151(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The statue was brought to Rome in antiquity.");
  }

  Future<void> speakantiquity1156(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Archaeologists found 40 bodies of varying antiquity in the area.");
  }

  Future<void> speakantiquity1159(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Under Greek law, all antiquities that are discovered in Greece belong to the government.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'xxiLuwOhzmo';
    const double startSecondsend = 376;
    const String videoIdone = 'zURaTOnFoFE';
    const double startSecondsone = 689;
    const String videoIdtwo = '1bV-UGdOu0I';
    const double startSecondstwo = 60;
    const String videoIdthree = 'BFC-00cjUgs';
    const double startSecondsthree = 1;
    const String videoIdfour = 'yvYw5v09kJE';
    const double startSecondsfour = 530;
    const String videoIdfive = 'q24tXiEuVg4';
    const double startSecondsfive = 29;
    // final String _videoId = 'xPGdOXstSyk';
    // final double _startSeconds = 607;
    // final String _videoId = 'ew1edqVqCu0';
    // final double _startSeconds = 83;
    // final String _videoId = 'qWNHsaszXpc';
    // final double _startSeconds = 1004;
    // final String _videoId = 'ghbOcEZV64c';
    // final double _startSeconds = 298;

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
                      word: """antiquity""",
                      // alsoEnglishWord: "also: antiquity",
                      britshText: """IpaUK: /ænˈtɪkwəti/""",
                      americanText: """IpaUS: /ænˈtɪkwəti/""",
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
کوردی: کۆنینەیی، کۆنی، کەڤناری، زوویینی، دێرینە، سەردەمانی کۆن یان باستان (یۆنان و ڕۆم)، شوێنەوار یان ئاسەواری (سەردەمی) کۆن
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) سەردەمانی کۆن، بەتایبەتی سەردەمی یۆنان و ڕۆمی کۆن"""),
                    SentencesRow(
                      englishText:
                          "The statue was brought to Rome in antiquity.",
                      kurdishText:
                          "پەیکەرەکە لە سەردەمانی کۆندا ھێنرا بۆ ڕۆما.",
                      onPressedBritish: () => speakantiquity1151("en-GB"),
                      onPressedAmerican: () => speakantiquity1151("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) لە دۆخێکی کۆندا"""),
                    SentencesRow(
                      englishText:
                          "Archaeologists found 40 bodies of varying antiquity in the area.",
                      kurdishText:
                          "شوێنەوارناسان ٤٠ جەستەیان دۆزییەوە لە ناوچەکە کە لە تەمەنی جیاوازدا بوون.",
                      onPressedBritish: () => speakantiquity1156("en-GB"),
                      onPressedAmerican: () => speakantiquity1156("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) پارچە شوێنەوارێکی سەردەمانی کۆن"""),
                    SentencesRow(
                      englishText:
                          "Under Greek law, all antiquities that are discovered in Greece belong to the government.",
                      kurdishText:
                          "بەپێی یاسای یۆنان ھەموو ئەو پارچە شوێنەوارانەی لە یۆنان دەدۆزرێنەوە دەگەڕێنەوە بۆ حکومەت.",
                      onPressedBritish: () => speakantiquity1159("en-GB"),
                      onPressedAmerican: () => speakantiquity1159("en-US"),
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
