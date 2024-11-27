import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylanding extends StatefulWidget {
  const EnglishEntrylanding({super.key});

  @override
  State<EnglishEntrylanding> createState() => _EnglishEntrylandingState();
}

class _EnglishEntrylandingState extends State<EnglishEntrylanding> {
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
- Noun: landing (Derived forms: landings)
1. An intermediate platform in a staircase
 
2. Structure providing a place where boats can land people or goods (- landing place)
 
3. The act of coming down to the earth (or other surface)
"the plane made a smooth landing"; "his landing on his feet was catlike"
 
4. The act of coming to land after a voyage
""",
  );

  final String keyword = "landing";
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
    await flutterTts.speak("""landing""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The pilot was forced to make an emergency landing.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Go up to the first-floor landing and it’s the door on the right.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/YplKPH_qcRw?t=211';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/oD9BaNAH-eE?t=255';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/h4CyhQqAPpk?t=426';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/QLq6GEiHqR8?t=1400';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/hFZFjoX2cGg?t=721';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/JCcl--4PhF4?t=567';
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
                      word: """landing""",
                      // alsoEnglishWord: "also: landing",
                      britshText: """IpaUK: /ˈlændɪŋ/""",
                      americanText: """IpaUS: /ˈlændɪŋ/""",
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
کوردی: (فڕۆکە) نیشتنەوە، هاتنە نێو وشکانی‌یەوە،	دابەزین لە کەناردا،	لەنگەرگرتن لە کەناردا، لەنگەرگا، جێگای بارخستن، داگرتن،	پێ‌گۆڕکە، سەرپلیکان
"""),
// With short examples define "landing", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) نیشاندنەوەی هەلیکۆپتەرێک، فڕۆکەیەک، هتد"""),
                    SentencesRow(
                      englishText:
                          """The pilot was forced to make an emergency landing.""",
                      kurdishText:
                          """فڕۆکەوانەکە ناچاربوو نیشتنەوەی ناچاری ئەنجام بدات.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئەو شوێنەی کە دەکەوێتە بەشی سەرەوەی پلەکانەیەک و لێیەوە دەچیتە نهۆمی سەرەوە، دەچیتە سەر ڕیزە پلەکانەیەکی دیکە، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Go up to the first-floor landing and it’s the door on the right.""",
                      kurdishText:
                          """بچۆ سەرپلیکانەی نهۆمی یەکەم و یەکەم ژوورە بەلای ڕاستدا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    // skipped_meaning
                    // const DividerDefinition(),
                    // const DefinitionKurdish(text: """٣. (ناو) ئەوەی سەرباز بگەنە شوێنێک"""),
                    // const DividerSentences(),
                    // SentencesRow(
                    //   englishText: """speaksentence300""",
                    //   kurdishText: """رستە_رستە_رستە__رستە.""",
                    //   onPressedBritish: () => speaksentence3("en-GB"),
                    //   onPressedAmerican: () => speaksentence3("en-US"),
                    // ),
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
// end landing