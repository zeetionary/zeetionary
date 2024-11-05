import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryknotty extends StatefulWidget {
  const EnglishEntryknotty({super.key});

  @override
  State<EnglishEntryknotty> createState() => _EnglishEntryknottyState();
}

class _EnglishEntryknottyState extends State<EnglishEntryknotty> {
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
- Adjective: knotty (Derived forms: knottier, knottiest)
1. Making great mental demands; hard to comprehend, solve or believe (- baffling, elusive, problematic, problematical, tough)
"I faced the knotty problem of what to have for breakfast";
 
2. Used of old persons or old trees; covered with knobs or knots (- gnarled, gnarly, knotted, knobbed)
"knotty and knotted hands";
 
3. Highly complex or intricate and occasionally devious (- Byzantine, convoluted, involved, tangled, tortuous, labyrinthine)
"a knotty problem";
 
4. Tangled in knots or snarls (- snarled, snarly)
"knotty thread";
""",
  );

  final String keyword = "knotty";
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
    await flutterTts.speak("""knotty""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was a very knotty problem.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The fence was made from knotty pieces of wood, giving it a natural look.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/9Q901X7iV2Y?t=545';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/mEe4fkEDis0?t=614';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/6DIiLmmNMro?t=338';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/xT8n0uBIURk?t=569';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/jdmmlGvPQz4?t=82';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/pXyhE2DaPRU?t=342';
    const double startSecondsfive = 0;

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
                      word: """knotty""",
                      // alsoEnglishWord: "also: knotty",
                      britshText: """IpaUK: /ˈnɒti/""",
                      americanText: """IpaUS: /ˈnɑːti/""",
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
کوردی: پڕگرێ، گرێ‌گرێ، هەزارگرێ، گرچن،	ئاڵۆز، چارەنەکراو، سەخت، دژوار، چەتوون
"""),
// With short examples define "knotty", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) ئاڵۆز و سەخت بۆ چارەسەر"""),
                    const AlsoEnglishckb(word: "ھەروەھا: thorny"),
                    SentencesRow(
                      englishText: """It was a very knotty problem.""",
                      kurdishText: """کێشەیەکی زۆر ئاڵۆز بوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) کە گرێی زۆری تێدایە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The fence was made from knotty pieces of wood, giving it a natural look.""",
                      kurdishText:
                          """پەرژینەکە لە پارچە تەختەی پڕگرێ درووستکرا کە شێوەیەکی سرووشتی پێدا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
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
// end knotty