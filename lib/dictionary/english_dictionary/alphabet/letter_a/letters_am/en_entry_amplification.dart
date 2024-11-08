import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamplification extends StatefulWidget {
  const EnglishEntryamplification({super.key});

  @override
  State<EnglishEntryamplification> createState() =>
      _EnglishEntryamplificationState();
}

class _EnglishEntryamplificationState extends State<EnglishEntryamplification> {
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
- Noun: amplification (derived forms: amplifications)
1. Addition of extra material, illustration or clarifying detail (= elaboration)
"a few remarks added in amplification and defence";

2. The amount of increase in signal power, voltage or current expressed as the ratio of output to input (= gain)
 
3. (electronics) the act of increasing voltage, power or current
""",
  );
// 188888880002200

  final String keyword = "amplification";
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
    await flutterTts.speak("""amplification""");
  }

  Future<void> speakamplification102(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Amplification of this energy promotes fertilization of the surrounding area.");
  }

  Future<void> speakamplification44140(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("That comment needs some amplification.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'wBrNbbAIAFo';
    const double startSecondsend = 6;
    const String videoIdone = 'EMeI4N5dui4';
    const double startSecondsone = 27;
    const String videoIdtwo = 'VYJtb2YXae8';
    const double startSecondstwo = 574;
    const String videoIdthree = '0Anx3VQ2dcc';
    const double startSecondsthree = 518;
    const String videoIdfour = '-BeTq99LqUo';
    const double startSecondsfour = 774;
    const String videoIdfive = 'VZV11sRa5mw';
    const double startSecondsfive = 988;
    // final String _videoId = 'l23uC4nFIZo';
    // final double _startSeconds = 209;
    // final String _videoId = 'wY3Ehw7_4Sg';
    // final double _startSeconds = 330;
    // final String _videoId = 'FoLIoqxEBcQ';
    // final double _startSeconds = 80;

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
                      word: """amplification""",
                      // alsoEnglishWord: "also: amplification",
                      britshText: """IpaUK: /ˌæmplɪfɪˈkeɪʃn/""",
                      americanText: """IpaUS: /ˌæmplɪfɪˈkeɪʃn/""",
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
کوردی: فراوان‌کردن، گەورەکردنەوە، گەوراندن، ھێزاندن، پێزداری، دەنگ‌پێدان، تیشک‌خستنەسەر، ڕوون‌کردنەوە، لێکدانەوە، باسکردن، وردەکاری خستنەسەر
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) زیادکردنی ھێزی شتێک، بەتایبەتی دەنگ"""),
                    SentencesRow(
                      englishText:
                          "Amplification of this energy promotes fertilization of the surrounding area.",
                      kurdishText:
                          "بەھێزکردنی ئەم وزەیە یارمەتیدەرە بۆ پیتاندنی ناوچەی دەورووبەر.",
                      onPressedBritish: () => speakamplification102("en-GB"),
                      onPressedAmerican: () => speakamplification102("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) زیادکردنی ڕوونکردنەوە"""),
                    SentencesRow(
                      englishText: "That comment needs some amplification.",
                      kurdishText:
                          "ئەو لێدوانە پێویستی بە ھەندێک ڕوونکردنەوە ھەیە.",
                      onPressedBritish: () => speakamplification44140("en-GB"),
                      onPressedAmerican: () => speakamplification44140("en-US"),
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


