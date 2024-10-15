import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinvoke extends StatefulWidget {
  const EnglishEntryinvoke({super.key});

  @override
  State<EnglishEntryinvoke> createState() => _EnglishEntryinvokeState();
}

class _EnglishEntryinvokeState extends State<EnglishEntryinvoke> {
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
- Verb: invoke (Derived forms: invoked, invoking, invokes)
1. Summon into action or bring into existence, often as if by magic (- raise, conjure, conjure up, evoke, stir, call down, arouse, bring up, put forward, call forth)
"invoke the spectre of unemployment";
 
2. Cite as an authority; resort to (- appeal)
"He invoked the law that would save him"; "She invoked an ancient law";
 
3. Request earnestly (something from somebody); ask for aid or protection (- appeal)
"Invoke God in times of trouble";
""",
  );

  final String keyword = "invoke";
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
    await flutterTts.speak("""invoke""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""It is unlikely that libel laws will be invoked.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She invoked several eminent scholars to back up her argument.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""His name was invoked as a symbol of the revolution.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Their sacred dance is performed to invoke ancient gods.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The opening paragraph invokes a vision of England in the early Middle Ages.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'pFmtmO2cnlg';
    const double startSecondsend = 78;
    const String videoIdone = 'SwQhKFMxmDY';
    const double startSecondsone = 1739;
    const String videoIdtwo = 'XHXLbp7x3MM';
    const double startSecondstwo = 196;
    const String videoIdthree = '6etTERFUlUI';
    const double startSecondsthree = 390;
    const String videoIdfour = 'XKDhq2UcjIM';
    const double startSecondsfour = 353;
    const String videoIdfive = 'EI-ToB0tG9A';
    const double startSecondsfive = 355;

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
                      word: """invoke""",
                      // alsoEnglishWord: "also: invoke",
                      britshText: """IpaUK: /ɪnˈvəʊk/""",
                      americanText: """IpaUS: /ɪnˈvəʊk/""",
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
// With short examples define "invoke", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) ناوهێنان یان بەکارهێنانی یاسایاک، هتد وەک هۆکار بۆ کردنی شتێک"""),
                    SentencesRow(
                      englishText:
                          """It is unlikely that libel laws will be invoked.""",
                      kurdishText: """ئەگەری کەمە یاسای ناوزڕاندن بەکاربێت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) ناوهێنانی کەسێک، نموونەیەک، هتد بۆ پشتگیری بۆچوونەکانت، بیرۆکەکانت، هتد یان وەک هۆکار بۆ کردنی شتێک"""),
                    SentencesRow(
                      englishText:
                          """She invoked several eminent scholars to back up her argument.""",
                      kurdishText:
                          """ناوی ژمارەیەک پسپۆڕی ناوداری هێنا بۆ پشتگیری ئارگیومێنتەکەی.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) ناوهێنانی کەسێکی دیاریکراو بۆ ئەوەی خەڵکی هەست بە شتێکی دیاریکراو یان بە شێوەیەکی دیاریکراو هەنگاو بنێن"""),
                    SentencesRow(
                      englishText:
                          """His name was invoked as a symbol of the revolution.""",
                      kurdishText: """ناوی وەک سمبوولی شۆڕش دەهێندرا.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) داواکردنی یارمەتی، بە تایبەتی لە خودا"""),
                    SentencesRow(
                      englishText:
                          """Their sacred dance is performed to invoke ancient gods.""",
                      kurdishText:
                          """سەما پیرۆزەکەیان ئەنجام درا بۆ پاڕانەوە لە خودا کۆنەکان.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) واکردن لە کەسێک کە هەستێکی دیاریکراوی هەبێت یان خەیاڵی دیمەنێکی دیاریکراو بکات"""),
                    SentencesRow(
                      englishText:
                          """The opening paragraph invokes a vision of England in the early Middle Ages.""",
                      kurdishText:
                          """پەرەگرافی یەکەم وێنایەکی ئینگلاند درووست دەکات لە سەرەتای سەردەمانی ناوەڕاست.""",
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
// end invoke
