import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinversion extends StatefulWidget {
  const EnglishEntryinversion({super.key});

  @override
  State<EnglishEntryinversion> createState() => _EnglishEntryinversionState();
}

class _EnglishEntryinversionState extends State<EnglishEntryinversion> {
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
- Noun: inversion (Derived forms: inversions)
1. The layer of air near the earth is cooler than an overlying layer
 
2. Abnormal condition in which an organ is turned inward or inside out (as when the upper part of the uterus is pulled into the cervical canal after childbirth)
 
3. A chemical process in which the direction of optical rotation of a substance is reversed from dextrorotatory to levorotary or vice versa
 
4. (genetics) a kind of mutation in which the order of the genes in a section of a chromosome is reversed
 
5. The reversal of the normal order of words (- anastrophe)
 
5. (counterpoint) a variation of a melody or part in which ascending intervals are replaced by descending intervals and vice versa
 
6. A term formerly used to mean taking on the gender role of the opposite sex (- sexual inversion)
 
7. Turning upside down; setting on end (- upending)
 
8. The act of turning inside out (- eversion, everting)
""",
  );

  final String keyword = "inversion";
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
    await flutterTts.speak("""inversion""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Her account of the case was an inversion of the facts.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = '9SKuFe2SERs';
    const double startSecondsend = 173;
    const String videoIdone = 'd6iQrh2TK98';
    const double startSecondsone = 357;
    const String videoIdtwo = 'oJLA8iNUV-0';
    const double startSecondstwo = 875;
    const String videoIdthree = 'pLcqJ2DclEg';
    const double startSecondsthree = 432;
    const String videoIdfour = 'ba-HMvDn_vU';
    const double startSecondsfour = 4516;
    const String videoIdfive = 'r7xsYgTeM2Q';
    const double startSecondsfive = 284;

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
                      word: """inversion""",
                      // alsoEnglishWord: "also: inversion",
                      britshText: """IpaUK: /ɪnˈvɜːʃn/""",
                      americanText: """IpaUS: /ɪnˈvɜːrʒn/""",
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
کوردی: ئاوەژوویی، بەراوەژوویی، هەڵاوگێڕی، پێچەوانەیی، سەروبنی، هەڵگێڕانەوە، سەرەونخون‌کردن، پشتەوڕووکردن، بە پشتاخستن، سەروبن‌کردن، هەڵگەڕانەوە، هەڵگێڕانەوە
"""),
// With short examples define "inversion", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) گۆڕینی ڕیزبەندی یان پێگەی شتێک بۆ پێجەوانەکەی، یان هەڵگەڕاندنەوەی سەرەوخواری شتێک"""),
                    SentencesRow(
                      englishText:
                          """Her account of the case was an inversion of the facts (= it said the opposite of what really happened).""",
                      kurdishText:
                          """گێڕانەوەکەی بۆ کەیسەکە پێچەوانەی ڕاستییەکانە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
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
// end inversion