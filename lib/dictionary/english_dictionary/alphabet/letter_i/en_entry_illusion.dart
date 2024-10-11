import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryillusion extends StatefulWidget {
  const EnglishEntryillusion({super.key});

  @override
  State<EnglishEntryillusion> createState() => _EnglishEntryillusionState();
}

class _EnglishEntryillusionState extends State<EnglishEntryillusion> {
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
- Noun: illusion (Derived forms: illusions)
1. An erroneous mental representation (- semblance)
"Artists use perspective in art to create an illusion of depth.";
 
2. Something that many people believe but is false (- fantasy, phantasy [archaic], fancy)
"they have the illusion that I am very wealthy";
 
3. The act of deluding; deception by creating illusory ideas (- delusion, head game)
 
4. An illusory feat; considered magical by naive observers (- magic trick, conjuring trick, trick, magic, legerdemain, conjuration, thaumaturgy, deception)
""",
  );

  final String keyword = "illusion";
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
    await flutterTts.speak("""illusion""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She's under the illusion that she'll get the job.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The new president has no illusions about the difficulties facing her country.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I have no illusions about her feelings for me.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The idea of absolute personal freedom is an illusion.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It turned out that their happy marriage was all an illusion.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Their marriage was an illusion and a deceit.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'hFZFjoX2cGg';
    const double startSecondsend = 411;
    const String videoIdone = 'D0x2dgpBDzc';
    const double startSecondsone = 225;
    const String videoIdtwo = 'pTysrwci0pU';
    const double startSecondstwo = 177;
    const String videoIdthree = 'SEZu7K5tGxw';
    const double startSecondsthree = 16;
    const String videoIdfour = 'CNeaQlA45cY';
    const double startSecondsfour = 0;
    const String videoIdfive = 'MfVetou0ERY';
    const double startSecondsfive = 38;

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
                      word: """illusion""",
                      // alsoEnglishWord: "also: illusion",
                      britshText: """IpaUK: /ɪˈluːʒn/""",
                      americanText: """IpaUS: /ɪˈluːʒn/""",
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
کوردی: بۆچوونی نادروست، خەیاڵی پڕوپووچ، بیری نادروست،	بەدرۆ تێگەیشتن،	هەڵەی بینایی،	ڕواڵەتی فریودەر،	تۆڕی دەم‌وچاو، ڕووبەند، پەچە، تۆڕی ڕوو
"""),
// With short examples define "illusion", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) باوەڕ یان تێگەشتنێکی هەڵە، بە تایبەتی لەسەر کەسێک یان دۆخێک"""),
                    SentencesRow(
                      englishText:
                          """She's under the illusion that (= believes wrongly that) she'll get the job.""",
                      kurdishText:
                          """لە ژێر ئەو خەیاڵە هەڵەیە کە کارەکە وەردەگرێت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The new president has no illusions about the difficulties facing her country (= she knows that the country has serious problems).""",
                      kurdishText:
                          """سەرۆکە تازەکە هیچ خەیاڵی پڕوپووچی نییە سەبارەت بە ئەو سەختییانەی کە ڕووبەڕووی وڵاتەکەی بووەتەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I have no illusions about her feelings for me (= I know the truth is that she does not love me).""",
                      kurdishText:
                          """هیچ خەیاڵی پڕوپووچم نییە سەبارەت بە هەستەکانی بۆم.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) شتێک کە وەها دەردەکەوێت بوونی هەبێت بەڵام لە ڕاستیدا بوونی نییە، یان وەک شتێک دەردەکەوێت کە وانییە"""),
                    SentencesRow(
                      englishText:
                          """The idea of absolute personal freedom is an illusion.""",
                      kurdishText: """بیرۆکەی ئازادیی کەسی ڕەها خەیاڵە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It turned out that their happy marriage was all an illusion.""",
                      kurdishText:
                          """ئەوە دەرکەوت کە هاوسەرگیرییە خۆشبەختەکەیان خەیاڵ بوو.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Their marriage was an illusion and a deceit.""",
                      kurdishText: "ھاوسەرگیرییەکە پڕوپووچ و فڕوفێڵ بوو.",
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