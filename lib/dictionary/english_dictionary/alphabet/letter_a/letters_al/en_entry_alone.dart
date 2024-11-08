import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalone extends StatefulWidget {
  const EnglishEntryalone({super.key});

  @override
  State<EnglishEntryalone> createState() => _EnglishEntryaloneState();
}

class _EnglishEntryaloneState extends State<EnglishEntryalone> {
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
- Adverb: alone 
1. Without any others being included or involved (= entirely, exclusively, solely, only, purely)
"the burden of proof rests on the prosecution alone";
 
2. Without anybody else or anything else (= solo, unaccompanied)
"the child stayed home alone"; "the pillar stood alone, supporting nothing";

- Adjective: alone 
1. Isolated from others
"could be alone in a crowded room"; "was alone with her thoughts"; "I want to be alone"
 
2. Lacking companions or companionship (= lone, lonely, solitary)
"he was alone when we met him"; "she is alone much of the time";
 
3. Exclusive of anyone or anything else (= only)
"she alone believed him"; "cannot live by bread alone";
 
4. Radically distinctive and without equal (= unique, unequaled [US], unequalled [Brit, Cdn], unparalleled)
"he is alone in the field of microbiology"; "this theory is altogether alone in its penetration of the problem";
""",
  );
// 188888880002200

  final String keyword = "alone";
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
    await flutterTts.speak("""alone""");
  }

  Future<void> speakalone1255(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was sitting all alone in the hall.");
  }

  Future<void> speakalone4692(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I don't like going out alone at night.");
  }

  Future<void> speakalone9652(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Carol felt all alone in the world.");
  }

  Future<void> speakalone7451(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("You can't blame anyone else; you alone made the decision.");
  }

  Future<void> speakalone4598(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The assassin said he had acted alone.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'qQ7CBzg870Y';
    const double startSecondsend = 277;
    const String videoIdone = 'a6I-cS7P4bA';
    const double startSecondsone = 1;
    const String videoIdtwo = 'dpa2Z-cRowU';
    const double startSecondstwo = 84;
    const String videoIdthree = 'OJJd60zZmTE';
    const double startSecondsthree = 1;
    const String videoIdfour = 'KW64FiB0ITg';
    const double startSecondsfour = 1;
    const String videoIdfive = 'kA1EArnmVHk';
    const double startSecondsfive = 7;
    // final String _videoId = '3Dl9RR1g6f8';
    // final double _startSeconds = 67;
    // final String _videoId = 'eKkyOGX7VWU';
    // final double _startSeconds = 84;
    // final String _videoId = '5gTkpMU-Ho4';
    // final double _startSeconds = 249;

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
                      word: """alone""",
                      // alsoEnglishWord: "also: alone",
                      britshText: """IpaUK: /əˈləʊn/""",
                      americanText: """IpaUS: /əˈləʊn/""",
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
کوردی: تەنیا، تەنێ، تاک و تەنیا، بێ‌ھاوتا، بێ‌وێنە، بەتەنیایی، فەقەت
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) بە تەنھا و بەبێ خەڵکی تر" ""),
                    SentencesRow(
                      englishText: "She was sitting all alone in the hall.",
                      kurdishText: "بە تەنھا لە ھۆڵەکە دانیشتبوو.",
                      onPressedBritish: () => speakalone1255("en-GB"),
                      onPressedAmerican: () => speakalone1255("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "I don't like going out alone at night.",
                      kurdishText: "حەزناکەم شەوانە بە تەنھا دەربچم.",
                      onPressedBritish: () => speakalone4692("en-GB"),
                      onPressedAmerican: () => speakalone4692("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) بەبێ یارمەتی کەسی دیکە"""),
                    SentencesRow(
                      englishText: "The assassin said he had acted alone.",
                      kurdishText: "بکوژەکە گوتی ھەر خۆی بووە.",
                      onPressedBritish: () => speakalone4598("en-GB"),
                      onPressedAmerican: () => speakalone4598("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) تەنھا و بێزار بەبێ ھیچ ھاوەڵێک"""),
                    SentencesRow(
                      englishText: "Carol felt all alone in the world.",
                      kurdishText: "کارۆڵ ھەستی بە تەنھایی دەکرد لەم جیھانەدا.",
                      onPressedBritish: () => speakalone9652("en-GB"),
                      onPressedAmerican: () => speakalone9652("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ھاوەڵناو) لە دوای ناو بەکاردێت بۆ وتنی ئەوەی کەسی ناوبراو تەنھا کەسە"""),
                    SentencesRow(
                      englishText:
                          "You can't blame anyone else; you alone made the decision.",
                      kurdishText:
                          "ناتوانی لۆمەی کەسی تر بکەی؛ خۆت بە تەنھا بڕیارەکەت دا.",
                      onPressedBritish: () => speakalone7451("en-GB"),
                      onPressedAmerican: () => speakalone7451("en-US"),
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
