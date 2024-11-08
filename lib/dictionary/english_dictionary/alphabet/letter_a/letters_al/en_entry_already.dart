import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalready extends StatefulWidget {
  const EnglishEntryalready({super.key});

  @override
  State<EnglishEntryalready> createState() => _EnglishEntryalreadyState();
}

class _EnglishEntryalreadyState extends State<EnglishEntryalready> {
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
- Adverb: already 
1. Prior to a specified or implied time
"she has already graduated"
 
2. In a surprisingly short time; as early as now (= so soon)
"do you have to go already?";
 
3. [US] An intensifier used to emphasize impatience or express exasperation
""",
  );
// 188888880002200

  final String keyword = "already";
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
    await flutterTts.speak("""already""");
  }

  Future<void> speakalready125(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We got there early but Mike had already left.");
  }

  Future<void> speaka2858644(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was already aboard the plane.");
  }

  Future<void> speakacqua244751(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The students are already acquainted with the work of Shakespeare.");
  }

  Future<void> speakage3526(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("When I was your age I was already married.");
  }

  Future<void> speakalready4598(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You're not leaving already, are you?");
  }

  Future<void> speakalready4855(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The new company already has an excellent reputation.");
  }

  Future<void> speakalready54589(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Just stop already, no one feels sorry for you.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'LfxnXMzt1Kw';
    const double startSecondsend = 353;
    const String videoIdone = 'GGVKoRFYB1I';
    const double startSecondsone = 270;
    const String videoIdtwo = 'ui7c-0XTWzY';
    const double startSecondstwo = 591;
    const String videoIdthree = 'dbT9NAcpXDI';
    const double startSecondsthree = 283;
    const String videoIdfour = '0wTUHuoGxcM';
    const double startSecondsfour = 1;
    const String videoIdfive = 'RH3I-IE0Xhw';
    const double startSecondsfive = 5;
    // final String _videoId6 = '609KvI-8jzw';
    // final double _startSeconds6 = 647;
    // final String _videoId = '19Bst9eeu4o';
    // final double _startSeconds = 857;
    // final String _videoId = 'aEvItEpMly8';
    // final double _startSeconds = 390;
    // final String _videoId = 'nu69IoEUbyk';
    // final double _startSeconds = 660;
    // final String _videoId = 'Ji0KRd_qLOM';
    // final double _startSeconds = 450;

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
                      word: """already""",
                      // alsoEnglishWord: "also: already",
                      britshText: """IpaUK: /ɔːlˈredi/""",
                      americanText: """IpaUS: /ɔːlˈredi/""",
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
کوردی: لە پێشان، جارێ، لەوەپێش، زووتر، پێش ئێستا، بەری نھا، ئێستا، ھەر ئێستا، تا ئێستاش، بەم زووانە، ھەروا زوو
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵکار) پێش کاتێک لە ڕابردوودا" ""),
                    SentencesRow(
                      englishText:
                          "We got there early but Mike had already left.",
                      kurdishText:
                          "زوو گەشتینە ئەوێ، بەڵام مایک لەمێژبوو ڕۆشتبوو.",
                      onPressedBritish: () => speakalready125("en-GB"),
                      onPressedAmerican: () => speakalready125("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵکار) پێش کاتێکی چاوەڕوانکراو"""),
                    SentencesRow(
                      englishText: "You're not leaving already, are you?",
                      kurdishText: "ھەروا زوو ناڕۆن، وایە؟",
                      onPressedBritish: () => speakalready4598("en-GB"),
                      onPressedAmerican: () => speakalready4598("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵکار) بۆ جەختکردنەوە لەوەی شتێک بوونی ھەیە"""),
                    SentencesRow(
                      englishText:
                          "The new company already has an excellent reputation.",
                      kurdishText:
                          "کۆمپانیا تازەکە بەری نھا ناوودەنگێکی نایابی ھەیە.",
                      onPressedBritish: () => speakalready4855("en-GB"),
                      onPressedAmerican: () => speakalready4855("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ھاوەڵکار) بەکاردێت بۆ دەربڕینی بێزاری"""),
                    SentencesRow(
                      englishText:
                          "Just stop already, no one feels sorry for you.",
                      kurdishText: "دە وازبێنە، کەس ھەست بە بەزەیی ناکات بۆت.",
                      onPressedBritish: () => speakalready54589("en-GB"),
                      onPressedAmerican: () => speakalready54589("en-US"),
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

