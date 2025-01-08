import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanyone extends StatefulWidget {
  const EnglishEntryanyone({super.key});

  @override
  State<EnglishEntryanyone> createState() => _EnglishEntryanyoneState();
}

class _EnglishEntryanyoneState extends State<EnglishEntryanyone> {
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
Pronoun: anyone 
1. Any person (= anybody)
"has anyone seen my wallet?";
""",
  );
// 188888880002200

  final String keyword = "anyone";
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
    await flutterTts.speak("""anyone""");
  }

  Future<void> speakanyone926(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Does anyone else want to come?");
  }

  Future<void> speakanyone927(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I forbid anyone to touch that clock.");
  }

  Future<void> speakanyone929(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Anyone can see that it's wrong.");
  }

  Future<void> speakanyone931(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She wasn't anyone before she got that job.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'aDMjgOYOcDw';
    const double startSecondsend = 233;
    const String videoIdone = '3iyk8TOlOUo';
    const double startSecondsone = 7;
    const String videoIdtwo = 'gdQYRciPMts';
    const double startSecondstwo = 1;
    const String videoIdthree = 'hFL6qRIJZ_Y';
    const double startSecondsthree = 486;
    const String videoIdfour = 'l-SXQ3KH-Us';
    const double startSecondsfour = 31;
    const String videoIdfive = 'EsgWLk7aT3A';
    const double startSecondsfive = 114;
    // final String _videoId = 'fGxu4Y_nEPY';
    // final double _startSeconds = 605;
    // final String _videoId = 'VZe5vXH7TcE';
    // final double _startSeconds = 21;
    // final String _videoId = 'VrKW58MS12g';
    // final double _startSeconds = 100;
    // final String _videoId = 'DPZzrlFCD_I';
    // final double _startSeconds = 470;
    // final String _videoId = '9sRQQRiltrE';
    // final double _startSeconds = 147;
    // final String _videoId = '_wNsZEqpKUA';
    // final double _startSeconds = 933;

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
                      word: """anyone""",
                      // alsoEnglishWord: "also: anyone",
                      britshText: """IpaUK: /ˈeniwʌn/""",
                      americanText: """IpaUS: /ˈeniwʌn/""",
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
کوردی: ھیچ‌کەس، کەسێ، ھەرکەس(ـێ)
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (جێناو) بەکاردێت بۆ ئاماژە بۆ کەسێک لە ڕستەی نەرێ و پرسیاری، لە دوای if و whether، و لە دوای ھەندێک کردار، بۆ نموونە prevent و forbid و avoid"""),
                    SentencesRow(
                      englishText: "Does anyone else want to come?",
                      kurdishText: "کەسی تر دەیەوێت بێت؟",
                      onPressedBritish: () => speakanyone926("en-GB"),
                      onPressedAmerican: () => speakanyone926("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "I forbid anyone to touch that clock.",
                      kurdishText: "ڕێگە بە کەس نادەم دەست لەو کاتژمێرە بدات.",
                      onPressedBritish: () => speakanyone927("en-GB"),
                      onPressedAmerican: () => speakanyone927("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (جێناو) ھەرکەس بێ، گرنگ نییە کێ"""),
                    SentencesRow(
                      englishText: "Anyone can see that it's wrong.",
                      kurdishText: "ھەموو کەس دەتوانێ ببینێت ئەوە ھەڵەیە.",
                      onPressedBritish: () => speakanyone929("en-GB"),
                      onPressedAmerican: () => speakanyone929("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (جێناو) لە ڕستەی نەرێدا بە واتای کەسێکی گرنگ"""),
                    SentencesRow(
                      englishText: "She wasn't anyone before she got that job.",
                      kurdishText: "کەسێکی گرنگ نەبوو پێش وەرگرتنی کارەکە.",
                      onPressedBritish: () => speakanyone931("en-GB"),
                      onPressedAmerican: () => speakanyone931("en-US"),
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
