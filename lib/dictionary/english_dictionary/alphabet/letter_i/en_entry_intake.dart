import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryintake extends StatefulWidget {
  const EnglishEntryintake({super.key});

  @override
  State<EnglishEntryintake> createState() => _EnglishEntryintakeState();
}

class _EnglishEntryintakeState extends State<EnglishEntryintake> {
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
- Noun: intake (Derived forms: intakes)
1. The process of taking food into the body through the mouth (as by eating) (- consumption, ingestion, uptake)
 
2. An opening through which fluid is admitted to a tube or container (- inlet)
 
3. The act of inhaling; the drawing in of air (or other gases) as in breathing (- inhalation, inspiration, aspiration, breathing in)
""",
  );

  final String keyword = "intake";
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
    await flutterTts.speak("""intake""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Make sure you have a balanced intake of vitamins A, B, C and D.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You need to watch your alcohol intake.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This year's intake is/are really diverse.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Intake in universities is down by 10%.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The school has an annual intake of 20 to 30.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The fuel intake system needs regular maintenance.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She gave a sharp intake of breath.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'dtp6b76pMak';
    const double startSecondsend = 116;
    const String videoIdone = 'idWpZ63isMo';
    const double startSecondsone = 254;
    const String videoIdtwo = '-7bIDbaU_zQ';
    const double startSecondstwo = 521;
    const String videoIdthree = 'ZQvfHyfgBtA';
    const double startSecondsthree = 22;
    const String videoIdfour = 'qO--hy6Q-LA';
    const double startSecondsfour = 261;
    const String videoIdfive = '330Ufcaj1zA';
    const double startSecondsfive = 588;

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
                      word: """intake""",
                      // alsoEnglishWord: "also: intake",
                      britshText: """IpaUK: /ˈɪnteɪk/""",
                      americanText: """IpaUS: /ˈɪnteɪk/""",
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
کوردی: دەروو، درگا، ژمارە یان بڕی هاتوو (لە وەختێکی دیاری‌کراودا)،	تەنگەوەبوویی، تەنگایی، باریکایی، باریکەوەبوویی، وێکهاتوویی،	مژین، چەکاندن،	وەرگرتن،	(زانکۆ، خوێندنگا، پیشە و هتد) وەرگیراوان،	(لە ئینگلتەرە) زەمینی ئاوەدان‌کراو،	(تکینیکی) هێزی بەکارهێنراو یان لەکارکراو
"""),
// With short examples define "intake", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئەو بڕە خواردن، خواردنەوە، هتد کە دەیخۆیت"""),
                    SentencesRow(
                      englishText:
                          """Make sure you have a balanced intake of vitamins A, B, C and D.""",
                      kurdishText:
                          """دڵنیابەرەوە ڕێژەی هاوسەنگی وەرگرتنی ڤیتامین A، B، C، و D ــیت دەبێت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """You need to watch your alcohol intake.""",
                      kurdishText:
                          """دەبێت ئاگاداری ڕێژەی خواردنی کحوولیت بیت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئەو کەسانەی کە ڕێگا پێراون بچنە قوتابخانەیەک، کۆلێژێک، کارێک، هتد لە ماوەیەکی دیاریکراودا"""),
                    SentencesRow(
                      englishText:
                          """This year's intake is/are really diverse.""",
                      kurdishText: """وەرگرانی ئەمساڵ تەواو فرەڕەنگن.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Intake in universities is down by 10%.""",
                      kurdishText:
                          """وەرگرتن لە زانکۆکان بە ڕێژەی ١٠٪ کەم بووە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The school has an annual intake of 20 to 30.""",
                      kurdishText:
                          """قوتابخانەکە وەرگرتنی ساڵانەی ٢٠ بۆ ٣٠ کەسی هەیە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ئەو شوێنەی کە لێیەوە هەوا، شلە دەچێتە ئامێرێکەوە"""),
                    SentencesRow(
                      englishText:
                          """The fuel intake system needs regular maintenance.""",
                      kurdishText:
                          """سیستەمی وەرگرتنی سووتەمەنی پێویستی بە چاودێریی بەردەوام هەیە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) ئەوەی شتێک بۆ ناو شتێکی ببەیت، بە تایبەتی هەناسەدان"""),
                    SentencesRow(
                      englishText: """She gave a sharp intake of breath.""",
                      kurdishText: """هەناسەیەکی توندی هەڵکێشا.""",
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
// end intake