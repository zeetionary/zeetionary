import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryintellectual extends StatefulWidget {
  const EnglishEntryintellectual({super.key});

  @override
  State<EnglishEntryintellectual> createState() =>
      _EnglishEntryintellectualState();
}

class _EnglishEntryintellectualState extends State<EnglishEntryintellectual> {
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
- Noun: intellectual (Derived forms: intellectuals)
1. A person who uses the mind creatively (- intellect)

- Adjective: intellectual
1. Appealing to or using the intellect
"satire is an intellectual weapon"; "intellectual workers engaged in creative literary or artistic or scientific labour"; "has tremendous intellectual sympathy for oppressed people"; "coldly intellectual"; "sort of the intellectual type"; "intellectual literature"
 
2. Involving intelligence rather than emotions or instinct (- cerebral)
 
3. Of or associated with or requiring the use of the mind (- rational, noetic)
"intellectual problems";
""",
  );

  final String keyword = "intellectual";
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
    await flutterTts.speak("""intellectual""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Gifted children typically show great intellectual curiosity and a wide range of interests.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I don't think he has the intellectual skills necessary to study at this level.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He has a reputation for rudeness and intellectual arrogance.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Education creates intellectual capital to convert into economic rewards.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She considered everyone her intellectual inferior.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's very intellectual.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was a leading intellectual of his day.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'b1reY72ktEc';
    const double startSecondsend = 1284;
    const String videoIdone = 'Cqbleas1mmo';
    const double startSecondsone = 480;
    const String videoIdtwo = 'F0jr-HQeT74';
    const double startSecondstwo = 299;
    const String videoIdthree = 'Y5F_ha7d-PI';
    const double startSecondsthree = 0;
    const String videoIdfour = 'BuX6-lvUwd0';
    const double startSecondsfour = 122;
    const String videoIdfive = 'e-or_D-qNqM';
    const double startSecondsfive = 241;

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
                      word: """intellectual""",
                      // alsoEnglishWord: "also: intellectual",
                      britshText: """IpaUK: /ˌɪntəˈlektʃuəl/""",
                      americanText: """IpaUS: /ˌɪntəˈlektʃuəl/""",
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
کوردی: ئەقڵانی، عەقڵانی، ئاوەزمەندانە، ئەقڵی، عەقڵی، فکری، هزری، بیری، هۆشی، زەینی، مێنتاڵ،	ئاقڵانە، ژیرانە،	ژیر، ئەقڵ‌مەند، ئاقڵ، عاقڵ، تێگەیشتوو، ڕۆشنبیر، ڕووناکبیر، بیریار، هزرڤان
"""),
// With short examples define "intellectual", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) پەیوەندیدار بە توانای کەسێک بۆ بیرکردنەوە بەشێوەیەکی لۆژیکی و ئەوەی لە شتەکان تێبگات؛ پەیوەندیدار بە بەکارهێنانی ئەم توانایە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: mental"),
                    SentencesRow(
                      englishText:
                          """Gifted children typically show great intellectual curiosity and a wide range of interests.""",
                      kurdishText:
                          """منداڵە بەهرەدار بە شێوەیەکی ئاسایی حەزێکی زۆری زیرەکانەیان هەیە و بایەخ بە بوارێکی فراوان لە حەز دەدەن.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I don't think he has the intellectual skills necessary to study at this level.""",
                      kurdishText:
                          """پێموانییە ئەو شارەزاییە هزرییانەی هەبێت کە پێویستن بۆ خوێندن لەم ئاستە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He has a reputation for rudeness and intellectual arrogance.""",
                      kurdishText:
                          "ناسراوە بەوەی کەسێکی بێ‌ڕێزە و خۆی بە زیرەکتر لە کەسانی تر دادەنێت.",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Education creates intellectual capital to convert into economic rewards.""",
                      kurdishText:
                          "پەروەردە سەرنایەیەکی بیرمەندانە درووست دەکات کە دەکرێت بکرێت بە پاداشتی ئابووری.",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She considered everyone her intellectual inferior.""",
                      kurdishText: """هەموو کەسی بە کەم ژیرتر لە خۆی دادەنا.""",
                      englishNote:
                          """This means she believed that all others were less intelligent or less capable than her in terms of knowledge and reasoning.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) کە باش پەروەردە کراوە چێژ لە چالاکییانە دەبیێت کە تێیدا دەبێت بە جدی بیربکەیتەوە"""),
                    SentencesRow(
                      englishText: """She's very intellectual.""",
                      kurdishText: """زۆر ڕۆشنبیرە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) کەسێکی ڕۆشنبیر"""),
                    SentencesRow(
                      englishText:
                          """He was a leading intellectual of his day.""",
                      kurdishText: """ڕۆشنبیرێکی گرنگی سەردەمەکەی بوو.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
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
// end intellectual