// end affirm
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaffirm extends StatefulWidget {
  const EnglishEntryaffirm({super.key});

  @override
  State<EnglishEntryaffirm> createState() => _EnglishEntryaffirmState();
}

class _EnglishEntryaffirmState extends State<EnglishEntryaffirm> {
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
- Verb: affirm (derived forms: affirmed, affirms, affirming)
1. Establish or strengthen as with new evidence or facts (= confirm, corroborate, sustain, substantiate, support)
"his story affirmed my doubts";
 
2. To declare or affirm solemnly and formally as true (= verify, assert, avow, aver, swear)
"Before God I affirm I am innocent";

3. Say yes to
""",
  );
// 188888880002200

  final String keyword = "affirm";
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
    await flutterTts.speak("""affirm""");
  }

  Future<void> speakaff25699(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Both sides affirmed their commitment to the ceasefire.");
  }

  Future<void> speakaffirm411(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We affirm the principle that leaders must be chosen by the people and be accountable to the people.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'HDntl7yzzVI';
    const double startSecondsend = 1161;
    const String videoIdone = 'nDEyQB0Jjkw';
    const double startSecondsone = 1820;
    const String videoIdtwo = 'MRWYzNIk5vU';
    const double startSecondstwo = 63;
    const String videoIdthree = 'eJ-WJssJgdg';
    const double startSecondsthree = 2325;
    const String videoIdfour = 'Yi0Mdvcg1Dg';
    const double startSecondsfour = 1093;
    const String videoIdfive = 'c7MoqwTIw3M';
    const double startSecondsfive = 260;
    // const String videoId = 'lctv_pyT62o';
    // const double startSeconds = 946;
    // const String videoId = 'Bkdvw4sPz8A';
    // const double startSeconds = 344;
    // const String videoId = 'JNZc9H54eBI';
    // const double startSeconds = 137;
    // const String videoId = 'CqnWMPuyT0g';
    // const double startSeconds = 691;

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
                      word: """affirm""",
                      // alsoEnglishWord: "also: affirm",
                      britshText: """IpaUK: /əˈfɜːm/""",
                      americanText: """IpaUS: /əˈfɜːrm/""",
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
١. (کردار) بەڕوونی وتنی ئەوەی شتێک ڕاستە"""),
                    SentencesRow(
                      englishText:
                          "Both sides affirmed their commitment to the ceasefire.",
                      kurdishText:
                          "ھەردوو لایەن بەڕوونی پابەندی خۆیان بە ئاگربەستەوە ڕاگەیاند.",
                      onPressedBritish: () => speakaff25699("en-GB"),
                      onPressedAmerican: () => speakaff25699("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) وتنی ئەوەی باوەڕت بەشتێکە و بەرگری لێ دەکەیت"""),
                    SentencesRow(
                      englishText:
                          "We affirm the principle that leaders must be chosen by the people and be accountable to the people.",
                      kurdishText:
                          "پشتیوانی ئەو باوەڕە دەکەین کە سەرکردەکان دەبێت لەلایەن خەڵکەوە ھەڵبژێردرێن و بەرپرسیار بن بەرامبەر خەڵکی.",
                      onPressedBritish: () => speakaffirm411("en-GB"),
                      onPressedAmerican: () => speakaffirm411("en-US"),
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
