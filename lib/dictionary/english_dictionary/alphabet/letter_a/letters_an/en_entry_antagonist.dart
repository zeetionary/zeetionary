import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantagonist extends StatefulWidget {
  const EnglishEntryantagonist({super.key});

  @override
  State<EnglishEntryantagonist> createState() => _EnglishEntryantagonistState();
}

class _EnglishEntryantagonistState extends State<EnglishEntryantagonist> {
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
- Noun: antagonist (derived forms: antagonists) (= adversary, opponent, opposer, resister)
1. Someone who offers opposition

2. A muscle that relaxes while another contracts
"when bending the elbow the triceps are the antagonist"
 
3. A drug that neutralizes or counteracts the effects of another drug
""",
  );
// 188888880002200

  final String keyword = "antagonist";
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
    await flutterTts.speak("""antagonist""");
  }

  Future<void> speakantagonist1255(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He has always been the prime minister’s most formidable antagonist in Parliament.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '9IrW6_6tC44';
    const double startSecondsend = 728;
    const String videoIdone = 'uUX0l8wVVdE';
    const double startSecondsone = 58;
    const String videoIdtwo = 'JTDRQDiaTWM';
    const double startSecondstwo = 80;
    const String videoIdthree = '0zhI18S7TDg';
    const double startSecondsthree = 130;
    const String videoIdfour = 'DuMA7xqCtgg';
    const double startSecondsfour = 1;
    const String videoIdfive = 'tFSgH_cUm2E';
    const double startSecondsfive = 478;
    // final String _videoId = 'YwOMc-4OEWg';
    // final double _startSeconds = 13;
    // final String _videoId = '9GR3XSuInYE';
    // final double _startSeconds = 18;
    // final String _videoId = 'PYzhuFS8YkE';
    // final double _startSeconds = 1646;
    // final String _videoId = 'fY2CF-T05qY';
    // final double _startSeconds = 1276;
    // final String _videoId = 'JcpboMScfIY';
    // final double _startSeconds = 5177;
    // final String _videoId = 'EM4odIQZVgw';
    // final double _startSeconds = 128;

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
                      word: """antagonist""",
                      // alsoEnglishWord: "also: antagonist",
                      britshText: """IpaUK: /ænˈtæɡənɪst/""",
                      americanText: """IpaUS: /ænˈtæɡənɪst/""",
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
کوردی: دوژمن، نەیار، ھەڤڕک، ناکۆک، پێک‌دژ، بەرھەڵست، دژ، دژبەر
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) کەسێک کە بە سەرسەختی دژی کەسێک/شتێکە"
                            ""),
                    SentencesRow(
                      englishText:
                          "He has always been the prime minister’s most formidable antagonist in Parliament.",
                      kurdishText:
                          "ھەمیشە گەورەترین نەیاری سەرۆک وەزیران بووە لە پەرلەمان.",
                      onPressedBritish: () => speakantagonist1255("en-GB"),
                      onPressedAmerican: () => speakantagonist1255("en-US"),
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

// end WORD_WEB


