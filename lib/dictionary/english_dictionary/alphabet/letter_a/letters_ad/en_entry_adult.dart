import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadult extends StatefulWidget {
  const EnglishEntryadult({super.key});

  @override
  State<EnglishEntryadult> createState() => _EnglishEntryadultState();
}

class _EnglishEntryadultState extends State<EnglishEntryadult> {
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
- Noun: adult (derived forms: adults)
1. A fully developed person from maturity onward (= grownup)
 
2. Any mature animal

- Adjective: adult
1. (of animals) fully developed (= big, full-grown, fully grown, grown, grownup)
"an adult animal";
 
3. Designed to arouse lust (= pornographic, porn [informal])
"adult movies";
""",
  );
// 188888880002200

  final String keyword = "adult";
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
    await flutterTts.speak("""adult""");
  }

  Future<void> speakadult12568(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Children must be accompanied by an adult.");
  }

  Future<void> speakadul458237(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The fish return to the river as adults in order to breed.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '4qGQnw5iEZ8';
    const double startSecondsend = 70;
    const String videoIdone = '3aG3WroJHlk';
    const double startSecondsone = 15;
    const String videoIdtwo = 'zVRRQO9piAs';
    const double startSecondstwo = 20;
    const String videoIdthree = 'T-SmYvtpdbc';
    const double startSecondsthree = 23;
    const String videoIdfour = '84P1kBeQGJU';
    const double startSecondsfour = 35;
    const String videoIdfive = '-l_XzNhy31c';
    const double startSecondsfive = 11;
    // const String videoIdsix = 'Bhr69HsP4AY';
    // const double startSecondssix = 12;
    // const String videoId = 'pXMrGmzZDBI';
    // const double startSeconds = 49;
    // const String videoId = '2iYWgGs9UYs';
    // const double startSeconds = 10;
    // const String videoId = 'Mn3aKZ8ZVFo';
    // const double startSeconds = 19;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """adult""",
                      // alsoEnglishWord: "also: adult",
                      britshText: """IpaUK: /ˈædʌlt/, /əˈdʌlt/""",
                      americanText: """IpaUS: /ˈædʌlt/, /əˈdʌlt/""",
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
کوردی: کامڵ، پێگەیشتوو، پێگەییو، گەورە، ڕەسیدە، خۆناسیو، باڵق، تەواوھەڵداو، گەورەساڵ، بە تەمەنی قانوونی‌گەیشتوو (بۆ دەنگدان و ھاوسەر گرتن)
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کەسێک کە لە ڕووی یاساییەوە بەرپرسە بۆ کردارەکانی"""),
                    SentencesRow(
                      englishText: "Children must be accompanied by an adult.",
                      kurdishText:
                          "منداڵان دەبێت کەسێکی پێگەیشتوویان لەگەڵدا بێت.",
                      onPressedBritish: () => speakadult12568("en-GB"),
                      onPressedAmerican: () => speakadult12568("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ئاژەڵێکی تەواو پێگەیشتوو"""),
                    SentencesRow(
                      englishText:
                          "The fish return to the river as adults in order to breed.",
                      kurdishText:
                          "ماسییەکان کە تەواو گەورە دەبن دەگەڕێنەوە ناو ڕووبارەکە بۆ زاوزێ.",
                      onPressedBritish: () => speakadul458237("en-GB"),
                      onPressedAmerican: () => speakadul458237("en-US"),
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
