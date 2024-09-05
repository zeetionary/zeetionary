import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

// removes un-needed tts methods with one quotations
// Future<void> \w+\(String languageCode\) async \{[^}]+await flutterTts\.speak\("\w*00"\);\s*\}

// removes un-needed tts methods with three quotations
// Future<void> \w+\(String languageCode\) async \{[^}]+await flutterTts\.speak\("""\w*00"""\);\s*\}

// removes un-needed tts methods with three quotations with new lines break ^\s*
// ^\s*Future<void> \w+\(String languageCode\) async \{[^}]+await flutterTts\.speak\("""\w*00"""\);\s*\}

// removes all un-needed definitions with sentences
// ^\s*const DividerDefinition\(\),\s*const DefinitionKurdish\(text: """ژممر\. \([^)]+\) پننسە"""\),\s*const DividerSentences\(\),\s*SentencesRow\(\s*englishText: """[^"]*00""",\s*kurdishText: """[^"]*""",\s*onPressedBritish: \(\) => [^,]+,\s*onPressedAmerican: \(\) => [^,]+,\s*\),

// removes all un-needed definitions
// ^\s*const DividerDefinition\(\),\s+const DefinitionKurdish\(text: """ژممر\. \([^)]+\) پننسە"""\),

// removes all un-needed definitions in expansion panels
// ^\s*const DividerDefinition\(\),\s+const DefinitionKurdish\(\s+text: """ژممر\. \([^)]+\) پننسە"""\),

// removes definitions dont use this
// ^\s*const DividerDefinition\(\),\s*const DefinitionKurdish\(text: """[^"]* \([^"]*\) [^"]*"""\),

// removes sentences row with one newline break above them https://chatgpt.com/c/5749d2fc-4f0d-4949-9ae6-8aaaba309d80
// ^\s*const DividerSentences\(\),\s*SentencesRow\(\s*englishText: """[^"]*00""",\s*kurdishText: """[^"]*""",\s*onPressedBritish: \(\) => [^,]+,\s*onPressedAmerican: \(\) => [^,]+,\s*\),

// removes sentences row
// const DividerSentences\(\),\s+SentencesRow\(\s+englishText: """[^"]*00""",\s+kurdishText: """[^"]*""",\s+onPressedBritish: \(\) => [^,]+,\s+onPressedAmerican: \(\) => [^,]+,\s+\),

// removes sentences and their definitions
// ^\s*const DividerDefinition\(\),\s*const DefinitionKurdish\(text: """[^"]* \([^"]*\) [^"]*"""\),\s*const DividerSentences\(\),\s*SentencesRow\(\s*englishText: """[^"]*00""",\s*kurdishText: """[^"]*""",\s*onPressedBritish: [^,]+,\s*onPressedAmerican: [^,]+,\s*\),

// \/\/ With short examples define "\w+", please follow LX instructions

// \\b\w+\(s\|ed\|ing\)\?
// \bdopsum1(s|ed|ing)?

// \\b\(\w+\)\(s\|ed\|es\|ing\)\?\\b\(\?=\[\.!\?\]\?\)
// \b(dopsum1)(s|ed|es|ing)?\b(?=[.!?]?)

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing } // final EnglishMeaningConst

class EnglishEntryaback extends StatefulWidget {
  const EnglishEntryaback({super.key});

  @override
  State<EnglishEntryaback> createState() => _EnglishEntryabackState();
}

class _EnglishEntryabackState extends State<EnglishEntryaback> {
  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    // _initDatabase();
    flutterTts.setLanguage("en-GB");
    flutterTts.setLanguage("en-US");
    fetchSentences();
    fetchKurdishSentences();
  }

  // Future<void> _initDatabase() async {
  //   await SentenceDatabase.instance.initialize();
  // }

  FlutterTts flutterTts = FlutterTts();

  bool isSpeaking = false;

  Future<void> startSpeaking(
      String languageCode, EnglishMeaningConst englishMeaningConst) async {
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);
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
Adverb: aback
1. Having the wind against the forward side of the sails
"the ship came up into the wind with all yards aback"
 
2. By surprise
"taken aback by the caustic remarks"
""",
  );
// 188888880002200

  final String keyword = "aback";
  List<Map<String, dynamic>> filteredSentences = [];

  Future<void> fetchSentences() async {
    final sentences =
        await DatabaseUtils.instance.fetchFilteredSentences(keyword: keyword);
    setState(() {
      filteredSentences = sentences;
    });
  }

  final String kurdishkeyword = "هێنان";
  List<Map<String, dynamic>> filteredKurdishSentences = [];

  Future<void> fetchKurdishSentences() async {
    final kurdishsentences = await KurdishDatabaseUtils.instance
        .fetchfilteredKurdishSentences(keyword: kurdishkeyword);
    setState(() {
      filteredKurdishSentences = kurdishsentences;
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
    await flutterTts.speak("""aback""");
  }

  Future<void> speak1256935(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was completely taken aback by his anger.");
  }

  @override
  Widget build(BuildContext context) {
    
    const String videoIdend = 'NU4MgeOb-cc';
    const double startSecondsend = 771;
    const String videoIdone = '4VSx2E7WE50';
    const double startSecondsone = 224;
    const String videoIdtwo = 'Y4E8qEDi_xg';
    const double startSecondstwo = 29;
    const String videoIdthree = 'xzZH151_wXo';
    const double startSecondsthree = 717;
    const String videoIdfour = 'GzRw4l3JIbk';
    const double startSecondsfour = 670;
    const String videoIdfive = 'BHnqRoEXu5o';
    const double startSecondsfive = 210;

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """aback""",
                      // alsoEnglishWord: "also: aback",
                      britshText: """IpaUK: /əˈbæk/""",
                      americanText: """IpaUS: /əˈbæk/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                automaticallyImplyLeading: false,
                bottom: const CustomTabBarNew(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    SentencesIconForTab(),
                    KurdIconForTab(),
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
                    SingleChildScrollView(
                      child: CustomColumnWidget(
                        children: [
                          // const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: داچڵەکین، ھەڵبەزینەوە، داترووسکان، سەرسووڕمان، واق‌وڕمان
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ھاوەڵکار) تووشی سەرسوڕمان و شۆک بیت بە شتێک"
                                  ""),
                          SentencesRow(
                            englishText:
                                "She was completely taken aback by his anger.",
                            kurdishText: "تەواو تووشی شۆک بوو بە توڕەییەکەی.",
                            onPressedBritish: () => speak1256935("en-GB"),
                            onPressedAmerican: () => speak1256935("en-US"),
                          ),
                        ],
                      ),
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
              Consumer(
                builder: (context, ref, child) {
                  if (filteredKurdishSentences.isEmpty) {
                    return const NoSentencesFromKurdishDatabase();
                  } else {
                    return ListView.builder(
                      itemCount: filteredKurdishSentences.length,
                      itemBuilder: (context, index) {
                        final sentence = filteredKurdishSentences[index];
                        final showDivider =
                            filteredKurdishSentences.length > 1 &&
                                index != filteredKurdishSentences.length - 1;
                        return KurdishCustomSentenceWidget(
                          kurdishText: sentence['sentence'].toString(),
                          keyword: kurdishkeyword,
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
