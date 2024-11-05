import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryknackered extends StatefulWidget {
  const EnglishEntryknackered({super.key});

  @override
  State<EnglishEntryknackered> createState() => _EnglishEntryknackeredState();
}

class _EnglishEntryknackeredState extends State<EnglishEntryknackered> {
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
- Adjective: knackered
Usage: Brit, informal
1. Extremely exhausted (- drained, zonked [informal], zonked out [informal], stonkered [Brit, Austral, NZ, informal], deadbeat [Brit, informal], shagged out [Brit, informal], shagged [Brit, informal], shattered [Brit, informal], exhausted, dog-tired [informal], fagged [Brit, informal], fatigued, played out, spent, washed-out, worn-out, worn out, gone, shot [informal], fried [N. Amer, informal], pooped [N. Amer, informal])
 
2. Not in working order; not functioning (- broken, busted, bust [Brit, informal], up the spout [informal], out of order, on the blink [informal], on the fritz [N. Amer, informal], kaput [informal], rooted [Austral, NZ, informal])
""",
  );

  final String keyword = "knackered";
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
    await flutterTts.speak("""knackered""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I was knackered after the game.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The car’s knackered.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/8n9taHHo8ek?t=686';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/1XLEC52dwnE?t=66';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/Um3l2BECKrc?t=757';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/0RjjxXIVm1I?t=517';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/yoa0eIuWcsg?t=975';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/5cwFZkXk2Ig?t=377';
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
                      word: """knackered""",
                      // alsoEnglishWord: "also: knackered",
                      britshText: """IpaUK: /ˈnækəd/""",
                      americanText: """IpaUS: /ˈnækərd/""",
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
کوردی: ماندوو، لەپێ‌کەوتوو،	یەکجار کۆن (بەدەر لە بەکارهێنان)، شڕ، کەلاک
"""),
// With short examples define "knackered", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) تەواو ماندوو"""),
                    const AlsoEnglishckb(word: "ھەروەھا: exhausted، worn out"),
                    SentencesRow(
                      englishText: """I was knackered after the game.""",
                      kurdishText: """دوای یارییەکە شەکەت بووم.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) زۆر کۆن یان شكاو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The car’s knackered.""",
                      kurdishText: """ئۆتۆمبێلەکە شکاوە.""",
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
// end knackered