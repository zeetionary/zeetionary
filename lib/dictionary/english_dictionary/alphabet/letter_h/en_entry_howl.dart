import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhowl extends StatefulWidget {
  const EnglishEntryhowl({super.key});

  @override
  State<EnglishEntryhowl> createState() => _EnglishEntryhowlState();
}

class _EnglishEntryhowlState extends State<EnglishEntryhowl> {
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
- Noun: howl (Derived forms: howls)
1. A long loud emotional utterance (- howling, ululation)
"he gave a howl of pain"; "howls of laughter";
 
2. The long plaintive cry of a hound or a wolf
 
3. A loud sustained noise resembling the cry of a hound
"the howl of the wind made him restless"

- Verb: howl (Derived forms: howled, howling, howls)
1. Emit long loud cries (- ululate, wail, roar, yawl, yaup)
"howl with sorrow";
 
3. Cry loudly, as of animals (- wrawl [UK, dialect], yammer [informal], yowl)
"The coyotes were howling in the desert";
 
4. Make a loud noise, as of wind, water, or vehicles (- roar)
"The wind was howling in the trees";
 
5. Laugh unrestrainedly and heartily (- roar)
""",
  );

  final String keyword = "howl";
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
    await flutterTts.speak("""howl""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""In the silence of the night, a lone wolf howled.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The child howled in pain.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The baby was howling all the time I was there.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The wind was howling around the house.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The crowd howled its displeasure.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He leaves his dog shut up in the house all day, and we can hear its howls.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She let out a howl of pain.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His comments were met with howls of outrage.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They listened to the howl of the wind through the trees.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = '8eq2vGEEbB4';
    const double startSecondsend = 186;
    const String videoIdone = '3gt_G1BjTD4';
    const double startSecondsone = 22;
    const String videoIdtwo = '8eq2vGEEbB4';
    const double startSecondstwo = 293;
    const String videoIdthree = '29DjvorzUGg';
    const double startSecondsthree = 807;
    const String videoIdfour = '7RRifplE5ds';
    const double startSecondsfour = 20;
    const String videoIdfive = 'qGZCFThN9z4';
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
                      word: """howl""",
                      // alsoEnglishWord: "also: howl",
                      britshText: """IpaUK: /haʊl/""",
                      americanText: """IpaUS: /haʊl/""",
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
کوردی: لوورە، قرووسکە، حاچە، ناڵە، هاوار، قیژە، قوولە، وژە، وژەوژ، هەرا، گوڕڕە، چریکە، زیڕە، زیکە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) کە سەگێک، گورگێک، هتد دەنگێکی درێژی بەرز دەردەکات"""),
                    SentencesRow(
                      englishText:
                          """In the silence of the night, a lone wolf howled.""",
                      kurdishText: """لە خامۆشی شەوەکدا گورگێک لووراندی.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) دەرکردنی دەنگێکی بەرز کە تووڕەیت، لە ئازاردایت، هتد یان کە شتێک بە پێکەنیناوی دەبینیت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The child howled in pain.""",
                      kurdishText: """منداڵەکە دەیناڵاند لە ئازاردا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The baby was howling (= crying loudly) all the time I was there.""",
                      kurdishText:
                          """منداڵەکە دەیزیڕاند تەواوی ئەو ماوەیەی لەوێ بووم.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) ئەوەی با خێرا هەڵبکات و دەنگێکی بەرز دەربکات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The wind was howling around the house.""",
                      kurdishText: """بایەکە هاژەی دێت بە دەوری ماڵەکەدا.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (کردار) گوتنی شتێک بە بەرزی و تووڕەیی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The crowd howled its displeasure.""",
                      kurdishText: """خەڵکەکە ناڕەزایی خۆیان دەربڕی.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) دەنگێکی بەرزی درێژ کە سەگێک، گورگێک، هتد دەری دەکات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He leaves his dog shut up in the house all day, and we can hear its howls.""",
                      kurdishText:
                          """تەواوی ڕۆژەکە سەگەکەی لە ماڵەوە بە قەتیسکراوی دەهێڵێتەوە و گوێمان لە هاواریەتی.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) دەنگێکی بەرز کە ئەوە پیشان دەدات کە تووڕەیت، لە ئازاریت، هتد یان شتێک بە پێکەنیناوی دەبینیت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She let out a howl of pain.""",
                      kurdishText: """ناڵەیەکی ئازاری دەرکرد.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """His comments were met with howls of outrage.""",
                      kurdishText:
                          """لێدوانەکانی ڕووبەڕووی قوولەی ناڕەزایی بوونەوە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ناو) دەنگی هاژە و گیڤەی با"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They listened to the howl of the wind through the trees.""",
                      kurdishText: """گوێیان لە هاژەی با لە دارەکانەوە گرت.""",
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