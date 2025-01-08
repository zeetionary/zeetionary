import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanimate extends StatefulWidget {
  const EnglishEntryanimate({super.key});

  @override
  State<EnglishEntryanimate> createState() => _EnglishEntryanimateState();
}

class _EnglishEntryanimateState extends State<EnglishEntryanimate> {
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
- Adjective: animate 
1. (linguistics) belonging to the class of nouns that denote living beings
"the word 'dog' is animate"
 
2. Endowed with animal life as distinguished from plant life
"we are animate beings"
 
3. Endowed with feeling and unstructured consciousness (= sentient)
"the living knew themselves just animate puppets on God's stage";

- Verb: animate (derived forms: animating, animates, animated)
1. Heighten or intensify (= inspire, invigorate, enliven, exalt)
"These paintings animate the imagination";
 
2. Give lifelike qualities to (= animize, animise [Brit])
"animated cartoons";
 
3. Make lively (= enliven, liven, liven up, invigorate)
 
4. Give new life or energy to (= recreate, reanimate, revive, renovate, repair, quicken, vivify, revivify)
"A hot soup will animate me";
""",
  );
// 188888880002200

  final String keyword = "animate";
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
    await flutterTts.speak("""animate""");
  }

  Future<void> speakanimate926(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A smile suddenly animated her face.");
  }

  Future<void> speakanimate930(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The much-loved characters have been animated in this new film.");
  }

  Future<void> speakanimate934(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Children quickly learn to distinguish between animate and inanimate motion.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '48pwrr4gPOA';
    const double startSecondsend = 1;
    const String videoIdone = 'v7L0nvzmfdE';
    const double startSecondsone = 17;
    const String videoIdtwo = '2FsSp7R2zT0';
    const double startSecondstwo = 18;
    const String videoIdthree = 'J-K5OjAkiEA';
    const double startSecondsthree = 14;
    const String videoIdfour = 'eo62AEDwTKY';
    const double startSecondsfour = 99;
    const String videoIdfive = 'eivn-6ayGT4';
    const double startSecondsfive = 41;
    // final String _videoId = 'Tfb99MZlqKY';
    // final double _startSeconds = 1096;
    // final String _videoId = 'TfaMLqEh1qM';
    // final double _startSeconds = 340;
    // final String _videoId = 'zJ5rFV5b9Xs';
    // final double _startSeconds = 85;
    // final String _videoId = 'qVfJheBp7Ys';
    // final double _startSeconds = 1044;
    // final String _videoId = 'BlU49dJhfcw';
    // final double _startSeconds = 403;
    // final String _videoId = 'qTPKGVrFtQU';
    // final double _startSeconds = 124;

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
                      word: """animate""",
                      // alsoEnglishWord: "also: animate",
                      britshText: """IpaUK: /ˈænɪmeɪt/""",
                      americanText: """IpaUS: /ˈænɪmeɪt/""",
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
کوردی: گیان‌دار، بەگیان، ڕۆح‌لەبەر، زیندەوەر، ڕۆح‌دار، زیندوو
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) وا لە شتێک بکەیت کە زیاتر کراوە و پڕ وزە بێت"""),
                    SentencesRow(
                      englishText: "A smile suddenly animated her face.",
                      kurdishText: "پێکەنینێک ڕووخساری کردەوە (گەشاندەوە).",
                      onPressedBritish: () => speakanimate926("en-GB"),
                      onPressedAmerican: () => speakanimate926("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) درووستکردنی ئەنیمەیشن (فیلمی کۆمپیوتەری یان وێنەیەکی زۆری جوڵاو بەدوای یەکدا)"""),
                    SentencesRow(
                      englishText:
                          "The much-loved characters have been animated in this new film.",
                      kurdishText:
                          "کارەکتەرە زۆر خۆشەویستەکان لەم فیلمە تازەدا وێناکراون.",
                      onPressedBritish: () => speakanimate930("en-GB"),
                      onPressedAmerican: () => speakanimate930("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) شتێکی زیندوو"""),
                    SentencesRow(
                      englishText:
                          "Children quickly learn to distinguish between animate and inanimate motion.",
                      kurdishText:
                          "منداڵان بەزووی فێردەبن جیاوازی بکەن لەنێوان جووڵەی شتی زیندوو و بێ‌گیان.",
                      onPressedBritish: () => speakanimate934("en-GB"),
                      onPressedAmerican: () => speakanimate934("en-US"),
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


