import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryking extends StatefulWidget {
  const EnglishEntryking({super.key});

  @override
  State<EnglishEntryking> createState() => _EnglishEntrykingState();
}

class _EnglishEntrykingState extends State<EnglishEntryking> {
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
- Noun: king (Derived forms: kings)
1. A male sovereign; ruler of a kingdom (- male monarch, Rex)
 
2. A competitor who holds a preeminent position (- queen, world-beater)
 
3. A very wealthy or powerful businessman (- baron, big businessman, business leader, magnate, mogul, power, top executive, tycoon)
"an oil king";
 
4. Preeminence in a particular category, group or field
"the lion is the king of beasts"
 
5. One of the four playing cards in a deck bearing the picture of a king
 
6. (chess) the weakest but the most important piece
 
7. (draughts) a checker that has been moved to the opponent's first row where it is promoted to a piece that is free to move either forward or backward

- Verb: king (Derived forms: kinging, kings, kinged)
1. Rule or act like a king
 
2. Make a king
""",
  );

  final String keyword = "king";
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
    await flutterTts.speak("""king""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He died bravely, serving his king.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was crowned king at the age of fifteen.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The kings of Sicily also ruled over the southern part of Italy.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Charles remained a close ally to the French king throughout his reign.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The lion is the king of the jungle.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He is the undisputed king of football.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """King penguins are excellent swimmers and dive deep for fish.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The king can move one square in any direction.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/uiUwgPyLQ2g?t=6';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/cvZO_0R-QeY?t=877';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/O2JMwcxmeTA?t=249';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/FbCIhb40d8g?t=133';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/zdRfMdhmisk?t=82';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/vCZnJZmVSFM?t=3';
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
                      word: """king""",
                      // alsoEnglishWord: "also: king",
                      britshText: """IpaUK: /kɪŋ/""",
                      americanText: """IpaUS: /kɪŋ/""",
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
کوردی: پادشا، پاتشا، پاشا، قەڕاڵ، شا،	(شەترەنج، پەڕێن و هتد) شا،	کەڵ، بەهێز، بەدەسەڵات، دەس‌ڕۆیشتوو
"""),
// With short examples define "king", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) پاشا؛ پیاوێک کە دەسەڵاتداری وڵاتێکە کە خێزانی شاهانەی هەیە"""),
                    SentencesRow(
                      englishText: """He died bravely, serving his king.""",
                      kurdishText:
                          """بە بوێرانە مرد کە خزمەتی پاشاکەیی دەکرد.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was crowned king at the age of fifteen.""",
                      kurdishText:
                          """لە تەمەنی ١٥ ساڵیدا تاجی پاشایەتی لەسەر نرا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The kings of Sicily also ruled over the southern part of Italy.""",
                      kurdishText:
                          """پاشاکانی سیسیلی هەروەها دەسەڵاتیان هەبوو بەسەر باشووری ئیتالیادا.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Charles remained a close ally to the French king throughout his reign.""",
                      kurdishText:
                          """چارڵس وەک هاوپەیمانێکی نزیکی پاشای فەرەنسا مایەوە لە ماوەی دەسەڵاتدارییدا.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) کەسێک، ئاژەڵێک، یان شتێک کە بە باشترین یان گرنگترینی جۆرێکی دیاریکراو دادەندرێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The lion is the king of the jungle.""",
                      kurdishText: """شێر پاشای دارستانە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He is the undisputed king of football.""",
                      kurdishText: """باشترینی بێ‌ڕکابەری تۆپی‌پێیە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) لە ناوی لێکدراو لەگەڵ ناوی ئاژەڵ و ڕووەک بەکاردێت بۆ ناوهێنانی جۆرێکی گەورە لەو شطەی باسکراوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """King penguins are excellent swimmers and dive deep for fish.""",
                      kurdishText:
                          """پەنگوینە گەورەکان مەلەوانی زۆر باشن و بە قووڵی دەچنە ئاو بۆ ماسی.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) گرنگترین پارچەی یاریی شەترەنج"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The king can move one square in any direction.""",
                      kurdishText:
                          """شا دەتوانێت یەک چوارگۆشە بە هەموو لایەکدا بجووڵێت.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
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
// end king