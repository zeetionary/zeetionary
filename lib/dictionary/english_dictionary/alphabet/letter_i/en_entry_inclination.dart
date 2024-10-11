import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinclination extends StatefulWidget {
  const EnglishEntryinclination({super.key});

  @override
  State<EnglishEntryinclination> createState() =>
      _EnglishEntryinclinationState();
}

class _EnglishEntryinclinationState extends State<EnglishEntryinclination> {
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
- Noun: inclination (Derived forms: inclinations)
1. An attitude of mind especially one that favours one alternative over others (- disposition, tendency)
"he had an inclination to give up too easily";
 
2. That toward which you are inclined to feel a liking
"her inclination is for classical music"
 
3. The property possessed by a line or surface that departs from the vertical (- tilt, list, lean, leaning)
"he walked with a heavy inclination to the right";
 
4. A characteristic likelihood of or natural disposition toward a certain condition or character or effect (- tendency)
"the alkaline inclination of the local waters";
 
5. (geometry) the angle formed by the x-axis and a given line (measured counterclockwise from the positive half of the x-axis) (- angle of inclination)
 
6. (physics) the angle that a magnetic needle makes with the plane of the horizon (- dip, angle of dip, magnetic dip, magnetic inclination)
 
7. (astronomy) the angle between the plane of the orbit and the plane of the ecliptic stated in degrees (- inclination of an orbit)
 
8. The act of inclining; bending forward (- inclining)
"an inclination of his head indicated his agreement";
""",
  );

  final String keyword = "inclination";
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
    await flutterTts.speak("""inclination""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He did not show the slightest inclination to leave.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""My natural inclination is to find a compromise.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She had neither the time nor the inclination to help them.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """There is an inclination to treat geography as a less important subject.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """There is an inclination to present a one-sided view of the researchers' findings.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The panels are placed at an inclination of 45 degrees.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The earth's angle of inclination remains constant as it orbits the sun.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'qQ01eLt_bxo';
    const double startSecondsend = 1519;
    const String videoIdone = 'cCP9vjp4kSg';
    const double startSecondsone = 1891;
    const String videoIdtwo = '62EGPCEmeh4';
    const double startSecondstwo = 108;
    const String videoIdthree = 'B4Jlofn3qZI';
    const double startSecondsthree = 545;
    const String videoIdfour = 'oU0uNGUxdyo';
    const double startSecondsfour = 23;
    const String videoIdfive = 'BriBDiBxaMY';
    const double startSecondsfive = 1319;

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
                      word: """inclination""",
                      // alsoEnglishWord: "also: inclination",
                      britshText: """IpaUK: /ˌɪnklɪˈneɪʃn/""",
                      americanText: """IpaUS: /ˌɪnklɪˈneɪʃn/""",
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
کوردی: داهاتنەوە، چەمانەوە، چەماندنەوە، نووشتاندنەوە، داهێنانەوە،	مەیل، ئارەزوو، لاربوونەوە، داشکانەوە، چەسپان، ویست،	لێژی، خواری، سەرەوخواری، لاری،	ئاست یا ڕادەی لێژی،	پلە یا ئاستی لادان
"""),
// With short examples define "inclination", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ناو) هەستێک کە وات لێدەکات شتێک بکەیت"""),
                    SentencesRow(
                      englishText:
                          """He did not show the slightest inclination to leave.""",
                      kurdishText: """هیچ ویستێکی ڕۆشتنی پیشان نەدا.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """My natural inclination is to find a compromise.""",
                      kurdishText: """حەزی سرووشتیم ئەوەیە سازشێک بدۆزمەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She had neither the time nor the inclination to help them.""",
                      kurdishText:
                          """نە کات و نە ویستی هەبوو تا یارمەتییان بدات.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ڕێگایەکی تازەی کردنی شتێک کە خەریکە دەست بە گەشە دەکات"""),
                    SentencesRow(
                      englishText:
                          """There is an inclination to treat geography as a less important subject.""",
                      kurdishText:
                          """ویستێک هەیە بۆ مامەڵەکردن لەگەڵ جوگرافیا وەک بابەتێکی کەمتر گرنگ.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There is an inclination to present a one-sided view of the researchers' findings.""",
                      kurdishText:
                          """ویستێک هەیە بۆ پیشاندانی دیدی یەکلایەنەی دۆزینەوەی توێژەران.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٣. (ناو) ئاستی لێژی"""),
                    SentencesRow(
                      englishText:
                          """The panels are placed at an inclination of 45 degrees.""",
                      kurdishText: """تەختەکان لە لێژایی ٤٥ پلە دادەنرێن.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The earth's angle of inclination remains constant as it orbits the sun.""",
                      kurdishText:
                          """گۆشەی لێژی زەوی بە جێگیری دەمێنێتەوە کە بە دەوری خۆردا دەسووڕێتەوە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
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