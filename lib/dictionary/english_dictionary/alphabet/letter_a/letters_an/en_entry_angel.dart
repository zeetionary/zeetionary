import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryangel extends StatefulWidget {
  const EnglishEntryangel({super.key});

  @override
  State<EnglishEntryangel> createState() => _EnglishEntryangelState();
}

class _EnglishEntryangelState extends State<EnglishEntryangel> {
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
- Noun: angel (derived forms: angels)
1. A supernatural messenger from a deity, or a divine attendant; often represented as a human with wings
 
2. Person of exceptional holiness (= saint, holy man, holy person)
 
3. Someone who provides financial support for some venture (= backer)
 
4. A kind, charming, lovable person (= darling)

- Noun: Angel  
1. The highest waterfall; has more than one leap; flow varies seasonally (= Angel Falls)
""",
  );
// 188888880002200

  final String keyword = "angel";
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
    await flutterTts.speak("""angel""");
  }

  Future<void> speakangel405(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She looks like an angel.");
  }

  Future<void> speakangel407(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She wore a white costume with big furry angel wings.");
  }

  Future<void> speakangel9963(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Mary’s children are little angels.");
  }

  Future<void> speakangel4850(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Thanks Dad, you're an angel.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '2d6VmncdK-E';
    const double startSecondsend = 20;
    const String videoIdone = 'qW_ThmMnZI0';
    const double startSecondsone = 20;
    const String videoIdtwo = 'A1wRdpAz3oM';
    const double startSecondstwo = 27;
    const String videoIdthree = 'S1NzSHATV9w';
    const double startSecondsthree = 1;
    const String videoIdfour = '_BKYlbHgiPk';
    const double startSecondsfour = 9;
    const String videoIdfive = '2eq5Zw_wmzg';
    const double startSecondsfive = 11;
    // final String _videoId = 'igq7f265eog';
    // final double _startSeconds = 476;
    // final String _videoId = 'LZ3fEUrqCxQ';
    // final double _startSeconds = 1129;
    // final String _videoId = 'BZQdFeDEINU';
    // final double _startSeconds = 308;
    // final String _videoId = '2NA0mzJ2E38';
    // final double _startSeconds = 17;
    // final String _videoId = 'N7cG1uKbPT4';
    // final double _startSeconds = 50;

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
                      word: """angel""",
                      // alsoEnglishWord: "also: angel",
                      britshText: """IpaUK: /ˈeɪndʒl/""",
                      americanText: """IpaUS: /ˈeɪndʒl/""",
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
کوردی: فریشتە، مەلایەکەت، کۆینی بەرینی ئینگلتەرە، پەیام یان سیگناڵێکی ڕوونەوەنەبووی ڕادارێ، کەسێکی یەکجار جوان یان باش، ڕووپەری، فریشتە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) بوونێک کە باوەڕوایە خزمەتگوزاری خودان و دەنێردرێن بۆ گەیاندنی پەیامێک یان بەجێھێنانی ئەرکێک. زۆرجار فریشتە بە جلی سپی و باڵەوە پیشان‌دەدرێن"""),
                    SentencesRow(
                      englishText: "She looks like an angel.",
                      kurdishText: "ئەڵێی فریشتەیە.",
                      onPressedBritish: () => speakangel405("en-GB"),
                      onPressedAmerican: () => speakangel405("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "She wore a white costume with big furry angel wings.",
                      kurdishText:
                          "جلێکی سپی لەبەرکرد بە باڵی فریشتەیی پەڕدارەوە.",
                      onPressedBritish: () => speakangel407("en-GB"),
                      onPressedAmerican: () => speakangel407("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) کەسێکی زۆرباش و میھرەبان"""),
                    SentencesRow(
                      englishText: "Mary’s children are little angels.",
                      kurdishText: "منداڵەکانی ماری فریشتەی وردیلەن.",
                      onPressedBritish: () => speakangel9963("en-GB"),
                      onPressedAmerican: () => speakangel9963("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) بۆ ناوھێنانی کەسێک کە سوپاسگوزاری بۆی"""),
                    SentencesRow(
                      englishText: "Thanks Dad, you're an angel.",
                      kurdishText: "سوپاس باوکە، تۆ فریشتەیت.",
                      onPressedBritish: () => speakangel4850("en-GB"),
                      onPressedAmerican: () => speakangel4850("en-US"),
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


