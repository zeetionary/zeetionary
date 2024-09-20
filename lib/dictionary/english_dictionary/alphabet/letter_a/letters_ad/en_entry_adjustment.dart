import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadjustment extends StatefulWidget {
  const EnglishEntryadjustment({super.key});

  @override
  State<EnglishEntryadjustment> createState() => _EnglishEntryadjustmentState();
}

class _EnglishEntryadjustmentState extends State<EnglishEntryadjustment> {
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
- Noun: adjustment (derived forms: adjustments)
1. Making or becoming suitable; adjusting to circumstances (accommodation, fitting)
 
2. The act of making something different (as e.g. the size of a garment) (= alteration, modification)
 
3. The act of adjusting something to match a standard (registration, readjustment)
 
4. The process of adapting to something (such as environmental conditions) (= adaptation, adaption)
 
5. An amount added or deducted on the basis of qualifying circumstances (= allowance)
"an adjustment for profit";
""",
  );
// 188888880002200

  final String keyword = "adjustment";
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
    await flutterTts.speak("""adjustment""");
  }

  Future<void> speakadjus56911(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I've made a few adjustments to the design.");
  }

  Future<void> speakadjust5568(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The process of adjustment to life in another country can be very difficult.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'UOrIVc5lG-k';
    const double startSecondsend = 9;
    const String videoIdone = 'yKG58QEgrsY';
    const double startSecondsone = 64;
    const String videoIdtwo = 'JZtDflsCEkA';
    const double startSecondstwo = 292;
    const String videoIdthree = 'TpItcucpO0A';
    const double startSecondsthree = 4;
    const String videoIdfour = 'oxujqlQZ73U';
    const double startSecondsfour = 373;
    const String videoIdfive = 'xax0RTCqYTk';
    const double startSecondsfive = 142;
    // const String videoId = '5dAWNc8OIjM';
    // const double startSeconds = 18;

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
                      word: """adjustment""",
                      // alsoEnglishWord: "also: adjustment",
                      britshText: """IpaUK: /əˈdʒʌstmənt/""",
                      americanText: """IpaUS: /əˈdʒʌstmənt/""",
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
کوردی: ڕێکخستن، میزان‌کردن، ڕێکاندن، گونجان، ساز، سازان، داھاتن، ڕاست‌کردنەوە، گۆڕان، ئامێری ڕاست‌کردنەوە یان میزان‌کردن، میزانە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) گۆڕانکاریی بچووک بۆ چاکترکردنی شتێک"""),
                    SentencesRow(
                      englishText: "I've made a few adjustments to the design.",
                      kurdishText:
                          "ھەندێک گۆڕانکاریی بچووکم کردووە بۆ باشترکردنی دیزاینەکە.",
                      onPressedBritish: () => speakadjus56911("en-GB"),
                      onPressedAmerican: () => speakadjus56911("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) گۆڕانکاری لە ڕەفتار یان بیرکردنەوەی کەسێک"""),
                    SentencesRow(
                      englishText:
                          "The process of adjustment to life in another country can be very difficult.",
                      kurdishText:
                          "پڕۆسەی ڕاھاتن بە ژیانکردن لە وڵاتێکی تر ئەکرێت زۆر قوورس بێت.",
                      onPressedBritish: () => speakadjust5568("en-GB"),
                      onPressedAmerican: () => speakadjust5568("en-US"),
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
