import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamplify extends StatefulWidget {
  const EnglishEntryamplify({super.key});

  @override
  State<EnglishEntryamplify> createState() => _EnglishEntryamplifyState();
}

class _EnglishEntryamplifyState extends State<EnglishEntryamplify> {
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
- Verb: amplify (derived forms: amplifies, amplifying, amplified)
1. Increase in size, volume or significance (= magnify)
"Her terror was amplified in her mind";
 
2. To enlarge beyond bounds or the truth (= overstate, exaggerate, overdraw, hyperbolize, hyperbolise [Brit], magnify)
"tended to romanticize and amplify this 'gracious Old South' imagery";
 
3. Exaggerate or make bigger (= inflate, blow up, expand)
"The charges were amplified";

4. Increase the volume of (= amp [informal])
"amplify sound";
""",
  );
// 188888880002200

  final String keyword = "amplify";
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
    await flutterTts.speak("""amplify""");
  }

  Future<void> speakamplify7780(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This hall seemed to trap and amplify sounds.");
  }

  Future<void> speakamplify7748(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You may need to amplify this point.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'KbNRvWfndjA';
    const double startSecondsend = 200;
    const String videoIdone = 'BmUrJaOo1Lw';
    const double startSecondsone = 385;
    const String videoIdtwo = 'hhvjKAQv2cs';
    const double startSecondstwo = 661;
    const String videoIdthree = 'kVOTPAxrrP4';
    const double startSecondsthree = 450;
    const String videoIdfour = 'znwUCNrjpD4';
    const double startSecondsfour = 412;
    const String videoIdfive = '_V_HjDMU6js';
    const double startSecondsfive = 315;
    // final String _videoId = 'UOztOU4T-_c';
    // final double _startSeconds = 151;
    // final String _videoId = 'bOR8c2z3sSk';
    // final double _startSeconds = 2376;
    // final String _videoId = '_RmP5_UCUJM';
    // final double _startSeconds = 365;
    // final String _videoId = 'CUEfYQUtBjE';
    // final double _startSeconds = 212;

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
                      word: """amplify""",
                      // alsoEnglishWord: "also: amplify",
                      britshText: """IpaUK: /ˈæmplɪfaɪ/""",
                      americanText: """IpaUS: /ˈæmplɪfaɪ/""",
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
                    const DefinitionKurdish(text: """
١. (کردار) زیادکردنی ھێزی شتێک، بەتایبەتی دەنگ"""),
                    SentencesRow(
                      englishText:
                          "This hall seemed to trap and amplify sounds.",
                      kurdishText:
                          "ھۆڵەکە وادیاربوو دەنگ تێیدا پەنگبخواتەوە و بەرزی بکات.",
                      onPressedBritish: () => speakamplify7780("en-GB"),
                      onPressedAmerican: () => speakamplify7780("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) پێدانی ڕوونکردنەوەی زیاتر"""),
                    SentencesRow(
                      englishText: "You may need to amplify this point.",
                      kurdishText: "ڕەنگە پێویست بکات ئەم خاڵە ڕوون‌بکەیتەوە.",
                      onPressedBritish: () => speakamplify7748("en-GB"),
                      onPressedAmerican: () => speakamplify7748("en-US"),
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


