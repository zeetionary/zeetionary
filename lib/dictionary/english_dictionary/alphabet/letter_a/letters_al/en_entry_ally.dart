import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryally extends StatefulWidget {
  const EnglishEntryally({super.key});

  @override
  State<EnglishEntryally> createState() => _EnglishEntryallyState();
}

class _EnglishEntryallyState extends State<EnglishEntryally> {
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
- Noun: ally (derived forms: allies, allying, allied)
1. A friendly nation
 
2. An associate who provides cooperation or assistance (= friend)
"he's a good ally in fight";

- Verb: ally 
1. Become an ally or associate, as by a treaty or marriage
"He allied himself with the Communists"
""",
  );
// 188888880002200

  final String keyword = "ally";
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
    await flutterTts.speak("""ally""");
  }

  Future<void> speakally4211(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Portugal is a traditional ally of England.");
  }

  Future<void> speakally4322(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She had found an ally in her old teacher.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'D0x2dgpBDzc';
    const double startSecondsend = 439;
    const String videoIdone = 'mY3SEMTROas';
    const double startSecondsone = 202;
    const String videoIdtwo = 'uN84HhcdIws';
    const double startSecondstwo = 417;
    const String videoIdthree = 'sV6uuMAnJUE';
    const double startSecondsthree = 17;
    const String videoIdfour = 'rtAAjKBH9GU';
    const double startSecondsfour = 943;
    const String videoIdfive = 'u432T_cDgQs';
    const double startSecondsfive = 5435;
    // final String _videoId = '62EGPCEmeh4';
    // final double _startSeconds = 836;
    // final String _videoId = 'EmT0i0xG6zg';
    // final double _startSeconds = 1534;

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
                      word: """ally""",
                      // alsoEnglishWord: "also: ally",
                      britshText: """IpaUK: /ˈælaɪ/""",
                      americanText: """IpaUS: /ˈælaɪ/""",
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
کوردی: (وڵات) یەک‌گرتوو، ھەڤ‌گرتوو، یەک‌کەوتوو، ھاوپەیمان، پشتیوان، یار، یاوەر
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) ھاوپەیمان، دوو لایەن کە یارمەتی یەکدی دەدەن، بەتایبەت لە کاتی جەنگ"
                            ""),
                    SentencesRow(
                      englishText: "Portugal is a traditional ally of England.",
                      kurdishText:
                          "پرتوگال بەشێوەیەکی مێژوویی ھاوپەیمانی ئینگلتەرەیە.",
                      onPressedBritish: () => speakally4211("en-GB"),
                      onPressedAmerican: () => speakally4211("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) کەسێک کە لە تەنگانەدا پشتی پێ دەبەستیت"""),
                    SentencesRow(
                      englishText: "She had found an ally in her old teacher.",
                      kurdishText: "مامۆستا کۆنەکەی بووە بە دۆست و یاوەری.",
                      onPressedBritish: () => speakally4322("en-GB"),
                      onPressedAmerican: () => speakally4322("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) وڵاتانی ھاوپەیمان لە جەنگی یەکەم و دووەمی جیھانی"""),
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

