import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryimplication extends StatefulWidget {
  const EnglishEntryimplication({super.key});

  @override
  State<EnglishEntryimplication> createState() =>
      _EnglishEntryimplicationState();
}

class _EnglishEntryimplicationState extends State<EnglishEntryimplication> {
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
- Noun: implication (Derived forms: implications)
1. Something that is inferred (deduced, entailed or implied) (- deduction, entailment)
"his resignation had political implications";
 
2. A meaning that is not expressly stated but can be inferred (- significance, import)
"the expectation was spread both by word and by implication";
 
3. An accusation that brings into intimate and usually incriminating connection
 
4. A logical relation between propositions p and q of the form 'if p then q'; if p is true then q cannot be false (- logical implication, conditional relation)
 
5. A relation implicated by virtue of involvement or close connection (especially an incriminating involvement)
"he was suspected of implication in several robberies"
""",
  );

  final String keyword = "implication";
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
    await flutterTts.speak("""implication""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They failed to consider the wider implications of their actions.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Now they realized the full implications of the new system.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I resent the implication that I don't care about my father.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He resigned after his implication in a sex scandal.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The clarity and precision of the articulation of his theory made it easy for even non-experts to understand its implications.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The changes have far-reaching implications for the food industry.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'Mx8JkGHaGUI';
    const double startSecondsend = 2143;
    const String videoIdone = 'QcUey-DVYjk';
    const double startSecondsone = 1802;
    const String videoIdtwo = 'YLmDE_JYUNU';
    const double startSecondstwo = 1170;
    const String videoIdthree = 'JcpboMScfIY';
    const double startSecondsthree = 2056;
    const String videoIdfour = 'j2KKUcxAdjc';
    const double startSecondsfour = 183;
    const String videoIdfive = 'Poe76zLndr8';
    const double startSecondsfive = 138;

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
                      word: """implication""",
                      // alsoEnglishWord: "also: implication",
                      britshText: """IpaUK: /ˌɪmplɪˈkeɪʃn/""",
                      americanText: """IpaUS: /ˌɪmplɪˈkeɪʃn/""",
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
کوردی: پێوەکردن، تووش‌کردن، تووش‌بوون، تێوەگلان،	واتای ناڕاستەوخۆ، لاواتا، ئاماژە، نیشانە، واتێگەیاندن، گەیاندن، چەمک،	لەخۆگرتن، تیابوون
"""),
// With short examples define "implication", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کاریگەری یان ئەنجامی بڕیار یان کارێک"""),
                    SentencesRow(
                      englishText:
                          """They failed to consider the wider implications of their actions.""",
                      kurdishText:
                          """شکستیان هێنا لەوەی ئەنجامە فراوانەکانی کارەکانیان لەبەرچاو بگرن.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Now they realized the full implications of the new system.""",
                      kurdishText:
                          """ئێستا هەستیان بە ئەنجامە تەواوەتییەکانی سیستەمە تازەکە کرد.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The clarity and precision of the articulation of his theory made it easy for even non-experts to understand its implications.""",
                      kurdishText:
                          "ڕوونی و وردی دەربڕینی بیرۆکەکەی وا ئاسانی کرد کە تەنانەت ناشارەزاکانیش لە دەرئەنجامەکانی تێ‌بگەن.",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The changes have far-reaching implications for the food industry.""",
                      kurdishText:
                          """گۆڕانەکان لێکەوتەی بەرفراوانیان دەبێت بۆ پیشەسازیی خۆراک.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) شتێک کە پێشنیار کراوە یان بە شێوەی ناڕاستەوخۆ گوتراوە"""),
                    SentencesRow(
                      englishText:
                          """I resent the implication that I don't care about my father.""",
                      kurdishText:
                          """ڕقم لەو واتێگەیاندنەیە کە گرنگی بە باوکم نادەم.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ئەوەی کە تێوەگلابیت یان کەسێک تێوەبگلێنیت، بە تایبەتی لە تاوانێک"""),
                    const AlsoEnglishckb(word: "ھەروەھا: involvement"),
                    SentencesRow(
                      englishText:
                          """He resigned after his implication in a sex scandal.""",
                      kurdishText:
                          """دەستی لەکار کێشایەوە لە دوای تێوەگلانی لە ئابڕووچوونێکی سێکسی.""",
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