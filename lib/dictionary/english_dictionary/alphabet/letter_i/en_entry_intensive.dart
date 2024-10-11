import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryintensive extends StatefulWidget {
  const EnglishEntryintensive({super.key});

  @override
  State<EnglishEntryintensive> createState() => _EnglishEntryintensiveState();
}

class _EnglishEntryintensiveState extends State<EnglishEntryintensive> {
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
- Adjective: intensive
1. Tending to give force or emphasis
"an intensive adverb"
 
2. Of agriculture; intended to increase productivity of a fixed area by expending more capital and labour
"intensive agriculture"; "intensive conditions"
 
3. Characterized by a high degree or intensity; often used as a combining form
"the questioning was intensive"; "intensive care"; "research-intensive"; "a labour-intensive industry"

- Noun: intensive (Derived forms: intensives)
1. A modifier that has little meaning except to intensify the meaning it modifies (- intensifier)
"'up' in 'finished up' is an intensive";
""",
  );

  final String keyword = "intensive";
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
    await flutterTts.speak("""intensive""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Intensive bombing had reduced the city to rubble.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """His disappearance has been the subject of intensive investigation.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Traditionally reared animals grow more slowly than those reared under intensive farming conditions.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'VrKW58MS12g';
    const double startSecondsend = 1360;
    const String videoIdone = 'GYMF5mhuBUE';
    const double startSecondsone = 417;
    const String videoIdtwo = 'TRGHIN2PGIA';
    const double startSecondstwo = 0;
    const String videoIdthree = 'tsxmyL7TUJg';
    const double startSecondsthree = 173;
    const String videoIdfour = 'Sbp_EeBk-As';
    const double startSecondsfour = 1463;
    const String videoIdfive = 'iqhK6QGehtQ';
    const double startSecondsfive = 742;

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
                      word: """intensive""",
                      // alsoEnglishWord: "also: intensive",
                      britshText: """IpaUK: /ɪnˈtensɪv/""",
                      americanText: """IpaUS: /ɪnˈtensɪv/""",
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
کوردی: خەست، خەست‌وخۆڵ، لەسەریەک، قورس، توند، چڕ، تیژ، سەخت، چڕوپڕ، تێروتەسەل،	(ڕێزمان، ئاوەڵناو و ئاوەڵکار) بەهێزکەر، زیادکەر، جەختی
"""),
// With short examples define "intensive", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کە ژمارەیەکی زۆر کار و چالاکی لە ماوەیەکی کەم لەخۆ دەگرێت"""),
                    SentencesRow(
                      englishText:
                          """Intensive bombing had reduced the city to rubble.""",
                      kurdishText:
                          """بۆمبارانی خەست شارەکەی کردووە بە کەلاوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) تەواو و زۆر ورد"""),
                    SentencesRow(
                      englishText:
                          """His disappearance has been the subject of intensive investigation.""",
                      kurdishText:
                          """ونبوونی بووە بە بابەتی لێکۆڵینەوەی ورد.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) شێوازێکی کشتووکاڵ کە ئامانجییەتی هەرچەندە زۆر بکرێت بەرهەمی هەبێت بە بەکارهێنانی کەمترین زەوی یان پارە"""),
                    SentencesRow(
                      englishText:
                          """Traditionally reared animals grow more slowly than those reared under intensive farming conditions.""",
                      kurdishText:
                          """ئاژەڵانی بە سرووشتی گەورەکراو هێواشتر گەشە دەکەن وەک لەوانەی کە لە دۆخی چڕی کشتووکاڵی گەورە دەکرێن.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
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
// end intensive