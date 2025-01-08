import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapprove extends StatefulWidget {
  const EnglishEntryapprove({super.key});

  @override
  State<EnglishEntryapprove> createState() => _EnglishEntryapproveState();
}

class _EnglishEntryapproveState extends State<EnglishEntryapprove> {
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
- Verb: approve (derived forms: approved, approves, approving)
1. Give permission or approval for something (= O.K., okay, sanction, greenlight, OK, green-light)
"I will approve his educational policies";
 
2. Judge to be right or commendable; think well of
""",
  );
// 188888880002200

  final String keyword = "approve";
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
    await flutterTts.speak("""approve""");
  }

  Future<void> speakapprove907(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I told my mother I wanted to leave school but she didn't approve.");
  }

  Future<void> speakapprove908(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Do you approve of my idea?");
  }

  Future<void> speakapprove909(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The committee unanimously approved the plan.");
  }

  Future<void> speakapprove911(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("This medicine is not approved for use in children.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'tsxmyL7TUJg';
    const double startSecondsend = 1268;
    const String videoIdone = 'Cqbleas1mmo';
    const double startSecondsone = 979;
    const String videoIdtwo = 'L9Mu93VJLcc';
    const double startSecondstwo = 263;
    const String videoIdthree = 'Ufq24tbfwqI';
    const double startSecondsthree = 454;
    const String videoIdfour = '_OCFXfFwHX8';
    const double startSecondsfour = 220;
    const String videoIdfive = 'jMsqfidTpXQ';
    const double startSecondsfive = 81;
    // final String _videoId = 'xrkPe-9rM1Q';
    // final double _startSeconds = 293;
    // final String _videoId = 'UoSSCUMk-7I';
    // final double _startSeconds = 575;
    // final String _videoId = '4H5--Qy3h9Q';
    // final double _startSeconds = 100;
    // final String _videoId = 'Oz9zw7-_vhM';
    // final double _startSeconds = 435;

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
                      word: """approve""",
                      // alsoEnglishWord: "also: approve",
                      britshText: """IpaUK: /əˈpruːv/""",
                      americanText: """IpaUS: /əˈpruːv/""",
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
کوردی: پەسەندکردن، مۆرکردن، بەلاوەباشبوون، ڕالەسەربوون
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) پەسەندکردنی شتێک، ڕەزامەندی دەربڕین لەسەر شتێک"""),
                    SentencesRow(
                      englishText:
                          "I told my mother I wanted to leave school but she didn't approve.",
                      kurdishText:
                          "بە دایکمم گوت واز لە قوتابخانە دێنم، بەڵام ڕازی نەبوو.",
                      onPressedBritish: () => speakapprove907("en-GB"),
                      onPressedAmerican: () => speakapprove907("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "Do you approve of my idea?",
                      kurdishText: "بیرۆکەکەمت بەدڵە؟",
                      onPressedBritish: () => speakapprove908("en-GB"),
                      onPressedAmerican: () => speakapprove908("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) پەسەندکردنی شتێک بەشێوەیەکی فەرمی"""),
                    SentencesRow(
                      englishText:
                          "The committee unanimously approved the plan.",
                      kurdishText: "لیژنەکە بەتێکڕا پلانەکەی پەسەندکرد.",
                      onPressedBritish: () => speakapprove909("en-GB"),
                      onPressedAmerican: () => speakapprove909("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) وتنی ئەوەی شتێک بەشی پێویست باشە بۆ بەکارھێنان"""),
                    SentencesRow(
                      englishText:
                          "This medicine is not approved for use in children.",
                      kurdishText:
                          "ئەم دەرمانە بۆ بەکارھێنان لەسەر منداڵ پەسەند نەکراوە.",
                      onPressedBritish: () => speakapprove911("en-GB"),
                      onPressedAmerican: () => speakapprove911("en-US"),
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
