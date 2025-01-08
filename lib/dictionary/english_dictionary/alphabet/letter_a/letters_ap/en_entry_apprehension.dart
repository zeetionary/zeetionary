import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapprehension extends StatefulWidget {
  const EnglishEntryapprehension({super.key});

  @override
  State<EnglishEntryapprehension> createState() =>
      _EnglishEntryapprehensionState();
}

class _EnglishEntryapprehensionState extends State<EnglishEntryapprehension> {
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
- Noun: apprehension (derived forms: apprehensions)
1. Fearful expectation or anticipation (= apprehensiveness, dread, misgiving)
"the student looked around the examination room with apprehension";
 
2. The cognitive condition of someone who understands (= understanding, discernment, savvy)
"he has virtually no apprehension of social cause and effect";
 
3. The act of apprehending (especially apprehending a criminal) (= arrest, catch, collar [informal], pinch, taking into custody)
"the policeman on the beat got credit for the apprehension";
""",
  );
// 188888880002200

  final String keyword = "apprehension";
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
    await flutterTts.speak("""apprehension""");
  }

  Future<void> speakapprehension933(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There is growing apprehension that fighting will begin again.");
  }

  Future<void> speakapprehension935(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He watched the election results with apprehension.");
  }

  Future<void> speakapprehension939(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Both the army and the police were involved in the apprehension of the terrorists.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '5wxs_WNwDJE';
    const double startSecondsend = 334;
    const String videoIdone = 'KZbzIf_C6Y4';
    const double startSecondsone = 1413;
    const String videoIdtwo = 'BztMgcNgobk';
    const double startSecondstwo = 1829;
    const String videoIdthree = 'JcpboMScfIY';
    const double startSecondsthree = 3344;
    const String videoIdfour = 'SFr0fCgrTNQ';
    const double startSecondsfour = 838;
    const String videoIdfive = 'iUPnr-lijlU';
    const double startSecondsfive = 124;
    // final String _videoId = 'p-SikBqk2PM';
    // final double _startSeconds = 504;
    // final String _videoId = 'Y7IooT-CLnk';
    // final double _startSeconds = 632;
    // final String _videoId = 'VvcceH0HdUY';
    // final double _startSeconds = 275;
    // final String _videoId = 'hZQ5B3DdLSY';
    // final double _startSeconds = 784;

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
                      word: """apprehension""",
                      // alsoEnglishWord: "also: apprehension",
                      britshText: """IpaUK: /ˌæprɪˈhenʃn/""",
                      americanText: """IpaUS: /ˌæprɪˈhenʃn/""",
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
کوردی: تێگەیشتن، پێزانین، پێ‌پێبردن، بەخۆزانین، حاڵی‌بوون، نگەرانی، دڵەخورپە، دڵەڕاوکێ، دڵەکوتە، ترس، دەس‌بەسەری، ڕاگرتن، گل‌دانەوە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) نیگەرانی یان ترس لەوەی شتێکی خراپ لەوانەیە ڕووبدات"""),
                    SentencesRow(
                      englishText:
                          "There is growing apprehension that fighting will begin again.",
                      kurdishText:
                          "دڵەخورپەی زیاتر و زیاتر ھەیە کە شەڕ لەوانەیە دووبارە دەست‌پێ‌بکاتەوە.",
                      onPressedBritish: () => speakapprehension933("en-GB"),
                      onPressedAmerican: () => speakapprehension933("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "He watched the election results with apprehension.",
                      kurdishText:
                          "بە دڵەخورپەوە سەیری ئەنجامی ھەڵبژاردنەکانی دەکرد.",
                      onPressedBritish: () => speakapprehension935("en-GB"),
                      onPressedAmerican: () => speakapprehension935("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) دەستگیرکردنی کەسێک کە پابەندی یاسا نەبووە"""),
                    SentencesRow(
                      englishText:
                          "Both the army and the police were involved in the apprehension of the terrorists.",
                      kurdishText:
                          "ھەردوو سوپا و پۆلیس بەژداربوون لە دەستگیرکردنی تیرۆریستەکان.",
                      onPressedBritish: () => speakapprehension939("en-GB"),
                      onPressedAmerican: () => speakapprehension939("en-US"),
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
