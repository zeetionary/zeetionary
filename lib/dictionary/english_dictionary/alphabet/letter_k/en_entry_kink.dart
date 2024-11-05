import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrykink extends StatefulWidget {
  const EnglishEntrykink({super.key});

  @override
  State<EnglishEntrykink> createState() => _EnglishEntrykinkState();
}

class _EnglishEntrykinkState extends State<EnglishEntrykink> {
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
- Noun: kink (Derived forms: kinks)
1. A sharp bend in a line produced when a line having a loop is pulled tight (- twist, twirl)
 
2. [N. Amer] A painful muscle spasm especially in the neck or back (- crick, rick [Brit], wrick [Brit])
 
3. A person with unusual sexual tastes
 
4. An eccentric idea
 
5. A difficulty or flaw in a plan or operation
"there are still a few kinks to iron out"

- Verb: kink (Derived forms: kinks, kinked, kinking)
1. Curl tightly (- crimp, crape, frizzle, frizz, kink up)
"kink hair";
 
2. Form a curl, curve, or kink (- curl, curve)
""",
  );

  final String keyword = "kink";
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
    await flutterTts.speak("""kink""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There was a kink in the pipe.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We need to iron out the kinks in the new system.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The club is popular with people who are into kink.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/LP6ppSM3xq4?t=498';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/rRymSi8SmqA?t=843';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/y1sF6ZeASU0?t=408';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/qTPKGVrFtQU?t=143';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/zhWWcWtAUoY?t=161';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/qVfJheBp7Ys?t=1645';
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
                      word: """kink""",
                      // alsoEnglishWord: "also: kink",
                      britshText: """IpaUK: /kɪŋk/""",
                      americanText: """IpaUS: /kɪŋk/""",
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
کوردی: تێک‌ئاڵان، تێک‌گیران، گیر، ئاڵۆسکان، لێک‌گیرکردن، قەف‌قەف‌بوون، قەف‌دان، پێچ، بادران، پێچ‌کەوتن، گرێ‌کەوتن، (قژ) لوولی،	کێشەی دەروونی یان ئاکاری، گرێی دەروونی،	ئاستەنگ، گێرەوکێشە، کێشە، کەم‌وکوڕی، عەیب
"""),
// With short examples define "kink", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ناو) چەمانەوەیەک لە شتێکی ڕاست"""),
                    SentencesRow(
                      englishText: """There was a kink in the pipe.""",
                      kurdishText: """چەمانەوەیەک لە بۆرییەکە هەبوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) کێشەیەکی بچووک لە پلانێک، سیستەمێک، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We need to iron out the kinks in the new system.""",
                      kurdishText:
                          """دەبێت کێشەکانی سیستەمە تازەکە چارەسەر بکەین.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) حەزی سێکسی کەسی کەسێک کە زۆر کەس بە نائاسایی دادەنێن"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The club is popular with people who are into kink.""",
                      kurdishText:
                          """یانەکە لای ئەو کەسانە ناسراوە کە حەزیان بە خولیای نائاسایی سێکسی هەیە.""",
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
// end kink