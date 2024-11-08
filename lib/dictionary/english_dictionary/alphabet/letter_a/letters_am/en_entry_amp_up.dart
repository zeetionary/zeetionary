import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryampup extends StatefulWidget {
  const EnglishEntryampup({super.key});

  @override
  State<EnglishEntryampup> createState() => _EnglishEntryampupState();
}

class _EnglishEntryampupState extends State<EnglishEntryampup> {
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
- Phrasal verb: amp up (derived forms: amping up, amps up, amped up)
1. to make (someone) more excited or energetic (= excite, energize)
"When Smith came out to accept her trophy, Bieber smothered her with kisses, and then pumped his fist to amp up the crowd.";

2.  to make (something) more intense (= heighten, intensify)
"The violence is amped by the presence of automatic weapons and gyrating camerawork, but it all feels very familiar.";

3.  to increase the amount of (something) (= raise)
"As investors get used to steady returns, they start borrowing to amp up gains";
""",
  );
// 188888880002200

  final String keyword = "amp up";
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
    await flutterTts.speak("""amp up""");
  }

  Future<void> speakampup4414(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He knew exactly when to amp the music up.");
  }

  Future<void> speakampup5560(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We're always looking for ways to amp up productivity in the workplace.");
  }

  Future<void> speakampup44855(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "After amping the crowd up with an impressive light show, the band took to the stage.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '7EnWiGYT1g4';
    const double startSecondsend = 224;
    const String videoIdone = 'oOAyQUBithQ';
    const double startSecondsone = 716;
    const String videoIdtwo = 'yhviJ9vB7Zg';
    const double startSecondstwo = 1090;
    const String videoIdthree = '_4xyf0fOd4I';
    const double startSecondsthree = 540;
    const String videoIdfour = 'uBQJ9iYUgoU';
    const double startSecondsfour = 297;
    const String videoIdfive = 'Rw2C9-6N6t8';
    const double startSecondsfive = 215;
    // final String _videoId = 'SedzswEwpPw';
    // final double _startSeconds = 22;
    // final String _videoId = 'llpsjbNQIns';
    // final double _startSeconds = 300;
    // final String _videoId = '0WNMatxr7BE';
    // final double _startSeconds = 895;
    // final String _videoId = 'itJUeqkGwGc';
    // final double _startSeconds = 513;
    // final String _videoId = '58MRRR6TJgY';
    // final double _startSeconds = 219;
    // final String _videoId = 'riJcpOYXJvY';
    // final double _startSeconds = 423;

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
                      word: """amp up""",
                      // alsoEnglishWord: "also: amp up",
                      britshText: """IpaUK: /æmp ʌp/""",
                      americanText: """IpaUS: /æmp ʌp/""",
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
١. (کاری لێکدراو) زیادکردنی دەنگی میوزیک کە لە بڵیندگۆیەکەوە لێدەدرێت"""),
                    SentencesRow(
                      englishText: "He knew exactly when to amp the music up.",
                      kurdishText:
                          "زۆرباش دەیزانی کەی دەنگی میوزیکەکە زیادبکات.",
                      onPressedBritish: () => speakampup4414("en-GB"),
                      onPressedAmerican: () => speakampup4414("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کاری لێکدراو) زیادکردنی ڕێژە یان بڕی شتێک"""),
                    SentencesRow(
                      englishText:
                          "We're always looking for ways to amp up productivity in the workplace.",
                      kurdishText:
                          "ھەمیشە ھەوڵ دەدەین ڕێگا بدۆزینەوە بۆ زیادکردنی بەرھەمھێنان لە شوێن‌کارەکەمان.",
                      onPressedBritish: () => speakampup5560("en-GB"),
                      onPressedAmerican: () => speakampup5560("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کاری لێکدراو) پێدانی جۆش‌وخرۆش بە کەسێک"""),
                    SentencesRow(
                      englishText:
                          "After amping the crowd up with an impressive light show, the band took to the stage.",
                      kurdishText:
                          "لە دوای ئەوەی جەماوەرەکەیان خرۆشاند بە نمایشی لایتەکان، باندەکە چوونە سەر ستەیج",
                      onPressedBritish: () => speakampup44855("en-GB"),
                      onPressedAmerican: () => speakampup44855("en-US"),
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

