import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylament extends StatefulWidget {
  const EnglishEntrylament({super.key});

  @override
  State<EnglishEntrylament> createState() => _EnglishEntrylamentState();
}

class _EnglishEntrylamentState extends State<EnglishEntrylament> {
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
- Noun: lament (Derived forms: laments)
1. A cry of sorrow and grief (- lamentation, plaint [literary], wail)
"their pitiful laments could be heard throughout the ward";
 
2. A song or hymn of mourning composed or performed as a memorial to a dead person (- dirge, coronach, requiem, threnody, threnode)
 
3. A mournful poem; a lament for the dead (- elegy)

- Verb: lament (Derived forms: lamented, lamenting, laments)
1. Express grief verbally (- keen)
"we lamented the death of the child";
 
2. Regret strongly (- deplore, bewail, bemoan)
"we lamented the loss of benefits";
""",
  );

  final String keyword = "lament";
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
    await flutterTts.speak("""lament""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In the poem he laments the destruction of the countryside.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She sat alone weeping, lamenting her fate.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The whole play can be interpreted as a lament for lost youth.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/EmT0i0xG6zg?t=1657';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/J0mZYeb4C8k?t=456';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/x7h_gT6d9Sg?t=1790';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/1Gxrwh4zGPg?t=147';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/tsxmyL7TUJg?t=561';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/dLNTb2zfh3Q?t=549';
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
                      word: """lament""",
                      // alsoEnglishWord: "also: lament",
                      britshText: """IpaUK: /ləˈment/""",
                      americanText: """IpaUS: /ləˈment/""",
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
کوردی: سەردولکە، چەمەری، شین، شیوەن، ڕۆڕۆ(کردن)، لاواندنەوە
"""),
// With short examples define "lament", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) ئەوەی شیوەن و ڕۆڕۆ بۆ کەسێک/شتێک بکەیت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: bemoan، bewail"),
                    SentencesRow(
                      englishText:
                          """In the poem he laments the destruction of the countryside.""",
                      kurdishText:
                          """هۆنراوەکە لە شیوەندایە بۆ وێرانکردنی دەشت‌ودەرەکە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She sat alone weeping, lamenting her fate.""",
                      kurdishText:
                          """بە تەنها دانیشت و دەگریا و شیوەنی بوو بۆ چارەنووسی.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) گۆرانی، هۆنراوە، هتد کە شیوەن و ڕۆڕۆ بۆ کەسێک دەردەبڕێت کە مردووە یان بۆ شتێک کە ڕوویداوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The whole play can be interpreted as a lament for lost youth.""",
                      kurdishText:
                          """تەواوی شانۆیەکە دەکرێت شیوەنێک بێت بۆ گەنجیی لەدەستچوو.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
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
// end lament