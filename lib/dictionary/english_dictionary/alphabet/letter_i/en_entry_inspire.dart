import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinspire extends StatefulWidget {
  const EnglishEntryinspire({super.key});

  @override
  State<EnglishEntryinspire> createState() => _EnglishEntryinspireState();
}

class _EnglishEntryinspireState extends State<EnglishEntryinspire> {
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
- Verb: inspire (Derived forms: inspired, inspires, inspiring)
1. Heighten or intensify (- animate, invigorate, enliven, exalt)
"These paintings inspire the imagination";
 
2. Supply the inspiration for
"The article about the artist inspired the exhibition of his recent work"
 
3. Serve as the inciting cause of (- prompt, instigate)
"She inspired me to call my relatives";
 
4. Spur on or encourage especially by cheers and shouts (- cheer, root on [N. Amer, informal], urge, barrack [Austral, NZ], urge on, exhort)
"The crowd inspired the demonstrating strikers";
 
5. Fill with revolutionary ideas (- revolutionize, revolutionise [Brit])
 
6. Draw in (air) (- inhale, breathe in)
"The patient has trouble inspiring"; "The lung cancer patient cannot inspire air very well";
""",
  );

  final String keyword = "inspire";
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
    await flutterTts.speak("""inspire""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The actors' enthusiasm inspired the kids.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""His superb play inspired the team to a 5–0 win.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We hope to inspire others to pursue their dreams.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The choice of decor was inspired by a trip to India.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""His tragic story later inspired a Hollywood film.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Her paintings were clearly inspired by Monet’s work.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Henry did not inspire confidence as a figure of authority.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Her work didn't exactly inspire me with confidence.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""As a general, he inspired great loyalty in his troops.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'nRafaCcfrcI';
    const double startSecondsend = 275;
    const String videoIdone = 'jgkMFBDyzE8';
    const double startSecondsone = 898;
    const String videoIdtwo = '1QlsK3m-zSw';
    const double startSecondstwo = 171;
    const String videoIdthree = 'cfwuadOlyz0';
    const double startSecondsthree = 701;
    const String videoIdfour = 'BD44SVoCIFo';
    const double startSecondsfour = 88;
    const String videoIdfive = 'Y_N0AxCzVLg';
    const double startSecondsfive = 1259;

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
                      word: """inspire""",
                      // alsoEnglishWord: "also: inspire",
                      britshText: """IpaUK: /ɪnˈspaɪə(r)/""",
                      americanText: """IpaUS: /ɪnˈspaɪər/""",
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
// With short examples define "inspire", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) پێدانی حەز، باوەڕ، یان وزە بۆ کردنی شتێک بە باشی"""),
                    SentencesRow(
                      englishText:
                          """The actors' enthusiasm inspired the kids.""",
                      kurdishText:
                          """بەجۆشی ئەکتەرەکە ئیلهامی بەخشی بە منداڵەکان.""",
                      englishNote:
                          """Also: The actors inspired the kids with their enthusiasm.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """His superb play inspired the team to a 5–0 win.""",
                      kurdishText:
                          """یارییە ناوازەکەی وزەی دا بە تیمەکە بۆ بردنەوەیەکی ٥ - ٠.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We hope to inspire others to pursue their dreams.""",
                      kurdishText:
                          """هیوادارین ئیلهام بدەین بەوانی دیکە کە شوێنی خەونەکانیان بکەون.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (کردار) پێدانی بیرۆکەی شتێک بە کەسێک"""),
                    SentencesRow(
                      englishText:
                          """The choice of decor was inspired by a trip to India.""",
                      kurdishText:
                          """هەڵبژاردنی ڕازانەوەکە لە گەشتێکەوە بۆ هندستان سەرچاوەی گرت.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """His tragic story later inspired a Hollywood film.""",
                      kurdishText:
                          """چیرۆکە تراژیدیایەکەی دواتر ئیلهامی بە فیلمێکی هۆڵیوود بەخشی.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Her paintings were clearly inspired by Monet’s work.""",
                      kurdishText:
                          """تابلۆکانی بە ئاشکرایی لەلایەن کارەکانی مۆنێتەوە ئیلهامیان وەرگرت.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) واکردنی ئەوەی کەسێک هەستێکی دیاریکراوی هەبێت"""),
                    SentencesRow(
                      englishText:
                          """Henry did not inspire confidence as a figure of authority.""",
                      kurdishText:
                          """هێنری ورەی نەدەبەخشی وەک کەسێکی دەسەڵاتدار.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Her work didn't exactly inspire me with confidence.""",
                      kurdishText: """کارەکەی لەڕاستیدا وزەی پێمنەبەخشی.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """As a general, he inspired great loyalty in his troops.""",
                      kurdishText:
                          """وەک ژەنەراڵێک، وەفاداریی زۆری دەبەخشی بە هێزەکانی.""",
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
// end inspire
