import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappendage extends StatefulWidget {
  const EnglishEntryappendage({super.key});

  @override
  State<EnglishEntryappendage> createState() => _EnglishEntryappendageState();
}

class _EnglishEntryappendageState extends State<EnglishEntryappendage> {
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
- Noun: appendage (derived forms: appendages)
1. An external body part that projects from the body (= extremity, member)
"it is important to keep the appendages warm";
 
2. A natural prolongation or projection from a part of an organism either animal or plant (= process, outgrowth)
"a bony appendage";
 
3. A part that is joined to something larger
""",
  );
// 188888880002200

  final String keyword = "appendage";
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
    await flutterTts.speak("""appendage""");
  }

  Future<void> speakappendage128(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They treat Scotland as a mere appendage of England.");
  }

  Future<void> speakappendage132(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The two appendages hanging from the insect’s mouth are used to detect and taste food.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'BRrWiW1o19E';
    const double startSecondsend = 211;
    const String videoIdone = 'hGLY5MAAFO4';
    const double startSecondsone = 1232;
    const String videoIdtwo = 'RsvF_BcggPc';
    const double startSecondstwo = 498;
    const String videoIdthree = 'PhQksV8fbKw';
    const double startSecondsthree = 302;
    const String videoIdfour = 'XFeItKoT0Fw';
    const double startSecondsfour = 953;
    const String videoIdfive = 'Ty-m4pm8oog';
    const double startSecondsfive = 597;
    // final String _videoId = 'anDIlMVgNwk';
    // final double _startSeconds = 58;
    // final String _videoId = 'YkS1U5lfSRw';
    // final double _startSeconds = 182;
    // final String _videoId = '4utNXOfQ4cM';
    // final double _startSeconds = 300;
    // final String _videoId = 'f-IYeIDr8V4';
    // final double _startSeconds = 448;

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
                      word: """appendage""",
                      // alsoEnglishWord: "also: appendage",
                      britshText: """IpaUK: /əˈpendɪdʒ/""",
                      americanText: """IpaUS: /əˈpendɪdʒ/""",
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
کوردی: پاشکۆ، لکاند، پاڵخستە، سەرخستە، زیادی، زیادە، (زیندەناسی) ئەندام یان بەشێکی پاشکۆ یان زیادی
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) شتێک کە زیاد دەکرێت بۆ شتێکی گەورەتر یان گرنگتر"""),
                    SentencesRow(
                      englishText:
                          "They treat Scotland as a mere appendage of England.",
                      kurdishText:
                          "وەک پاشکۆی ئەنگلتەرە مامەڵە لەگەڵ سکۆتلەندە دەکەن.",
                      onPressedBritish: () => speakappendage128("en-GB"),
                      onPressedAmerican: () => speakappendage128("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ئەندامی جەستەی گیانلەبەرێک کە دەردەچیتە دەرەوە و ئەرکێکی تایبەتی ھەیە"""),
                    SentencesRow(
                      englishText:
                          "The two appendages hanging from the insect’s mouth are used to detect and taste food.",
                      kurdishText:
                          "ئەو دوو ئەندامەی کە لە دەمی مێرووەکەوە دەرچوون بەکاردێن بۆ ناسینەوە و تام‌کردنی خۆراک.",
                      onPressedBritish: () => speakappendage132("en-GB"),
                      onPressedAmerican: () => speakappendage132("en-US"),
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
