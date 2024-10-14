import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhollow extends StatefulWidget {
  const EnglishEntryhollow({super.key});

  @override
  State<EnglishEntryhollow> createState() => _EnglishEntryhollowState();
}

class _EnglishEntryhollowState extends State<EnglishEntryhollow> {
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
- Adjective: hollow (Derived forms: hollowest, hollower)
1. Not solid; having a space, gap or cavity
"a hollow wall"; "a hollow tree"; "hollow cheeks"; "his face became gaunter and more hollow with each year"
 
2. As if echoing in a hollow space
"the hollow sound of footsteps in the empty ballroom"
 
3. Devoid of significance or force (- empty, vacuous)
"a hollow victory";
 
4. Lacking in substance or character
"a hollow person"

- Noun: hollow (Derived forms: hollows)
1. A cavity or space in something
"hunger had caused the hollows in their cheeks"
 
2. A small valley between mountains (- holler [informal])
"he built himself a cabin in a hollow high up in the Appalachians";
 
3. A depression hollowed out of solid matter (- hole)

- Verb: hollow (Derived forms: hollowing, hollows, hollowed)
1. Remove the inner part or the core of (- excavate, dig)
"the mining company wants to hollow the hillside";
 
2. Remove the interior of (- hollow out, core out)
"hollow out a tree trunk";
""",
  );

  final String keyword = "hollow";
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
    await flutterTts.speak("""hollow""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The tree trunk was hollow inside.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I felt hollow from lack of food.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I tapped the tin and it sounded hollow.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was an elderly man with hollow cheeks.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The children had pale skin and hollow eyes.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This tree trunk sounds hollow.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She gave a slightly hollow laugh.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I've had enough of their hollow promises.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He won something of a hollow victory when his opponent was forced to withdraw with a serious injury.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The wheelbarrow got stuck in a hollow.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She noticed the slight hollows under his cheekbones.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The village lay secluded in a hollow of the hills.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The squirrel disappeared into a hollow at the base of the tree.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The stairs have been hollowed by centuries of use.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'wir7jmefyec';
    const double startSecondsend = 117;
    const String videoIdone = 'xVQxvthAcLU';
    const double startSecondsone = 1312;
    const String videoIdtwo = 'qjqh9UVfNNk';
    const double startSecondstwo = 863;
    const String videoIdthree = 'Pon4Zux5MaQ';
    const double startSecondsthree = 732;
    const String videoIdfour = '4VTOplLl2BM';
    const double startSecondsfour = 1856;
    const String videoIdfive = 'XXhc5UTxv5I';
    const double startSecondsfive = 1614;

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
                      word: """hollow""",
                      // alsoEnglishWord: "also: hollow",
                      britshText: """IpaUK: /ˈhɒləʊ/""",
                      americanText: """IpaUS: /ˈhɑːləʊ/""",
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
کوردی: هوڵۆڵ، کلۆر، نێوبەتاڵ، ناوخاڵی، خلۆخە، پووچەڵ، پووچەک، بۆش، پووک، واڵا، ڤالا،	ڕوچوو، داکەوتوو، بەچاڵاچوو، بەقووڵاچوو، قووڵ، چاڵ،	درۆ، بێ‌بایەخ، فشە، بێ‌نرخ، ناڕاستەقینە، هیچ‌وپووچ، هیچ، قووڵی، چاڵی، قووڵایی، قوڵکە، دۆڵ، شیو، بوودڕ، چاڵ
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) هەبوونی چاڵ یان بۆشاییەک لە ناوەوە"""),
                    SentencesRow(
                      englishText: """The tree trunk was hollow inside.""",
                      kurdishText: """قەدی دارەکە چاڵ بوو لەناوەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I felt hollow from lack of food.""",
                      kurdishText:
                          """هەستم بە بەتاڵی دەکرد بەهۆی کەمی خواردنەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I tapped the tin and it sounded hollow.""",
                      kurdishText: """کێشام بە قوتووەکەدا و بەتاڵ دیار بوو.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) بەشی چاڵی جەستە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was an elderly man with hollow cheeks.""",
                      kurdishText: """پیاوێکی بەتەمەن بوو بە گۆنای چاڵەوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The children had pale skin and hollow eyes.""",
                      kurdishText:
                          """منداڵەکان پێستی ڕەنگپەڕیو و چاوی قووڵیان هەبوو.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) کە دەنگێک دەردەکات وەک ئەوەی کە دەکێشیت بە شتێکی بەتاڵدا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """This tree trunk sounds hollow.""",
                      kurdishText: """قەدی دارەکە بەتاڵ دیارە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) کە لە دڵەوە نییە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She gave a slightly hollow laugh.""",
                      kurdishText: """پێکەنینێکی کەمێک درۆی کرد.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I've had enough of their hollow promises.""",
                      kurdishText:
                          """بەشی پێویست لە بەڵینە بەتاڵەکانیانم دیوە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) کە بەهای ڕاستەقینەی نییە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He won something of a hollow victory when his opponent was forced to withdraw with a serious injury.""",
                      kurdishText:
                          """بردنەوەیەکی تاڕادەیەک بێ‌بایەخی بردەوە کە ڕکابەرەکەی پێویست بوو بکشێتەوە بەهۆی پێکانێکی توندەوە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٦. (ناو) چاڵ"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The wheelbarrow got stuck in a hollow.""",
                      kurdishText: """عەڕابەکە چەقی لە چاڵێکدا.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She noticed the slight hollows under his cheekbones.""",
                      kurdishText: """تێبینی چالە بچووکەکانی سەرگۆنایی کرد.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The village lay secluded in a hollow of the hills (= a small valley).""",
                      kurdishText:
                          """گوندەکە دابڕاو هەڵکەوتووە لە چاڵایی کردەکاندا.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ناو) بۆشاییەکی بەتاڵ یان چاڵ لە شتێکدا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The squirrel disappeared into a hollow at the base of the tree.""",
                      kurdishText:
                          """سمۆرەکە ونبووە ناو چاڵێک لە بنی دارەکە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (کردار) چاڵکردنە ناو شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The stairs have been hollowed by centuries of use.""",
                      kurdishText:
                          """پلەکانەکان چاڵبوونە بە چەندین سەدە لە بەکارهێنان.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
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