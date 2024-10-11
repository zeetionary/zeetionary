import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryincompatible extends StatefulWidget {
  const EnglishEntryincompatible({super.key});

  @override
  State<EnglishEntryincompatible> createState() =>
      _EnglishEntryincompatibleState();
}

class _EnglishEntryincompatibleState extends State<EnglishEntryincompatible> {
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
 -Adjective: incompatible
1. Not compatible
"incompatible personalities"; "incompatible colours"
 
2. Used especially of drugs or muscles that counteract or neutralize each other's effect (- antagonistic)
 
3. Not suitable to your tastes or needs (- uncongenial)
"the incompatible roommates were always fighting";
 
4. Incapable of being used with or connected to other devices or components without modification
 
5. Of words so related that one contrasts with the other (- contrastive)
"'rich' and 'hard-up' are incompatible terms";
 
6. (of a couple) not compatible; unsuitably matched (- ill-sorted, mismated, unsuited, ill-assorted, ill-suited)
"protracted anguish of an incompatible union";
 
7. Not compatible with other facts (- discrepant)
 
8. Not in keeping with what is correct or proper (- inappropriate, out of keeping, unfitting)
"completely incompatible behaviour";
 
9. Used especially of solids or solutions; incapable of blending into a stable homogeneous mixture
""",
  );

  final String keyword = "incompatible";
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
    await flutterTts.speak("""incompatible""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The hours of the job are incompatible with family life.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """This behaviour is completely incompatible with his role as a teacher.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She and her husband soon proved to be totally incompatible.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """New computer software is often incompatible with older computers.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Those two blood groups are incompatible.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'QcUey-DVYjk';
    const double startSecondsend = 1046;
    const String videoIdone = 'glS3RDoxYMM';
    const double startSecondsone = 675;
    const String videoIdtwo = 'pLcqJ2DclEg';
    const double startSecondstwo = 758;
    const String videoIdthree = 'xWB9dP1AtDU';
    const double startSecondsthree = 27;
    const String videoIdfour = 'qadSvKa2eHY';
    const double startSecondsfour = 75;
    const String videoIdfive = '-OpUg0GDrII';
    const double startSecondsfive = 119;

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
                      word: """incompatible""",
                      // alsoEnglishWord: "also: incompatible",
                      britshText: """IpaUK: /ˌɪnkəmˈpætəbl/""",
                      americanText: """IpaUS: /ˌɪnkəmˈpætəbl/""",
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
کوردی: نەسازاو، نەساز، نەگونجاو، یەک‌نەکەوتوو، پێکەوەهەڵنەکردوو، یەک‌نەگرەوە، ڕێک‌نەکەوتوو، دژ، جیاواز
"""),
// With short examples define "incompatible", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کە بیرۆکە، کار، هتد پێکەوە نەگونجێن بەهۆی جیاوازییان"""),
                    SentencesRow(
                      englishText:
                          """The hours of the job are incompatible with family life.""",
                      kurdishText:
                          """کاتەکانی کارەکە نەگونجاون لەگەڵ ژیانی خێزانیم.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This behaviour is completely incompatible with his role as a teacher.""",
                      kurdishText:
                          """ئەم ڕەفتارە تەواو نەگونجاوە لەگەڵ ئەرکی وەک مامۆستا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) کە دوو کەس زۆر جیاواز بن لە یەکدی و نەکرێت پێکەوە بژین یان کار بکەن"""),
                    SentencesRow(
                      englishText:
                          """She and her husband soon proved to be totally incompatible.""",
                      kurdishText:
                          """ئەو و هاوسەرەکەی زوو دەرکەوت نەگونجاون پێکەوە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) کە شتی جیاواز نەکرێت پێکەوە بەکاربێن یان تێکەڵ بکرێن"""),
                    SentencesRow(
                      englishText:
                          """New computer software is often incompatible with older computers.""",
                      kurdishText:
                          """نەرمامێری تازەی کۆمپیوتەر زۆر جار نەگونجاوە لەگەڵ کۆمپیوتەرە کۆنەکان.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Those two blood groups are incompatible.""",
                      kurdishText: """ئەو دوو گرووپە خوێنە نەگونجاون پێکەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
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