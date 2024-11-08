import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryagitation extends StatefulWidget {
  const EnglishEntryagitation({super.key});

  @override
  State<EnglishEntryagitation> createState() => _EnglishEntryagitationState();
}

class _EnglishEntryagitationState extends State<EnglishEntryagitation> {
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
- Noun: agitation (derived forms: agitations)
1. A mental state of extreme emotional disturbance
 
2. A state of agitation or turbulent change or development (= ferment, fermentation, tempestuousness, unrest)
"the political agitation produced new leadership";
 
3. The feeling of being agitated; not calm
 
4. Disturbance usually in protest (= excitement, turmoil, upheaval, hullabaloo [informal], hullaballoo)
 
5. The act of agitating something; causing it to move around (usually vigorously)
""",
  );
// 188888880002200

  final String keyword = "agitation";
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
    await flutterTts.speak("""agitation""");
  }

  Future<void> speakagita2477(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was trying not to show her agitation.");
  }

  Future<void> speakagi3514(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There has been mass agitation against the president.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'V4Uuxg6jmbo';
    const double startSecondsend = 284;
    const String videoIdone = 'SwQhKFMxmDY';
    const double startSecondsone = 1194;
    const String videoIdtwo = '0eVTk_2zcaA';
    const double startSecondstwo = 4708;
    const String videoIdthree = '2VrsmahNcfI';
    const double startSecondsthree = 1189;
    const String videoIdfour = 'zyEv16Fq7f8';
    const double startSecondsfour = 1391;
    const String videoIdfive = 'tpQeMvLUAYM';
    const double startSecondsfive = 114;
    // final String _videoId = 'bY1E2IkvQ3k';
    // final double _startSeconds = 657;
    // final String _videoId = 'HriBqgx9ZPU';
    // final double _startSeconds = 995;
    // final String _videoId = 'rWVAzS5duAs';
    // final double _startSeconds = 1045;
    // final String _videoId = 'oFIr-AB2rYk';
    // final double _startSeconds = 455;

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
                      word: """agitation""",
                      // alsoEnglishWord: "also: agitation",
                      britshText: """IpaUK: /ˌædʒɪˈteɪʃn/""",
                      americanText: """IpaUS: /ˌædʒɪˈteɪʃn/""",
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
کوردی: نیگەرانی، ناڕەحەتی، دڵەڕاوکێ، شڵەژان، ورووژان، ھەژان، پەشۆکاوی، پشێوی، ئاڵۆزی، شۆر، ئاژاوە، شاڵاو، ھەڵمەت، ڕاگەیاندن، ڕاتڵەکان، شڵەقاندن، شێواندن، لێکدان، تەکان‌دان
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) ناڕەحەتی و نیگەرانی" ""),
                    SentencesRow(
                      englishText: "She was trying not to show her agitation.",
                      kurdishText: "ھەوڵیدەدا ناڕەحەتیی پیشان نەدات.",
                      onPressedBritish: () => speakagita2477("en-GB"),
                      onPressedAmerican: () => speakagita2477("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ناڕەزایی جەماوەری بۆ گۆڕانکاریی سیاسی"""),
                    SentencesRow(
                      englishText:
                          "There has been mass agitation against the president.",
                      kurdishText: "ناڕەزایی زۆر بەرامبەر سەرۆک ھەبووە.",
                      onPressedBritish: () => speakagi3514("en-GB"),
                      onPressedAmerican: () => speakagi3514("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) تێکەڵکردنی شلە"""),
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

