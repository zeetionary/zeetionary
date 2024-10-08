// end aggravation
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaggravation extends StatefulWidget {
  const EnglishEntryaggravation({super.key});

  @override
  State<EnglishEntryaggravation> createState() =>
      _EnglishEntryaggravationState();
}

class _EnglishEntryaggravationState extends State<EnglishEntryaggravation> {
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
- Noun: aggravation (derived forms: aggravations)
1. An exasperated feeling of annoyance (= exasperation)
 
2. Unfriendly behaviour that causes anger or resentment (= irritation, provocation)
 
3. Action that makes a problem or a disease (or its symptoms) worse (= exacerbation)
"the aggravation of her condition resulted from lack of care";
""",
  );
// 188888880002200

  final String keyword = "aggravation";
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
    await flutterTts.speak("""aggravation""");
  }

  Future<void> speakaggrava685435(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "I'd complain to the manager but it's not worth the aggravation.");
  }

  Future<void> speakaggravat37814(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Rest the affected limb to avoid further aggravation of the condition.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'Pl_sDO0oCpE';
    const double startSecondsend = 1017;
    const String videoIdone = 'hS4XXstzocY';
    const double startSecondsone = 1149;
    const String videoIdtwo = '_7civVVQLHE';
    const double startSecondstwo = 153;
    const String videoIdthree = 'ra-9ioNWCdU';
    const double startSecondsthree = 168;
    const String videoIdfour = '-XZxyWEiQZM';
    const double startSecondsfour = 300;
    const String videoIdfive = 'k3SbEWFSA8s';
    const double startSecondsfive = 310;
    // final String _videoId = 'ZF5yqxYFBCo';
    // final double _startSeconds = 317;
    // final String _videoId = 'owYDxxygk3I';
    // final double _startSeconds = 499;

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
                      word: """aggravation""",
                      // alsoEnglishWord: "also: aggravation",
                      britshText: """IpaUK: /ˌæɡrəˈveɪʃn/""",
                      americanText: """IpaUS: /ˌæɡrəˈveɪʃn/""",
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
کوردی: خراپ‌تربوون، لێ‌پێس‌کردن، شپرزەیی، تووڕەیی، ڕق‌ھەستاوی، ورووژاندن، تین‌دان، ئارۆزان، تووڕەکردن، مایە یان ھۆکاری خراپترکردن
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) خراپتربوونی بارودۆخێکی خراپ"""),
                    SentencesRow(
                      englishText:
                          "I'd complain to the manager but it's not worth the aggravation.",
                      kurdishText:
                          "لەلای بەڕێوبەر سکاڵا دەکەن، بەڵام ئەوە ناھێنێ (ئەو سەرئێشە تووشی خۆم بکەم).",
                      onPressedBritish: () => speakaggrava685435("en-GB"),
                      onPressedAmerican: () => speakaggrava685435("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "Rest the affected leg to avoid further aggravation of the condition.",
                      kurdishText:
                          "لاقە تووشبووەکەت بحەسێنەوە بۆ ئەوەی بارودۆخەکە خراپتر نەبێت.",
                      onPressedBritish: () => speakaggravat37814("en-GB"),
                      onPressedAmerican: () => speakaggravat37814("en-US"),
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


