import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinterchange extends StatefulWidget {
  const EnglishEntryinterchange({super.key});

  @override
  State<EnglishEntryinterchange> createState() =>
      _EnglishEntryinterchangeState();
}

class _EnglishEntryinterchangeState extends State<EnglishEntryinterchange> {
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
- Noun: interchange (Derived forms: interchanges)
1. A junction of highways on different levels that permits traffic to move from one to another without crossing traffic streams
 
2. Mutual interaction; the activity of reciprocating or exchanging (especially information) (- reciprocation, give-and-take)
 
3. The act of changing one thing for another thing (- exchange)
"there was an interchange of prisoners";
 
4. Reciprocal transfer of equivalent sums of money (especially the currencies of different countries) (- exchange)
"he earns his living from the interchange of currency";

- Verb: interchange (Derived forms: interchanging, interchanges, interchanged)
1. Put in the place of another; switch seemingly equivalent items (- substitute, replace, exchange, sub [informal])
"synonyms can be interchanged without changing the context's meaning";
 
2. Give to, and receive from, one another (- exchange, change)
"We have been interchanging letters for a year";
 
3. Cause to change places (- counterchange, transpose)
"interchange this screw for one of a smaller size";
 
4. Reverse (a direction, attitude, or course of action) (- tack, switch, alternate, flip, flip-flop)
""",
  );

  final String keyword = "interchange";
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
    await flutterTts.speak("""interchange""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """An international medical conference was established for the interchange of new ideas and approaches.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Data is interchanged between browser and server without any change in display.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The front and rear tyres interchange.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I interchanged the front tyres with the rear ones.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'hGkVxIyKnEA';
    const double startSecondsend = 562;
    const String videoIdone = 'A0sM6xVAY-A';
    const double startSecondsone = 50;
    const String videoIdtwo = 'ZZWMxwcFZOc';
    const double startSecondstwo = 177;
    const String videoIdthree = 'K-Ina_WW4Yc';
    const double startSecondsthree = 1399;
    const String videoIdfour = '-1h-ovrtigY';
    const double startSecondsfour = 131;
    const String videoIdfive = '1Z1KLpf_7tU';
    const double startSecondsfive = 977;

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
                      word: """interchange""",
                      // alsoEnglishWord: "also: interchange",
                      britshText: """IpaUK: /ˈɪntətʃeɪndʒ/""",
                      americanText: """IpaUS: /ˈɪntərtʃeɪndʒ/""",
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
کوردی: گۆڕین، گۆڕینەوە، ئاڵ‌وگۆڕ، ئاڵشت (بەتایبەت بیر و بۆچوون)،	پێک‌گەیشتنەوە، یەکتربڕین
"""),
// With short examples define "interchange", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) بەشکردن یان گۆڕینەوەی شتێک، بەتایبەتی بیرۆکە و زانیاری"""),
                    SentencesRow(
                      englishText:
                          """An international medical conference was established for the interchange of new ideas and approaches.""",
                      kurdishText:
                          """کۆنفرانسێکی تەندرووستی نێودەوڵەتی بەسترا بۆ گۆڕینەوەی بیرۆکە و ڕێگا تازەکان.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) بەشکردن و گۆڕینەوەی بیرۆکە و زانیاری"""),
                    SentencesRow(
                      englishText:
                          """Data is interchanged between browser and server without any change in display.""",
                      kurdishText:
                          """داتا دەگۆڕدرێتەوە وێبگەڕ و سێرڤەر بەبێ هیچ گۆڕانێک لە پیشاندان.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) گۆڕینەوەی دوو کەس یان شت یان کە بکرێت بگۆڕدرێنەوە"""),
                    SentencesRow(
                      englishText: """The front and rear tyres interchange.""",
                      kurdishText: """تایەکانی پێش و پاش بە یەکدی دەکەن.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I interchanged the front tyres with the rear ones.""",
                      kurdishText:
                          """تایەکانی پێشەوەم لەگەڵ ئەوانەی دواوە گۆڕییەوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
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
// end interchange