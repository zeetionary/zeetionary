import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaimless extends StatefulWidget {
  const EnglishEntryaimless({super.key});

  @override
  State<EnglishEntryaimless> createState() => _EnglishEntryaimlessState();
}

class _EnglishEntryaimlessState extends State<EnglishEntryaimless> {
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
- Adjective: aimless 
1. Without a clear purpose or direction (= adrift, afloat, directionless, planless, rudderless, undirected)
"Russia is aimless and chaotic";
 
2. Continually changing especially as from one abode or occupation to another (= drifting, floating, vagabond, vagrant)
""",
  );
// 188888880002200

  final String keyword = "aimless";
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
    await flutterTts.speak("""aimless""");
  }

  Future<void> speakaimless25388(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My life seemed aimless.");
  }

  Future<void> speakaimless4277(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "She said that her life seemed aimless after her children left home.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '-Ny30jie9lU';
    const double startSecondsend = 1;
    const String videoIdone = '0tm1d0z_Zzw';
    const double startSecondsone = 53;
    const String videoIdtwo = 'v3r_0BqTH10';
    const double startSecondstwo = 525;
    const String videoIdthree = 'ZC22ceaQuX8';
    const double startSecondsthree = 294;
    const String videoIdfour = '5obktsi8XdI';
    const double startSecondsfour = 124;
    const String videoIdfive = 'KwUlRtU3leU';
    const double startSecondsfive = 86;
    // final String _videoId = 'hSNWkRw53Jo';
    // final double _startSeconds = 3221;
    // final String _videoId = 'bTOkCOKIVeY';
    // final double _startSeconds = 480;
    // final String _videoId = '190emwcnYJ4';
    // final double _startSeconds = 283;

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
                      word: """aimless""",
                      // alsoEnglishWord: "also: aimless",
                      britshText: """IpaUK: /ˈeɪmləs/""",
                      americanText: """IpaUS: /ˈeɪmləs/""",
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
کوردی: بێ‌مەبەست، بێ‌ئامانج، بێھوودە، لەخۆوە
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) بێ پلان و ئاراستە" ""),
                    SentencesRow(
                      englishText: "My life seemed aimless.",
                      kurdishText: "ژیانم بێ ئامانج دیاربوو.",
                      onPressedBritish: () => speakaimless25388("en-GB"),
                      onPressedAmerican: () => speakaimless25388("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "She said that her life seemed aimless after her children left home.",
                      kurdishText:
                          "گوتی ژیانی بێ ئامانج بوو لە دوای ئەوەی منداڵەکانی ماڵەوەیان جێھێشت.",
                      onPressedBritish: () => speakaimless4277("en-GB"),
                      onPressedAmerican: () => speakaimless4277("en-US"),
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
