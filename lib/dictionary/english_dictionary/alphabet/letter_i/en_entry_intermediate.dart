import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryintermediate extends StatefulWidget {
  const EnglishEntryintermediate({super.key});

  @override
  State<EnglishEntryintermediate> createState() =>
      _EnglishEntryintermediateState();
}

class _EnglishEntryintermediateState extends State<EnglishEntryintermediate> {
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
- Adjective: intermediate
1. Lying between two extremes in time, space or state
"going from sitting to standing without intermediate pushes with the hands"; "intermediate stages in a process"; "intermediate stops on the route"; "an intermediate range plane"
 
2. Around the middle of a scale of evaluation (- average, medium)
"intermediate capacity";

- Noun: intermediate (Derived forms: intermediates)
1. A substance formed during a chemical process before the desired product is obtained
 
2. A negotiator who acts as a link between parties (- mediator, go-between, intermediator, intermediary, intercessor)

- Verb: intermediate (Derived forms: intermediates, intermediating, intermediated)
1. Act between parties with a view to reconciling differences (- intercede, mediate, liaise, arbitrate)
""",
  );

  final String keyword = "intermediate";
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
    await flutterTts.speak("""intermediate""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Liquid crystals are considered to be intermediate between liquid and solid.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """This novel is too difficult for intermediate students of English.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'rWVAzS5duAs';
    const double startSecondsend = 705;
    const String videoIdone = 'oiLdWXLXDeA';
    const double startSecondsone = 711;
    const String videoIdtwo = '6T_-DiAzYBc';
    const double startSecondstwo = 56;
    const String videoIdthree = '15D_LWIguL8';
    const double startSecondsthree = 351;
    const String videoIdfour = 'YkS1U5lfSRw';
    const double startSecondsfour = 580;
    const String videoIdfive = 'tILIeNjbH1E';
    const double startSecondsfive = 305;

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
                      word: """intermediate""",
                      // alsoEnglishWord: "also: intermediate",
                      britshText: """IpaUK: /ˌɪntəˈmiːdiət/""",
                      americanText: """IpaUS: /ˌɪntərˈmiːdiət/""",
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
کوردی: ناوین، نێوەڕاست، نێوەند، ناوەند، ناوەندی، نێوبڕ، لەنێوان، مابەین، لەبەین،	مام‌ناوەند، نێونجی، ناونجی، نێوانە، ناوەندی، هەڵکەوتوو لە نێوان دوو شت‌دا،	ناوبژی‌وان، یەک‌خەر، نێوگژی‌وان، ناڤبەر، ناونجی‌کار
"""),
// With short examples define "intermediate", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کە لە نێوان دوو شوێن، شت، یان دۆخدایە"""),
                    SentencesRow(
                      englishText:
                          """Liquid crystals are considered to be intermediate between liquid and solid.""",
                      kurdishText:
                          """کریستاڵی شل بە ناوەند لە نێوان شلی و ڕەقی دادەنرێت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) هەبوونی هەندێک زانیاری کە مام‌ناوەندە؛ کە سەرەتا نییە بەڵام زۆریش نییە"""),
                    SentencesRow(
                      englishText:
                          """This novel is too difficult for intermediate students of English.""",
                      kurdishText:
                          """ئەم ڕۆمانە زۆر گرانە بۆ خوێندکارانی مام‌ناوەندی ئینگلیزی.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
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
// end intermediate