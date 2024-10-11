import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryintrigue extends StatefulWidget {
  const EnglishEntryintrigue({super.key});

  @override
  State<EnglishEntryintrigue> createState() => _EnglishEntryintrigueState();
}

class _EnglishEntryintrigueState extends State<EnglishEntryintrigue> {
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
- Noun: intrigue (Derived forms: intrigues)
1. A crafty and involved plot to achieve your (usually sinister) ends (- machination)
 
2. A clandestine love affair

- Verb: intrigue (Derived forms: intrigued, intrigues, intriguing)
1. Cause to be interested or curious (- fascinate)
 
2. Plot something harmful; scheme in an underhand manner (- scheme, connive)
""",
  );

  final String keyword = "intrigue";
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
    await flutterTts.speak("""intrigue""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The idea intrigued her.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You've really intrigued me—tell me more!""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The group decided to intrigue and ruin her reputation.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The young hero steps into a web of intrigue in the academic world.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I soon learnt about all the intrigues and scandals that went on in the little town.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'qg2nGY1aqlg';
    const double startSecondsend = 112;
    const String videoIdone = 'tsxmyL7TUJg';
    const double startSecondsone = 490;
    const String videoIdtwo = 'rk95JDlI9es';
    const double startSecondstwo = 222;
    const String videoIdthree = '43uTBB574g4';
    const double startSecondsthree = 11;
    const String videoIdfour = '_h95pZQiKwI';
    const double startSecondsfour = 966;
    const String videoIdfive = 'xjmXzYdxuTQ';
    const double startSecondsfive = 5;

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
                      word: """intrigue""",
                      // alsoEnglishWord: "also: intrigue",
                      britshText: """IpaUK: /ɪnˈtriːɡ/""",
                      americanText: """IpaUS: /ɪnˈtriːɡ/""",
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
کوردی: پیلان، داونانەوە، فێڵ‌وتەڵەکە، سازوباز، کەین‌وبەین، نەخشە،	پێوەندی لەبنەوە یان نهێنی
"""),
// With short examples define "intrigue", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) واکردنی ئەوەی کەسێک حەزێکی زۆری هەبێت و بیەوێت لەسەر شتێک بزانێت"""),
                    SentencesRow(
                      englishText: """The idea intrigued her.""",
                      kurdishText: """بیرۆکەکە سەرنجیی ڕاکێشا.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You've really intrigued me—tell me more!""",
                      kurdishText:
                          """بە ڕاستی سەرنجمت ڕاکێشاوە ـ زیاترم پێ بڵێ.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) بە نهێنی پلاندانان لەگەڵ خەڵکی دیکە بۆ بۆ زیان گەیاندن"""),
                    SentencesRow(
                      englishText:
                          """The group decided to intrigue and ruin her reputation.""",
                      kurdishText:
                          """گرووپەکە بڕیاریان دا پلان دابڕێژن و ناوبانگی لەکەدار بکەن.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) کاری پلاندانانی نهێنی بۆ بەدەستهێنانی شتێک، زۆرجار بە خەڵەتاندنی خەڵکی"""),
                    SentencesRow(
                      englishText:
                          """The young hero steps into a web of intrigue in the academic world.""",
                      kurdishText:
                          """پاڵەوانە گەنجەکە هەنگاو دەنێتە نێو تۆڕێکی پیلانگێڕی لە جیهانی ئەکادیمیدا..""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) پیلان یان پەیوەندی، بە تایبەتی کە تێیدا کەسێکی دیکە دەخەڵێت"""),
                    SentencesRow(
                      englishText:
                          """I soon learnt about all the intrigues and scandals that went on in the little town.""",
                      kurdishText:
                          """زوو ئاگادار بووم لەو پیلان و ئابڕووچوونانەی ناو شارۆچکە بچووکەکە.""",
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
// end intrigue