import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamphibian extends StatefulWidget {
  const EnglishEntryamphibian({super.key});

  @override
  State<EnglishEntryamphibian> createState() => _EnglishEntryamphibianState();
}

class _EnglishEntryamphibianState extends State<EnglishEntryamphibian> {
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
- Adjective: amphibian
1. Relating to or characteristic of animals of the class Amphibia (= amphibious)

- Noun: amphibian (derived forms: amphibians)
1. A flat-bottomed motor vehicle that can travel on land or water (= amphibious vehicle)
 
2. An aeroplane designed to take off and land on water (= amphibious aircraft)
 
3. any animal that can live both on land and in water. Amphibians have cold blood and skin without scales. Frogs, toads and newts are all amphibians.
""",
  );
// 188888880002200

  final String keyword = "amphibian";
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
    await flutterTts.speak("""amphibian""");
  }

  Future<void> speakamphibian4410(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Salamanders, frogs, and other amphibian life are particularly sensitive to extreme pH levels.");
  }

  Future<void> speakamphibian44588(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He flew an amphibian, which he could set down on water in case of an engine problem.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'ZYf_rUl2TWA';
    const double startSecondsend = 1;
    const String videoIdone = 'CxKArhySbko';
    const double startSecondsone = 60;
    const String videoIdtwo = 'EladL3ZW8h8';
    const double startSecondstwo = 632;
    const String videoIdthree = 'gN0cpZytGos';
    const double startSecondsthree = 4;
    const String videoIdfour = 'bJH3YZqrm-8';
    const double startSecondsfour = 215;
    const String videoIdfive = 'VLgywOXtXjo';
    const double startSecondsfive = 212;
    // final String _videoId = 'N0WJL9G6xno';
    // final double _startSeconds = 137;
    // final String _videoId = 'HhUdYJg0JOM';
    // final double _startSeconds = 145;
    // final String _videoId = '8V3B85bfVFI';
    // final double _startSeconds = 16;
    // final String _videoId = 'N6N1T00qslI';
    // final double _startSeconds = 19;
    // final String _videoId = 'laxYhf-uOs4';
    // final double _startSeconds = 285;
    // final String _videoId = '3a9MmVMyoTo';
    // final double _startSeconds = 107;

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
                      word: """amphibian""",
                      // alsoEnglishWord: "also: amphibian",
                      britshText: """IpaUK: /æmˈfɪbiən/""",
                      americanText: """IpaUS: /æmˈfɪbiən/""",
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
کوردی: گیانەوەری دووژینە یان وشکاوەکی، فڕۆکەی وشکانی‌ـئاوی (وشکاوەکی)، فڕۆکەی ئاوی-خاکی (جووتفڕ)
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) گیانەوەرێک کە لە ھەردوو وشکانی و ئاودا دەژی"
                            ""),
                    SentencesRow(
                      englishText:
                          "Salamanders, frogs, and other amphibian life are particularly sensitive to extreme pH levels.",
                      kurdishText:
                          "سەلەمەندەر و بۆق گیانەوەرە دووژینەکانی دیکە بەتایبەتی ھەستیارن بە ژینگەی ڕەنووسی ھایدرۆجینی بەرز.",
                      onPressedBritish: () => speakamphibian4410("en-GB"),
                      onPressedAmerican: () => speakamphibian4410("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ئۆتۆمبێلێک یان فڕۆکەیەکی سەربازی کە لە وشکانی و ئاودا کاردەکات"""),
                    SentencesRow(
                      englishText:
                          "He flew an amphibian, which he could set down on water in case of an engine problem.",
                      kurdishText:
                          "فڕۆکەیەکی جووتفڕی لێدەخوڕی، کە دەیتوانی لەسەر ئاو بینیشێنێتەوە لە حاڵەتی کێشە لە بزوێنەرەکانی.",
                      onPressedBritish: () => speakamphibian44588("en-GB"),
                      onPressedAmerican: () => speakamphibian44588("en-US"),
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

