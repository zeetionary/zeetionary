import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryindividual extends StatefulWidget {
  const EnglishEntryindividual({super.key});

  @override
  State<EnglishEntryindividual> createState() => _EnglishEntryindividualState();
}

class _EnglishEntryindividualState extends State<EnglishEntryindividual> {
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
- Noun: individual (Derived forms: individuals)
1. A human being; person, singular, assertive existential pronoun; pronoun, person, singular; quantifier: assertive existential (- person, someone, somebody, mortal, soul)
"there was too much for one individual to do";
 
2. A single organism

- Adjective: individual
1. Separate and distinct from others of the same kind (- case-by-case, item-by-item)
"mark the individual pages";
 
2. Being or characteristic of one particular part of many (- single)
"please mark the individual pages"; "they went their individual ways"; "individual drops of rain";
 
3. Characteristic of or meant for a single person or thing (- single)
"an individual serving";
 
4. Concerning one person exclusively (- private)
"we all have individual cars";
""",
  );

  final String keyword = "individual";
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
    await flutterTts.speak("""individual""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The competition is open to both teams and individuals.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""There is no single individual who is to blame.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We are concerned to protect the rights of the individual.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Every child is treated here as an individual.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Symptoms of depression vary among individuals.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They live in a group or as individuals, depending on the species.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's grown into quite an individual.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""So this individual came up and demanded money.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We interviewed each individual member of the community.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The minister refused to comment on individual cases.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A democracy must protect individual rights.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She was a dancer with a highly individual personality.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'z4L2E6_Gmkk';
    const double startSecondsend = 176;
    const String videoIdone = 'zqllxbPWKNI';
    const double startSecondsone = 1060;
    const String videoIdtwo = 'tsxmyL7TUJg';
    const double startSecondstwo = 487;
    const String videoIdthree = 'AF8d72mA41M';
    const double startSecondsthree = 247;
    const String videoIdfour = 'dqcSk-EDrRo';
    const double startSecondsfour = 397;
    const String videoIdfive = '4zAkoXyhrdI';
    const double startSecondsfive = 135;

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
                      word: """individual""",
                      // alsoEnglishWord: "also: individual",
                      britshText: """IpaUK: /ˌɪndɪˈvɪdʒuəl/""",
                      americanText: """IpaUS: /ˌɪndɪˈvɪdʒuəl/""",
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
// With short examples define "individual", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کەسێک کە بە تەنها دەبیندرێت نەک وەک بەشێک لە گرووپێک"""),
                    SentencesRow(
                      englishText:
                          """The competition is open to both teams and individuals.""",
                      kurdishText:
                          """پاڵەوانێتییەکە کراوەیە بۆ هەردوو تیم و تاکەکەس.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There is no single individual who is to blame.""",
                      kurdishText:
                          """هیچ تاکەکەسێک نییە کە شایستەی لۆمە بێت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We are concerned to protect the rights of the individual.""",
                      kurdishText:
                          """نیگەرانین سەبارەت بە پاراستنی مافی تاکەکەسەکان.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Every child is treated here as an individual.""",
                      kurdishText:
                          """هەموو منداڵێک وەک تاکە کەسێک مامەڵەی لەگەڵ دەکرێت.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Symptoms of depression vary among individuals.""",
                      kurdishText:
                          """نیشانەکانی خەمۆکی جیاوازە لە نێوان تاکەکەسەکان.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) یەک ئەندامی کۆمەڵە کەسێک"""),
                    SentencesRow(
                      englishText:
                          """They live in a group or as individuals, depending on the species.""",
                      kurdishText:
                          """بە گرووپ یان تاک دەژین، بەپێی جۆرە ئاژەڵەکە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) کەسێک کە ڕەسەن و ڕاستەقینەیە و جیاوازە لە کەسانی دیکە"""),
                    SentencesRow(
                      englishText: """She's grown into quite an individual.""",
                      kurdishText: """بووە بە ژنێکی تەواو.""",
                      englishNote:
                          """This means she has developed her own unique personality and character over time. It implies that she has become distinctive and self-assured in who she is.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) جۆرە کەسێکی تایبەت، بە تایبەتی یەکێکی نامۆ"""),
                    SentencesRow(
                      englishText:
                          """So this individual came up and demanded money.""",
                      kurdishText: """کەسێک هات و داوای پارەی کرد.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (هاوەڵناو) کە بە تەنها سەیر دەکرێت نەک وەک بەشێک لە گرووپێک"""),
                    SentencesRow(
                      englishText:
                          """We interviewed each individual member of the community.""",
                      kurdishText:
                          """چاوپێکەوتنمان کرد لەگەڵ تاک بە تاکی کۆمەڵگاکە کرد.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The minister refused to comment on individual cases.""",
                      kurdishText:
                          """وەزیرەکە ڕەتیکردەوە لێدوان بدات لەسەر حاڵەتە تاکەکان.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (هاوەڵناو) کە پەیوەندیدارە بە یەک کەس؛ کە بۆ یەک کەس درووستکراوە"""),
                    SentencesRow(
                      englishText:
                          """A democracy must protect individual rights.""",
                      kurdishText:
                          """وڵاتی دیموکراسی دەبێت مافی تاکەکان بپارێزێت.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (هاوەڵناو) تایبەت بە یەک کەس یان شت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: distinctive"),
                    SentencesRow(
                      englishText:
                          """She was a dancer with a highly individual personality.""",
                      kurdishText:
                          """سەماکارێک بوو بە کەسایەتی کەسی زۆر بەرز.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
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
