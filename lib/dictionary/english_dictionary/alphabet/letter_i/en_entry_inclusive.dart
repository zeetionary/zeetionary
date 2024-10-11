import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinclusive extends StatefulWidget {
  const EnglishEntryinclusive({super.key});

  @override
  State<EnglishEntryinclusive> createState() => _EnglishEntryinclusiveState();
}

class _EnglishEntryinclusiveState extends State<EnglishEntryinclusive> {
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
- Adjective: inclusive
1. Including much or everything; and especially including stated limits
"an inclusive art form"; "an inclusive fee"; "his concept of history is modern and inclusive"; "from Monday to Friday inclusive"
 
2. Including or providing for all relevant people, including those that might otherwise have been marginalized or excluded (such as people with disability or with a minority religion, ethnicity or sexuality)
""",
  );

  final String keyword = "inclusive";
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
    await flutterTts.speak("""inclusive""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The fully inclusive fare for the trip is £52.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The rent is inclusive of water and heating.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We are offering free holidays for children aged two to eleven inclusive.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The castle is open daily from May to October inclusive.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The party must adopt more inclusive strategies and a broader vision.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'HAnw168huqA';
    const double startSecondsend = 666;
    const String videoIdone = 'SwQhKFMxmDY';
    const double startSecondsone = 7119;
    const String videoIdtwo = 'JR3z8lq2cNM';
    const double startSecondstwo = 246;
    const String videoIdthree = 'D6Nt0JFM3_A';
    const double startSecondsthree = 702;
    const String videoIdfour = 'd6S0u8VENOE';
    const double startSecondsfour = 38;
    const String videoIdfive = 'qVfJheBp7Ys';
    const double startSecondsfive = 81;

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
                      word: """inclusive""",
                      // alsoEnglishWord: "also: inclusive",
                      britshText: """IpaUK: /ɪnˈkluːsɪv/""",
                      americanText: """IpaUS: /ɪnˈkluːsɪv/""",
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
کوردی: گشتگرەوە، لەخۆگرتووی، بەرکەوتووی، داگری، تیابووی،	سەرجەم، تێکڕا، تا ئاخری، تا کۆتایی
"""),
// With short examples define "inclusive", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کە نرخی تەواوە، یان نرخی تەواوی ئەو شتەیە کە باسکراوە"""),
                    SentencesRow(
                      englishText:
                          """The fully inclusive fare for the trip is £52.""",
                      kurdishText:
                          """کرێی بە تەواوی حسابکراو بۆ گەشتەکە ٥٢ پاوەندە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The rent is inclusive of water and heating.""",
                      kurdishText: """کرێ خانووەکە ئاو و گەرمی.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) کە تەواوی ئەو ڕۆژ، مانگ، ژمارە، هتد لەخۆ دەگرێت کە باسکراون"""),
                    SentencesRow(
                      englishText:
                          """We are offering free holidays for children aged two to eleven inclusive.""",
                      kurdishText:
                          """پشووی بێ‌بەرامبەرمان هەیە بۆ منداڵان لە ٢ ساڵی تەواو بۆ ١١ ساڵی تەواو.""",
                      englishNote:
                          """This means that the offer applies to children who are between the ages of two and eleven, including both ages. The word "inclusive" indicates that children who are exactly two or exactly eleven years old are also part of the offer.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The castle is open daily from May to October inclusive.""",
                      kurdishText:
                          """قەڵاکە ڕۆژانە کراوەیە لە تەواوی ئایار بۆ تشرینی یەکەم.""",
                      englishNote:
                          """This means that the castle is open every day, starting in May and continuing through to the end of October. The word "inclusive" indicates that both May and October are included in the period when the castle is open.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) کە بە ئەنقەست خەڵکی، شت، بیرۆکە، هتد لە هەموو بەشەکانی کۆمەڵگا، بیرکردنەوە، هتد لەخۆ دەگرێت"""),
                    SentencesRow(
                      englishText:
                          """The party must adopt more inclusive strategies and a broader vision.""",
                      kurdishText:
                          """پارتەکە دەبێت ستراتیژی زیاتر لەخۆگرتوو و دیدی فراوانتری هەبێت.""",
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