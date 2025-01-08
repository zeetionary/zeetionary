import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapplication extends StatefulWidget {
  const EnglishEntryapplication({super.key});

  @override
  State<EnglishEntryapplication> createState() =>
      _EnglishEntryapplicationState();
}

class _EnglishEntryapplicationState extends State<EnglishEntryapplication> {
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
- Noun: application (derived forms: applications)
1. The act of using something for a purpose (= practical application)
"a novel application of electronics to medical diagnosis"; "he advocated the application of statistics to the problem";
 
2. A verbal or written request for assistance or employment or admission to a school
"December 31 is the deadline for applications"
 
3. The work of applying something (= coating, covering)
"the doctor prescribed a topical application of iodine"; "a complete bleach requires several applications";
 
4. A program that gives a computer instructions that provide the user with tools to accomplish a task (application program, applications programme, app)
"he has tried several different word processing applications";
 
5. Liquid preparation having a soothing, antiseptic or medicinal action when applied to the skin (= lotion)
 
6. A diligent effort (= diligence)
"it is a job requiring serious application";
 
7. The action of putting something into operation
"the application of maximum thrust"; "massage has far-reaching medical applications"; "the application of indexes to tables of data"
""",
  );
// 188888880002200

  final String keyword = "application";
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
    await flutterTts.speak("""application""");
  }

  Future<void> speakapplication707(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We have received applications from more than 3 000 students.");
  }

  Future<void> speakapplication709(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "They submitted an application to the council to build two houses.");
  }

  Future<void> speakapplication713(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The invention would have a wide range of applications in industry.");
  }

  Future<void> speakapplication716(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It took three applications of paint to cover the graffiti.");
  }

  Future<void> speakapplication721(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Judges play a vital role in ensuring the strict application of the law.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'GcdB5bFwio4';
    const double startSecondsend = 339;
    const String videoIdone = 'zqllxbPWKNI';
    const double startSecondsone = 205;
    const String videoIdtwo = 'UuGpm01SPcA';
    const double startSecondstwo = 87;
    const String videoIdthree = 'eEUFUqNwztU';
    const double startSecondsthree = 450;
    const String videoIdfour = 'CWgs97shAH0';
    const double startSecondsfour = 646;
    const String videoIdfive = 'xVQxvthAcLU';
    const double startSecondsfive = 705;
    // final String _videoId = 'IlU-zDU6aQ0';
    // final double _startSeconds = 1787;
    // final String _videoId = '9yjZpBq1XBE';
    // final double _startSeconds = 1662;
    // final String _videoId = 'GVsUOuSjvcg';
    // final double _startSeconds = 930;
    // final String _videoId = 'PXaLc9AYIcg';
    // final double _startSeconds = 179;
    // final String _videoId = '8GKI2sYe1CI';
    // final double _startSeconds = 518;

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
                      word: """application""",
                      // alsoEnglishWord: "also: application",
                      britshText: """IpaUK: /ˌæplɪˈkeɪʃn/""",
                      americanText: """IpaUS: /ˌæplɪˈkeɪʃn/""",
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
کوردی: داخوازی(نامە)، بەکارھێنان، پیادەکردن، کارپێکردن، جێبەجێ‌کردن، بەھرەلێ‌وەرگرتن،کەڵک(لێ)وەرگرتن، بەکارھێنان، خستنەکار، ھەوڵ، کاری سەخت، حەول، خەبات، تێکۆشان، سەرنج‌پێدان، لێ‌وردبوونەوە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) داخوازینامەی فەرمی بۆ وەرگرتنی کارێک، مۆڵەتی کردنی شتێک، یان جێگایەک لە زانکۆ"""),
                    SentencesRow(
                      englishText:
                          "We have received applications from more than 3 000 students.",
                      kurdishText:
                          "داخوازینامەمان لە زیاتر لە ٣٠٠٠ خوێندکارەوە پێگەشتووە.",
                      onPressedBritish: () => speakapplication707("en-GB"),
                      onPressedAmerican: () => speakapplication707("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "They submitted an application to the council to build two houses.",
                      kurdishText:
                          "داخوازینامەیەکیان پێشکەشی ئەنجوومەنەکە کرد بۆ درووستکردنی دوو خانوو.",
                      onPressedBritish: () => speakapplication709("en-GB"),
                      onPressedAmerican: () => speakapplication709("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) بەکارھێنانی کرداریی شتێک، بۆ نموونە بیردۆزێک یان دۆزینەوەیەک"""),
                    SentencesRow(
                      englishText:
                          "The invention would have a wide range of applications in industry.",
                      kurdishText:
                          "داھێنانەکە بەکارھێنانی کرداریی زۆری دەبێت لە پیشەسازیدا.",
                      onPressedBritish: () => speakapplication713("en-GB"),
                      onPressedAmerican: () => speakapplication713("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) کرداری پێوەکردنی شتێک، بۆ نموونە بۆیە یان کرێم، بە شتێکی ترەوە"""),
                    SentencesRow(
                      englishText:
                          "It took three applications of paint to cover the graffiti.",
                      kurdishText:
                          "سێ چین بۆیەی ویست تاوەکو گرافیتییەکە داپۆشین (بسڕینەوە).",
                      onPressedBritish: () => speakapplication716("en-GB"),
                      onPressedAmerican: () => speakapplication716("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ناو) کرداری خستنە بواری جێبەجێکردنی یاسایەک"""),
                    SentencesRow(
                      englishText:
                          "Judges play a vital role in ensuring the strict application of the law.",
                      kurdishText:
                          "دادوەران ڕۆڵی گرنگ دەبینن لە دڵنیایی‌کردنەوەی جێبەجێکردنی توندی یاساکە.",
                      onPressedBritish: () => speakapplication721("en-GB"),
                      onPressedAmerican: () => speakapplication721("en-US"),
                    ),
                    // const DividerSentences(),
                    // const DividerDefinition(),
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
