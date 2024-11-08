import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryahead extends StatefulWidget {
  const EnglishEntryahead({super.key});

  @override
  State<EnglishEntryahead> createState() => _EnglishEntryaheadState();
}

class _EnglishEntryaheadState extends State<EnglishEntryahead> {
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
- Adverb: ahead 
1. At or in the front (= in front, before)
"I see the lights of a town ahead"; "the road ahead is foggy"; "staring straight ahead";
 
2. Toward the future; at a later time (= forward)
"I like to look ahead in imagination to what the future may bring";
 
3. In the usual direction of travel, straight on (= onward, onwards, forward, forwards, forrader [dialect])
"go ahead"; "the train moved ahead slowly"; "the boat lurched ahead";
 
4. Ahead of time; in anticipation (= in advance, beforehand)
"when you pay ahead you receive a discount"; "We like to plan ahead";
 
5. To a more advanced or advantageous position
"a young man sure to get ahead"; "pushing talented students ahead"
 
6. To a different or a more advanced time (meaning advanced either toward the present or toward the future)
"moved the appointment ahead from Tuesday to Monday"; "pushed the deadline ahead from Tuesday to Wednesday"
 
7. Leading in a competition (= out front, in the lead)
"the horse was three lengths ahead going into the home stretch"; "ahead by two pawns";

- Adjective: ahead 
1. Having the leading position or higher score in a contest (= in the lead, leading)
"he is ahead by a pawn";
""",
  );
// 188888880002200

  final String keyword = "ahead";
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
    await flutterTts.speak("""ahead""");
  }

  Future<void> speakahead24999(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I'll run ahead and warn them.");
  }

  Future<void> speakahead12555(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This will create problems in the months ahead.");
  }

  Future<void> speakahead43582(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The party was planned weeks ahead.");
  }

  Future<void> speakahead24331(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Our team was ahead by six points.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'WF8iaqRqI60';
    const double startSecondsend = 98;
    const String videoIdone = 'Pto9L7kjuSM';
    const double startSecondsone = 82;
    const String videoIdtwo = 'NaY91YjVbEM';
    const double startSecondstwo = 77;
    const String videoIdthree = 't6fIp7mMJ90';
    const double startSecondsthree = 238;
    const String videoIdfour = '2ihOXaU0I8o';
    const double startSecondsfour = 390;
    const String videoIdfive = 'NnTSpkgVHQQ';
    const double startSecondsfive = 240;
    // final String _videoId = 'hTqtGJwsJVE';
    // final double _startSeconds = 2847;
    // final String _videoId = 'FT3ODSg1GFE';
    // final double _startSeconds = 133;
    // final String _videoId = 'dqcSk-EDrRo';
    // final double _startSeconds = 731;
    // final String _videoId = 'Cqbleas1mmo';
    // final double _startSeconds = 112;

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
                      word: """ahead""",
                      // alsoEnglishWord: "also: ahead",
                      britshText: """IpaUK: /əˈhed/""",
                      americanText: """IpaUS: /əˈhed/""",
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
کوردی: پێش، بەر، پێش‌تر، زووتر لە، لەپێش، لە بەردەم، لەوەپێش، لە پێش، بەرلە، لە پێشەوە
"""),
                    const DefinitionKurdish(text: "١. (ھاوەڵکار) پێشوەختە" ""),
                    SentencesRow(
                      englishText: "I'll run ahead and warn them.",
                      kurdishText: "پێشوەختە دەچم و ئاگاداریان دەکەم.",
                      onPressedBritish: () => speakahead24999("en-GB"),
                      onPressedAmerican: () => speakahead24999("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "This will create problems in the months ahead.",
                      kurdishText:
                          "ئەمە لە مانگەکانی داھاتوودا کێشە درووست دەکات.",
                      onPressedBritish: () => speakahead12555("en-GB"),
                      onPressedAmerican: () => speakahead12555("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵکار) پێشتر"""),
                    SentencesRow(
                      englishText: "The party was planned weeks ahead.",
                      kurdishText:
                          "ئاھەنگەکە چەندین ھەفتە پێشتر پلانی بۆ دانرا.",
                      onPressedBritish: () => speakahead43582("en-GB"),
                      onPressedAmerican: () => speakahead43582("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵکار) لە پێشەوە لە ڕکابەریدا"""),
                    SentencesRow(
                      englishText: "Our team was ahead by six points.",
                      kurdishText: "تیمەکان بە شەش خاڵ لەپێش بوو.",
                      onPressedBritish: () => speakahead24331("en-GB"),
                      onPressedAmerican: () => speakahead24331("en-US"),
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

