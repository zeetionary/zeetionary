import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjunior extends StatefulWidget {
  const EnglishEntryjunior({super.key});

  @override
  State<EnglishEntryjunior> createState() => _EnglishEntryjuniorState();
}

class _EnglishEntryjuniorState extends State<EnglishEntryjunior> {
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
- Noun: junior (Derived forms: juniors)
1. Term of address for a disrespectful and annoying male
"look here, junior, it's none of your business"
 
2. A third-year undergraduate
 
3. The younger of two persons
"she is two years my junior"

- Adjective: junior
1. Used of the third or next to final year in United States high school or college (- third-year, next-to-last)
"the junior class";
 
2. Including or intended for youthful persons
"a junior sports league"; "junior fashions"
 
3. Younger; lower in rank; shorter in length of tenure or service
""",
  );

  final String keyword = "junior";
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
    await flutterTts.speak("""junior""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She is junior to me.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He's quite junior in the organization.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He's a member of the club's junior team.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Donald Trump Junior is the son of Donald Trump.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She teaches in the junior section of the school.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I spent my junior year in France.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""At 16, he’s still eligible to play for the juniors.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Sam is going to be a junior next year.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """As a junior student, he started taking specialized courses.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""As an office junior, he answered phone calls and emails.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I leave junior with Mom when I'm at work.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/z6w7UI21MSo?t=149';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/C1kZTfHldfY?t=44';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/_4ER3jzftQ4?t=18';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/uOJQbqwsfLg?t=563';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/DMRMWLwvAGA?t=381';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/zqllxbPWKNI?t=199';
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
                      word: """junior""",
                      // alsoEnglishWord: "also: junior",
                      britshText: """IpaUK: /ˈdʒuːniə(r)/""",
                      americanText: """IpaUS: /ˈdʒuːniər/""",
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
کوردی: مناڵ‌تر، چکۆلانەتر، چکۆلە، بچووک، چکۆلەتر، خوارتر، کەم‌تر، نزم‌تر، خواردەس، ژێردەس، پایەنزم، (قوتابی یان خوێندکار) ساڵی سێیەم
"""),
// With short examples define "junior", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) هەبوونی پێگەیەکی نزم"""),
                    SentencesRow(
                      englishText: """She is junior to me.""",
                      kurdishText: """پێگەی لە خوارەوەی منە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He's quite junior in the organization.""",
                      kurdishText:
                          """تەواو لە ئاستێکی نزمە لە دامەزراوەکەدا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) پەیوەندیدار بە کەسانی گەنج لە خوارتر لە تەمەنێکی دیاریکراو، نەک کەسانی بەتەمەن"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He's a member of the club's junior team.""",
                      kurdishText: """ئەندامی تیمی منداڵانی یانەکەیە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) لە دوای ناوی کەسێکی بەکاردێت کە هەمان ناوی باوکی هەیە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Donald Trump Junior is the son of Donald Trump.""",
                      kurdishText: """دۆناڵد ترەمپی کوڕ کوڕی دۆناڵد ترەمپە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) قوتابخانەیەک بۆ منداڵانی خوار ١١ یان ١٣ ساڵ"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She teaches in the junior section of the school.""",
                      kurdishText:
                          """لە بەشی منداڵانی قوتابخانەکە وانە دەڵێتەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ھاوەڵناو) پەیوەندیدار بە ساڵی پێش کۆتایی قوتابخانە یان کۆلێژ"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I spent my junior year in France.""",
                      kurdishText: """ساڵی سێیەمم لە فەرەنسا بەسەر برد.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) کەسێکی گەنج لە خوار تەمەنێکی دیاریکراو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """At 16, he’s still eligible to play for the juniors.""",
                      kurdishText:
                          """وەک ١٦ ساڵێک، هێشتا دەکرێت یاری بۆ منداڵەکان بکات.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) منداڵێک کە دەچێتە قوتابخانەی منداڵانی خوار ١١ یان ١٣ ساڵ"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Sam is going to be a junior next year.""",
                      kurdishText:
                          """سام ساڵی داهاتوو دەچێتە قوتابخانەی منداڵان.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ناو) قوتابییەک کە لە ساڵی پێش کۆتایی قوتابخانە یان کۆلێژە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """As a junior student, he started taking specialized courses.""",
                      kurdishText:
                          """وەک خوێندکارێکی قۆناغی سێیەم، دەستی کرد بە وەرگرتنی کۆرسی تایبەت.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ناو) کەسێک کە کارێکی پێگە نزمی هەیە لە دامەزراوەیەک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """As an office junior, he answered phone calls and emails.""",
                      kurdishText:
                          """وەک کارمەندێکی نزمی ئۆفیس، وەڵامی پەیوەندی و ئیمەیڵی دەدایەوە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (ناو) منداڵی گەنجی کەسێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I leave junior with Mom when I'm at work.""",
                      kurdishText:
                          """منداڵە گەنجەکەم لەگەڵ دایکم جێدێڵم کە لە کارم.""",
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
// end junior