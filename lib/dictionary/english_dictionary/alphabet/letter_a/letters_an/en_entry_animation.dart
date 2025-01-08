import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanimation extends StatefulWidget {
  const EnglishEntryanimation({super.key});

  @override
  State<EnglishEntryanimation> createState() => _EnglishEntryanimationState();
}

class _EnglishEntryanimationState extends State<EnglishEntryanimation> {
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
- Noun: animation (derived forms: animations)
1. The condition of living or the state of being alive (= life, living, aliveness)
"while there's animation there's hope";
 
2. The property of being able to survive and grow (= vitality)
"the animation of a seed";

3. Quality of being active, spirited or alive and vigorous (= spiritedness, invigoration, brio, vivification)
 
4. The activity of giving vitality and vigour to something (= vivification, invigoration)
 
5. The making of animated cartoons
 
6. General activity and motion (= liveliness)
""",
  );
// 188888880002200

  final String keyword = "animation";
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
    await flutterTts.speak("""animation""");
  }

  Future<void> speakanimation1026(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The intricate process of creating cartoon animation requires skill and creativity.");
  }

  Future<void> speakanimation1027(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The electronic dictionary included some animations.");
  }

  Future<void> speakanimation1030(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His face was drained of all colour and animation.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'qTPKGVrFtQU';
    const double startSecondsend = 24;
    const String videoIdone = 'BlU49dJhfcw';
    const double startSecondsone = 1;
    const String videoIdtwo = 'GIYKXudfoUw';
    const double startSecondstwo = 1;
    const String videoIdthree = 'YSzrf195IAk';
    const double startSecondsthree = 1;
    const String videoIdfour = 'wuBoEIW-hDs';
    const double startSecondsfour = 16;
    const String videoIdfive = 'JeUuk-g_Qws';
    const double startSecondsfive = 6;
    // final String _videoId = 'l96IgQmXmhM';
    // final double _startSeconds = 25;
    // final String _videoId = 'mPg1tnfUguo';
    // final double _startSeconds = 160;
    // final String _videoId = 'TWceX5zCb8k';
    // final double _startSeconds = 81;
    // final String _videoId = 'BEieYcoUqLA';
    // final double _startSeconds = 19;
    // final String _videoId = 'CXeG-LGx25Y';
    // final double _startSeconds = 92;
    // final String _videoId = 'N21oG99eF3A';
    // final double _startSeconds = 13;

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
                      word: """animation""",
                      // alsoEnglishWord: "also: animation",
                      britshText: """IpaUK: /ˌænɪˈmeɪʃn/""",
                      americanText: """IpaUS: /ˌænɪˈmeɪʃn/""",
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
کوردی: سەرخۆشی، بەکەیفی، بەدەماخی، کەیف‌سازی، تین‌وگوڕ، بەگوڕی، چالاکی، بەدەماخی، وێنەجووڵێنی، ئەنیمەیشن، بەرھەم‌ھێنانی وێنەکێشی جووڵاو
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) پڕۆسەی درووستکردنی فیلمێک کە تێیدا نیگار یان وێنەی مرۆڤ و ئاژەڵ وادەردەکەون بجووڵێن"""),
                    SentencesRow(
                      englishText:
                          "The intricate process of creating cartoon animation requires skill and creativity.",
                      kurdishText:
                          "پڕۆسەی ئاڵۆزی درووستکردنی ئەنیمەیشنی کارتۆنی پێویستی بە شارەزایی و تازەگەرییە.",
                      onPressedBritish: () => speakanimation1026("en-GB"),
                      onPressedAmerican: () => speakanimation1026("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) فیلمێک کە تێیدا نیگار یان وێنەی مرۆڤ و ئاژەڵ وادەردەکەون بجووڵێن"""),
                    SentencesRow(
                      englishText:
                          "The electronic dictionary included some animations.",
                      kurdishText:
                          "فەرھەنگە ئەلیکترۆنییەکە ژمارەیەک ئەنیمەیشنی تێدابوو.",
                      onPressedBritish: () => speakanimation1027("en-GB"),
                      onPressedAmerican: () => speakanimation1027("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) وزە و جۆش‌وخرۆشی لە شێوازی دەرکەوتنی کەسێک، یان ڕەفتار و قسەکردنی"""),
                    SentencesRow(
                      englishText:
                          "His face was drained of all colour and animation.",
                      kurdishText: "ڕووخساری ھیچ ڕەنگ و تین‌وگوڕی تێدانەمابوو.",
                      onPressedBritish: () => speakanimation1030("en-GB"),
                      onPressedAmerican: () => speakanimation1030("en-US"),
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


