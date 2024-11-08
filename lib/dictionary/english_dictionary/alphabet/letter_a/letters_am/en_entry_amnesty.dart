import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamnesty extends StatefulWidget {
  const EnglishEntryamnesty({super.key});

  @override
  State<EnglishEntryamnesty> createState() => _EnglishEntryamnestyState();
}

class _EnglishEntryamnestyState extends State<EnglishEntryamnesty> {
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
- Noun: amnesty (derived forms: amnesties)
1. A period during which offenders are exempt from punishment
 
2. (law) a warrant granting release from punishment for an offence
- pardon
 
3. (law) the formal act of liberating someone (= pardon, free pardon)

- Verb: amnesty (derived forms: amnestied, amnesties, amnestying)
1. (law) grant a pardon to (a group of people)
""",
  );
// 188888880002200

  final String keyword = "amnesty";
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
    await flutterTts.speak("""amnesty""");
  }

  Future<void> speakamnesty4117(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The president granted a general amnesty for all political prisoners.");
  }

  Future<void> speakamnesty4699(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "2 000 knives have been handed in during the month-long amnesty.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'NhEP_PeLzuI';
    const double startSecondsend = 1;
    const String videoIdone = '8i7KvfkrQ58';
    const double startSecondsone = 79;
    const String videoIdtwo = '3IAS35bKqXk';
    const double startSecondstwo = 22;
    const String videoIdthree = 'bvfTCqmBwR4';
    const double startSecondsthree = 226;
    const String videoIdfour = 'B33VRfTdlXA';
    const double startSecondsfour = 15;
    const String videoIdfive = 'gdgPAetNY5U';
    const double startSecondsfive = 800;
    // final String _videoId = 'HYbbmatf6w4';
    // final double _startSeconds = 266;
    // final String _videoId = '_zZxCVBi7-k';
    // final double _startSeconds = 5200;
    // final String _videoId = 'JZpaIMSgj7I';
    // final double _startSeconds = 68;
    // final String _videoId = 'PuYJQsIJzhg';
    // final double _startSeconds = 254;
    // final String _videoId = 'ZjuLXzIU234';
    // final double _startSeconds = 916;
    // final String _videoId = 'ymY7Zg8wLmo';
    // final double _startSeconds = 568;

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
                      word: """amnesty""",
                      // alsoEnglishWord: "also: amnesty",
                      britshText: """IpaUK: /ˈæmnəsti/""",
                      americanText: """IpaUS: /ˈæmnəsti/""",
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
کوردی: لێ‌بوردن، بەخشین، لێ‌خۆشبوون (گشتی)، تەنگەتاوی، موڵەت، دەرفەت
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) لێبوردن لە زیندانیان یان ئەو کەسانەی تاوانیان کردووە"
                            ""),
                    SentencesRow(
                      englishText:
                          "The president granted a general amnesty for all political prisoners.",
                      kurdishText:
                          "سەرۆک لێبووردنی گشتی بۆ ھەموو زیندانیانی سیاسی دەرکرد.",
                      onPressedBritish: () => speakamnesty4117("en-GB"),
                      onPressedAmerican: () => speakamnesty4117("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ماوەیەکی دیاریکراو کە تاوانباران دەتوانن دان بە تاواندا بنێن، یان چەکەکانیان، یان کەلوپەلی دزراو بدەن‌بەدەستەوە بەبێ ئەوەی سزابدرێن """),
                    SentencesRow(
                      englishText:
                          "2 000 knives have been handed in during the month-long amnesty.",
                      kurdishText:
                          "٢٠٠٠ چەقۆ دران‌بەدەستەوە لە ماوەی مۆڵەتە یەک مانگییەکە.",
                      onPressedBritish: () => speakamnesty4699("en-GB"),
                      onPressedAmerican: () => speakamnesty4699("en-US"),
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

