import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjack extends StatefulWidget {
  const EnglishEntryjack({super.key});

  @override
  State<EnglishEntryjack> createState() => _EnglishEntryjackState();
}

class _EnglishEntryjackState extends State<EnglishEntryjack> {
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
- Noun: jack (Derived forms: jacks)
1. One of four face cards in a deck bearing a picture of a young prince (- knave)
 
2. Tool for exerting pressure or lifting
 
3. Someone who works with their hands; someone engaged in manual labour (- laborer [US], manual laborer [US], labourer [Brit, Cdn], manual labourer [Brit, Cdn])
 
4. A small ball at which players aim in lawn bowling
 
5. An electrical device consisting of a connector socket designed for the insertion of a plug
 
6. Game equipment consisting of one of several small six-pointed metal pieces that are picked up while bouncing a ball in the game of jacks (- jackstones)
 
7. Small flag indicating a ship's nationality
 
8. Any of several fast-swimming predacious fishes of tropical to warm temperate seas
 
9. Male donkey (- jackass)
 
10. [N. Amer, informal] Anything at all (- doodly-squat [informal], diddly-squat [informal], diddlysquat [informal], diddly [N. Amer, informal], diddley [N. Amer, informal], squat [N. Amer, informal])
"you don't know jack";
 
11. [informal] Immense East Indian fruit resembling breadfruit; it contains an edible pulp and nutritious seeds that are commonly roasted (- jackfruit, jak)

- Verb: jack (Derived forms: jacks, jacking, jacked)
1. Lift with a special device (- jack up)
"jack up the car so you can change the tire";
 
2. Hunt with a jacklight (- jacklight [N. Amer])

- Noun: Jack
1. A man who serves as a sailor (- mariner, seaman, tar, Jack-tar, old salt, seafarer, gob [US, informal], sea dog)
""",
  );

  final String keyword = "jack";
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
    await flutterTts.speak("""jack""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""You need a car jack in order to change a tyre.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The headphone jack is broken on my phone.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I know jack about fashion, but I know what I like to wear.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There's jack shit to do here.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Someone jacked my phone.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I’m getting jack of his constant complaints.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/544DTGHIBM0?t=131';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/kTaYet07Ioo?t=493';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/JR4CanmB_d0?t=841';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/ki4Fbctwnjs';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/gwZuUxeBYV8?t=128';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/PPg1Nvv7zTM?t=347';
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
                      word: """jack""",
                      // alsoEnglishWord: "also: jack",
                      britshText: """IpaUK: /dʒæk/""",
                      americanText: """IpaUS: /dʒæk/""",
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
کوردی: هەڵێن، جەک، بەرزەک،	(پەڕێن) سەرباز،	ئاڵای کەشتی،	جۆرێ زرێ،	کابرا، بنیادەم، کوڕ، مرۆ، پیاو،	شاگرد، بەردەست، کارەکەر، نۆکەر،	(نافەرمی، ئەمریکا) پارە، پووڵ، دراو، کۆین، سکە، میت، مووش،	سەری دووکەڵ‌کێش
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئامێرێک بۆ بەرزکردنەوەی شتی قورس لە زەوی"""),
                    SentencesRow(
                      englishText:
                          """You need a car jack in order to change a tyre.""",
                      kurdishText:
                          """پێویستیت بە جەکی ئۆتۆمبێلە بۆ گۆڕینی تایە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) پەیوەندی ئەلیکترۆنی نێوان دوو ئامێر"""),
                    SentencesRow(
                      englishText:
                          """The headphone jack is broken on my phone.""",
                      kurdishText: """شوێن هێدفۆنی مۆبایلەکەم شکاوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٣. (ناو) هیچ شتێک"""),
                    SentencesRow(
                      englishText:
                          """I know jack about fashion, but I know what I like to wear.""",
                      kurdishText:
                          """هیچ لەسەر فاشن نازانم، بەڵام دەزانم چی لەبەر بکەم.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """There's jack shit to do here.""",
                      kurdishText: """هیچ نییە لێرە بکرێت.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (کردار) دزینی شتێک لە کەسیک"""),
                    SentencesRow(
                      englishText: """Someone jacked my phone.""",
                      kurdishText: """کەسێک موبایلەکەی دزیم.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) بێزار یان ماندوو لە ک/شت"""),
                    SentencesRow(
                      englishText:
                          """I’m getting jack of his constant complaints.""",
                      kurdishText:
                          """خەریکە بێزار دەبم لە بۆڵەبۆڵی بەردەوامی.""",
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
// end jack