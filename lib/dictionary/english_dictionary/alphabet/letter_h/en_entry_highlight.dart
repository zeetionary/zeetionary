import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhighlight extends StatefulWidget {
  const EnglishEntryhighlight({super.key});

  @override
  State<EnglishEntryhighlight> createState() => _EnglishEntryhighlightState();
}

class _EnglishEntryhighlightState extends State<EnglishEntryhighlight> {
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
- Noun: highlight (Derived forms: highlights)
1. The most interesting or memorable part (- high spot)
"the highlight of the tour was our visit to the Vatican";
 
2. An area of lightness in a picture (- highlighting)
 
3. A light coloured streak in hair made by dyeing or bleaching

- Verb: highlight (Derived forms: highlights, highlighting, highlighted)
1. Emphasise or focus on to make more important or prominent (- foreground, spotlight, play up)
"The introduction highlighted the speaker's distinguished career in linguistics";
 
2. Apply a highlighter to one's cheeks or eyebrows in order to make them more prominent
"highlight the area above your eyebrows"
""",
  );

  final String keyword = "highlight";
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
    await flutterTts.speak("""highlight""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The report highlighted the importance of exercise to maintain a healthy body.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Students highlighted the need for better communication between staff.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """These figures clearly highlight the difference in world living standards.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Highlight the section that you want to delete.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I’m having my hair highlighted.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """One of the highlights of the trip was seeing the Taj Mahal.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The highlights of the match will be shown later this evening.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My dance class is the highlight of my week.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The highlight of the week was Saturday's firework display.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She’s had blonde highlights put into her hair.""");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'HDntl7yzzVI';
    const double startSecondsend = 32;
    const String videoIdone = 'CXvG2CBJ3SE';
    const double startSecondsone = 20;
    const String videoIdtwo = 'pTysrwci0pU';
    const double startSecondstwo = 355;
    const String videoIdthree = 'L6QJS8djygk';
    const double startSecondsthree = 537;
    const String videoIdfour = '3RkhZgRNC1k';
    const double startSecondsfour = 1443;
    const String videoIdfive = 'oBcxuzdP3rs';
    const double startSecondsfive = 35;

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
                      word: """highlight""",
                      // alsoEnglishWord: "also: highlight",
                      britshText: """IpaUK: /ˈhaɪlaɪt/""",
                      americanText: """IpaUS: /ˈhaɪlaɪt/""",
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
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) جەختکردنەوە لە شتێک، بە تایبەتی بۆ ئەوەی خەڵکی سەرنجی زیاتری پێ بدەن"""),
                    SentencesRow(
                      englishText:
                          """The report highlighted the importance of exercise to maintain a healthy body.""",
                      kurdishText:
                          """ڕاپۆرتەکە جەختی کردەوە لە گرنگی ڕاهێنان بۆ هەبوونی لاشەیەکی تەندرووست.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Students highlighted the need for better communication between staff.""",
                      kurdishText:
                          """خوێندکاران جەختیان کردەوە لە پێویستی بۆ پەیوەندیی باشتر لە نێوان ستافدا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """These figures clearly highlight the difference in world living standards.""",
                      kurdishText:
                          """ئامارەکان بە ڕوونی جەخت لە جیاوازیی ستانداردەکانی ژیانی جیهانی دەکەنەوە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) دیاریکردنی بەشێک بە پێنووسێکی ڕەنگاوڕەنگ یان لەسەر کۆمپیوتەر"""),
                    SentencesRow(
                      englishText:
                          """Highlight the section that you want to delete.""",
                      kurdishText:
                          """ئەو بەشە ڕەنگ بکە کە دەتەوێت بیسڕیتەوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) پێدانی ڕەنگێکی کاڵتر بە هەندێک بەشی قژت بە مادەی کیمیایی"""),
                    SentencesRow(
                      englishText: """I’m having my hair highlighted.""",
                      kurdishText: """قژم کاڵ دەکەمەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) باشترین، سەرنجڕاکێشترین، یان بەجۆشترین بەشی شتێک"""),
                    SentencesRow(
                      englishText:
                          """One of the highlights of the trip was seeing the Taj Mahal.""",
                      kurdishText:
                          """یەکێک لە خاڵە گرنگەکانی گەشتەکە بینینی تاج مەحەل بوو.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The highlights of the match will be shown later this evening.""",
                      kurdishText:
                          """بەشە گرنگەکانی یارییەکە کۆتایی ئەمشەو پیشان دەدرێن.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """My dance class is the highlight of my week.""",
                      kurdishText: """وانەی سەمام بەشی بەچێژی هەفتەکەمە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The highlight of the week was Saturday's firework display.""",
                      kurdishText:
                          """بەشی سەرنجڕاکێشی هەفتەکە نمایشی یاریی ئاگرینی شەممە بوو.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) ئەو بەشانەی قژ کە کاڵترن لە بەشەکانی دیکە، زۆرجار بەهۆی مادەی کیمیایی کە لێی دراوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She’s had blonde highlights put into her hair.""",
                      kurdishText: """قژی کاڵی زەردی خستبووە قژی.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
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
