import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryagrarian extends StatefulWidget {
  const EnglishEntryagrarian({super.key});

  @override
  State<EnglishEntryagrarian> createState() => _EnglishEntryagrarianState();
}

class _EnglishEntryagrarianState extends State<EnglishEntryagrarian> {
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
- Adjective: agrarian
1. Relating to farming or agriculture (= agricultural, farming)
"an agrarian society";

- Noun: agrarian (derived forms: agrarians)
1.A person who advocates the political interests of working farmers, esp. the distribution of land
""",
  );
// 188888880002200

  final String keyword = "agrarian";
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
    await flutterTts.speak("""agrarian""");
  }

  Future<void> speakagrarian4377(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The central government was urged to adopt a massive public investment programme in the agrarian sector to enhance grain production.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'aJSD8XV3qzE';
    const double startSecondsend = 146;
    const String videoIdone = 'V1o_jEplpmw';
    const double startSecondsone = 814;
    const String videoIdtwo = 'wdcXmerZWDc';
    const double startSecondstwo = 18;
    const String videoIdthree = 'g_2FZ-V_4zs';
    const double startSecondsthree = 336;
    const String videoIdfour = 'KhSbEsFtvFs';
    const double startSecondsfour = 658;
    const String videoIdfive = 'saSSlSQwlwg';
    const double startSecondsfive = 426;
    // final String _videoId = 'PdYLRTGmQ3c';
    // final double _startSeconds = 5052;
    // final String _videoId = 'hpJUeokrb_A';
    // final double _startSeconds = 1139;
    // final String _videoId = '2Hfj_6EFYKQ';
    // final double _startSeconds = 28;
    // final String _videoId = 'kCHdp7RpiwA';
    // final double _startSeconds = 547;

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
                      word: """agrarian""",
                      // alsoEnglishWord: "also: agrarian",
                      britshText: """IpaUK: /əˈɡreəriən/""",
                      americanText: """IpaUS: /əˈɡreriən/""",
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
کوردی: سەربە زەوی‌وزار، زەوی‌وزاری، زەمینی، مڵکی، زەوی‌یانە، کشت‌وکاڵی، وەرزێری، خۆڕسک، کێوی، دەشتی، دەشتەکی، سەربە خاوەنێتی زەوی‌وزار، لایەنگری دابەش‌کردنی سامانی زەوی‌زار، ئەندامی پارت یا بزووتنەوەی زەوی‌وزار
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) پەیوەندیدار بە جووتیاران و کشتوکاڵ"
                            ""),
                    SentencesRow(
                      englishText:
                          "The central government was urged to adopt a massive public investment programme in the agrarian sector to enhance grain production.",
                      kurdishText:
                          "حکومەتی ناوەندی ھاندرا بۆ دەستپێکردنی پڕۆگرامێکی گەورەی وەبەرھێنانی گشتگیر لە کەرتی کشتوکاڵی بۆ زیادکردنی بەرھەمھێنانی گەنم.",
                      onPressedBritish: () => speakagrarian4377("en-GB"),
                      onPressedAmerican: () => speakagrarian4377("en-US"),
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

