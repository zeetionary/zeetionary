import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjigsaw extends StatefulWidget {
  const EnglishEntryjigsaw({super.key});

  @override
  State<EnglishEntryjigsaw> createState() => _EnglishEntryjigsawState();
}

class _EnglishEntryjigsawState extends State<EnglishEntryjigsaw> {
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
- Noun: jigsaw (Derived forms: jigsaws)
1. A portable power saw with a reciprocating blade; can be used with a variety of blades depending on the application and kind of cut; generally have a plate that rides on the surface that is being cut (- saber saw [N. Amer], reciprocating saw, sabre saw [Brit, Cdn])
 
2. Fine-toothed power saw with a narrow blade; used to cut curved outlines (- scroll saw, fretsaw)
 
3. A puzzle that requires you to reassemble a picture that has been mounted on a stiff base and cut into interlocking pieces (- jigsaw puzzle)

- Verb: jigsaw (Derived forms: jigsaws, jigsawing, jigsawed)
1. Cut with a jigsaw
""",
  );

  final String keyword = "jigsaw";
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
    await flutterTts.speak("""jigsaw""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We spent all evening doing a 1,000-piece jigsaw.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """This is another piece in the jigsaw that will help us understand the biology of cancer.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He used a jigsaw to cut out the design.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/UJhqHjwBfAg?t=181';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/CmBzCnCj2XY?t=305';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/LYUdnsIn5OU?t=1044';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/lTWY11J9Z3o?t=91';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/BYwC-WJQKd4?t=43';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/_ztM_Y_PlAo?t=1';
    const double startSecondsfive = 0;

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
                      word: """jigsaw""",
                      // alsoEnglishWord: "also: jigsaw",
                      britshText: """IpaUK: /ˈdʒɪɡsɔː/""",
                      americanText: """IpaUS: /ˈdʒɪɡsɔː/""",
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
//                     const KurdishVocabulary(text: """
// کوردی:
// """),
// With short examples define "jigsaw", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) وێنەیەک کە پارچە پارچەیە و دەبێت بەشەکانی پێکەوە بلکێنێت بۆ چاککردنەوەی"""),
                    const AlsoEnglishckb(word: "ھەروەھا: jigsaw puzzle"),
                    SentencesRow(
                      englishText:
                          """We spent all evening doing a 1,000-piece jigsaw.""",
                      kurdishText:
                          """تەواوی ئێوارەکەمان بەسەر برد بە ئەنجامدانی مەتەڵی جیگسۆ.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) دۆخێکی ئاڵۆز کە تێیدا تێناگەیت لە هەموو هۆکارەکانی ئەوەی ڕوودەدات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This is another piece in the jigsaw that will help us understand the biology of cancer.""",
                      kurdishText:
                          """ئەمە بەشێکی دیکەیە لە دۆخەکە کە وادەکات لە زیندەزانیی شێرپەنجە تێبگەین.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) مشارێک کە دەمێکی باریکی هەیە بۆ بڕینی دیزاین لەسەر پارچە تەختە و کانزا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He used a jigsaw to cut out the design.""",
                      kurdishText: """مشارێکی بەکارهێنا بۆ بڕینی دیزاینەکە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
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
// end jigsaw
