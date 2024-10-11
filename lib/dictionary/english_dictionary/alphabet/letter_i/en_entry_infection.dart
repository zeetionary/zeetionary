import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinfection extends StatefulWidget {
  const EnglishEntryinfection({super.key});

  @override
  State<EnglishEntryinfection> createState() => _EnglishEntryinfectionState();
}

class _EnglishEntryinfectionState extends State<EnglishEntryinfection> {
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
- Noun: infection (Derived forms: infections)
1. The pathological state resulting from the invasion of the body by pathogenic microorganisms
 
2. (phonetics) the alteration of a speech sound under the influence of a neighbouring sound
 
3. (medicine) the invasion of the body by pathogenic microorganisms and their multiplication which can lead to tissue damage and disease
 
4. An incident in which an infectious disease is transmitted (- contagion, transmission)
 
5. The communication of an attitude or emotional state among a number of people (- contagion)
"the infection of his enthusiasm for poetry";
 
6. Moral corruption or contamination
"ambitious men are led astray by an infection that is almost unavoidable"
 
4. (international law) illegality that taints or contaminates a ship or cargo rendering it liable to seizure
""",
  );

  final String keyword = "infection";
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
    await flutterTts.speak("""infection""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The drugs slow down the progression of HIV infection.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Bacterial infection of the wound may occur.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Birds are susceptible to infection by the virus.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Antibodies found in breast milk protect newborn babies against infection.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The risk of infection is appreciably higher among children.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The surgeon used aseptic techniques to prevent infection during the operation.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""My sore throat came from a bacterial infection.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Under normal circumstances, your white blood cells are able to fight infections.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The infection is highly contagious, so don't let anyone else use your towel.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Clean the cut and cover it to prevent infection.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Changes in vaginal discharge can indicate an infection.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""All donated blood is tested for HIV and other infections.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Children and the elderly are those most at risk from the infection.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Heterosexuals account for nearly half of all new HIV infections.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Dressings are changed four hourly to help prevent infection.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Immunization gives people the ability to resist infection temporarily or permanently.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The source of infection may be a person who is incubating an infectious disease.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In smallpox, there is an incubation period of 8–18 days between initial infection and first symptoms.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Sneezing is the most common way of spreading an infection.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'iQ5GfDbjos8';
    const double startSecondsend = 372;
    const String videoIdone = 'xjmXzYdxuTQ';
    const double startSecondsone = 1232;
    const String videoIdtwo = 'Pon4Zux5MaQ';
    const double startSecondstwo = 877;
    const String videoIdthree = 'ZvTxFsJMUPM';
    const double startSecondsthree = 326;
    const String videoIdfour = 'bp6kmcno9SI';
    const double startSecondsfour = 207;
    const String videoIdfive = '8wewPn7TZfs';
    const double startSecondsfive = 157;

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
                      word: """infection""",
                      // alsoEnglishWord: "also: infection",
                      britshText: """IpaUK: /ɪnˈfekʃn/""",
                      americanText: """IpaUS: /ɪnˈfekʃn/""",
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
کوردی: تووش‌بوون، گرتن، تەنینەوە، گرتنەوە، گواستنەوە، دوچاربوون،	چڵک‌کردن، هەوکردن، ئاوەدزکردن، نەخۆشی چڵک،	پیسی، تێوەدراوی، پیس‌کردن، تێوەدان،	کاریگەری، شوێن‌دانان، کارتێ‌کردن، باندۆر
"""),
// With short examples define "infection", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ناو) تووشکردن یان تووشبوون بە نەخۆشی"""),
                    SentencesRow(
                      englishText:
                          """The drugs slow down the progression of HIV infection.""",
                      kurdishText:
                          """دەرمانەکان بەرەوپێشچوونی ئێچ‌ئای‌ڤی هێواش دەکەنەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Bacterial infection of the wound may occur.""",
                              kurdishText:
                                  """تووشبوونی بەکتریایی برینەکە ڕەنگە ڕووبدات.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Birds are susceptible to infection by the virus.""",
                              kurdishText:
                                  """باڵندە دەکرێت تووشی ڤایرۆسەکە ببن.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Antibodies found in breast milk protect newborn babies against infection.""",
                              kurdishText:
                                  "ئەو دژەتەنانەی لە شیری سرووشتیدان منداڵی ساوا دەپارێزن لە نەخۆشی.",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The risk of infection is appreciably higher among children.""",
                              kurdishText:
                                  "مەترسی تووشبوون بە شێوەیەکی بەرچاو زیاترە لەناو منداڵاندا.",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The surgeon used aseptic techniques to prevent infection during the operation.""",
                              kurdishText:
                                  "نەشتەرگەرەکە تەکنیکی خاوێن لە بەکتریای بەکارھێنا بۆ ڕێگری لە بڵاوبوونەوەی نەخۆشی.",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Under normal circumstances, your white blood cells are able to fight infections.""",
                              kurdishText:
                                  "لە دۆخی ئاساییدا، خڕۆکە سپییەکانی خوێنت توانایان ھەیە ڕووبەڕووی تووشبوون ببنەوە.",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Clean the cut and cover it to prevent infection.""",
                              kurdishText:
                                  "برینەکە پاک بکەوە بۆ ئەوەی لە ھەوکردن بیپارێزی.",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Changes in vaginal discharge can indicate an infection.""",
                              kurdishText:
                                  "گۆڕان لە دەردراوی زێ دەکرێت ئاماژە بە تووشبوون بێت.",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Heterosexuals account for nearly half of all new HIV infections.""",
                              kurdishText:
                                  """جیاڕەگەزخوازان پێکھێنەری نزیکەی نیوەی ھەموو تووشبوونەکان بە ئێچ‌ئای‌ڤین.""",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Dressings are changed four hourly (= every four hours) to help prevent infection.""",
                              kurdishText:
                                  """جلەکان بەپێی کاتژمێر دەگۆڕدرێن بۆ ڕێگری لە تووشبوون.""",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Immunization gives people the ability to resist infection temporarily or permanently.""",
                              kurdishText:
                                  """کوتان توانا دەدات بە مرۆڤ دژ بە نەخۆشییەک بە کاتی یان هەمیشەیی.""",
                              onPressedBritish: () => speaksentence16("en-GB"),
                              onPressedAmerican: () => speaksentence16("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The source of infection may be a person who is incubating an infectious disease.""",
                              kurdishText:
                                  """سەرچاوەی تووشکردن ڕەنگە کەسێک بێت کە نەخۆشییەکی گوازەرەوەی هەبێت.""",
                              onPressedBritish: () => speaksentence17("en-GB"),
                              onPressedAmerican: () => speaksentence17("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """In smallpox, there is an incubation period of 8–18 days between initial infection and first symptoms.""",
                              kurdishText:
                                  """لە نەخۆشی ئاوڵەدا، ماوەی بێ‌نیشانەیی ٨-١٨ ڕۆژ هەیە لە نێوان و گرتنی سەرەتا و یەکەم نیشانەکان.""",
                              onPressedBritish: () => speaksentence18("en-GB"),
                              onPressedAmerican: () => speaksentence18("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) نەخۆشییەک کە بەهۆی بەکتریا یان ڤایرۆس درووست دەبێت و تووشی یەک بەشی جەستە دەبێت"""),
                    SentencesRow(
                      englishText:
                          """Sneezing is the most common way of spreading an infection.""",
                      kurdishText:
                          """پژمین یەکێکە لە ڕێگا باوەکانی گواستنەوەی نەخۆشی.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """My sore throat came from a bacterial infection.""",
                      kurdishText:
                          "ھەڵئاوسانی قوڕگم بەھۆی نەخۆشی بەکتریاوە بوو.",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The infection is highly contagious, so don't let anyone else use your towel.""",
                      kurdishText:
                          "پەتاکە تەواو ڕاگوێزەرە، بۆیە مەھێڵە ھیچ کەس خاولییەکەت بەکاربھێنێت.",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """All donated blood is tested for HIV and other infections.""",
                      kurdishText:
                          "ھەموو خوێنێکی بەخشراو بۆ ئێچ‌ئای‌ڤی و نەخۆشییەکانی دیکە دەپشکندرێت.",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Children and the elderly are those most at risk from the infection.""",
                      kurdishText:
                          """منداڵان و بەساڵاچووان زۆرترین لە مەترسیدان بەرامبەر نەخۆشییەکە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
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