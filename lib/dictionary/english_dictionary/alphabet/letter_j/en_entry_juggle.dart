import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjuggle extends StatefulWidget {
  const EnglishEntryjuggle({super.key});

  @override
  State<EnglishEntryjuggle> createState() => _EnglishEntryjuggleState();
}

class _EnglishEntryjuggleState extends State<EnglishEntryjuggle> {
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
- Noun: juggle (Derived forms: juggles)
1. The act of rearranging things to give a misleading impression (- juggling)
 
2. Throwing and catching several objects simultaneously (- juggling)

- Verb: juggle (Derived forms: juggling, juggles, juggled)
1. Influence by slyness (- beguile, hoodwink)
 
2. Manipulate by or as if by moving around components
"juggle an account so as to hide a deficit"
 
3. Deal with simultaneously
"She had to juggle her job and her children"
 
4. Throw, catch, and keep in the air several things simultaneously
 
5. Hold with difficulty and balance insecurely
"the player juggled the ball"
""",
  );

  final String keyword = "juggle";
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
    await flutterTts.speak("""juggle""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My uncle taught me to juggle.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""It can be difficult to juggle parenting and a job.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/67JzSRnyXr4?t=881';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/TvAMdsIc_Ow?t=363';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/pLUy9VzwnyM?t=29';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/oZlYPyJuMM8?t=469';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/joQHh8XzPLU?t=65';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/0yv6smozK9M?t=165';
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
                      word: """juggle""",
                      // alsoEnglishWord: "also: juggle",
                      britshText: """IpaUK: /ˈdʒʌɡl/""",
                      americanText: """IpaUS: /ˈdʒʌɡl/""",
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
کوردی: 
"""),
// With short examples define "juggle", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) فڕێدانی سێ یان زیاتر لە شتێک، بۆ نموونە تۆپ، و دووبارە گرتنەوەیان بە خێرایی یەک بە یەک، بەوەی کە بەردەوام دانەیەکیان لە حەوادا بمێنێت"""),
                    SentencesRow(
                      englishText: """My uncle taught me to juggle.""",
                      kurdishText:
                          """مامم/خاڵم فێری کردم چۆن هەڵدان و گرتنەوە بکەم.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) هەوڵدان بۆ ئەوەی مامەڵە لەگەڵ دوو یان زیاتر لە کار و چالاکیی گرنگ بکەیت لە هەمان کاتدا بۆ ئەوەی هەموویانت هەبێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It can be difficult to juggle parenting and a job.""",
                      kurdishText:
                          """دەکرێت سەخت بێت دایک و باوکایەتی بکەیت و کارێکت هەبێت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    // add_more_sentences
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
// end juggle