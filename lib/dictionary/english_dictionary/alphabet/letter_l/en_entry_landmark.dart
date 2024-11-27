import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylandmark extends StatefulWidget {
  const EnglishEntrylandmark({super.key});

  @override
  State<EnglishEntrylandmark> createState() => _EnglishEntrylandmarkState();
}

class _EnglishEntrylandmarkState extends State<EnglishEntrylandmark> {
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
- Noun: landmark (Derived forms: landmarks)
1. The position of a prominent or well-known object in a particular landscape
"the church steeple provided a convenient landmark"
 
2. An event marking a unique or important historical change of course or one on which important developments depend (- turning point, watershed, cusp)
"the agreement was a landmark in the history of both nations";
 
3. A mark showing the boundary of a piece of land
 
4. (surgery) an anatomical structure used as a point of origin in locating other anatomical structures (as in surgery) or as point from which measurements can be taken
""",
  );

  final String keyword = "landmark";
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
    await flutterTts.speak("""landmark""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The tower was once a landmark for ships.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The Empire State Building is a familiar landmark on the New York skyline.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The ceasefire was seen as a major landmark in the fight against terrorism.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The magazine's 150th anniversary was an important publishing landmark.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The film is an important landmark in the history of the cinema.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The building has been designated a historical landmark.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/hapSlAP2xrc?t=366';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/IgF3OX8nT0w?t=616';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/Unzc731iCUY?t=466';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/RAYFXblKn4c?t=55';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/io6wi8DVZ3o?t=246';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/sKwqfH6Jpkc';
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
                      word: """landmark""",
                      // alsoEnglishWord: "also: landmark",
                      britshText: """IpaUK: /ˈlændmɑːk/""",
                      americanText: """IpaUS: /ˈlændmɑːrk/""",
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
کوردی: نیشانەی سەرسنوور، سنوورنیشان،	نیشانە، بەرژەنگ، ڕێ‌پیشاندەر،	خاڵی وەرچەرخان، ڕووداوێکی گرنگ یان گەورە
"""),
// With short examples define "landmark", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) شتێک، بۆ نموونە بینایەکی گەورە، کە لە دوورەوە بە ڕوونی دەیبینی و لە ڕێگەیەوە دەزانیت لە کوێیت"""),
                    SentencesRow(
                      englishText:
                          """The tower was once a landmark for ships.""",
                      kurdishText:
                          """تاوەرەکە جاران سنوورنیشانێک بوو بۆ کەشتی.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The Empire State Building is a familiar landmark on the New York skyline.""",
                      kurdishText:
                          """بینای ئیمپایەر ستەیت ڕێ‌پیشاندەرێکی ناسراوی ئاسمانی نیویۆرکە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) بۆنە، دۆزینەوە، داهێنانێک، هتد کە قۆناغێکی گرنگە لە شتێکدا"""),
                    const AlsoEnglishckb(word: "ھەروەھا: milestone"),
                    SentencesRow(
                      englishText:
                          """The ceasefire was seen as a major landmark in the fight against terrorism.""",
                      kurdishText:
                          """ئاگربەستەکە وەک قۆناغێکی گرنگی جەنگ دژ بە تیرۆریزم بینرا.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The magazine's 150th anniversary was an important publishing landmark.""",
                      kurdishText:
                          """ساڵیادی ١٥٠ ساڵەی گۆڤارەکە قۆناغێکی گرنگی بڵاوکردنەوە بوو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The film is an important landmark in the history of the cinema.""",
                      kurdishText:
                          """فیلمەکە قۆناغێکی گرنگی مێژووی سینەمایە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) بینایەک کە زۆر گرنگە بەهۆی مێژووەکەی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The building has been designated a historical landmark.""",
                      kurdishText: """بیناکە وەک شوێنێکی مێژووی ناسێندراوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
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
// end landmark