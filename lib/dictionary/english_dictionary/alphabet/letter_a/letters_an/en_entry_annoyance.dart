import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryannoyance extends StatefulWidget {
  const EnglishEntryannoyance({super.key});

  @override
  State<EnglishEntryannoyance> createState() => _EnglishEntryannoyanceState();
}

class _EnglishEntryannoyanceState extends State<EnglishEntryannoyance> {
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
- Noun: annoyance (derived forms: annoyances)
1. The psychological state of being irritated or annoyed (= irritation, vexation, botheration [informal])
 
2. Anger produced by some annoying irritation (= chafe, vexation)
 
3. An unpleasant person who is annoying or exasperating (= aggravator)
 
4. Something or someone that causes annoyance, inconvenience, or makes life more difficult (= bother, botheration [informal], pain, infliction, pain in the neck [informal], irritation, nuisance)
 
5. The act of troubling or annoying someone (= annoying, irritation, vexation)
""",
  );
// 188888880002200

  final String keyword = "annoyance";
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
    await flutterTts.speak("""annoyance""");
  }

  Future<void> speakannoyance759(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He could not conceal his annoyance at being interrupted.");
  }

  Future<void> speakannoyance801(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I dropped out of college, much to the annoyance of my parents.");
  }

  Future<void> speakannoyance805(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "One of the greatest annoyances was being bitten by mosquitoes every night.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '1U-vsBvnRZs';
    const double startSecondsend = 52;
    const String videoIdone = 'k7YVxLLIuGM';
    const double startSecondsone = 327;
    const String videoIdtwo = 'BsxoqAU81ec';
    const double startSecondstwo = 833;
    const String videoIdthree = 'i7mqjhOYL-8';
    const double startSecondsthree = 179;
    const String videoIdfour = 'knjliFs3gR8';
    const double startSecondsfour = 818;
    const String videoIdfive = '0eVTk_2zcaA';
    const double startSecondsfive = 7122;
    // final String _videoId = '3UBBulOCI7I';
    // final double _startSeconds = 806;
    // final String _videoId = 'N8M8OOe3SV4';
    // final double _startSeconds = 627;
    // final String _videoId = 'XrE0SnWsMIw';
    // final double _startSeconds = 1745;
    // final String _videoId = '_nnOs5O0s7A';
    // final double _startSeconds = 363;

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
                      word: """annoyance""",
                      // alsoEnglishWord: "also: annoyance",
                      britshText: """IpaUK: /əˈnɔɪəns/""",
                      americanText: """IpaUS: /əˈnɔɪəns/""",
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
کوردی: ناڕەحەتی، ڕق‌ھەستاوی، تووڕەیی، دڵ‌ئێشان، زیزی، دڵ‌شکان، دڵ‌ڕەنجان، تەنگەتاوکردن، سەرئێشاندن، ھەراسان‌کردن، بەتەنگ‌ھێنان، جاڕزکردن، ناڕەحەت‌کردن، دەردپێدان، ھەڵپێچان، زۆربۆھێنان، بێزارکردن، مایەی مزاحیم‌بوون، مایەی‌سەرئێشە
"""),
                    const DefinitionKurdish(text: """١. (ناو) کەمێک بێزاری"""),
                    SentencesRow(
                      englishText:
                          "He could not conceal his annoyance at being interrupted.",
                      kurdishText:
                          "نەیدەتوانی بێزاریی بشارێتەوە بە قسەپێ‌بڕینی.",
                      onPressedBritish: () => speakannoyance759("en-GB"),
                      onPressedAmerican: () => speakannoyance759("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "I dropped out of college, much to the annoyance of my parents.",
                      kurdishText:
                          "وازم لە کۆلێژ ھێنا کە بووە ھۆی بێزاریی دایک و باوکم.",
                      onPressedBritish: () => speakannoyance801("en-GB"),
                      onPressedAmerican: () => speakannoyance801("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) شتێک کە دەبێتە ھۆی کەمێک بێزاری"""),
                    SentencesRow(
                      englishText:
                          "One of the greatest annoyances was being bitten by mosquitoes every night.",
                      kurdishText:
                          "یەکێک لە گەورەترین جاڕسکەرەکان ئەوەبوو مێشوولە ھەموو شەوێک بتگەزێت.",
                      onPressedBritish: () => speakannoyance805("en-GB"),
                      onPressedAmerican: () => speakannoyance805("en-US"),
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


