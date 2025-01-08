import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantihistamine extends StatefulWidget {
  const EnglishEntryantihistamine({super.key});

  @override
  State<EnglishEntryantihistamine> createState() =>
      _EnglishEntryantihistamineState();
}

class _EnglishEntryantihistamineState extends State<EnglishEntryantihistamine> {
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
- Noun: antihistamine (derived forms: antihistamines)
1. A medicine used to treat allergies and hypersensitive reactions and colds; works by counteracting the effects of histamine on a receptor site
""",
  );
// 188888880002200

  final String keyword = "antihistamine";
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
    await flutterTts.speak("""antihistamine""");
  }

  Future<void> speakantihistamine1105(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Antihistamine is often used to treat hay fever and insect bites.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'JSoGsO6n-qU';
    const double startSecondsend = 1624;
    const String videoIdone = 'YXLV7OvB7SE';
    const double startSecondsone = 97;
    const String videoIdtwo = 'bLsS_lXtkRk';
    const double startSecondstwo = 247;
    const String videoIdthree = 'gCBl9LmdN1k';
    const double startSecondsthree = 547;
    const String videoIdfour = 'sV8qV7Fmkq8';
    const double startSecondsfour = 410;
    const String videoIdfive = 'lj2FDp0AWkw';
    const double startSecondsfive = 1239;
    // final String _videoId = '10GpwtQ_2Dc';
    // final double _startSeconds = 474;
    // final String _videoId = '3wNin31IdmU';
    // final double _startSeconds = 283;
    // final String _videoId = 'c2fnOtnyP_I';
    // final double _startSeconds = 218;

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
                      word: """antihistamine""",
                      // alsoEnglishWord: "also: antihistamine",
                      britshText: """IpaUK: /ˌæntiˈhɪstəmiːn/""",
                      americanText: """IpaUS: /ˌæntiˈhɪstəmiːn/""",
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
کوردی: دەرمانی دژەھەستیاری یان پێنەکەوتن
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) دەرمانێک بۆ چارەسەری ھەستیاری، بەتایبەتی ھەستیارییەک کە تووشی دەبیت لە چاو و لوت و قوڕگدا بەھۆی ھەڵمژینی ھەڵاڵەی گوڵ"""),
                    SentencesRow(
                      englishText:
                          "Antihistamine is often used to treat hay fever and insect bites.",
                      kurdishText:
                          "دژە-ھەستیاری زۆرجار بەکاردێت بۆ چارەسەری ھەستیاری بە ھەڵاڵەی گوڵ یان گەستنی مێروو.",
                      onPressedBritish: () => speakantihistamine1105("en-GB"),
                      onPressedAmerican: () => speakantihistamine1105("en-US"),
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


