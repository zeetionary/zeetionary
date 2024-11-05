import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrykiwi extends StatefulWidget {
  const EnglishEntrykiwi({super.key});

  @override
  State<EnglishEntrykiwi> createState() => _EnglishEntrykiwiState();
}

class _EnglishEntrykiwiState extends State<EnglishEntrykiwi> {
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
- Noun: kiwi (Derived forms: kiwis)
1. Climbing vine native to China; cultivated in New Zealand for its fuzzy edible fruit with green meat (- Chinese gooseberry, kiwi vine, Actinidia chinensis, Actinidia deliciosa)
 
2. Fuzzy brown egg-shaped fruit with slightly tart green flesh (- kiwi fruit, Chinese gooseberry)
 
3. Nocturnal flightless bird of New Zealand having a long neck and stout legs; only surviving representative of the order Apterygiformes (- apteryx)

- Noun: Kiwi (Derived forms: Kiwis)
1. A native or inhabitant of New Zealand (- New Zealander, Enzed [Austral, NZ])
""",
  );

  final String keyword = "kiwi";
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
    await flutterTts.speak("""kiwi""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It is most likely that the Kiwis adopted this expression from their British friends.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In the wild, only one in 20 kiwi chicks survives its first year.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The skin of the kiwi is edible but I do not recommend it.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/GHUHgk8xCs0?t=1277';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/Lkl9_3-jX6c?t=181';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/MzSktgpfD84?t=509';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/Vg6aHPMXDVU?t=59';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/51_Vg15u1m4?t=297';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/UGrTMEDAn7I?t=195';
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
                      word: """kiwi""",
                      // alsoEnglishWord: "also: kiwi",
                      britshText: """IpaUK: /ˈkiːwi/""",
                      americanText: """IpaUS: /ˈkiːwi/""",
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
کوردی: 
"""),
// With short examples define "kiwi", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ناو) کەسێکی نیوزلەندی"""),
                    SentencesRow(
                      englishText:
                          """It is most likely that the Kiwis adopted this expression from their British friends.""",
                      kurdishText:
                          """زۆرترین ئەگەری هەیە کە ئەم نیوزلەندییانە ئەم دەربڕینەیان لە هاوڕێ بەریتانییەکانیان وەرگرتبێت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) باڵندەیەکی نیوزلەندی کە دەنووکی درێژ و پەڕی شێوە قژی هەیە. باڵندەکە ناتوانێت بفڕێت و سمبولی نیشتیمانی وڵاتەکەیە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """In the wild, only one in 20 kiwi chicks survives its first year.""",
                      kurdishText:
                          """لە دەشتدا تەنها یەک لە ٢٠ بێچووە کیوی لە یەکەم ساڵ ڕزگاریان دەبێت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) میوەیەکی شێوە هێلکەیی کە توێکڵەکەی قاوەییە و ناوەکەی سەوزی درەوشاوەیە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The skin of the kiwi is edible but I do not recommend it.""",
                      kurdishText:
                          """توێکڵی کیوی دەخورێت بەڵام پێشنیاری ناکەم.""",
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
// end kiwi