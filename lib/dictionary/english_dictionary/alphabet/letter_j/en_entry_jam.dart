import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjam extends StatefulWidget {
  const EnglishEntryjam({super.key});

  @override
  State<EnglishEntryjam> createState() => _EnglishEntryjamState();
}

class _EnglishEntryjamState extends State<EnglishEntryjam> {
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
- Noun: jam (Derived forms: jams)
1. A number of vehicles blocking one another until they can scarcely move (- traffic jam, snarl-up)
 
2. A dense crowd of people (- crush, press)
 
3. Preserve of crushed fruit
 
4. [informal] The quality of being almost beyond one's ability to deal with and requiring a great effort to achieve a positive result (- difficulty, difficultness, fix [informal], hole [informal], mess [informal], muddle [informal], pickle [informal], kettle of fish [informal])
 
5. Deliberate radiation or reflection of electromagnetic energy for the purpose of disrupting enemy use of electronic devices or systems (- jamming, electronic jamming)
 
6. A blockage or something stuck that prevents a device from working properly
"there's a jam in the printer"
 
7. [informal] (popular music) an informal, impromptu performance or rehearsal

- Verb: jam (Derived forms: jammed, jams, jamming)
1. Press tightly together or cram (- throng, mob, pack, pile)
"The crowd jammed the auditorium";
 
2. Push down forcibly
"The driver jammed the brake pedal to the floor"
 
3. Hurt or bruise with a squashing force (- crush)
"jam a toe";
 
4. Interfere with or prevent the reception of signals (- block)
"Jam the Voice of America";
 
5. Get stuck and immobilized
"the mechanism jammed"
 
6. Crowd or pack to capacity (- jampack [informal], ram, cram, wad)
"the theatre was jammed";
 
7. Block passage through (- obstruct, obturate, impede, occlude, block, close up)
"jam the path";
 
8. [informal] (popular music) play music in a group, esp. improvising
""",
  );

  final String keyword = "jam";
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
    await flutterTts.speak("""jam""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Keep your empty jam jars for bottling next year’s fruit.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""May I have a jam doughnut, please?""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Cut the cake in half horizontally and spread jam on one half.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The bus was delayed in a five-mile jam.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We were stuck in a jam for an hour.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There's a paper jam in the photocopier.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A stool had been jammed against the door.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The photocopier keeps jamming up.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He jammed the door open with a piece of wood.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The traffic was jammed solid in the city centre.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Six of us were jammed into one small car.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Nearly 1 000 students jammed into the hall.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The streets were completely jammed with traffic.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The traffic will just jam up our village.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""People constantly jammed the street.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/XxzCokceBMI?t=33';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/944cu1HNWn8?t=121';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/HSG3uEzld_A?t=281';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/cVaPtE3M1Oc?t=272';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/AOg0Ciek7F0?t=796';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/QUB7xXizOGs?t=292';
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
                      word: """jam""",
                      // alsoEnglishWord: "also: jam",
                      britshText: """IpaUK: /dʒæm/""",
                      americanText: """IpaUS: /dʒæm/""",
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
// With short examples define "jam", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) مرەبا؛ مادەیەکی شیرینی خەست کە درووست دەکرێت بە کوڵاندنی میوە لەگەڵ ئاو، زۆرجار بە شووشە دەفرۆشرێت و لەگەڵ نان دەخورێت"""),
                    SentencesRow(
                      englishText:
                          """Keep your empty jam jars for bottling next year’s fruit.""",
                      kurdishText:
                          "شووشە مرەبا بەتاڵەکان بپارێزە بۆ ئەوەی ساڵی داھاتوو میوەیان تێ‌بخەیت.",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """May I have a jam doughnut, please?""",
                      kurdishText: "تکایە دەکرێت دۆنەتێکی مرەبام بەیتێ؟",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Cut the cake in half horizontally and spread jam on one half.""",
                      kurdishText:
                          """کێکەکە لە نیوەدا بە ئاسۆیی ببڕە و مرەبا بکە بەسەر نیوەیدا.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) دۆخێک کە تێیدا سەختە بجووڵێیت بەهۆی ئەوەی خەڵکێکی زۆر لە شوێنێک هەیە"""),
                    SentencesRow(
                      englishText:
                          """The bus was delayed in a five-mile jam.""",
                      kurdishText:
                          """پاسەکە لە قەرەباڵغییەکی پێنج میلی دواکەوت.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We were stuck in a jam for an hour.""",
                      kurdishText:
                          """لە قەرەباڵغییەک بۆ کاتژمێرێک گیرمان خوارد.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) دۆخێک کە تێیدا ئامێرێک کار ناکات بەهۆی ئەوەی شتێک گیری کردووە لە لایەکی"""),
                    SentencesRow(
                      englishText:
                          """There's a paper jam in the photocopier.""",
                      kurdishText:
                          """گیرکردنێکی کاغەز هەیە لە ئامێری فۆتۆکۆپییەکە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) پاڵنانی شتێک بۆ شوێنێک بە هێزێکی زۆرەوە"""),
                    SentencesRow(
                      englishText:
                          """A stool had been jammed against the door.""",
                      kurdishText: """کورسییەک کێشرابوو بە دەرگاکەدا.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) ئەوەی نەتوانیت کار بکەیت یان بچیتە شوێنێک"""),
                    SentencesRow(
                      englishText: """The photocopier keeps jamming up.""",
                      kurdishText: """ئامێری فۆتۆکۆپییەکە گیر دەکات.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He jammed the door open with a piece of wood.""",
                      kurdishText:
                          """بە پارچە دارێک دەرگاکەی بە کراوەیی هێشتەوە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The traffic was jammed solid in the city centre.""",
                      kurdishText:
                          """هاتووچۆ تەواو گیری کردبوو لە سەنتەری شار.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) دانانی کەسێک/شتێک لە شوێنێکی کەم کە شوێنی کەم هەیە بۆ جووڵان"""),
                    const AlsoEnglishckb(word: "ھەروەھا: squash، squeeze"),
                    SentencesRow(
                      englishText:
                          """Six of us were jammed into one small car.""",
                      kurdishText:
                          """هەر شەشمان ئاخێندراینە ناو ئۆتۆمبێلێکی بچووک.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Nearly 1 000 students jammed into the hall.""",
                      kurdishText:
                          """نزیکەی ١٠٠٠ خوێندکار خرانە ناو هۆڵەکەوە.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The streets were completely jammed with traffic.""",
                      kurdishText: """شەقامەکان تەواو پڕبوون لە هاتووچۆ.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) پڕکردنی شتێک لە ژمارەیەکی زۆر لە خەڵک یان شت بە شێوەیەک جووڵان ئاسان نەبێت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: block"),
                    SentencesRow(
                      englishText:
                          """The traffic will just jam up our village.""",
                      kurdishText: """هاتووچۆ گوندەکەمان دەگرێت.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """People constantly jammed the street.""",
                      kurdishText: """خەڵکی بەردەوام دەڕژانە سەر شەقامەکان.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
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
// end jam
