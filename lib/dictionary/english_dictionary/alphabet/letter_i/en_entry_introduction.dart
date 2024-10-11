import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryintroduction extends StatefulWidget {
  const EnglishEntryintroduction({super.key});

  @override
  State<EnglishEntryintroduction> createState() =>
      _EnglishEntryintroductionState();
}

class _EnglishEntryintroductionState extends State<EnglishEntryintroduction> {
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
- Noun: introduction (Derived forms: introductions)
1. Formally making a person known to another or to the public (- presentation, intro)
 
2. The act of starting something for the first time; introducing something new (- initiation, founding, foundation, institution, origination, creation, innovation, instauration, debut, first appearance, launching, unveiling, entry)
 
3. The first section of a communication
 
4. A basic or elementary instructional text
 
5. A new proposal
"they resisted the introduction of impractical alternatives"
 
6. The act of putting one thing into another (- insertion, intromission)
""",
  );

  final String keyword = "introduction";
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
    await flutterTts.speak("""introduction""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Can you write a brief introduction to the text?""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The English edition has an introduction by Herbert Read.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His mother is mentioned in the introduction.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Introductions were made and the conversation started to flow.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Our speaker today needs no introduction.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I was hoping to get an introduction to his good-looking colleague.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We can now begin commercial introduction of the product into the United States.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """That year, IBM announced the introduction of its first personal computer.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The testing process delayed the introduction of the drug by at least a year.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The book lists plants suitable for the British flower garden, among them many new introductions.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""This album was my first introduction to modern jazz.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It's a useful introduction to an extremely complex subject.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The course provides a brief introduction to philosophy.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He has written the best available introduction to Stravinsky's music.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = '-6vzjjIrRK8';
    const double startSecondsend = 132;
    const String videoIdone = '8FpPSMIB4uA';
    const double startSecondsone = 622;
    const String videoIdtwo = 'unk6n3_QdlM';
    const double startSecondstwo = 49;
    const String videoIdthree = 'HAnw168huqA';
    const double startSecondsthree = 216;
    const String videoIdfour = '60FM9WjkXtA';
    const double startSecondsfour = 165;
    const String videoIdfive = 'SaneSRqePVY';
    const double startSecondsfive = 156;

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
                      word: """introduction""",
                      // alsoEnglishWord: "also: introduction",
                      britshText: """IpaUK: /ˌɪntrəˈdʌkʃn/""",
                      americanText: """IpaUS: /ˌɪntrəˈdʌkʃn/""",
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
کوردی: ناساندن،	خستنەڕوو، پیشان‌دان، نانەبەرچاو، داڕشتن، هێنانەئارا، هێنانەگۆڕێ، دامەزراندن،	بڵاوکردنەوە، کردنەباو، بڕەوپێدان،	یەکەمین ئەزموون،	پێشەکی، دەسپێک، بەرایی،	چوونەنێوەوە، چوونەژوورەوە، خستنەنێو، تێخستن، تێ‌ترنجاندن، تێنان
"""),
// With short examples define "introduction", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) بەشی یەکەمی کتێبێک یان گوتارێک کە زانیارییەکی گشتی دەدات لەسەر ئەوەی چی باس دەکرێت"""),
                    SentencesRow(
                      englishText:
                          """Can you write a brief introduction to the text?""",
                      kurdishText:
                          """دەتوانیت پێشەکییەکی کورت بنووسیت بۆ پارچە نووسینەکە؟""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The English edition has an introduction by Herbert Read.""",
                      kurdishText:
                          """وەشانی ئینگلیزییەکە پێشەکییەکی لەلایەن هێربێرت ڕید بۆ نووسراوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """His mother is mentioned in the introduction.""",
                      kurdishText: """دایکی لە پێشەکییەکە باس کراوە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) ناساندنی کەسێکی بە کەسانی دیکە"""),
                    SentencesRow(
                      englishText:
                          """Introductions were made and the conversation started to flow.""",
                      kurdishText:
                          """ناساندن ئەنجام درا و گفتووگۆ دەستیان کرد بە دەست پێکردن.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Our speaker today needs no introduction (= is already well known).""",
                      kurdishText:
                          """گوتاربێژی ئەمڕۆمان پێویستی بە هیچ ناساندنێک نییە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I was hoping to get an introduction to his good-looking colleague.""",
                      kurdishText:
                          """بە هیوابووم بناسێندرێم بە هاوکارە قۆزەکەی.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ئەوەی شتێک بۆ یەکەم جار بەکار بهێنیت یان درووستی بکەیت، یان بۆ یەکەم جار شتێک بهێنیتە شوێنێک"""),
                    SentencesRow(
                      englishText:
                          """We can now begin commercial introduction of the product into the United States.""",
                      kurdishText:
                          """ئێستا دەتوانین ناساندنی بازرگانیی بەرهەمەکە لە ئەمریکا دەست پێبکەین.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """That year, IBM announced the introduction of its first personal computer.""",
                      kurdishText:
                          """ئەو ساڵە، ئای‌بی‌ئێم یەکەم کۆمپیوتەریی کەسی ناساند.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The testing process delayed the introduction of the drug by at least a year.""",
                      kurdishText:
                          """پڕۆسەی تاقیکردنەوە ناساندنی دەرمانەکەی بە لایەنی کەمەوە بۆ ساڵێک دواخست.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) شتێک کە بۆ یەکەمجار بەکارهێندراوە یان هێندراوەتە شوێنێک"""),
                    SentencesRow(
                      englishText:
                          """The book lists plants suitable for the British flower garden, among them many new introductions.""",
                      kurdishText:
                          """کتێبەکە ئەو ڕووەکانە لیست دەکات کە گونجاون بۆ باخچەی بەریتانی گوڵ، لە نێوانیاندا چەندین دانەی بۆ یەکەم جار باسکراو.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (ناو) یەکەم ئەزموونی کەسێک لەگەڵ شتێک"""),
                    SentencesRow(
                      englishText:
                          """This album was my first introduction to modern jazz.""",
                      kurdishText:
                          """ئەلبوومەکە یەکەم ئاشنابوونم بوو بە جازی سەردەم.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) کتێب یان کۆرسێک بۆ ئەو کەسانەی تازە دەست دەکەن بە فێربوون"""),
                    SentencesRow(
                      englishText:
                          """It's a useful introduction to an extremely complex subject.""",
                      kurdishText: """ناساندنێکی بەسوودە بۆ بابەتێکی ئاڵۆزە.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The course provides a brief introduction to philosophy.""",
                      kurdishText:
                          """کۆرسەکە ناساندنێکی کورت دەدات بۆ فەلسەفە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He has written the best available introduction to Stravinsky's music.""",
                      kurdishText:
                          """باشترین ناساندنی بەردەستی بۆ میوزیکی ستراڤینسکی نووسیوە.""",
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
// end introduction