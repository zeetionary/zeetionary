import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjuice extends StatefulWidget {
  const EnglishEntryjuice({super.key});

  @override
  State<EnglishEntryjuice> createState() => _EnglishEntryjuiceState();
}

class _EnglishEntryjuiceState extends State<EnglishEntryjuice> {
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
- Noun: juice (Derived forms: juices)
1. The liquid part that can be extracted from plant or animal tissue by squeezing or cooking
 
2. Energetic vitality
"her creative juices were flowing"
 
3. [informal] Electric current
"when the wiring was finished they turned on the juice"
 
4. Any of several liquids of the body (- succus)
"digestive juices";
 
5. [informal] A volatile flammable mixture of hydrocarbons (hexane and heptane and octane etc.) derived from petroleum; used mainly as a fuel in internal-combustion engines (- gasoline [N. Amer], gasolene [N. Amer], gas [N. Amer], petrol [Brit])
 
6. [N. Amer, informal] A liquor or brew containing alcohol as the active agent (- alcohol, alcoholic drink, alcoholic beverage, intoxicant, inebriant, booze [informal])
"juice ruined him";

- Verb: juice (Derived forms: juices, juicing, juiced)
1. Extract juice from (e.g. by squeezing)
""",
  );

  final String keyword = "juice";
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
    await flutterTts.speak("""juice""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Add the juice of two lemons.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Two orange juices, please.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Sprinkle the avocado slices with lemon juice.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Use the juices of the meat to make gravy.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The digestive juices start working when we eat.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My phone has run out of juice.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The car's running low on juice.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """My cousin Gianni's got all the juice in this neighborhood.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Do you think he's still on the juice?""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Juice two oranges.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/-1DYsiKC7b4?t=183';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/5cDWfLeCS5s?t=44';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/TZuk29hF_tY?t=210';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/kgCsxyDMe0M?t=192';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/q8jLyotMMVE?t=668';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/TSoT0qGT2-o?t=111';
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
                      word: """juice""",
                      // alsoEnglishWord: "also: juice",
                      britshText: """IpaUK: /dʒuːs/""",
                      americanText: """IpaUS: /dʒuːs/""",
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
کوردی: ئاوی میوە، میواو، ئاو، شیلە، شیرە
"""),
// With short examples define "juice", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ناو) ئاوی سەوزە و میوە"""),
                    SentencesRow(
                      englishText: """Add the juice of two lemons.""",
                      kurdishText: """ئاوی دوو لیمۆ زیاد بکە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Two orange juices, please.""",
                      kurdishText: """دوو شەربەتی پرتەقاڵ، تکایە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Sprinkle the avocado slices with lemon juice.""",
                      kurdishText: """ئاوی لیمۆ بڕژێنە بە پارچە ئەڤۆکادۆکان.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئاوی دەرهاتوو لە پارچە گۆشتێک کە لێدەندرێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Use the juices of the meat to make gravy.""",
                      kurdishText:
                          """ئاوی گۆشتەکە بەکاربێنە بۆ درووستکردنی گۆشتاو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) شلەی گەددە کە یارمەتیدەر دەبێت لە هەرسکردنی خۆراک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The digestive juices start working when we eat.""",
                      kurdishText:
                          """ئاوگی هەرسکردن دەست بەکارکردن دەکەن کە خۆراک دەخۆین.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) وزەی ئەلیکترۆنی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """My phone has run out of juice.""",
                      kurdishText: """موبایلەکەم وزەی نەماوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٥. (ناو) بەنزین"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The car's running low on juice.""",
                      kurdishText: """ئۆتۆمبێلەکە بەنزینی نەماوە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٦. (ناو) هێز و دەسەڵات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """My cousin Gianni's got all the juice in this neighborhood.""",
                      kurdishText:
                          """جیانیی ئامۆزام هەموو دەسەڵاتێکی هەیە لەم گەڕەکە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ناو) خواردنەوەی کحوولی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Do you think he's still on the juice?""",
                      kurdishText: """پێتوایە هێشتا دەخواتەوە؟""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (کردار) دەرهێنانی ئاوی سەوزە و میوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Juice two oranges.""",
                      kurdishText: """ئاوی دوو پرتەقاڵ دەربکە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
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
// end juice