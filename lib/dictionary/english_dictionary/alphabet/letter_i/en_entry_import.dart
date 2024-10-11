import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryimport extends StatefulWidget {
  const EnglishEntryimport({super.key});

  @override
  State<EnglishEntryimport> createState() => _EnglishEntryimportState();
}

class _EnglishEntryimportState extends State<EnglishEntryimport> {
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
- Verb: import (Derived forms: imports, importing, imported)
1. Bring in from abroad
 
2. (computing) transfer (electronic data) into a database or document
 
3. Indicate or signify (- spell)

- Noun: import (Derived forms: imports)
1. Commodities (goods or services) bought from a foreign country (- importation)
 
2. An imported person brought from a foreign country (- importee)
"the lead role was played by an import from Sweden";
 
3. The message that is intended, expressed or signified (- meaning, significance, signification)
"the import of his announcement was ambiguous";
 
4. A meaning that is not expressly stated but can be inferred (- significance, implication)
"the import of his remark became clear only later";
 
5. Having important effects or influence (- consequence, moment)
"decisions of great import are made by the president himself";
""",
  );

  final String keyword = "import";
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
    await flutterTts.speak("""import""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """America has cut its oil imports from the Middle East by 73%.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Imports were valued at £516 million last month.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The value of annual imports rose rapidly.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The report calls for a ban on the import of hazardous waste.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Most US manufacturers both import and export.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Most of their oil revenues are used to finance imports of consumer goods.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Decisions on matters of great import affect national policies.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It is difficult to understand the full import of this statement.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The country has to import most of its raw materials.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""These dogs are illegally imported into the country.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The city embraced customs imported from the West during holidays.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'QLq6GEiHqR8';
    const double startSecondsend = 790;
    const String videoIdone = 'cY4e0uvp7uI';
    const double startSecondsone = 798;
    const String videoIdtwo = 'ur-hDqFb0HM';
    const double startSecondstwo = 199;
    const String videoIdthree = 'kawym8ZwhwA';
    const double startSecondsthree = 53;
    const String videoIdfour = 'xbIdoL_Zm0c';
    const double startSecondsfour = 326;
    const String videoIdfive = 'rr2XfL_df3o';
    const double startSecondsfive = 1127;

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
                      word: """import""",
                      // alsoEnglishWord: "also: import",
                      britshText: """IpaUK: /ˈɪmpɔːt/""",
                      americanText: """IpaUS: /ˈɪmpɔːrt/""",
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
کوردی: (زۆرتر لە کۆ) هاوردە(مەنی)، کەل‌وپەلی هاتوو یان گەیشتوو،	گرنگی، پێشەم‌بوون،	واتا، مانا، چەمک، نێوەڕۆک،	هێنانەژوورەوە، هێنانەنێوەوە
"""),
// With short examples define "import", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئەو کەلووپەل و شتانەی کە لە وڵاتێکەوە دەهێنرێتە یەکێکی دیکە"""),
                    SentencesRow(
                      englishText:
                          """America has cut its oil imports from the Middle East by 73%.""",
                      kurdishText:
                          """ئەمریکا هاوردەی نەوتی لە ڕۆژهەڵاتی ناوەڕاستەوە بە ڕێژەی ٧٣٪ کەمکردووە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Imports were valued at £516 million last month.""",
                      kurdishText:
                          """هاوردە بە ٥١٦ ملیۆن پاوەند خەملێندرا لە مانگی ڕابردوودا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The value of annual imports rose rapidly.""",
                      kurdishText:
                          """بەهای هاوردەی ساڵانە بە خێرایی بەرزبوویەوە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئەوەی کەلووپەل هاوردەی وڵاتێک بکەیت"""),
                    SentencesRow(
                      englishText:
                          """The report calls for a ban on the import of hazardous waste.""",
                      kurdishText:
                          """ڕاپۆرتەکە داوای قەدەغەی هاوردەی پاشماوەی زیانبەخش دەکات.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Most of their oil revenues are used to finance imports of consumer goods.""",
                      kurdishText:
                          """زۆرینەی داهاتی نەوتییان بەکاردێت بۆ دابینکردنی کەلووپەلی بەکارھێنان بەکاردێت.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٣. (ناو) گرنگی"""),
                    SentencesRow(
                      englishText:
                          """Decisions on matters of great import affect national policies.""",
                      kurdishText:
                          """ئەو بڕیارانەی لەسەر بابەتی زۆر گرنگن کاریگەرییان دەبێت لەسەر سیاسەتی وڵاتەکە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) واتای شتێک، بە تایبەتی کە ئاشکرا نییە"""),
                    SentencesRow(
                      englishText:
                          """It is difficult to understand the full import of this statement.""",
                      kurdishText:
                          """سەختە تێبگەیت لە واتای تەواوی ئەم قسەیە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) هێنانی کەلووپەل لە وڵاتێکەوە بۆ یەکێکی دیکە"""),
                    SentencesRow(
                      englishText:
                          """The country has to import most of its raw materials.""",
                      kurdishText:
                          """وڵاتەکە دەبێت زۆرینەی کەلوپەلی خاوی هاوردە بکات.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """These dogs are illegally imported into the country.""",
                      kurdishText:
                          """ئەم سەگانە بە نایاسایی هاوردەی ناو وڵاتەکە دەکرێن.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Most US manufacturers both import and export.""",
                      kurdishText:
                          """زۆربەی بەرھەمھێنەرەکانی ئەمریکا ھاوردە و ھەناردەش دەکەن.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) هێنانی بیر و باوەڕێک لە وڵاتێک یان هەرێمێک بۆ یەکێکی دیکە"""),
                    SentencesRow(
                      englishText:
                          """The city embraced customs imported from the West during holidays.""",
                      kurdishText:
                          """لە کاتی پشووەکان شارەکە شوێن نەریتی هاوردەکراو لە ڕۆژئاواوە دەبوو.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
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