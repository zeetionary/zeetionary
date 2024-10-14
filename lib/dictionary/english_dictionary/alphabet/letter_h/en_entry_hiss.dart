import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhiss extends StatefulWidget {
  const EnglishEntryhiss({super.key});

  @override
  State<EnglishEntryhiss> createState() => _EnglishEntryhissState();
}

class _EnglishEntryhissState extends State<EnglishEntryhiss> {
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
- Noun: hiss (Derived forms: hisses)
1. A fricative sound (especially as an expression of disapproval) (- hissing, hushing, fizzle, sibilation)
"the performers could not be heard over the hiss of the audience";
 
2. A cry or noise made to express displeasure or contempt (- boo, hoot, Bronx cheer [N. Amer], raspberry [informal], razzing [N. Amer, informal], razz [N. Amer, informal], snort)

- Verb: hiss (Derived forms: hissed, hisses, hissing)
1. Make a sharp hissing sound, as if to show disapproval (- siss [US, informal], sizz [US, informal], sibilate)
 
2. Move with a whooshing sound (- whoosh)
 
3. Express or utter with a hiss (- sizz [US, informal], siss [US, informal], sibilate)
 
4. Show displeasure, as after a performance or speech (- boo)
""",
  );

  final String keyword = "hiss";
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
    await flutterTts.speak("""hiss""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The steam escaped with a loud hissing noise.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The snake lifted its head and hissed.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""People in the audience were hissing their disapproval.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""‘Leave me alone!’ she hissed.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The performance was met with boos and hisses.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I heard a hiss as the cork came out of the bottle.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'hllf45NK-KA';
    const double startSecondsend = 869;
    const String videoIdone = 'Wiy8icSKKQs';
    const double startSecondsone = 136;
    const String videoIdtwo = 'APIvXUbye2c';
    const double startSecondstwo = 287;
    const String videoIdthree = '72i3XhRcn0s';
    const double startSecondsthree = 301;
    const String videoIdfour = 'wPQzenQMxKs';
    const double startSecondsfour = 26;
    const String videoIdfive = 'sfkIvdwXtEY';
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
                      word: """hiss""",
                      // alsoEnglishWord: "also: hiss",
                      britshText: """IpaUK: /hɪs/""",
                      americanText: """IpaUS: /hɪs/""",
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
کوردی: جیز، گیز، فیشکە، فسەفس، فسکەفسک، فیشک‌وهۆڕ، فشە، فشەفش
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) دەرکردنی دەنگێکی وەک پیتی س ــی درێژ"""),
                    SentencesRow(
                      englishText:
                          """The steam escaped with a loud hissing noise.""",
                      kurdishText:
                          """هەڵمەکە دەرچوو بە دەنگێکی بەرزی فسەفسەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The snake lifted its head and hissed.""",
                      kurdishText: """مارەکە سەری بەرزکردەوە فساندی.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) دەرکردنی دەنگێکی وەک پیتی س ــی درێژ بۆ دەربڕینی ناڕەزایی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """People in the audience were hissing their disapproval.""",
                      kurdishText:
                          """خەڵکی لەناو گوێگرەکان ناڕەزاییان دەردەبڕی.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) گوتنی شتێک بە دەنگێکی لەسەرەخۆی تووڕەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """‘Leave me alone!’ she hissed.""",
                      kurdishText: """بە لەسەرەخۆیی گوتی 'وازم لێ بهێنە!'""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) دەنگێک وەک پیتی س ــی درێژ کە زۆرجار بۆ دەربڕینی ناڕەزایی بەکاردێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The performance was met with boos and hisses.""",
                      kurdishText:
                          """نمایشەکە فیشک‌وهۆڕ و هاوارەوە پێشوازی لێکرا.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I heard a hiss as the cork came out of the bottle.""",
                      kurdishText:
                          """گوێم لە فسەیەک بوو کە تۆپەوانەکە لەسەر بوتڵەکە لاچوو.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
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