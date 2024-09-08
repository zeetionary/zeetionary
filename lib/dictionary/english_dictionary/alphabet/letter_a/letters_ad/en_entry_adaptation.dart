import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadaptation extends StatefulWidget {
  const EnglishEntryadaptation({super.key});

  @override
  State<EnglishEntryadaptation> createState() => _EnglishEntryadaptationState();
}

class _EnglishEntryadaptationState extends State<EnglishEntryadaptation> {
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
- Noun: adaptation (derived forms: adaptations)
1. A written work (as a novel) that has been recast in a new form (= version)
"the play is an adaptation of a short novel";
 
2. The process of adapting to something (such as environmental conditions) (= adaption, adjustment)
 
3. (physiology) the responsive adjustment of a sense organ (as the eye) to varying conditions (as of light)
""",
  );
// 188888880002200

  final String keyword = "adaptation";
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
    await flutterTts.speak("""adaptation""");
  }

  Future<void> speakadapt3254(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The process of adaptation to a new school is difficult for some children.");
  }

  Future<void> speakadaptat2489(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("a screen adaptation of Shakespeare’s ‘Macbeth’");
  }

  @override
  Widget build(BuildContext context) {

  const String videoIdend = 'joMpt1CwDvc';
  const double startSecondsend = 734;
  const String videoIdone = 'fAEXglHDrPs';
  const double startSecondsone = 97;
  const String videoIdtwo = '-aX_IO5DMlk';
  const double startSecondstwo = 124;
  const String videoIdthree = 'JlH-Q7BHzDo';
  const double startSecondsthree = 550;

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
                      word: """adaptation""",
                      // alsoEnglishWord: "also: adaptation",
                      britshText: """IpaUK: /ˌædæpˈteɪʃn/""",
                      americanText: """IpaUS: /ˌædæpˈteɪʃn/""",
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
کوردی: گونجان، ساز، سازان، داھاتن، ڕێک‌کەوتن، گۆڕان، دەق‌پێدان، ڕێک‌خستن، گونجاندن، داھێنان، سازاندن، لواندن، لوواندن
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) پڕۆسەی ڕاھاتن لەگەڵ بارودۆخێکی تازە"
                                  ""),
                          SentencesRow(
                            englishText:
                                "The process of adaptation to a new school is difficult for some children.",
                            kurdishText:
                                "پڕۆسەی ڕاھاتن بە قوتابخانەیەکی تازە بۆ ھەندێک منداڵ ئاسان نییە.",
                            onPressedBritish: () => speakadapt3254("en-GB"),
                            onPressedAmerican: () => speakadapt3254("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) فیلمێک، درامەیەک، یان شانۆیەک کە پشتی ب کتێبێک یان شانۆیەک بەستووە"""),
                          SentencesRow(
                            englishText:
                                "a screen adaptation of Shakespeare’s ‘Macbeth’",
                            kurdishText: "سازاندنی فیلمیی ماکبێسی شکسپیر.",
                            onPressedBritish: () => speakadaptat2489("en-GB"),
                            onPressedAmerican: () => speakadaptat2489("en-US"),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
