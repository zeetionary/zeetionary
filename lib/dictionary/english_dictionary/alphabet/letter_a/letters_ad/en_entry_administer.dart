import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadminister extends StatefulWidget {
  const EnglishEntryadminister({super.key});

  @override
  State<EnglishEntryadminister> createState() => _EnglishEntryadministerState();
}

class _EnglishEntryadministerState extends State<EnglishEntryadminister> {
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
- Verb: administer (derived forms: administers, administering, administered)
1. Work in an administrative capacity; supervise or be in charge of (= administrate)
"she administers the funds"; "administer a program";
 
2. Perform (a church sacrament) ritually
"administer the last unction"
 
3. Give or provide in small portions (= distribute, mete out, deal, parcel out, lot, dispense, deal out, dish out, allot, dole out, mete, dole)
"administer critical remarks to everyone present";
 
4. (medicine) give or apply (medications) (= dispense)
 
5. Direct the taking of
"administer an exam"; "administer an oath"
""",
  );
// 188888880002200

  final String keyword = "administer";
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
    await flutterTts.speak("""administer""");
  }

  Future<void> speakadmini75988(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The country has to face up to the high cost of administering medical services.");
  }

  Future<void> speakadmin2568(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "It is the function of the courts to administer the laws which Parliament has enacted.");
  }

  Future<void> speakadm2564(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A taxi driver administered first aid to the victims.");
  }

  @override
  Widget build(BuildContext context) {
    
    const String videoIdend = 'PWCAHZzGmsE';
    const double startSecondsend = 29;
    const String videoIdone = 'IRZW0D-RVA8';
    const double startSecondsone = 39;
    const String videoIdtwo = '_j5fMbfIxfc';
    const double startSecondstwo = 134;
    const String videoIdthree = '7ziWrneMYss';
    const double startSecondsthree = 753;
    const String videoIdfour = 'y1rrxD6E7aA';
    const double startSecondsfour = 120;
    const String videoIdfive = 'KDthN45L57Q';
    const double startSecondsfive = 719;
    // const String videoId = '-61qyR7n848';
    // const double startSeconds = 222222222222222;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """administer""",
                      // alsoEnglishWord: "also: administer",
                      britshText: """IpaUK: /ədˈmɪnɪstə(r)/""",
                      americanText: """IpaUS: /ədˈmɪnɪstər/""",
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
const DefinitionKurdish(text: """
١. (کردار) بەڕێوەبردنی کۆمپانیایەک، دامەزراوەیەک، یان وڵاتێک"""),
                          SentencesRow(
                            englishText:
                                "The country has to face up to the high cost of administering medical services.",
                            kurdishText:
                                "وڵاتەکە دەبێت مامەڵە لەگەڵ بەرزی نرخی بەڕێوەبردنی خزمەتگوزارییە تەندرووستییەکان بکات.",
                            onPressedBritish: () => speakadmini75988("en-GB"),
                            onPressedAmerican: () => speakadmini75988("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) دڵنیاییکردنی ئەوەی شتێک بەشێوەیەکی دادپەروەرانە دەکرێت"""),
                          SentencesRow(
                            englishText:
                                "It is the function of the courts to administer the laws which Parliament has enacted.",
                            kurdishText:
                                "ئەرکی دادگاکانە ئەو یاسایانە جێبەجێبکەن کە پەرلەمان تێیپەڕاندوون.",
                            onPressedBritish: () => speakadmin2568("en-GB"),
                            onPressedAmerican: () => speakadmin2568("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) پێدانی شتێک بە کەسێک"""),
                          SentencesRow(
                            englishText:
                                "A taxi driver administered first aid to the victims.",
                            kurdishText:
                                "شۆفێری تەکسییەک فریاگوزاری سەرەتایی بۆ قوربانیان ئەنجامدا.",
                            onPressedBritish: () => speakadm2564("en-GB"),
                            onPressedAmerican: () => speakadm2564("en-US"),
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
