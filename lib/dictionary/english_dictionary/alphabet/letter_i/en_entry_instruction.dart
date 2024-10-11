import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinstruction extends StatefulWidget {
  const EnglishEntryinstruction({super.key});

  @override
  State<EnglishEntryinstruction> createState() =>
      _EnglishEntryinstructionState();
}

class _EnglishEntryinstructionState extends State<EnglishEntryinstruction> {
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
- Noun: instruction (Derived forms: instructions)
1. A message describing how something is to be done (- direction)
"he gave instructions faster than she could follow them";
 
2. The activities of educating or instructing; activities that impart knowledge or skill (- education, teaching, pedagogy, didactics, educational activity)
"our instruction was carefully programmed";
 
3. The profession of a teacher (- teaching, pedagogy)
"he prepared for instruction while still in college";
 
4. (computing) a line of code written as part of a computer program (- command, statement, program line)
""",
  );

  final String keyword = "instruction";
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
    await flutterTts.speak("""instruction""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Follow the instructions on the packet carefully.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Always read the instructions before you start.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Step-by-step instructions are provided.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """According to the instructions, you can get started in one hour.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Climbers should always follow the instructions of their guide.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Police are awaiting instructions from senior officers before proceeding.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""His instructions to his staff were very clear.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The government has issued specific instructions on reducing waste disposal.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I had received the necessary instructions for the work the day before.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He left strict instructions that the box should only be opened after his death.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He phoned you on my instructions.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The chip runs at speeds of up to 100MHz and executes two instructions per clock cycle.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Religious instruction is banned in all state schools in the country.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She had no formal instruction in music.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Individual instruction is available, but it can be expensive.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The medium of instruction in these classes is English.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He takes instruction very well.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'pTysrwci0pU';
    const double startSecondsend = 1157;
    const String videoIdone = 'SrDEtSlqJC4';
    const double startSecondsone = 121;
    const String videoIdtwo = 'PYS3UZFPJWI';
    const double startSecondstwo = 848;
    const String videoIdthree = 'W2hRTTTpmr8';
    const double startSecondsthree = 119;
    const String videoIdfour = 'raSeaAeryWE';
    const double startSecondsfour = 1254;
    const String videoIdfive = 'qjqh9UVfNNk';
    const double startSecondsfive = 716;

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
                      word: """instruction""",
                      // alsoEnglishWord: "also: instruction",
                      britshText: """IpaUK: /ɪnˈstrʌkʃn/""",
                      americanText: """IpaUS: /ɪnˈstrʌkʃn/""",
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
کوردی: فێرکردن، فێرکاری، دەستوور، ڕێنوێنی، دەستووری کار
"""),
// With short examples define "instruction", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) زانیاریی ورد لەسەر کردن یان بەکارهێنانی شتێک"""),
                    const AlsoEnglishckb(word: "ھەروەھا: direction"),
                    SentencesRow(
                      englishText:
                          """Follow the instructions on the packet carefully.""",
                      kurdishText:
                          """شوێن ڕێنماییەکانی سەر پاکەتەکە بکەوە بە وریاییەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Always read the instructions before you start.""",
                      kurdishText:
                          """هەمیشە ڕێنماییەکان بخوێنەوە پێش ئەوەی دەست پێ بکەیت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Step-by-step instructions are provided.""",
                      kurdishText: """ڕێنمایی هەنگاو بە هەنگاو دابینکراوە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """According to the instructions, you can get started in one hour.""",
                      kurdishText:
                          """بە پێی ڕێنماییەکان، دەتوانیت لە یەک کاتژمێری دیکەدا دەست پێبکەیت.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) شتێک کە کەسێک پێت دەڵێت بیکە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: order"),
                    SentencesRow(
                      englishText:
                          """Climbers should always follow the instructions of their guide.""",
                      kurdishText:
                          """شاخەوانان دەبێت هەمیشە پابەند بن بە بڕیاری ڕێبەرەکەیانەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) شتێک کە کەسێک پێت دەڵێت بیکات"""),
                    SentencesRow(
                      englishText:
                          """Police are awaiting instructions from senior officers before proceeding.""",
                      kurdishText:
                          """پۆلیس چاوەڕوانی بڕیاری ئەفسەرانی باڵان لە پێش ڕێکارییەکان.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """His instructions to his staff were very clear.""",
                      kurdishText: """بڕیارەکانی بۆ ستافەکەی زۆر ڕوون بوون.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The government has issued specific instructions on reducing waste disposal.""",
                      kurdishText:
                          """حکومەت بڕیاری دیاریکراوی داەو لەسەر کەمکردنەوەی پاشەڕۆی پیسی.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I had received the necessary instructions for the work the day before.""",
                      kurdishText:
                          """ڕۆژی پێشووتر بڕیاری پێویستم بۆ کار پێگەشت بوو.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He left strict instructions that the box should only be opened after his death.""",
                      kurdishText:
                          """بڕیاری توندی دەرکردبوو کە سندووقەکە تەنها لە دوای مردنی بکرێتەوە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He phoned you on my instructions.""",
                      kurdishText: """بە بڕیاری من پەیوەندیی پێوە کردی.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) زانیارییەک ەک کۆمپیوتەرێک ئاراستە دەکات ئەرکێکی دیاریکراو جێبەجێ بکات"""),
                    SentencesRow(
                      englishText:
                          """The chip runs at speeds of up to 100MHz and executes two instructions per clock cycle.""",
                      kurdishText:
                          """چیپەکە بە خێرایی ١٠٠ مێگا هێرتز کار دەکات و دوو فەرمان لە هەر سووڕێک تەواو دەکات (= ١٠٠ ملیۆن سووڕ لە هەر چرکەیە).""",
                      englishNote:
                          "This means the chip can operate at a maximum speed of 100 megahertz (MHz) and is capable of performing two commands or operations during each cycle of its clock, indicating high efficiency in processing tasks.",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) فێرکردنی کەسێک سەبارەت بە شتێک"""),
                    SentencesRow(
                      englishText:
                          """Religious instruction is banned in all state schools in the country.""",
                      kurdishText:
                          """فێرکردنی ئایینی قەدەغەیە لە هەموو قوتابخانە حکومییەکانی وڵاتەکە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She had no formal instruction in music.""",
                      kurdishText: """هیچ فێرکردنێکی فەرمی میوزیکی نەبوو.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Individual instruction is available, but it can be expensive.""",
                      kurdishText:
                          """فێرکردنی تایبەتی بەردەستە، بەڵام دەکرێت گران‌بەها بێت.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The medium of instruction in these classes is English.""",
                      kurdishText:
                          """زمانی فێرکردن لەم پۆلانە بە ئینگلیزییە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He takes instruction very well.""",
                      kurdishText: """زۆر باش فێربوون وەردەگرێت.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
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
// end instruction