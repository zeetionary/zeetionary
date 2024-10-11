import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinstinct extends StatefulWidget {
  const EnglishEntryinstinct({super.key});

  @override
  State<EnglishEntryinstinct> createState() => _EnglishEntryinstinctState();
}

class _EnglishEntryinstinctState extends State<EnglishEntryinstinct> {
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
- Noun: instinct (Derived forms: instincts)
1. Inborn pattern of behaviour often responsive to specific stimuli (- inherent aptitude)
"altruistic instincts in social animals"; "the spawning instinct in salmon";
 
2. An intuitive judgement or feeling about the best way to act, not based on rational conscious thought
"Debbie's instinct was to distrust John"

- Adjective: instinct
1. (followed by 'with') deeply filled or permeated (- replete, imbued)
"words instinct with love";
""",
  );

  final String keyword = "instinct";
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
    await flutterTts.speak("""instinct""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She did not seem to have any of the usual maternal instincts.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Children do not know by instinct the difference between right and wrong.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His first instinct was to run away.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I've always trusted my instincts in the past.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It's best to follow your first instincts in matters like this.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'MGO4_8YRKro';
    const double startSecondsend = 419;
    const String videoIdone = 'lex6USTugUU';
    const double startSecondsone = 788;
    const String videoIdtwo = 'PkUg89kLLBE';
    const double startSecondstwo = 572;
    const String videoIdthree = 'D8tPkb98Fkk';
    const double startSecondsthree = 433;
    const String videoIdfour = '8eq2vGEEbB4';
    const double startSecondsfour = 380;
    const String videoIdfive = 'g9QneAV4fVo';
    const double startSecondsfive = 670;

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
                      word: """instinct""",
                      // alsoEnglishWord: "also: instinct",
                      britshText: """IpaUK: /ˈɪnstɪŋkt/""",
                      americanText: """IpaUS: /ˈɪnstɪŋkt/""",
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
کوردی: زگماک(ـە)، ئینتستینکت، واڕسک،	پژەڵ، پاگەز، مەیل، ویست، ویست یان شارەزایی سروشتی، ئینتیوشێن، هۆشی سروشتی گیانەوەران، توانایی زگماکی، مرخ
"""),
// With short examples define "instinct", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) خاسیەتێکی سرووشتی کە وادەکات مرۆڤ و ئاژەڵان بە شێوەیەکی دیاریکراو ڕەفتار بکەن بەو زانیاری و توانایەی کە لە لەدایکبوونەوە هەیانە نەک بە بیرکردنەوە و ڕاهێنان"""),
                    SentencesRow(
                      englishText:
                          """She did not seem to have any of the usual maternal instincts.""",
                      kurdishText:
                          """وەها دەرنەدەکەوت کە هیچ هەستێکی سرووشتیی دایکایەتیی هەبێت.""",
                      englishNote:
                          """This means she didn't appear to show the typical natural feelings or behaviors associated with being a mother, such as nurturing or protecting.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Children do not know by instinct the difference between right and wrong.""",
                      kurdishText:
                          """منداڵان بە توانای سرووشتی جیاوازیی نێوان ڕاست و هەڵە نازانن.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """His first instinct was to run away.""",
                      kurdishText: """یەکەم کاردانەوەیی سرووشتیی ڕاکردن بوو.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) هەستێک کە وەهات لێدەکات شتیک بکەیت یان باوەڕ بکەیت شتێک ڕاستە، ئەگەرچی پشتی بە ڕاستی یان شتێکی عاقڵانی نەبەستووە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: intuition"),
                    SentencesRow(
                      englishText:
                          """I've always trusted my instincts in the past.""",
                      kurdishText:
                          """هەمیشە لە ڕابردوودا متمانەم بە هەستە زگماکییەکانم هەبووە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It's best to follow your first instincts in matters like this.""",
                      kurdishText:
                          """وەها باشترە شوێن یەکەمین هەستەکانت بکەویت لە بابەتی وەهادا.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
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
// end instinct