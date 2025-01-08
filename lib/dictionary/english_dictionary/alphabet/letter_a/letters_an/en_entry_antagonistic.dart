import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantagonistic extends StatefulWidget {
  const EnglishEntryantagonistic({super.key});

  @override
  State<EnglishEntryantagonistic> createState() =>
      _EnglishEntryantagonisticState();
}

class _EnglishEntryantagonisticState extends State<EnglishEntryantagonistic> {
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
- Adjective: antagonistic 
1. Indicating opposition or resistance (= counter)
 
2. Characterized by antagonism or antipathy (= antipathetic, antipathetical)
"slaves antagonistic to their masters";
 
3. Incapable of harmonious association
 
4. Arousing animosity or hostility
"his antagonistic brusqueness"; "Europe was antagonistic to the United States"
 
5. Used especially of drugs or muscles that counteract or neutralize each other's effect (= incompatible)
""",
  );
// 188888880002200

  final String keyword = "antagonistic";
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
    await flutterTts.speak("""antagonistic""");
  }

  Future<void> speakantagonistic105(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The interview made her antagonistic towards journalists.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'cwoYQypjJiA';
    const double startSecondsend = 126;
    const String videoIdone = 'HAnw168huqA';
    const double startSecondsone = 3426;
    const String videoIdtwo = 'nDb6-9-MTw4';
    const double startSecondstwo = 614;
    const String videoIdthree = 'GkgXRyScubI';
    const double startSecondsthree = 901;
    const String videoIdfour = '6dv8zJiggBs';
    const double startSecondsfour = 607;
    const String videoIdfive = 'fL5DLVqVcis';
    const double startSecondsfive = 1205;
    // final String _videoId = 'V8zaOhtbKxo';
    // final double _startSeconds = 478;
    // final String _videoId = 'aABFIzfg72A';
    // final double _startSeconds = 1652;
    // final String _videoId = 'GdPsgt_ySU4';
    // final double _startSeconds = 272;
    // final String _videoId = 'Solb9uA-tgQ';
    // final double _startSeconds = 7391;

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
                      word: """antagonistic""",
                      // alsoEnglishWord: "also: antagonistic",
                      britshText: """IpaUK: /ænˌtæɡəˈnɪstɪk/""",
                      americanText: """IpaUS: /ænˌtæɡəˈnɪstɪk/""",
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
کوردی: دوژمن، نەتڵ، دژ، نەیار، دوژمن‌کارانە، دوژمنانە، دژبەرانە 
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) پیشاندانی دژبەری و دوژمنایەتی"
                            ""),
                    SentencesRow(
                      englishText:
                          "The interview made her antagonistic towards journalists.",
                      kurdishText:
                          "چاوپێکەوتنەکە وای‌کرد دژبەرانە بێت بەرامبەر ڕۆژنامەنووسان.",
                      onPressedBritish: () => speakantagonistic105("en-GB"),
                      onPressedAmerican: () => speakantagonistic105("en-US"),
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



