import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadrift extends StatefulWidget {
  const EnglishEntryadrift({super.key});

  @override
  State<EnglishEntryadrift> createState() => _EnglishEntryadriftState();
}

class _EnglishEntryadriftState extends State<EnglishEntryadrift> {
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
- Adjective: adrift
1. Without a clear purpose or direction (= afloat, aimless, directionless, planless, rudderless, undirected)
"Russia is adrift and chaotic";
 
2. Afloat on the surface of a body of water
"after the storm the boats were adrift"

- Adverb: adrift  u'drift
1. Floating freely; not anchored
"the boat was set adrift"
 
2. Off course, wandering aimlessly
"there was a search for beauty that had somehow gone adrift"
""",
  );
// 188888880002200

  final String keyword = "adrift";
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
    await flutterTts.speak("""adrift""");
  }

  Future<void> speakadri458692(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He spent three days adrift on his yacht.");
  }

  Future<void> speakadri52369(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Without language, human beings are cast adrift.");
  }

  Future<void> speakadrif52317(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Something seems to have gone adrift in our calculations.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'QZ3rylyhoyU';
    const double startSecondsend = 159;
    const String videoIdone = 'HdabusAinHo';
    const double startSecondsone = 205;
    const String videoIdtwo = 'SY86xyG-hDY';
    const double startSecondstwo = 756;
    const String videoIdthree = 'S5LrQv496Iw';
    const double startSecondsthree = 355;
    const String videoIdfour = 'shT9UvXDRZ8';
    const double startSecondsfour = 74;
    const String videoIdfive = '-BNDub3h2_I';
    const double startSecondsfive = 2685;

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
                      word: """adrift""",
                      // alsoEnglishWord: "also: adrift",
                      britshText: """IpaUK: /əˈdrɪft/""",
                      americanText: """IpaUS: /əˈdrɪft/""",
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
کوردی: سواراو، سەراوکەوتە، ئازاد، بەڕەڵا، وێڵ، لەسەرئاو، نەبەسراو، بێ‌ئامانج، بێ‌مەبەست، وەک تەختەی سەرئاو، بەدەم شەپۆلەوە، سەرلێ‌شێواو، کۆنتڕۆڵ‌نەکراو، بێ‌مەھار
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کەسێک یان بەلەمێکی بێ کۆنترۆڵ لەناو دەریا"""),
                    SentencesRow(
                      englishText: "He spent three days adrift on his yacht.",
                      kurdishText:
                          "سێ ڕۆژی لەناو شەپۆلەکان بەسەربرد لەسەر یەختەکەی.",
                      onPressedBritish: () => speakadri458692("en-GB"),
                      onPressedAmerican: () => speakadri458692("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) کەسێکی تەنھا و سەرلێشێواو"""),
                    SentencesRow(
                      englishText:
                          "Without language, human beings are cast adrift.",
                      kurdishText: "بەبێ زمان مرۆڤەکان سەرلێشێواون.",
                      onPressedBritish: () => speakadri52369("en-GB"),
                      onPressedAmerican: () => speakadri52369("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) شتێک کە بەو شێوەیە بەڕێوەناچێت کە مەبەستە"""),
                    SentencesRow(
                      englishText:
                          "Something seems to have gone adrift in our calculations.",
                      kurdishText: "وادیارە شتێک لە خەمڵاندنەکانمان ناڕێکە.",
                      onPressedBritish: () => speakadrif52317("en-GB"),
                      onPressedAmerican: () => speakadrif52317("en-US"),
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
