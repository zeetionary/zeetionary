import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryimmersion extends StatefulWidget {
  const EnglishEntryimmersion({super.key});

  @override
  State<EnglishEntryimmersion> createState() => _EnglishEntryimmersionState();
}

class _EnglishEntryimmersionState extends State<EnglishEntryimmersion> {
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
- Noun: immersion (Derived forms: immersions)
1. Sinking until covered completely with water (- submergence, submerging, submersion)
 
2. (astronomy) the disappearance of a celestial body prior to an eclipse (- ingress)
 
3. Complete attention; intense mental effort (- concentration, engrossment, absorption)
 
4. A form of baptism in which part or all of a person's body is submerged
 
5. The act of wetting something by submerging it (- submersion, ducking, dousing)
""",
  );

  final String keyword = "immersion";
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
    await flutterTts.speak("""immersion""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Immersion in cold water resulted in rapid loss of heat.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The course offers the opportunity for total immersion in the language and culture.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'qWAagS_MANg';
    const double startSecondsend = 521;
    const String videoIdone = 'dtp6b76pMak';
    const double startSecondsone = 1554;
    const String videoIdtwo = 'LoqwZBkYWqE';
    const double startSecondstwo = 96;
    const String videoIdthree = 'TRGHIN2PGIA';
    const double startSecondsthree = 900;
    const String videoIdfour = '9yjZpBq1XBE';
    const double startSecondsfour = 6023;
    const String videoIdfive = 'SaneSRqePVY';
    const double startSecondsfive = 457;

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
                      word: """immersion""",
                      // alsoEnglishWord: "also: immersion",
                      britshText: """IpaUK: /ɪˈmɜːʃn/""",
                      americanText: """IpaUS: /ɪˈmɜːrʒn/""",
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
کوردی: نوقم‌کردن، نوقماندن، قوم‌کردن، نوقم‌بوون، ژێراوچوون، تێهەڵکێشان، بردنەنێوئاو،	(خوازە) نوقم‌بوون، چوونە ماڵی فکرەوە، چوونەنێو(شتێ)، ڕاکێشران
"""),
// With short examples define "immersion", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئەوەی کەسێک/شتێک بخەیتە ناو شلەیەک، بە تایبەتی بە شێوەیەک کە بە تەواوی دابپۆشرێن"""),
                    SentencesRow(
                      englishText:
                          """Immersion in cold water resulted in rapid loss of heat.""",
                      kurdishText:
                          """خوسان لە سارد بوو بە هۆکاری لەدەستدانی خێرای گەرمی .""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) ئەوەی تەواوی بەژدار بیت لە شتێک"""),
                    SentencesRow(
                      englishText:
                          """The course offers the opportunity for total immersion in the language and culture.""",
                      kurdishText:
                          """کۆرسەکە هەل دابین دەکات بۆ ڕۆچوونی تەواو لە زمان و کەلتوورەکەدا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
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