import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryknit extends StatefulWidget {
  const EnglishEntryknit({super.key});

  @override
  State<EnglishEntryknit> createState() => _EnglishEntryknitState();
}

class _EnglishEntryknitState extends State<EnglishEntryknit> {
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
- Verb: knit (Derived forms: knits, knitted, knitting)
1. (handicraft) make (textiles) by knitting
"knit a scarf"
 
2. Tie or link together (- entwine, intwine [archaic])
 
3. To gather something into small wrinkles or folds (- pucker, rumple, cockle, crumple)
"She knitted her lips";

- Noun: knit (Derived forms: knits)
1. A fabric made by knitting
 
2. A basic knitting stitch made by putting the needle through the front of the stitch from the lefthand side (- knit stitch, plain, plain stitch)
 
3. Needlework created by interlacing yarn in a series of connected loops using straight eyeless needles or by machine (- knitting, knitwork)
""",
  );

  final String keyword = "knit";
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
    await flutterTts.speak("""knit""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Lucy was sitting on the sofa, knitting.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's knitting the baby a pair of socks.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Knit the dress row by row.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Society is knit together by certain commonly held beliefs.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The bone failed to knit correctly.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Winter knits are perfect for chilly mornings.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/qQ01eLt_bxo?t=415';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/dtp6b76pMak?t=209';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/jgkMFBDyzE8?t=996';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/BztMgcNgobk?t=478';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/ht7MNqZT_hU?t=857';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/lGITudIVBE8?t=31';
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
                      word: """knit""",
                      // alsoEnglishWord: "also: knit",
                      britshText: """IpaUK: knit""",
                      americanText: """IpaUS: knit""",
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
کوردی: جۆش‌خواردوو، یەک‌گرتوو، گیرساو، پێک‌چەسپیو
"""),
// With short examples define "knit", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) درووستکردنی جلوبەرگ لە خوری، لۆکە، یان دەزووی دیکە بە دەرزی چنینی درێژ و باریک یان بە ئامێرێک"""),
                    SentencesRow(
                      englishText:
                          """Lucy was sitting on the sofa, knitting.""",
                      kurdishText:
                          """لووسی لەسەر قەنەفەکە دانیشتبوو چنینی دەکرد.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She's knitting the baby a pair of socks.""",
                      kurdishText: """جووتێک گۆرەوی بۆ منداڵەکە دەچنێت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) بەکارهێنانی سادەترین جۆری تەقەڵ لە کاتی چنین"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Knit the dress row by row.""",
                      kurdishText: """کراسەکە ڕیز بە ڕیز بچنە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) ئەوەی یان شت لە نزیک یەکەوە دابنێیت یان پێکەوەیان ببەستیت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Society is knit together by certain commonly held beliefs.""",
                      kurdishText:
                          """کۆمەڵگە بە ژمارەیەک باوەڕی باوەوە پێکەوە گرێدراون.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) دووبارە پێکەوە گەشەکردن بۆ درووستکردنی یەک پارچە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: mend"),
                    SentencesRow(
                      englishText: """The bone failed to knit correctly.""",
                      kurdishText:
                          """ئێسکەکە نەیتوانی بەدرووستی درووست ببێتەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) پارچە جلێکی چندراو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Winter knits are perfect for chilly mornings.""",
                      kurdishText:
                          """جلی چندراوی زستانان زۆر باشە بۆ بەیانیانی سارد.""",
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
// end knit