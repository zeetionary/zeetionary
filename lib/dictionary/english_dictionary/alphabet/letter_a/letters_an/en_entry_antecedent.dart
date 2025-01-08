import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantecedent extends StatefulWidget {
  const EnglishEntryantecedent({super.key});

  @override
  State<EnglishEntryantecedent> createState() => _EnglishEntryantecedentState();
}

class _EnglishEntryantecedentState extends State<EnglishEntryantecedent> {
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
- Adjective: antecedent 
1. Preceding in time or order

- Noun: antecedent (derived forms: antecedents)
1. Someone from whom you are descended (but usually more remote than a grandparent) (= ancestor, ascendant, ascendent, root)
 
2. A preceding occurrence, cause or event
 
3. Anything that precedes something similar in time (= forerunner)
"phrenology was an antecedent of modern neuroscience";
 
4. The referent of an anaphor; a phrase or clause that is referred to by an anaphoric pronoun
"In ‘He grabbed the ball and threw it in the air’, ‘ball’ is the antecedent of ‘it’.";
""",
  );
// 188888880002200

  final String keyword = "antecedent";
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
    await flutterTts.speak("""antecedent""");
  }

  Future<void> speakantecedent411(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The book dealt with the historical antecedents of the Civil War.");
  }

  Future<void> speakantecedent414(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Many people feel a great curiosity to find out about their antecedents.");
  }

  Future<void> speakantecedent421(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "When the college was established in 1546, it inherited a hall from each of three antecedent institutions.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'gfJ2q8LN4jo';
    const double startSecondsend = 1;
    const String videoIdone = 'gZ1Ix9ZYTIo';
    const double startSecondsone = 47;
    const String videoIdtwo = 'ROuGTNL5SrU';
    const double startSecondstwo = 1;
    const String videoIdthree = 'Q0E5GUfSpVM';
    const double startSecondsthree = 10;
    const String videoIdfour = 'PnO7pL-QWyc';
    const double startSecondsfour = 923;
    const String videoIdfive = 'Solb9uA-tgQ';
    const double startSecondsfive = 8856;
    // final String _videoId = '7DDzuM40Op8';
    // final double _startSeconds = 207;
    // final String _videoId = 'DARUvKPSUhE';
    // final double _startSeconds = 582;
    // final String _videoId = '7u4ocGJ9ZXI';
    // final double _startSeconds = 5763;
    // final String _videoId = 'C08Vw9mUqeI';
    // final double _startSeconds = 849;
    // final String _videoId = '62Hok9BkYcY';
    // final double _startSeconds = 4399;

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
                      word: """antecedent""",
                      // alsoEnglishWord: "also: antecedent",
                      britshText: """IpaUK: /ˌæntɪˈsiːdnt/""",
                      americanText: """IpaUS: /ˌæntɪˈsiːdnt/""",
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
کوردی: پێش‌تر، پێشکەوتوو، پێش‌وەچوو، پێشھات، پێشوو، بەری، پێشی، پێشین، پێشەکی، باوان، باپیران، (ڕێزمان) پێش‌ترە، مەرجەع
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) شتێک کە پێش شتێکی تر بوونی ھەبووە و کاریگەری لەسەری ھەبووە"""),
                    SentencesRow(
                      englishText:
                          "The book dealt with the historical antecedents of the Civil War.",
                      kurdishText:
                          "کتێبەکە لێکۆڵینەوەی لە پێشھاتەکانی جەنگی ناوخۆیی ئەمریکا دەکرد.",
                      onPressedBritish: () => speakantecedent411("en-GB"),
                      onPressedAmerican: () => speakantecedent411("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) باپیرانی کەسێک"""),
                    SentencesRow(
                      englishText:
                          "Many people feel a great curiosity to find out about their antecedents.",
                      kurdishText:
                          "زۆر کەس حەز دەکەن زانیاری لەسەر باپیرانیان بزانن.",
                      onPressedBritish: () => speakantecedent414("en-GB"),
                      onPressedAmerican: () => speakantecedent414("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) وشەیەک لە ڕستەیەکدا کە یەکێک لە وشەکانی دواتری ڕستەکە بۆی دەگەڕێتەوە """), // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ھاوەڵناو) پێشووتر """),
                    SentencesRow(
                      englishText:
                          "When the college was established in 1546, it inherited a hall from each of three antecedent institutions.",
                      kurdishText:
                          "کاتێک کۆلێژەکە لە ساڵی ١٥٤٦ دامەزرا ھۆڵێکی لە ھەریەک لە سێ پەیمانگاکەی پێشووتر وەرگرت.",
                      onPressedBritish: () => speakantecedent421("en-GB"),
                      onPressedAmerican: () => speakantecedent421("en-US"),
                    ),
                    // const DividerSentences(),
                    // const DividerDefinition(),
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


