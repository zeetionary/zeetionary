import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhike extends StatefulWidget {
  const EnglishEntryhike({super.key});

  @override
  State<EnglishEntryhike> createState() => _EnglishEntryhikeState();
}

class _EnglishEntryhikeState extends State<EnglishEntryhike> {
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
- Noun: hike (Derived forms: hikes)
1. A long walk usually for exercise or pleasure (- tramp, ramble, trek)
"she enjoys a hike in her spare time";
 
2. An increase in cost (- rise, boost, cost increase)
"they asked for a 10% hike in rates";
 
3. The amount a salary is increased (- raise, rise, wage hike, wage increase, salary increase)
"he got a wage hike";

- Verb: hike (Derived forms: hikes, hiked, hiking)
1. Increase (- hike up)
"The landlord hiked up the rents";
 
2. (sport) walk a long way, as for pleasure or physical exercise
"We were hiking in Colorado"; "hike the Rockies"
""",
  );

  final String keyword = "hike";
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
    await flutterTts.speak("""hike""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They went on a ten-mile hike through the forest.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We could go into town but it's a real hike from here.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They met on a hike.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Borrowers will be hit hard by the latest hike in interest rates.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The recent hike in train fares came as a shock to commuters.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """You'll need some strong boots for hiking over rough country.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I always wanted to hike the Rockies.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""If the weather's fine, we'll go hiking this weekend.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The government hiked up the price of milk by over 40%.""");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '-L7o6HtX8Vg';
    const double startSecondsend = 982;
    const String videoIdone = 'LqU9CdPs6ek';
    const double startSecondsone = 896;
    const String videoIdtwo = 'PDkC1eebWbU';
    const double startSecondstwo = 504;
    const String videoIdthree = 'eNChF-u-BQg';
    const double startSecondsthree = 878;
    const String videoIdfour = 'iYCAwk5oxFE';
    const double startSecondsfour = 118;
    const String videoIdfive = '8DI_F51ZtzI';
    const double startSecondsfive = 3;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """hike""",
                      // alsoEnglishWord: "also: hike",
                      britshText: """IpaUK: /haɪk/""",
                      americanText: """IpaUS: /haɪk/""",
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
کوردی: پیادەڕەوی، پیادەڕۆییە پیاسە، ڕاوێچکە،	زۆربوون، چوونەسەرێ
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) پیاسەیەکی درێژ لە دەشت‌ودەردا"""),
                    SentencesRow(
                      englishText:
                          """They went on a ten-mile hike through the forest.""",
                      kurdishText:
                          """چوونە پیاسەیەکی ١٠ میلی بە دارستانەکەدا.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We could go into town but it's a real hike (= a long way) from here.""",
                      kurdishText:
                          """دەتوانین بچینە شارۆچکە بەڵام پیادەڕەوییەکی تەواوە لێرەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """They met on a hike.""",
                      kurdishText: """لە پیاسەیەکدا یەکیان دی.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) بەرزبوونەوەی نرخ، تێچوو، هتد"""),
                    SentencesRow(
                      englishText:
                          """Borrowers will be hit hard by the latest hike in interest rates.""",
                      kurdishText:
                          """قەرزکاران خراپ بەردەکەون بە تازەترین بەرزبوونی ئاستی سوو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The recent hike in train fares came as a shock to commuters.""",
                      kurdishText:
                          """بەرزبوونی تازەی کرێی شەمەندەفەر وەک شۆک وابوو بۆ هاتووچۆکاران.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (کردار) چوونە پیاسە لە دەشت‌ودەر"""),
                    SentencesRow(
                      englishText:
                          """You'll need some strong boots for hiking over rough country.""",
                      kurdishText:
                          """پێویستیت بە پووتی بەهێزە بۆ پیاسە بە دەشت‌ودەری کەلەبەردا.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I always wanted to hike the Rockies.""",
                      kurdishText:
                          """هەمیشە دەمویست بەسەر چیاکانی ڕۆکیدا سەربکەوم.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) بەسەربردنی کات بە پیادەڕەوی بۆ خۆشی"""),
                    SentencesRow(
                      englishText:
                          """If the weather's fine, we'll go hiking this weekend.""",
                      kurdishText:
                          """ئەگەر کەشووهەوا باش بێت ئەم کۆتایی هەفتەیە دەچینە پیادەڕەوی.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) زیادکردنی باج، نرخ، هتد لەناکاو بە ڕێژەیەکی زۆر"""),
                    SentencesRow(
                      englishText:
                          """The government hiked up the price of milk by over 40%.""",
                      kurdishText:
                          """حکومەت نرخی شیری بە ڕێژەی ٤٠٪ زیاد کرد.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
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