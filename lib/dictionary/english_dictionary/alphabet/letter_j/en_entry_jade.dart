import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjade extends StatefulWidget {
  const EnglishEntryjade({super.key});

  @override
  State<EnglishEntryjade> createState() => _EnglishEntryjadeState();
}

class _EnglishEntryjadeState extends State<EnglishEntryjade> {
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
- Noun: jade (Derived forms: jades)
1. A semiprecious gemstone that takes a high polish; is usually green but sometimes whitish; consists of jadeite or nephrite (- jadestone)
 
2. A light green colour varying from bluish green to yellowish green (- jade green)
 
3. An old or over-worked horse (- hack, nag, plug [N. Amer, informal])
 
4. [archaic] A promiscuous or disreputable woman (- hussy [informal], loose woman [informal], fornicatrix [informal])

- Verb: jade (Derived forms: jading, jades, jaded)
1. Lose interest or become bored with something or somebody (- tire, pall, weary, fatigue)
"I'm so jaded of your mother and her complaints about my food";
 
2. Exhaust or get tired through overuse or great strain or stress (- tire, wear upon, tire out, wear, weary, wear out, outwear, wear down, fag out [Brit, informal], fag [informal], fatigue, knacker [Brit, informal])

- Adjective: jade
1. Of something having the colour of jade; especially varying from bluish green to yellowish green (- jade-green)
""",
  );

  final String keyword = "jade";
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
    await flutterTts.speak("""jade""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The jewellery is crafted from carved jade and bone.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He showed me his collection of Chinese jade.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Dressed in jade green with a matching hat, the Queen was stunning.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/qDofYXwCMjk?t=2316';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/SfR0ZTdwpRA?t=633';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/Go6n6QWlYkw?t=61';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/am9W9VJFAo0?t=82';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/kqa09KH4weQ?t=553';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/aeZ7esmQcm4?t=752';
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
                      word: """jade""",
                      // alsoEnglishWord: "also: jade",
                      britshText: """IpaUK: /dʒeɪd/""",
                      americanText: """IpaUS: /dʒeɪd/""",
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
//                     const KurdishVocabulary(text: """
// کوردی:
// """),
// With short examples define "jade", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) بەردێکی سەخت کە زۆرجار سەوزە و بۆ درووستکردنی شتی جوان بەکاردێت"""),
                    SentencesRow(
                      englishText:
                          """The jewellery is crafted from carved jade and bone.""",
                      kurdishText:
                          """خشڵەکە لە یەشمی هەڵکۆڵراو و ئێسک درووست کراوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) ئەو شتانەی لەم بەردە درووستکراون"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He showed me his collection of Chinese jade.""",
                      kurdishText:
                          """کۆکراوەی کەرەستە یەشمە چینییەکانیی پێم پیشان دا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) ڕەنگی سەوزی ڕۆشن"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Dressed in jade green with a matching hat, the Queen was stunning.""",
                      kurdishText:
                          """بەوەی کە جلی سەوزی کاڵی لەبەربوو لەگەڵ کڵاوێکی لێکچوو، شاژن سەرنجڕاکێش بوو.""",
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
// end jade
