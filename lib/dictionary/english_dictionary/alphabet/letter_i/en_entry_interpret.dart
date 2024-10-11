import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinterpret extends StatefulWidget {
  const EnglishEntryinterpret({super.key});

  @override
  State<EnglishEntryinterpret> createState() => _EnglishEntryinterpretState();
}

class _EnglishEntryinterpretState extends State<EnglishEntryinterpret> {
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
- Verb: interpret (Derived forms: interprets, interpreting, interpreted)
1. Make sense of; assign a meaning to (- construe, see)
"How do you interpret his behaviour?";
 
2. Give an interpretation or explanation to (- rede [archaic])
 
3. (performing arts) perform or do in a particular way (- render)
"The pianist interpreted the Beethoven sonata beautifully";
 
4. (art) create an image or likeness of (- represent)
"The painter interpreted his wife as a young girl";
 
5. Restate (words) from one language into another language (- translate, render)
"Can you interpret the speech of the visiting dignitaries?";
 
6. Make sense of a language (- understand, read, translate)
"She interprets French";
 
7. (computing) translate and execute source code statements one line at a time
"Python is an interpreted language"
""",
  );

  final String keyword = "interpret";
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
    await flutterTts.speak("""interpret""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The students were asked to interpret the poem.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The data can be interpreted in many different ways.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I didn't know whether to interpret her silence as acceptance or refusal.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The research focused on how parents interpret the behaviour of their toddlers.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He took me with him to interpret in case no one spoke English.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She couldn't speak much English so her children had to interpret for her.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'pTysrwci0pU';
    const double startSecondsend = 293;
    const String videoIdone = '0jltioeaEyY';
    const double startSecondsone = 348;
    const String videoIdtwo = 'Sbp_EeBk-As';
    const double startSecondstwo = 1917;
    const String videoIdthree = '58XEfDtU0Z4';
    const double startSecondsthree = 1366;
    const String videoIdfour = '1I1vxu5qIUM';
    const double startSecondsfour = 62;
    const String videoIdfive = '-UrdExQW0cs';
    const double startSecondsfive = 1422;

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
                      word: """interpret""",
                      // alsoEnglishWord: "also: interpret",
                      britshText: """IpaUK: /ɪnˈtɜːprət/""",
                      americanText: """IpaUS: /ɪnˈtɜːrprət/""",
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
//                     const KurdishVocabulary(text: """
// کوردی:
// """),
// With short examples define "interpret", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (کردار) ڕوونکردنەوەی واتای شتێک"""),
                    SentencesRow(
                      englishText:
                          """The students were asked to interpret the poem.""",
                      kurdishText: """داوایان لێکرا هۆنراوەکە ڕوون بکەنەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The data can be interpreted in many different ways.""",
                      kurdishText:
                          """داتاکە دەکرێت بە زۆر ڕێگای جیاواز ڕوونکردنەوەی بۆ بکرێت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) بڕیاردانی ئەوەی شتێک واتایەکی دیاریکراوی هەیە و بەو شێوەیە لێی تێبگەیت"""),
                    SentencesRow(
                      englishText:
                          """I didn't know whether to interpret her silence as acceptance or refusal.""",
                      kurdishText:
                          """نەمدەزانی کە بێ‌دەنگییەکەی بە پەسەندکردن یان ڕەتکردنەوە لێکبدەمەوە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The research focused on how parents interpret the behaviour of their toddlers.""",
                      kurdishText:
                          """توێژینەوەکە سەرنجی خستە سەر ئەوەی دایبابان چۆن ڕەفتاری منداڵەکانیان لێکدەدەنەوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    // add_more_sentences
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) وەرگێڕانی زمانێک بۆ زمانێکی دیکە لەگەڵ قسەکردندا"""),
                    SentencesRow(
                      englishText:
                          """He took me with him to interpret in case no one spoke English.""",
                      kurdishText:
                          """لەگەڵ خۆی بردمی بۆ وەرگێڕان نەوەکو کەس بە ئینگلیزی قسە نەکات.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She couldn't speak much English so her children had to interpret for her.""",
                      kurdishText:
                          """نەیدەتوانی باش بە ئینگلیزی قسە بکات بۆیە منداڵەکانی دەبوو وەرگێرانی بۆ بکەن.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ), // skipped_meaning
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
// end interpret
