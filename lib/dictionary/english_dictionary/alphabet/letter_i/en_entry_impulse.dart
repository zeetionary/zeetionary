import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryimpulse extends StatefulWidget {
  const EnglishEntryimpulse({super.key});

  @override
  State<EnglishEntryimpulse> createState() => _EnglishEntryimpulseState();
}

class _EnglishEntryimpulseState extends State<EnglishEntryimpulse> {
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
- Noun: impulse (Derived forms: impulses)
1. An instinctive motive (- urge)
"profound religious impulses";
 
2. A sudden desire (- caprice, whim)
"he bought it on an impulse";
 
3. The electrical discharge that travels along a nerve fibre (- nerve impulse, nervous impulse, neural impulse)
"they demonstrated the transmission of impulses from the cortex to the hypothalamus";
 
4. (electronics) a sharp transient wave in the normal electrical state (or a series of such transients) (- pulsation, pulsing, pulse)
 
5. The act of applying force suddenly (- impulsion, impetus)
"the impulse knocked him over";
 
6. An impelling force or strength (- momentum)
""",
  );

  final String keyword = "impulse";
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
    await flutterTts.speak("""impulse""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He had a sudden impulse to stand up and sing.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her first impulse was to run away.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He tends to act on impulse.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The impulse is conducted along the length of the wire.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Nerve impulses are transmitted to the brain.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He was motivated by the impulse for social reform.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'a9m3GD0DbPY';
    const double startSecondsend = 2286;
    const String videoIdone = 'a7wC2M0b5u0';
    const double startSecondsone = 1299;
    const String videoIdtwo = 'kUE2fPLOUxo';
    const double startSecondstwo = 614;
    const String videoIdthree = 'yRFPjBuRRCg';
    const double startSecondsthree = 483;
    const String videoIdfour = 'UrkPC81_QfU';
    const double startSecondsfour = 507;
    const String videoIdfive = 'ySOKrCusEjw';
    const double startSecondsfive = 1067;

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
                      word: """impulse""",
                      // alsoEnglishWord: "also: impulse",
                      britshText: """IpaUK: /ˈɪmpʌls/""",
                      americanText: """IpaUS: /ˈɪmpʌls/""",
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
کوردی: تەکان، جووڵە، بزاوت، گوڕ، زەربە،	نگە، مەیل، گز، هەوەس، ئیشتیا، حەز،	هاندان، گوڕ، پاڵ، پاڵنان، پاڵنەر، هاندەر، هێوەژ، دنە
"""),
// With short examples define "impulse", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) حەز یان پێویستیی بەهێز بۆ کردنی شتێک بەبێ بیرکردنەوە لە ئەنجامەکانی"""),
                    SentencesRow(
                      englishText:
                          """He had a sudden impulse to stand up and sing.""",
                      kurdishText:
                          """پاڵنەرێکی لەناکاوی هەبوو کە هەستێتە سەر پێ و گۆرانی بڵێت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Her first impulse was to run away.""",
                      kurdishText: """یەکەم جووڵەی ئەوە بوو ڕابکات.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He tends to act on impulse.""",
                      kurdishText:
                          """مەیلی ئەوەی هەیە بە گوێی حەزەکانی بکات.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) هێز یان جووڵەی وزە کە وەها لە شتێک دەکات کاردانەوەی هەبێت"""),
                    SentencesRow(
                      englishText:
                          """The impulse is conducted along the length of the wire.""",
                      kurdishText:
                          """هێزەکە بە درێژایی درێژی وایەرەکە دەنێردرێت.""",
                      englishNote:
                          """This means that the electrical signal or force (impulse) travels or moves through the wire, following its entire length, as part of the process of transmitting energy or information. The wire acts as a pathway for the impulse to move from one point to another.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Nerve impulses are transmitted to the brain.""",
                      kurdishText:
                          """هاندەرە دەمارییەکان بۆ مێشک دەگوازرێنەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) شتێک کە وەها لە ک/شت دەکات کە شتێک بکات یان بەرەوپێشچوونی هەبێت"""),
                    SentencesRow(
                      englishText:
                          """He was motivated by the impulse for social reform.""",
                      kurdishText:
                          """حەزی بۆ چاکسازی کۆمەڵایەتی پاڵنەری بوو.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
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