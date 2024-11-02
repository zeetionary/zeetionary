import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjug extends StatefulWidget {
  const EnglishEntryjug({super.key});

  @override
  State<EnglishEntryjug> createState() => _EnglishEntryjugState();
}

class _EnglishEntryjugState extends State<EnglishEntryjug> {
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
- Noun: jug (Derived forms: jugs)
1. A large bottle with a narrow mouth
 
2. The quantity contained in a jug (- jugful)
 
3. [Brit, slang] A prison (- nick [Brit, slang], quod [Brit, slang])
"he's in the jug";

- Verb: jug (Derived forms: jugging, jugs, jugged)
1. [N. Amer, informal] (law) lock up or confine, in or as in a jail (- imprison, incarcerate, lag, immure, put behind bars, jail, gaol [Brit], put away, remand, prison [archaic])
"The suspects were jugged without trial";
 
2. (cooking) stew in an earthenware jug
"jug the rabbit"
""",
  );

  final String keyword = "jug";
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
    await flutterTts.speak("""jug""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The water jug sat on the kitchen table.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She filled the small glasses from the whiskey jug.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She spilled a jug of water.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He blushed when someone mentioned her jugs.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/D6V85qfsu3g?t=273';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/GIMVge5TYz4?t=2';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/AAGIi62-sAU?t=882';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/iqUPl4gXJBs?t=10';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/0nGHx7cYVWk?t=136';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/ysTPxUZnZaU?t=833';
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
                      word: """jug""",
                      // alsoEnglishWord: "also: jug",
                      britshText: """IpaUK: /dʒʌɡ/""",
                      americanText: """IpaUS: /dʒʌɡ/""",
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
کوردی: پارچ، گۆزەڵە، تۆنگە، جەڕە، ئاڤکینە، پڕپارچێ
"""),
// With short examples define "jug", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کاسەیەک کە دەسکێکی هەیە لەگەڵ دەمێکدا کە ئاوی تێدەکرێت"""),
                    const AlsoEnglishckb(
                        word: "ھەروەھا ئینگلیزیی ئەمریکی: pitcher"),
                    SentencesRow(
                      englishText:
                          """The water jug sat on the kitchen table.""",
                      kurdishText:
                          """سووراحییە ئاوەکە لەسەر مێزی چێشتخانەکە بوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) دەفرێکی خڕی گەورە کە دەسکێکی هەیە و لەسەرەوە دەمێکی هەیە کە دەبەسترێت و ئاوی تێ دەکرێت"""),
                    const AlsoEnglishckb(
                        word: "ھەروەھا ئینگلیزیی بەریتانی: pitcher"),
                    SentencesRow(
                      englishText:
                          """She filled the small glasses from the whiskey jug.""",
                      kurdishText:
                          """گڵاسە بچووکەکانی لە جەڕە ویسکییەکە پڕکرد.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) ئەو بڕە شلەیەی کە لە کاسەیەکدایە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She spilled a jug of water.""",
                      kurdishText: """سووراحییەک/جەڕەیەک ئاوی ڕشت.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٤. (ناو) سنگی ژن"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He blushed when someone mentioned her jugs.""",
                      kurdishText: """سووربوویەوە کە باسی مەمکەکانیی کرد.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
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
// end jug