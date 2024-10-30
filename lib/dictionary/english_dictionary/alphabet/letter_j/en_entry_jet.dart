import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjet extends StatefulWidget {
  const EnglishEntryjet({super.key});

  @override
  State<EnglishEntryjet> createState() => _EnglishEntryjetState();
}

class _EnglishEntryjetState extends State<EnglishEntryjet> {
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
- Noun: jet (Derived forms: jets)
1. An artificially produced flow of water (- fountain)
 
2. The occurrence of a sudden discharge (as of liquid) (- squirt, spurt, spirt)
 
3. An aeroplane powered by one or more jet engines (- jet plane, jet-propelled plane)
 
4. A hard black form of lignite that takes a brilliant polish and is used in jewellery or ornamentation
 
5. Atmospheric discharges (lasting 10 msec) bursting from the tops of giant storm clouds in blue cones that widen as they flash upward (- blue jet, reverse lightning)
 
6. [slang] A street name for ketamine (- K [slang], super acid [slang], special K [slang], honey oil [slang], green [slang], cat valium [slang], super C [slang])

- Verb: jet (Derived forms: jetting, jets, jetted)
1. Issue in a jet; come out in a jet; stream or spring forth (- gush)
"Water jetted forth"; "flames were jetting out of the building";
 
2. (air travel) fly a jet plane

- Adjective: jet
1. Of the blackest black; similar to the colour of jet or coal (- coal-black, jet-black, pitchy, sooty)
""",
  );

  final String keyword = "jet";
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
    await flutterTts.speak("""jet""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We flew to New York by jet.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The pipe burst and jets of water shot across the room.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Little jets of steam spurted from the engine.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They have just jetted off for a honeymoon in New York.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/7arrsIUU1TQ?t=135';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/glFIw1HgH9w?t=1';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/e09xig209cQ?t=382';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/toVfvRhWbj8?t=41';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/nsnyl8llfH4?t=428';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/3RkhZgRNC1k?t=194';
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
                      word: """jet""",
                      // alsoEnglishWord: "also: jet",
                      britshText: """IpaUK: /dʒet/""",
                      americanText: """IpaUS: /dʒet/""",
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
کوردی: فڕۆکەی تەکان‌دەر یان جێت،	کوفارە، فیشقە، فیچقە، فیشقاو، پیت،	کون، شیر، سەرلوولە، دەم، زار
"""),
// With short examples define "jet", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) فڕۆکەیەک کە بزوێەرێکی هەیە کەوا گاز بۆ دواوەی پاڵدەنێت"""),
                    SentencesRow(
                      englishText: """We flew to New York by jet.""",
                      kurdishText: """بە فڕۆکە فڕین بۆ نیویۆرک.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) لێشاوێکی تەسکی بەهێز لە گاز کە زۆر خێرا لە دەرچەیەکەوە دەردەچێت؛ دەرچەکەش هەر هەمان شتی پێ دەگوترێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The pipe burst and jets of water shot across the room.""",
                      kurdishText:
                          """بۆرییەکە شکا و فیشقەی ئاو هات بە ژوورەکەدا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    // const DividerSentences(),
                    // SentencesRow(
                    //   englishText: """Little jets of steam spurted from the engine.""",
                    //   kurdishText: """رستە_رستە_رستە__رستە.""", // add_sentence
                    //   onPressedBritish: () => speaksentence3("en-GB"),
                    //   onPressedAmerican: () => speaksentence3("en-US"),
                    // ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (کردار) چوونە شوێنێک بە فڕۆکە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They have just jetted off for a honeymoon in New York.""",
                      kurdishText:
                          """تازەگی گەشتیان کردووە بۆ مانگی هەنگوینی لە نیویۆرک.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
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
// end jet