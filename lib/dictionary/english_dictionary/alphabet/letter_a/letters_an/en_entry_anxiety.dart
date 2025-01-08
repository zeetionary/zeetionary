import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanxiety extends StatefulWidget {
  const EnglishEntryanxiety({super.key});

  @override
  State<EnglishEntryanxiety> createState() => _EnglishEntryanxietyState();
}

class _EnglishEntryanxietyState extends State<EnglishEntryanxiety> {
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
- Noun: anxiety (derived forms: anxieties)
1. (psychiatry) a relatively permanent state of worry and nervousness occurring in a variety of mental disorders, usually accompanied by compulsive behaviour or attacks of panic (= anxiousness)
 
2. A vague unpleasant emotion that is experienced in anticipation of some (usually ill-defined) misfortun
""",
  );
// 188888880002200

  final String keyword = "anxiety";
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
    await flutterTts.speak("""anxiety""");
  }

  Future<void> speakanxiety651(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Some hospital patients experience high levels of anxiety.");
  }

  Future<void> speakanxiety656(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A lot of anxiety surrounds the issue of human cloning.");
  }

  Future<void> speakanxiety700(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Some people are feeling the pressure and suffering from anxiety and depression.");
  }

  Future<void> speakanxiety705(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "If you're worried about your health, share your anxieties with your doctor.");
  }

  Future<void> speakanxiety708(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "A couple of photographers fell over themselves in their anxiety to get a shot of her.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'L1HCG3BGK8I';
    const double startSecondsend = 19;
    const String videoIdone = 'O-6f5wQXSu8';
    const double startSecondsone = 1;
    const String videoIdtwo = 'XIrQKo-d7h4';
    const double startSecondstwo = 104;
    const String videoIdthree = 'Eupw-yTBkQI';
    const double startSecondsthree = 147;
    const String videoIdfour = 'Zrg7lJyIYzQ';
    const double startSecondsfour = 25;
    const String videoIdfive = 'LnV3Q2xIb1U';
    const double startSecondsfive = 1;
    // final String _videoId = 'QjLOWQqy2MU';
    // final double _startSeconds = 24;
    // final String _videoId = 'QwtPA-07NnU';
    // final double _startSeconds = 18;
    // final String _videoId = '4pLUleLdwY4';
    // final double _startSeconds = 1;
    // final String _videoId = 'UfGDb41oDjo';
    // final double _startSeconds = 47;
    // final String _videoId = '2EPnNOlxF8M';
    // final double _startSeconds = 31;
    // final String _videoId = 'b5i0aY_rUZU';
    // final double _startSeconds = 80;

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
                      word: """anxiety""",
                      // alsoEnglishWord: "also: anxiety",
                      britshText: """IpaUK: /æŋˈzaɪəti/""",
                      americanText: """IpaUS: /æŋˈzaɪəti/""",
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
کوردی: دڵەتەپە، دڵەخورپێ، دڵەڕاوکێ، خەتەرە، نگەرانی، ناڕەحەتی، خەم، پەرێشانی، ئارام‌لێ‌ھەڵگیراوی، تامەزرۆیی، گوڕوتین، پەرۆش، مەراق
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) دۆخی ھەستکردن بە شڵەژاوی و نیگەرانی سەبارەت بەوەی شتێکی خراپ ڕوودەدات"""),
                    SentencesRow(
                      englishText:
                          "Some hospital patients experience high levels of anxiety.",
                      kurdishText:
                          "ھەندێک لە نەخۆشانی نەخۆشخانە بە دڵەڕاوکێی زۆردا تێپەڕدەبن.",
                      onPressedBritish: () => speakanxiety651("en-GB"),
                      onPressedAmerican: () => speakanxiety651("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "A lot of anxiety surrounds the issue of human cloning.",
                      kurdishText:
                          "دڵەڕاوکێی زۆر ھەیە سەبارەت بۆ کۆپی‌کردنی مرۆڤ.",
                      onPressedBritish: () => speakanxiety656("en-GB"),
                      onPressedAmerican: () => speakanxiety656("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) نەخۆشییەکی دەروونی کە دەبێتەھۆی ئەوەی کەسێک ھێندە زۆر نیگەران بێت کە کاریگەری نەرێنی زۆری لەسەریان ھەبێت"""),
                    SentencesRow(
                      englishText:
                          "Some people are feeling the pressure and suffering from anxiety and depression.",
                      kurdishText:
                          "ھەندێک کەس ھەست بە پەستان و ئازاری دڵەخورپە و بێزاری دەکەن.",
                      onPressedBritish: () => speakanxiety700("en-GB"),
                      onPressedAmerican: () => speakanxiety700("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) نیگەرانی و ترس دەربارەی شتێک"""),
                    SentencesRow(
                      englishText:
                          "If you're worried about your health, share your anxieties with your doctor.",
                      kurdishText:
                          "ئەگەر نیگەرانیت بۆ تەندرووستیت، لای دکتۆرەکەت نیگەرانییەکانت باس بکە.",
                      onPressedBritish: () => speakanxiety705("en-GB"),
                      onPressedAmerican: () => speakanxiety705("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ناو) ھەستێکی بەھێز بۆ ویستنی کردنی شتێک یان ویستنی ڕوودانی شتێک"""),
                    SentencesRow(
                      englishText:
                          "A couple of photographers fell over themselves in their anxiety to get a shot of her.",
                      kurdishText:
                          "ژمارەیەک ڕۆژنامەنووس کەوتن بە مل خۆیاندا لە تامەزرۆییان بۆ گرتنی چەند وێنەیەکی.",
                      onPressedBritish: () => speakanxiety708("en-GB"),
                      onPressedAmerican: () => speakanxiety708("en-US"),
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
