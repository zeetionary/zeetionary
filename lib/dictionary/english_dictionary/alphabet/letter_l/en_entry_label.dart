import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylabel extends StatefulWidget {
  const EnglishEntrylabel({super.key});

  @override
  State<EnglishEntrylabel> createState() => _EnglishEntrylabelState();
}

class _EnglishEntrylabelState extends State<EnglishEntrylabel> {
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
- Verb: label (Derived forms: labelled, labels, labeling, labelling)
1. Assign a label to; designate with a label
 
2. Attach a tag or label to (- tag, mark)
"label these bottles";
 
3. Officially declare a judgment on someone (- pronounce, judge)
"They labelled him unfit to work here";
 
4. Distinguish (as a compound or molecule) by introducing a labelled atom
 
5. Distinguish (an element or atom) by using a radioactive isotope or an isotope of unusual mass for tracing through chemical reactions

- Noun: label (Derived forms: labels)
1. An identifying or descriptive marker that is attached to an object
 
2. A brief description given for purposes of identification
"the label modern is applied to many different kinds of architecture"
 
3. Trade name of a company that produces musical recordings (- recording label)
"the artists and repertoire department of a recording label is responsible for finding new talent";
 
4. A radioactive isotope that is used in a compound in order to trace the mechanism of a chemical reaction
""",
  );

  final String keyword = "label";
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
    await flutterTts.speak("""label""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Always read the label carefully.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The washing instructions are on the label.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The label on the bottle listed the ingredients.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It doesn't have a price label on it.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Why do we need to attach a label to these feelings?""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He was given the label ‘Mr Zero’ by the press.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She plans to launch her own designer clothes label.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Some of the plants were wrongly labelled.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The samples were all labelled with a date and place of origin.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Every box needs to be labelled before it goes into storage.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He was labelled (as) a traitor by his former colleagues.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/hOUGNGWmN0k?t=1077';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/a9m3GD0DbPY?t=942';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/gwZuUxeBYV8?t=101';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/oMF6pIglmmk?t=35';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/nDb6-9-MTw4?t=1012';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/hS2x1zl4rn0?t=1280';
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
                      word: """label""",
                      // alsoEnglishWord: "also: label",
                      britshText: """IpaUK: /ˈleɪbl/""",
                      americanText: """IpaUS: /ˈleɪbl/""",
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
کوردی: یافتە، نیشان، نیشانە، بەرچەسپ، لەیبڵ
"""),
// With short examples define "label", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) پارچە کاغەزێک، هتد کە دراوە لە شتێک و زانیاری لەسەر دەدات"""),
                    const AlsoEnglishckb(word: "ھەروەھا: liftag، ticket"),
                    SentencesRow(
                      englishText: """Always read the label carefully.""",
                      kurdishText: """هەمیشە بەوریاییەوە لەیبڵەکە بخوێنەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The washing instructions are on the label.""",
                      kurdishText: """ڕێنماییەکانی شۆردن لەسەر لەیبڵەکەیە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The label on the bottle listed the ingredients.""",
                      kurdishText:
                          """لەیبڵی سەر بوتڵەکە پێکهاتەکانی نووسیبوو.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It doesn't have a price label on it.""",
                      kurdishText: """لەیبڵی نرخی لەسەر نییە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) وشە یان دەستەواژەیەکی  نادرووست یان زۆر گشتی کە بەکاردێت بۆ باسکردنی کەسێک/شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Why do we need to attach a label to these feelings?""",
                      kurdishText: """بۆچی دەبێت ناوێک بنێین لەم هەستانە؟""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was given the label ‘Mr Zero’ by the press.""",
                      kurdishText:
                          """لەلایەن میدیاوە بە ناتۆرەی 'بەڕێز هیچ' ــی لێنرا.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) ناوی پیشەسازییەکی فاشن"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She plans to launch her own designer clothes label.""",
                      kurdishText:
                          """پلانی هەیە براندی جلوبەرگی دیزاینی خۆی دەست پێبکات.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) لێدانی کاغەزێک کە زانیاری دەدات لەسەر شتێک، یان نووسینی زانیاری لەسەر شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Some of the plants were wrongly labelled.""",
                      kurdishText:
                          """هەندێک لە ڕووەکەکان بە هەڵە لەیبڵیان لێدرا.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The samples were all labelled with a date and place of origin.""",
                      kurdishText:
                          """نموونەکان هەموویان ڕێکەوت و شوێنی دەرچوونیان لێدرا.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Every box needs to be labelled before it goes into storage.""",
                      kurdishText:
                          """هەموو سندووقێک دەبێت زانیاری لێبدرێت پێش ئەوەی بخرێتە کۆگاوە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) باسکردنی کەسێک/شتێک بەشێوەیەکی دیاریکراو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was labelled (as) a traitor by his former colleagues.""",
                      kurdishText:
                          """پێی گوترا خیانەتکار لەلایەن هاوکارە کۆنەکانی.""",
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
// end label