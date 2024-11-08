import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalarming extends StatefulWidget {
  const EnglishEntryalarming({super.key});

  @override
  State<EnglishEntryalarming> createState() => _EnglishEntryalarmingState();
}

class _EnglishEntryalarmingState extends State<EnglishEntryalarming> {
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
- Adjective: alarming 
1. Causing apprehension, fear or alarm; frightening

- Verb: alarm  
1. Fill with apprehension or alarm; cause to be unpleasantly surprised (= dismay, appal [Brit, Cdn], appall [US], horrify)
"I was alarmed at the thought of being late for my interview";
 
2. Warn or arouse to a sense of danger or call to a state of preparedness (= alert)
"The empty house alarmed him";
""",
  );
// 188888880002200

  final String keyword = "alarming";
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
    await flutterTts.speak("""alarming""");
  }

  Future<void> speakalarming7488(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The rainforests are disappearing at an alarming rate.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'Mx8JkGHaGUI';
    const double startSecondsend = 2072;
    const String videoIdone = 'oMF6pIglmmk';
    const double startSecondsone = 1247;
    const String videoIdtwo = 'JXiPKeK5_L8';
    const double startSecondstwo = 64;
    const String videoIdthree = '1KgSp94nCZw';
    const double startSecondsthree = 94;
    const String videoIdfour = 'xoYS_j7uEAk';
    const double startSecondsfour = 713;
    const String videoIdfive = '6i9UUvxhAlY';
    const double startSecondsfive = 647;
    // final String _videoId = '__e0gUPetcQ';
    // final double _startSeconds = 1183;
    // final String _videoId = '953dG4h9Peg';
    // final double _startSeconds = 1;
    // final String _videoId = 'nye1mNdyZaw';
    // final double _startSeconds = 211;
    // final String _videoId = '7KEttH2S_D4';
    // final double _startSeconds = 225;

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
                      word: """alarming""",
                      // alsoEnglishWord: "also: alarming",
                      britshText: """IpaUK: /əˈlɑːmɪŋ/""",
                      americanText: """IpaUS: /əˈlɑːrmɪŋ/""",
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
کوردی: نیگەران‌کەر، بەدڵەتەپێ‌خەر، بەترس، ترسێنەر
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) بە ئاستێک کە جێگەی نیگەرانی و ترسە"""),
                    SentencesRow(
                      englishText:
                          "The rainforests are disappearing at an alarming rate.",
                      kurdishText: "دارستانەکان بە ئاستێکی ترسێنەر کەمدەبن.",
                      onPressedBritish: () => speakalarming7488("en-GB"),
                      onPressedAmerican: () => speakalarming7488("en-US"),
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


