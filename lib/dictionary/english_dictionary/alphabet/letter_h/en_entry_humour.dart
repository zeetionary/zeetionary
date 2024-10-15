import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhumour extends StatefulWidget {
  const EnglishEntryhumour({super.key});

  @override
  State<EnglishEntryhumour> createState() => _EnglishEntryhumourState();
}

class _EnglishEntryhumourState extends State<EnglishEntryhumour> {
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
- Noun: humour (Derived forms: humours)
Usage: Brit, Cdn (US: humor)
1. The quality of being funny (- humor [US])
"I fail to see the humour in it";
 
2. A message whose ingenuity or verbal skill or incongruity has the power to evoke laughter (- wit, humor [US], witticism, wittiness, drollness)
 
3. The trait of appreciating (and being able to express) the humorous (- humor [US], sense of humor [N. Amer], sense of humour [Brit, Cdn])
"she didn't appreciate my humour"; "you can't survive in the army without a sense of humour"; "she didn't appreciate my humour";
 
4. A characteristic (habitual or relatively temporary) state of feeling (- temper, mood, humor [US])
"he was in a bad humour"; "whether he praised or cursed me depended on his humour at the time";
 
5. (Middle Ages) one of the four fluids in the body whose balance was believed to determine your emotional and physical state (- humor [US])
"the humours are blood and phlegm and yellow and black bile";
 
6. The liquid parts of the body (- liquid body substance, bodily fluid, body fluid, humor [US])

- Verb: humour (Derived forms: humours, humoured, humouring)
Usage: Brit, Cdn (US: humor)
1. Go along with someone's wishes to keep them content or avoid a disagreement (- humor [US])
"We humoured him for a bit until it got boring";
""",
  );

  final String keyword = "humour";
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
    await flutterTts.speak("""humour""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was a story full of gentle humour.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They failed to see the humour of the situation.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I can't stand people with no sense of humour.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The meeting dissolved in ill humour.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She thought it best to humour him rather than get into an argument.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'Gb7xq3th3wM';
    const double startSecondsend = 730;
    const String videoIdone = 'IXmEjiBC2sQ';
    const double startSecondsone = 763;
    const String videoIdtwo = '22KSRN2Y2Mg';
    const double startSecondstwo = 164;
    const String videoIdthree = 'PKEgcyasvCg';
    const double startSecondsthree = 503;
    const String videoIdfour = 'uqIhHDuE62g';
    const double startSecondsfour = 535;
    const String videoIdfive = 'dxbGfWSnIOk';
    const double startSecondsfive = 367;

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
                      word: """humour""",
                      // alsoEnglishWord: "also: humour",
                      britshText: """IpaUK: /ˈhjuːmə(r)/""",
                      americanText: """IpaUS: /ˈhjuːmər/""",
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
کوردی: شلەی ناو لەش،	شۆخی، جەفەنگ، حەنەک، گاڵتە، خوو
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) ئەوەی شتێک پێکەنیناوی"""),
                    SentencesRow(
                      englishText: """It was a story full of gentle humour.""",
                      kurdishText: """چیرۆکێک بوو پڕ لە گاڵتە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They failed to see the humour of the situation.""",
                      kurdishText: """نەیانتوانی گاڵتەی دۆخەکە ببینن.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I can't stand people with no sense of humour.""",
                      kurdishText:
                          """بەرگەی ئەو کەسانە ناگرم کە هیچ هەستی گاڵتەیان نییە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) دۆخی هەست و هزرت لە کاتێکی دیاریکراودا"""),
                    SentencesRow(
                      englishText: """The meeting dissolved in ill humour.""",
                      kurdishText:
                          """چاوپێکەوتنەکە بە دۆخێکی خراپ کۆتایی هات.""",
                      englishNote:
                          """This means the meeting ended in a bad mood, with participants feeling upset, irritated, or angry.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) ڕازی بوون بە هیواکانی کەسێک، ئەگەرچی نەگونجاو بن، بۆ ئەوەی دڵخۆشی بکەیت"""),
                    SentencesRow(
                      englishText:
                          """She thought it best to humour him rather than get into an argument.""",
                      kurdishText:
                          """وای بیرکردەوە دڵی نەشکێنێت وەک لەوەی بکەوێتە مشتوومڕ لەگەڵی.""",
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