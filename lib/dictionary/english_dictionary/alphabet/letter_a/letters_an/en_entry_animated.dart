import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanimated extends StatefulWidget {
  const EnglishEntryanimated({super.key});

  @override
  State<EnglishEntryanimated> createState() => _EnglishEntryanimatedState();
}

class _EnglishEntryanimatedState extends State<EnglishEntryanimated> {
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
- Adjective: animated 
1. Made to appear to move as living creatures do
"an animated cartoon"; "animated puppets"
 
2. Having life, vigour or spirit (= alive)
"animated conversation"; "became very animated when he heard the good news"; "an animated and expressive face";
""",
  );
// 188888880002200

  final String keyword = "animated";
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
    await flutterTts.speak("""animated""");
  }

  Future<void> speakanimated944(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Mark was beginning to sound animated.");
  }

  Future<void> speakanimated946(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her face suddenly became animated.");
  }

  Future<void> speakanimated950(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Animated cartoons are popular for entertainment and storytelling.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'jEXUG_vN540';
    const double startSecondsend = 1;
    const String videoIdone = 'SUDEB4Ui_g8';
    const double startSecondsone = 36;
    const String videoIdtwo = 'cvTchBdrqdw';
    const double startSecondstwo = 23;
    const String videoIdthree = 'p54tpokHrpo';
    const double startSecondsthree = 84;
    const String videoIdfour = 'U26Jqgmtdvc';
    const double startSecondsfour = 1;
    const String videoIdfive = 'Zh96VxLiXVY';
    const double startSecondsfive = 392;
    // final String _videoId = 'CFe9NcKcUQ4';
    // final double _startSeconds = 382;
    // final String _videoId = 'FHCZs-0rDDQ';
    // final double _startSeconds = 11;
    // final String _videoId = 'p5SygzMSLhM';
    // final double _startSeconds = 10;
    // final String _videoId = 'qwptXx_2Fq4';
    // final double _startSeconds = 10;
    // final String _videoId = 'Lp1-atuVYTw';
    // final double _startSeconds = 1;
    // final String _videoId = 'JNX6ybKqlqA';
    // final double _startSeconds = 18;

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
                      word: """animated""",
                      // alsoEnglishWord: "also: animated",
                      britshText: """IpaUK: /ˈænɪmeɪtɪd/""",
                      americanText: """IpaUS: /ˈænɪmeɪtɪd/""",
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
کوردی: گەرم، سەرنج‌ڕاکێش، بەکەیف، بەگوڕ، سەرخۆش، (وێنەکێشی) جووڵاو
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) پڕ لە حەز و وزە"""),
                    SentencesRow(
                      englishText: "Mark was beginning to sound animated.",
                      kurdishText:
                          "مارک خەریک‌بوو دەستی‌دەکرد بەوەی کراوە بێت.",
                      onPressedBritish: () => speakanimated944("en-GB"),
                      onPressedAmerican: () => speakanimated944("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "Her face suddenly became animated.",
                      kurdishText: "ڕووخساری لەناکاو گەشایەوە.",
                      onPressedBritish: () => speakanimated946("en-GB"),
                      onPressedAmerican: () => speakanimated946("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) درووستکراو وەک ئەوەی ئەنیمەیشن بێ (فیلمی کۆمپیوتەری یان وێنەیەکی زۆری جوڵاو بەدوای یەکدا)"""),
                    SentencesRow(
                      englishText:
                          "Animated cartoons are popular for entertainment and storytelling.",
                      kurdishText:
                          "کارتۆنی ئەنیمەیشن باوە لە چێژبەخشین و چیرۆک‌گێڕانەوە.",
                      onPressedBritish: () => speakanimated950("en-GB"),
                      onPressedAmerican: () => speakanimated950("en-US"),
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



