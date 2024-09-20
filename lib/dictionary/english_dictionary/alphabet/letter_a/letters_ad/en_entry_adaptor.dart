import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadaptor extends StatefulWidget {
  const EnglishEntryadaptor({super.key});

  @override
  State<EnglishEntryadaptor> createState() => _EnglishEntryadaptorState();
}

class _EnglishEntryadaptorState extends State<EnglishEntryadaptor> {
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
- Noun: adaptor (derived forms: adaptors)
1. Device that enables something to be used in a way different from that for which it was intended or makes different pieces of apparatus compatible (= adapter)
 
2. A musician who adapts a composition for particular voices or instruments or for another style of performance (= arranger, adapter, transcriber)
""",
  );
// 188888880002200

  final String keyword = "adaptor";
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
    await flutterTts.speak("""adaptor""");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'r2lDXoW78u0';
    const double startSecondsend = 155;
    const String videoIdone = 'cqjn3mup1So';
    const double startSecondsone = 140;
    const String videoIdtwo = 'FMDjaU9pD2I';
    const double startSecondstwo = 313;
    const String videoIdthree = '16q8_32M03k';
    const double startSecondsthree = 226;
    const String videoIdfour = 'mYH74v3jWjs';
    const double startSecondsfour = 778;
    const String videoIdfive = 'MYBef-Ggm8c';
    const double startSecondsfive = 196;
    // const String videoIdsix = 'gw9kwsAgLRo';
    // const double startSecondssix = 296;
    // const String videoIdseven = 'DG6own141z0';
    // const double startSecondsseven = 30;

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
                      word: """adaptor""",
                      // alsoEnglishWord: "also: adaptor",
                      britshText: """IpaUK: /əˈdæptə(r)/""",
                      americanText: """IpaUS: /əˈdæptər/""",
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
              const SingleChildScrollView(
                child: CustomColumnWidget(
                  children: [
                    KurdishVocabulary(text: """
کوردی: پێکبەست، بەستەر، گونجێنەر، (کارەبا) گونجێنە، ئاداپتۆر
"""),
                    DefinitionKurdish(
                        text:
                            "١. (ناو) ئامێرێک کە بەکاردێت بۆ پێکەوەلکاندنی دوو پارچەی کارەبایی کە پێکەوە ناگونجێن"
                            ""),
                    DividerDefinition(),
                    DefinitionKurdish(text: """
٢. (ناو) ئامێرێک کە بەکاردێت بۆ لکاندنی زیاتر لە یەک ئامێری کارەبایی بە پلاکێکەوە"""),
                    DividerDefinition(),
                    DefinitionKurdish(text: """
٣. (ناو) کەسێک کە کتێبێک یان شانۆیەک دووبارە دەنووسێتەوە بۆ ئەوەی بگونجێت لەگەڵ کردنی بە شانۆ یان فیلم"""),
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
