import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhysteria extends StatefulWidget {
  const EnglishEntryhysteria({super.key});

  @override
  State<EnglishEntryhysteria> createState() => _EnglishEntryhysteriaState();
}

class _EnglishEntryhysteriaState extends State<EnglishEntryhysteria> {
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
- Noun: hysteria (Derived forms: hysterias)
1. State of violent mental agitation (- craze, delirium, frenzy, fury)
"The rock musician worked the crowd of young girls into a hysteria";
 
2. Excessive or uncontrollable fear
 
3. Neurotic disorder characterized by violent emotional outbreaks and disturbances of sensory and motor functions (- hysterical neurosis)
""",
  );

  final String keyword = "hysteria";
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
    await flutterTts.speak("""hysteria""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""There was mass hysteria when the band came on stage.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""There is still so much hysteria surrounding the issue.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'j2KKUcxAdjc';
    const double startSecondsend = 474;
    const String videoIdone = '_2LApgOJe5k';
    const double startSecondsone = 688;
    const String videoIdtwo = 'DEDAjw9Ljrw';
    const double startSecondstwo = 1226;
    const String videoIdthree = 'EmT0i0xG6zg';
    const double startSecondsthree = 3502;
    const String videoIdfour = 'vchJnrZgz-4';
    const double startSecondsfour = 493;
    const String videoIdfive = 'xi4wZJ-7ZCg';
    const double startSecondsfive = 1313;

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
                      word: """hysteria""",
                      // alsoEnglishWord: "also: hysteria",
                      britshText: """IpaUK: /hɪˈstɪəriə/""",
                      americanText: """IpaUS: /hɪˈsteriə/, /hɪˈstɪriə/""",
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
کوردی: پرکام، شاگەشکە، شێت‌گیری،	هەڵس‌وکەوت، ڕەفتار،	ورووژان،	پێکەنین، سۆز و قیژەی کۆنتڕۆڵ‌نەکراو و شێتانە، فێ، گەشکە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) دۆخێک کە تێیدا کەسێک جۆش‌وخرۆشی، ترس، یان تووڕەیی هەیە، یان کە گرووپێک خەڵک کۆنترۆڵی هەستەکانیان لەدەست دەدەن و هاوار دەکەن، پێدەکەنن، هتد"""),
                    SentencesRow(
                      englishText:
                          """There was mass hysteria when the band came on stage.""",
                      kurdishText:
                          """هەندێک شاگەشکەیی هەبوو کە باندەکە هاتنە سەر ستەیج.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) شێوازی تەواو بەجۆش و زیادەڕۆیی لە کاردانەوە بۆ شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There is still so much hysteria surrounding the issue.""",
                      kurdishText:
                          """هێشتا هیستریایەکی زۆر هەبوو لەسەر بابەتەکە.""",
                      englishNote:
                          """This means there is excessive and widespread emotional excitement or panic about the issue, causing exaggerated reactions and behavior.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
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