import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanticipate extends StatefulWidget {
  const EnglishEntryanticipate({super.key});

  @override
  State<EnglishEntryanticipate> createState() => _EnglishEntryanticipateState();
}

class _EnglishEntryanticipateState extends State<EnglishEntryanticipate> {
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
- Verb: anticipate (derived forms: anticipated, anticipates, anticipating) 
1. Regard something as probable or likely (= expect)
"The meteorologists are anticipating rain for tomorrow";
 
2.Act in advance of; deal with ahead of time
 
3. Realize beforehand (= previse, foreknow, foresee)
 
4. Make a prediction about; tell in advance (= predict, foretell, prognosticate, call, forebode, promise)
"anticipate the outcome of an election";
 
5. Be excited or anxious about (= look for, look to)
 
6. Be a forerunner of or occur earlier than
"This composition anticipates Impressionism"
""",
  );
// 188888880002200

  final String keyword = "anticipate";
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
    await flutterTts.speak("""anticipate""");
  }

  Future<void> speakanticipate1032(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Our anticipated arrival time is 8.30.");
  }

  Future<void> speakanticipate1033(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I don't anticipate it being a problem.");
  }

  Future<void> speakanticipate1036(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Try and anticipate what the interviewers will ask.");
  }

  Future<void> speakanticipate1038(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We eagerly anticipated the day we would leave school.");
  }

  Future<void> speakanticipate1040(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "When Scott reached the South Pole he found that Amundsen had anticipated him.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'hFZFjoX2cGg';
    const double startSecondsend = 1125;
    const String videoIdone = 'HDntl7yzzVI';
    const double startSecondsone = 262;
    const String videoIdtwo = 'gfOMFa5RZaE';
    const double startSecondstwo = 565;
    const String videoIdthree = 'erDE9B-X7mk';
    const double startSecondsthree = 675;
    const String videoIdfour = 'fdGWRq1dVBA';
    const double startSecondsfour = 540;
    const String videoIdfive = 'b5fNif_WGdc';
    const double startSecondsfive = 351;
    // final String _videoId = 'oVX5OSIw5ms';
    // final double _startSeconds = 523;
    // final String _videoId = 'Ov2rndaPlwA';
    // final double _startSeconds = 73;
    // final String _videoId = 'x629nYBuLpY';
    // final double _startSeconds = 1207;
    // final String _videoId = 'KSuYDQ7tFEk';
    // final double _startSeconds = 1042;
    // final String _videoId = 'wnhIPmXdyyA';
    // final double _startSeconds = 1232;

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
                      word: """anticipate""",
                      // alsoEnglishWord: "also: anticipate",
                      britshText: """IpaUK: /ænˈtɪsɪpeɪt/""",
                      americanText: """IpaUS: /ænˈtɪsɪpeɪt/""",
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
١. (کردار) پێشبینی‌کردن"""),
                    SentencesRow(
                      englishText: "Our anticipated arrival time is 8.30.",
                      kurdishText: "کاتی پێشبینیکراوی گەشتنمان ٨:٣٠ یە.",
                      onPressedBritish: () => speakanticipate1032("en-GB"),
                      onPressedAmerican: () => speakanticipate1032("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "I don't anticipate it being a problem.",
                      kurdishText: "پێشبینی ناکەم ببێتە کێشە.",
                      onPressedBritish: () => speakanticipate1033("en-GB"),
                      onPressedAmerican: () => speakanticipate1033("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) پێشبینی‌کردنی ڕوودانی شتێک و کردنی ئامادەکاری بۆ مامەڵە لەگەڵی"""),
                    SentencesRow(
                      englishText:
                          "Try and anticipate what the interviewers will ask.",
                      kurdishText:
                          "ھەوڵ‌بدە پێشبینی بکە دیدارکاران چی پرسیارێک دەکەن.",
                      onPressedBritish: () => speakanticipate1036("en-GB"),
                      onPressedAmerican: () => speakanticipate1036("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) بە کەیف‌سازی بیرکردنەوە لە شتێک کە ڕوودەدات"""),
                    SentencesRow(
                      englishText:
                          "We eagerly anticipated the day we would leave school.",
                      kurdishText:
                          "بە خۆشییەوە بیرمان لەو ڕۆژە دەکردەوە کە قوتابخانە جێدێڵین.",
                      onPressedBritish: () => speakanticipate1038("en-GB"),
                      onPressedAmerican: () => speakanticipate1038("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (کردار) کردنی شتێک پێش کەسێکی تر"""),
                    SentencesRow(
                      englishText:
                          "When Scott reached the South Pole he found that Amundsen had anticipated him.",
                      kurdishText:
                          "کە سکۆت گەشتە جەمسەری باشوور زانی ئامندسن پێشی دابوویەوە.",
                      onPressedBritish: () => speakanticipate1040("en-GB"),
                      onPressedAmerican: () => speakanticipate1040("en-US"),
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

