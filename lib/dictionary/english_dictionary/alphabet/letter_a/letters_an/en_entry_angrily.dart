import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryangrily extends StatefulWidget {
  const EnglishEntryangrily({super.key});

  @override
  State<EnglishEntryangrily> createState() => _EnglishEntryangrilyState();
}

class _EnglishEntryangrilyState extends State<EnglishEntryangrily> {
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
- Adverb: angrily 
1. With anger (= irritatedly, vexedly, exasperatedly)
"he angrily denied the accusation";
""",
  );
// 188888880002200

  final String keyword = "angrily";
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
    await flutterTts.speak("""angrily""");
  }

  Future<void> speakangrily12980(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Some senators reacted angrily to the president's remarks.");
  }

  Future<void> speakangrily25610(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The president angrily denounced the coup as illegal.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'sOu0WD259rA';
    const double startSecondsend = 1;
    const String videoIdone = 'VrKW58MS12g';
    const double startSecondsone = 220;
    const String videoIdtwo = '8o12WrHBhU0';
    const double startSecondstwo = 788;
    const String videoIdthree = 'QLq6GEiHqR8';
    const double startSecondsthree = 1059;
    const String videoIdfour = 'XvVASCnsal8';
    const double startSecondsfour = 640;
    const String videoIdfive = '7iuzi21AI4M';
    const double startSecondsfive = 934;
    // final String _videoId = 'MYnjzsjeMK8';
    // final double _startSeconds = 472;
    // final String _videoId = '3i1lNJPY-4Q';
    // final double _startSeconds = 1273;
    // final String _videoId = 'eGfU7DaAwpc';
    // final double _startSeconds = 750;
    // final String _videoId = 'odtAJ2kPdqc';
    // final double _startSeconds = 150;
    // final String _videoId = 'YAKcbvioxFk';
    // final double _startSeconds = 958;
    // final String _videoId = 'MBxMGSwoWzg';
    // final double _startSeconds = 335;

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
                      word: """angrily""",
                      // alsoEnglishWord: "also: angrily",
                      britshText: """IpaUK: /ˈæŋɡrəli/""",
                      americanText: """IpaUS: /ˈæŋɡrəli/""",
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
١. (ھاوەڵکار) توند، بە توندی، بە تووڕەیی‌یەوە"""),
                    SentencesRow(
                      englishText:
                          "Some senators reacted angrily to the president's remarks.",
                      kurdishText:
                          "ھەندێک سیناتۆر بەتوڕەییەوە کاردانەوەیان ھەبوو بۆ وتەکانی سەرۆک.",
                      onPressedBritish: () => speakangrily12980("en-GB"),
                      onPressedAmerican: () => speakangrily12980("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "The president angrily denounced the coup as illegal.",
                      kurdishText:
                          "سەرۆک بەتوڕەییەوە کودەتاکەی بە نایاسایی سەرکۆنەکرد.",
                      onPressedBritish: () => speakangrily25610("en-GB"),
                      onPressedAmerican: () => speakangrily25610("en-US"),
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


