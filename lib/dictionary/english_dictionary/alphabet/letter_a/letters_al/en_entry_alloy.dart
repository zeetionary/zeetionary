import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalloy extends StatefulWidget {
  const EnglishEntryalloy({super.key});

  @override
  State<EnglishEntryalloy> createState() => _EnglishEntryalloyState();
}

class _EnglishEntryalloyState extends State<EnglishEntryalloy> {
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
- Noun: alloy (derived forms: alloys)
1. A mixture containing two or more metallic elements or metallic and nonmetallic elements usually fused together or dissolving into each other when molten (= metal)
"brass is an alloy of zinc and copper";

2. The state of impairing the quality or reducing the value of something (= admixture)

- Verb: alloy (derived forms: alloys, alloying, alloyed)
1. (metallurgy) lower in value by increasing the base-metal content (= debase)
 
2. (metallurgy) make an alloy of
""",
  );
// 188888880002200

  final String keyword = "alloy";
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
    await flutterTts.speak("""alloy""");
  }

  Future<void> speakalloy4277(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Brass is an alloy of copper and zinc.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'FaIBdVdu0wo';
    const double startSecondsend = 378;
    const String videoIdone = 'xtBIb0UyikQ';
    const double startSecondsone = 359;
    const String videoIdtwo = 'xnVijYba9k0';
    const double startSecondstwo = 8;
    const String videoIdthree = 'VUfJWuhmygA';
    const double startSecondsthree = 27;
    const String videoIdfour = 'bmNjKXz7LVM';
    const double startSecondsfour = 9;
    const String videoIdfive = 'ks8luNc8z98';
    const double startSecondsfive = 12;
    // final String _videoId = 'Pg4L-aZzSks';
    // final double _startSeconds = 8;
    // final String _videoId = 'tCn265anAgs';
    // final double _startSeconds = 4;

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
                      word: """alloy""",
                      // alsoEnglishWord: "also: alloy",
                      britshText: """IpaUK: /ˈælɔɪ/""",
                      americanText: """IpaUS: /ˈælɔɪ/""",
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
کوردی: داڕشتە، ئامێژەن، ئەمێژین، عەیار، بار، ڕێژە، ڕادە
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) داڕشتە؛ کانزایەک کە بە تێکەڵکردنی دوو کانزای تر، یان کانزایەک و مادەیەکی تر درووست بووە"
                            ""),
                    SentencesRow(
                      englishText: "Brass is an alloy of copper and zinc.",
                      kurdishText: "مسی سپی داڕشتەی مس و زینکە.",
                      onPressedBritish: () => speakalloy4277("en-GB"),
                      onPressedAmerican: () => speakalloy4277("en-US"),
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

