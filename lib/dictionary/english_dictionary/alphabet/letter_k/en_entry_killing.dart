import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrykilling extends StatefulWidget {
  const EnglishEntrykilling({super.key});

  @override
  State<EnglishEntrykilling> createState() => _EnglishEntrykillingState();
}

class _EnglishEntrykillingState extends State<EnglishEntrykilling> {
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
- Noun: killing (Derived forms: killings)
1. An event that causes someone to die (- violent death)
 
2. The act of terminating a life (- kill, putting to death)
 
3. [informal] A very large profit (- cleanup)

- Adjective: killing
1. [informal] Very funny (- sidesplitting)
"a killing joke";
 
2. Bringing death (- fatal)
 
3. [informal] Characterized by effort to the point of exhaustion; especially physical effort (- arduous, backbreaking, grueling [US], gruelling [Brit, Cdn], hard, heavy, laborious, operose, punishing, toilsome)
""",
  );

  final String keyword = "killing";
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
    await flutterTts.speak("""killing""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Their leader condemned the torture and killing of innocent civilians.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The mass killing occurred when soldiers opened fire on protesters.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He is responsible for the brutal killing of thousands of animals.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We had to do some killing stomach exercises last night.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/DO9U_XxN-Kc?t=721';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/Cqbleas1mmo?t=910';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/ewLpXw6uN28?t=24';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/S1VuZ2FdQhM?t=62';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/Js2UoMSumx4?t=527';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/yRmOWcWdQAo?t=127';
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
                      word: """killing""",
                      // alsoEnglishWord: "also: killing",
                      britshText: """IpaUK: /ˈkɪlɪŋ/""",
                      americanText: """IpaUS: /ˈkɪlɪŋ/""",
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
کوردی: کوشندە، کوژندە، مرۆک، دەکوژێ،	شەکەت‌کەر، ناخۆش، ماندووکەر،	پێکەنینی، گاڵتەجاڕ، وڵک‌بڕ، کوشتن، کوشت، قەتڵ
"""),
// With short examples define "killing", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ناو) کوشتنی کەسێک بە ئەنقەست"""),
                    const AlsoEnglishckb(word: "ھەروەھا: murder"),
                    SentencesRow(
                      englishText:
                          """Their leader condemned the torture and killing of innocent civilians.""",
                      kurdishText:
                          """سەرکردەکەیان سەرکۆنەی سزادان و کوشتنی خەڵکی مەدەنی بێ‌تاوانی کرد.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The mass killing (= killing of a large number of people) occurred when soldiers opened fire on protesters.""",
                      kurdishText:
                          """کوشتنە بە کۆمەڵەکە ڕوویدا کە سەربازان تەقەیان لە خۆپیشاندەران کرد.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He is responsible for the brutal killing of thousands of animals.""",
                      kurdishText:
                          """بەرپرسە بۆ کوشتنی دڕندانەی هەزاران ئاژەڵ.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) کە زۆر ماندووت دەکات"""),
                    const AlsoEnglishckb(word: "ھەروەھا: exhausting"),
                    SentencesRow(
                      englishText:
                          """We had to do some killing stomach exercises last night.""",
                      kurdishText:
                          """دەبوو دوێنێ شەو چەند ڕاهێنانێکی ماندووکەری گەددە بکەین.""",
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
// end killing