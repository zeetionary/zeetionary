import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjog extends StatefulWidget {
  const EnglishEntryjog({super.key});

  @override
  State<EnglishEntryjog> createState() => _EnglishEntryjogState();
}

class _EnglishEntryjogState extends State<EnglishEntryjog> {
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
- Verb: jog (Derived forms: jogging, jogs, jogged)
1. (sport) run for exercise
"jog along the canal"
 
2. Continue talking or writing in a desultory manner (- ramble on, ramble)
"This novel rambles on and jogs";
 
3. Even up the edges of a stack of paper, in printing (- square up, even up)
 
4. Run at a moderately swift pace (- trot, clip)
 
5. Give a slight push to
 
6. Stimulate to remember
"jog my memory"

- Noun: jog (Derived forms: jogs)
1. A sharp change in direction
"there was a jog in the road"
 
2. A slow pace of running (- trot, lope)
 
3. A slight push or shake (- nudge)
""",
  );

  final String keyword = "jog";
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
    await flutterTts.speak("""jog""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I go jogging every evening.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Someone jogged her elbow, making her spill her coffee.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I like to go for a jog after work.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/Tc_HhuikGCc?t=31';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/05gCLHlpzTU?t=1129';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/LAOoF2gyQaA?t=527';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/C1oxhniG_Fc?t=1002';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/w2DTEOB5rhk?t=359';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/LbPw9AlVKVM?t=1028';
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
                      word: """jog""",
                      // alsoEnglishWord: "also: jog",
                      britshText: """IpaUK: /dʒɒɡ/""",
                      americanText: """IpaUS: /dʒɑːɡ/""",
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
کوردی: تەکان، ڕاتەکان، ڕاوەشان، ڕاتڵەکان، پاڵ (سووک)، سیخورمە،	نەرمە هەڵاتن، هەروەڵە، بدەو، سووکە ڕاکردن
"""),
// With short examples define "jog", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) ڕاکردن بە هێواشی لەسەرەخۆیی بۆ ماوەیەکی زۆر"""),
                    SentencesRow(
                      englishText: """I go jogging every evening.""",
                      kurdishText: """هەموو ئێوارەیەک دەچمە سووکەڕاکردن.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) لێدان لە شتێک بە هێواشی و ڕێکەوت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: nudge"),
                    SentencesRow(
                      englishText:
                          """Someone jogged her elbow, making her spill her coffee.""",
                      kurdishText:
                          """کەسێک کێشای بە ئانیشکیدا و قاوەکەی پێڕژاند.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ڕاکردنێکی هێواش، بە تایبەتی کە بۆ ڕاهێنانی جەستەیی دەکرێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I like to go for a jog after work.""",
                      kurdishText:
                          """دوای کار حەز دەکەم بچمە سووکە ڕاکردنێک.""",
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
// end jog