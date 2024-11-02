import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjunction extends StatefulWidget {
  const EnglishEntryjunction({super.key});

  @override
  State<EnglishEntryjunction> createState() => _EnglishEntryjunctionState();
}

class _EnglishEntryjunctionState extends State<EnglishEntryjunction> {
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
- Noun: junction (Derived forms: junctions)
1. The place where two or more things come together
 
2. The state of being joined together (- conjunction, conjugation, colligation)
 
3. The shape or manner in which things come together and a connection is made (- articulation, join, joint, juncture)
 
4. Something that joins or connects (- conjunction)
 
5. An act of joining or adjoining things (- adjunction)
""",
  );

  final String keyword = "junction";
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
    await flutterTts.speak("""junction""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The most complicated motorway interchange in Britain is known as Spaghetti Junction.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In the 19th century the town became an important railway junction.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Damage to the junction between nerves and muscles can lead to weakness.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/oI_X2cMHNe0?t=590';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/EHJNGdFll4o?t=803';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/AF8d72mA41M?t=1322';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/aJbdYcCFp50?t=234';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/A0sM6xVAY-A?t=54';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/CmBzCnCj2XY?t=296';
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
                      word: """junction""",
                      // alsoEnglishWord: "also: junction",
                      britshText: """IpaUK: /ˈdʒʌŋkʃn/""",
                      americanText: """IpaUS: /ˈdʒʌŋkʃn/""",
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
کوردی: پێک‌بەستن، پێکەوەلکاندن، یەک‌خستن، پێک‌گەیاندن، پێک‌بەستراوی، پێوەست‌بوون، لکین، پێک‌بەستران، پێک‌گەیشتن، لێک‌گرێ‌دران، یەک‌گرتن،	شوێنی پێکەوەبەستران، جەمسەر، شوێنی پێک‌گەیشتنەوە یا لق‌لێبوونەوە، پێوەستگا، یەکتربڕین،	دوڕیانە، چوارڕێ‌یانە
"""),
// With short examples define "junction", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئەو شوێنەی دوو یان زیاتر لە ڕێگا یان ڕێگای شەمەندەفەر تێیدا ب یەکدی دەگەن"""),
                    const AlsoEnglishckb(
                        word: "ھەروەھا ئینگلیزیی ئەمریکی: intersection"),
                    SentencesRow(
                      englishText:
                          """The most complicated motorway interchange in Britain is known as Spaghetti Junction.""",
                      kurdishText:
                          """ئاڵۆزترین یەکتربڕی جووت ساید لە بەریتانیا بە یەکتربڕی سپاگێتی ناسراوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """In the 19th century the town became an important railway junction.""",
                      kurdishText:
                          """لە سەدەی ١٩ شارۆچکەکە بوو بە یەکتربرێکی گرنگی ڕێگای شەمەندەفەر.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) شوێنێک کە تێیدا دوو یان زیاتر لە کێبڵ، ڕووبار، یان شتی دیکە تێیدا بە یەکدی دەگەن"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Damage to the junction between nerves and muscles can lead to weakness.""",
                      kurdishText:
                          """زیان بە یەکتربڕی نێوان دەمار و ماسولکەکان دەکرێت ببێتە هۆکاری لاوازی.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
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
// end junction