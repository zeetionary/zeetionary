import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanybody extends StatefulWidget {
  const EnglishEntryanybody({super.key});

  @override
  State<EnglishEntryanybody> createState() => _EnglishEntryanybodyState();
}

class _EnglishEntryanybodyState extends State<EnglishEntryanybody> {
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
- Pronoun: anybody 
- Any person (= anyone)
"has anybody seen my wallet?";
""",
  );
// 188888880002200

  final String keyword = "anybody";
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
    await flutterTts.speak("""anybody""");
  }

  Future<void> speakanybody926(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Does anybody else want to come?");
  }

  Future<void> speakanybody927(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I forbid anybody to touch that clock.");
  }

  Future<void> speakanybody1055(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Is there anybody who can help me?");
  }

  Future<void> speakanybody1056(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She wasn't anybody before she got that job.");
  }

  Future<void> speakanybody1059(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Anybody could dress well with all that money.");
  }

  Future<void> speakanybody929(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Anybody can see that it's wrong.");
  }

  Future<void> speakanybody931(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She wasn't anybody before she got that job.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '-LHXbw4x2Ws';
    const double startSecondsend = 75;
    const String videoIdone = 'LDflrf85h9Y';
    const double startSecondsone = 234;
    const String videoIdtwo = 'VBDaJZegkao';
    const double startSecondstwo = 1;
    const String videoIdthree = '44HXLCsdIk8';
    const double startSecondsthree = 257;
    const String videoIdfour = 'qxVWpWNPEWU';
    const double startSecondsfour = 351;
    const String videoIdfive = 'MGO4_8YRKro';
    const double startSecondsfive = 596;
    // final String _videoId = '2ihOXaU0I8o';
    // final double _startSeconds = 279;
    // final String _videoId = 'GjMmsEwIcl0';
    // final double _startSeconds = 350;
    // final String _videoId = 'qWAagS_MANg';
    // final double _startSeconds = 290;
    // final String _videoId = '-l2KPjQ2lJA';
    // final double _startSeconds = 35;
    // final String _videoId = 'gdgPAetNY5U';
    // final double _startSeconds = 610;
    // final String _videoId = 'nLiSWJDhAmQ';
    // final double _startSeconds = 599;

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
                      word: """anybody""",
                      // alsoEnglishWord: "also: anybody",
                      britshText: """IpaUK: /ˈenibɒdi/""",
                      americanText: """IpaUS: /ˈenibɑːdi/, /ˈenibʌdi/""",
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
کوردی: ھیچ‌کەس، کەسێ، ھەرکەس، ھەرکەسێ
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (جێناو) لە ڕستەی پرسیاری و نەرێ لە دوای if و whether بەکاردێ، و لە دوای ھەندێ کردار، بۆ نموونە prevent و forbid و avoid"""),
                    SentencesRow(
                      englishText: "Is there anybody who can help me?",
                      kurdishText: "کەس ھەیە بتوانێ یارمەتیم بدا؟",
                      onPressedBritish: () => speakanybody1055("en-GB"),
                      onPressedAmerican: () => speakanybody1055("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "Does anybody else want to come?",
                      kurdishText: "کەسی تر دەیەوێت بێت؟",
                      onPressedBritish: () => speakanybody926("en-GB"),
                      onPressedAmerican: () => speakanybody926("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "I forbid anybody to touch that clock.",
                      kurdishText: "ڕێگە بە کەس نادەم دەست لەو کاتژمێرە بدات.",
                      onPressedBritish: () => speakanybody927("en-GB"),
                      onPressedAmerican: () => speakanybody927("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (جێناو) ھەرکەسێک"""),
                    SentencesRow(
                      englishText:
                          "Anybody could dress well with all that money.",
                      kurdishText:
                          "ھەمووکەس دەیتوانی بە باشی خۆی بپۆشێ بەو ھەموو پارەوە.",
                      onPressedBritish: () => speakanybody1059("en-GB"),
                      onPressedAmerican: () => speakanybody1059("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "Anybody can see that it's wrong.",
                      kurdishText: "ھەموو کەس دەتوانێ ببینێت ئەوە ھەڵەیە.",
                      onPressedBritish: () => speakanybody929("en-GB"),
                      onPressedAmerican: () => speakanybody929("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (جێناو) لە ڕستەی نەرێدا بە واتای کەسێکی گرنگ"""),
                    SentencesRow(
                      englishText:
                          "She wasn't anybody before she got that job.",
                      kurdishText: "کەسێکی گرنگ نەبوو پێش وەرگرتنی کارەکە.",
                      onPressedBritish: () => speakanybody931("en-GB"),
                      onPressedAmerican: () => speakanybody931("en-US"),
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
