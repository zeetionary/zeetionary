import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryangry extends StatefulWidget {
  const EnglishEntryangry({super.key});

  @override
  State<EnglishEntryangry> createState() => _EnglishEntryangryState();
}

class _EnglishEntryangryState extends State<EnglishEntryangry> {
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
- Adjective: angry (derived forms: angriest, angrier)
1. Feeling or showing anger (= cross)
"angry at the weather"; "angry customers"; "an angry silence"; "sending angry letters to the papers";
 
2. (of the elements) as if showing violent anger (= furious, raging, tempestuous, wild)
"angry clouds on the horizon";
 
3. Severely inflamed and painful
"an angry sore"
""",
  );
// 188888880002200

  final String keyword = "angry";
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
    await flutterTts.speak("""angry""");
  }

  Future<void> speakangry4102(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her behaviour really made me angry.");
  }

  Future<void> speakangry0158(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Thousands of angry demonstrators filled the square.");
  }

  Future<void> speakangry4952(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("On her leg was an angry sore.");
  }

  Future<void> speakangry4506(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The angry sea with its terrible waves crashed against the rocky shore.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'VVsdb90aOmA';
    const double startSecondsend = 21;
    const String videoIdone = 'UIyfNM6y3vU';
    const double startSecondsone = 1;
    const String videoIdtwo = '3O0VfD0lTuM';
    const double startSecondstwo = 739;
    const String videoIdthree = '3tlMb7rgokU';
    const double startSecondsthree = 27;
    const String videoIdfour = 'GkLgNmSvVFM';
    const double startSecondsfour = 1;
    const String videoIdfive = '-gD6f_myiFM';
    const double startSecondsfive = 70;
    // final String _videoId = 'JROt6OFzaNQ';
    // final double _startSeconds = 21;
    // final String _videoId = 'nJ589ozb0T8';
    // final double _startSeconds = 39;
    // final String _videoId = '2y17zbyfGqc';
    // final double _startSeconds = 6;
    // final String _videoId = 'aIJyCPhCeJo';
    // final double _startSeconds = 537;
    // final String _videoId = 'VpSjkRtouMQ';
    // final double _startSeconds = 7;
    // final String _videoId = 'VFi2dWv_3OI';
    // final double _startSeconds = 91;

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
                      word: """angry""",
                      // alsoEnglishWord: "also: angry",
                      britshText: """IpaUK: /ˈæŋɡri/""",
                      americanText: """IpaUS: /ˈæŋɡri/""",
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
کوردی: تووڕە، قەڵس، توند، بەڕق، ڕق‌ھەستاو، نگری، پڕبا، ئاڵۆز، شەپۆلاوی (دەریا)، گڕگرتوو، سوورەوەبوو، بەژان، بەسوێ (برین)
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) تووڕە؛ بوونی ھەستی توند دەربارەی شتێک کە ڕقت لێیە"""),
                    SentencesRow(
                      englishText: "Her behaviour really made me angry.",
                      kurdishText: "ڕەفتارەکانی بەڕاستی تووڕەیان کردم.",
                      onPressedBritish: () => speakangry4102("en-GB"),
                      onPressedAmerican: () => speakangry4102("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "Thousands of angry demonstrators filled the square.",
                      kurdishText:
                          "ھەزاران خۆپیشاندەری تووڕە چوونە گۆڕەپانەکە.",
                      onPressedBritish: () => speakangry0158("en-GB"),
                      onPressedAmerican: () => speakangry0158("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) برینێک کە سووربووەتەوە و بەئازارە"""),
                    SentencesRow(
                      englishText: "On her leg was an angry sore.",
                      kurdishText: "ئاوساوییەکی بەئازار لەسەر لاقی بوو.",
                      onPressedBritish: () => speakangry4952("en-GB"),
                      onPressedAmerican: () => speakangry4952("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) تاریک و شەپۆلاوی و بەزریان"""),
                    SentencesRow(
                      englishText:
                          "The angry sea with its terrible waves crashed against the rocky shore.",
                      kurdishText:
                          "دەریا بەزریانەکە بە شەپۆلە ترسناکەکانییەوە کێشای بە کەناراوە بەردەڵانییەکە.",
                      onPressedBritish: () => speakangry4506("en-GB"),
                      onPressedAmerican: () => speakangry4506("en-US"),
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


