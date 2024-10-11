import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryill extends StatefulWidget {
  const EnglishEntryill({super.key});

  @override
  State<EnglishEntryill> createState() => _EnglishEntryillState();
}

class _EnglishEntryillState extends State<EnglishEntryill> {
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
- Adjective: ill (Derived forms: iller, illest)
1. Affected by an impairment of normal physical or mental function (- sick)
"ill from the monotony of his suffering";
 
2. Resulting in suffering or adversity
"ill effects"; "it's an ill wind that blows no good"
 
3. Distressing
"ill manners"; "of ill repute"
 
4. Indicating hostility or enmity
"you certainly did me an ill turn"; "ill feelings"; "ill will"
 
5. Presaging ill fortune (- inauspicious, ominous)
"ill omens"; "ill predictions";

- Adverb: ill
1. In a poor or unsatisfactory manner; not well (- badly, poorly)
"he was ill prepared"; "it ill befits a man to betray old friends"; "ill-fitting clothes"; "an ill-conceived plan";
 
2. Unfavourably or with disapproval (- badly)
"tried not to speak ill of the dead";
 
3. With difficulty or inconvenience; scarcely or hardly
"we can ill afford to buy a new car just now"

- Noun: ill (Derived forms: ills)
1. An often persistent bodily disorder or disease; a cause for complaining (- ailment, complaint)
 
2. That which causes harm, destruction or misfortune (- evil)
 
3. A source of difficulty (- trouble, problem, prob [informal])
""",
  );

  final String keyword = "ill";
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
    await flutterTts.speak("""ill""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Her father is seriously ill in St Luke's hospital.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Uncle Harry is terminally ill with cancer.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was taken ill suddenly.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We both started to feel ill shortly after the meal.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Shortly after drinking the water I was violently ill.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He fell ill and died soon after.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I can't eat bananas as they make me ill.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She'd been ill with cancer for months.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She suffered no ill effects from the experience.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He treated her very ill.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The animals had been grossly ill-treated.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They live in an area ill served by public transport.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We're wasting valuable time, time we can ill afford.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I can ill afford the time or the money for a holiday.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'hTqtGJwsJVE';
    const double startSecondsend = 3285;
    const String videoIdone = 'Cqbleas1mmo';
    const double startSecondsone = 401;
    const String videoIdtwo = 'xVQxvthAcLU';
    const double startSecondstwo = 82;
    const String videoIdthree = 'S3ksC_8jGuc';
    const double startSecondsthree = 244;
    const String videoIdfour = 'FQ4hvLqNfqo';
    const double startSecondsfour = 1323;
    const String videoIdfive = 'qeNvW8nQZgg';
    const double startSecondsfive = 47;

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
                      word: """ill""",
                      // alsoEnglishWord: "also: ill",
                      britshText: """IpaUK: /ɪl/""",
                      americanText: """IpaUS: /ɪl/""",
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
کوردی: نەخۆش، نێوەش، دەردمەن، ناڕەحەت، ناساز، ناساغ،	خراپ، نگریس، بەدشوم، گۆتاڵ، ڕەش
"""),
// With short examples define "ill", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) کە نەخۆشە"""),
                    SentencesRow(
                      englishText:
                          """Her father is seriously ill in St Luke's hospital.""",
                      kurdishText:
                          """باوکی بە سەختی نەخۆشە لە نەخۆشخانەی ساینت لیوک.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Uncle Harry is terminally ill with cancer (= he will die from his illness).""",
                      kurdishText: """مامە هاری کوشندانە نەخۆشە بە شێرپەنجە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She was taken ill suddenly.""",
                      kurdishText: """لەناکاو نەخۆش کەوت.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We both started to feel ill shortly after the meal.""",
                      kurdishText:
                          """هەردووکمان لە دوای ژەمە نانەکە نەخۆش کەوتین.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Shortly after drinking the water I was violently ill.""",
                      kurdishText:
                          """کەمێک دوای خواردنەوەی ئاوەکە بە خراپی نەخۆش بووم.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He fell ill and died soon after.""",
                      kurdishText: """نەخۆش کەوت و کەمێک دواتر مرد.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I can't eat bananas as they make me ill.""",
                      kurdishText: """ناتوانم مۆز بخۆم چونکە نەخۆشم ئەخەن.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She'd been ill with cancer for months.""",
                      kurdishText:
                          """بۆ چەندین مانگ بوو نەخۆش بوو بە شێرپەنجە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) خراپ و زیانبەخش"""),
                    SentencesRow(
                      englishText:
                          """She suffered no ill effects from the experience.""",
                      kurdishText:
                          """تووشی هیچ کاریگەری خراپ نەبوو بە ڕووداوەکە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵکار) بە شێوەیەکی ناشرین"""),
                    SentencesRow(
                      englishText: """He treated her very ill.""",
                      kurdishText: """زۆر خراپ مامەڵەی لەگەڵ کرد.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ھاوەڵکار) بە شێوەیەکی ناپەسەند"""),
                    SentencesRow(
                      englishText:
                          """The animals had been grossly ill-treated.""",
                      kurdishText:
                          """ئاژەڵەکان قێزەونانە خراپ مامەڵەیان لەگەڵ کرابوو.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They live in an area ill served by public transport.""",
                      kurdishText:
                          """لەناوچەیەک دەژین کە خراپ خزمەت دەکرێت بە کەرتی گواستنەوەی گشتی.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ھاوەڵکار) تەنها بە سەختییەوە"""),
                    SentencesRow(
                      englishText:
                          """We're wasting valuable time, time we can ill afford.""",
                      kurdishText:
                          """کاتی بەبەها بەهەدەر دەدەین، کاتێک کە بە ئەستەم هەمانە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I can ill afford the time or the money for a holiday.""",
                      kurdishText:
                          """بە ئەستەم دەتوانم کات و پارەی پشوو تەرخان بکەم.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
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