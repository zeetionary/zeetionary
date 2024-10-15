import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryirregular extends StatefulWidget {
  const EnglishEntryirregular({super.key});

  @override
  State<EnglishEntryirregular> createState() => _EnglishEntryirregularState();
}

class _EnglishEntryirregularState extends State<EnglishEntryirregular> {
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
- Adjective: irregular
1. Not occurring at a regular rate or fixed intervals (- unpredictable)
"an irregular heartbeat";
 
2. Failing to meet a standard of manufacture due to an imperfection
"an irregular pair of jeans"
 
3. Deviating from normal expectations; somewhat odd, strange, or abnormal (- atypical)
"highly irregular behaviour";
 
4. Lacking continuity or regularity (- temporary)
"an irregular worker";
 
5. (of a surface or shape); not level or flat or symmetrical
"walking was difficult on the irregular cobblestoned surface"
 
6. Independent in behaviour or thought (- maverick, unorthodox)
"she led a somewhat irregular private life";
 
7. Contrary to rule or accepted order or general practice
"irregular hiring practices"
 
8. (used of the military) not belonging to or engaged in by regular army forces
"irregular troops"; "irregular warfare"
 
9. (of solids) not having clear dimensions that can be measured; volume must be determined with the principle of liquid displacement

- Noun: irregular (Derived forms: irregulars)
1. A member of an irregular armed force that fights a stronger force by sabotage and harassment (- guerrilla, guerilla, insurgent)
 
2. Merchandise that has imperfections; usually sold at a reduced price without the brand name (- second)
""",
  );

  final String keyword = "irregular";
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
    await flutterTts.speak("""irregular""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The cells are slightly irregular in shape.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He visited his parents at irregular intervals.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It is highly irregular for an elected representative to hold such a post.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """That is the pattern for most verbs, but some verbs are irregular and behave differently.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = '1KgSp94nCZw';
    const double startSecondsend = 67;
    const String videoIdone = 'XeHl5Y7m1xM';
    const double startSecondsone = 428;
    const String videoIdtwo = 'DRZ3tWu-DzY';
    const double startSecondstwo = 28;
    const String videoIdthree = 'd6iQrh2TK98';
    const double startSecondsthree = 616;
    const String videoIdfour = '3i1lNJPY-4Q';
    const double startSecondsfour = 252;
    const String videoIdfive = 'wPclF09XnDk';
    const double startSecondsfive = 325;

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
                      word: """irregular""",
                      // alsoEnglishWord: "also: irregular",
                      britshText: """IpaUK: /ɪˈreɡjələ(r)/""",
                      americanText: """IpaUS: /ɪˈreɡjələr/""",
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
کوردی: ناڕێک، ناڕێک‌وپێک، کۆڵ، شێواو، شپرزە، نائاسایی، ناعەدەتی
"""),
// With short examples define "irregular", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کە بە شێوەیەکی ڕاست ڕێکنەخراوە؛ کە شێوەیەکی ڕێک و سافی نییە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: uneven"),
                    SentencesRow(
                      englishText:
                          """The cells are slightly irregular in shape.""",
                      kurdishText: """خانەکان کەمێک ناڕێکن لە شێوەدا.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) کە لەو کاتانەدا ڕوونادات کە هەمان ماوە لە نێوانیاندا هەیە"""),
                    SentencesRow(
                      englishText:
                          """He visited his parents at irregular intervals.""",
                      kurdishText:
                          """لە ماوە ماوەی ناڕێکدا سەردانی دایبابیی دەکرد.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) کە بە پێی یاسا پێشینەییەکان نییە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: abnormal"),
                    SentencesRow(
                      englishText:
                          """It is highly irregular for an elected representative to hold such a post.""",
                      kurdishText:
                          """تا ڕادەیەکی زۆر نامۆیە بۆ نوێنەرێکی هەڵبژێردراو پێگەیەکی وەهای هەبێت.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) کە بە شێوەی ئاسایی درووست نەبووە"""),
                    SentencesRow(
                      englishText:
                          """That is the pattern for most verbs, but some verbs are irregular and behave differently.""",
                      kurdishText:
                          """ئەمە شێوەکەیە بۆ زۆرینەی کردارەکان، بەڵام هەندێک کردار ناڕێکن و بە جیاوازی ڕەفتار دەکەن.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
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
// end irregular