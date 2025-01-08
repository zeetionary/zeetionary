import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryantisocial extends StatefulWidget {
  const EnglishEntryantisocial({super.key});

  @override
  State<EnglishEntryantisocial> createState() => _EnglishEntryantisocialState();
}

class _EnglishEntryantisocialState extends State<EnglishEntryantisocial> {
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
- Adjective: antisocial  
1. Shunning contact with others
"standoffish and antisocial"; "he's not antisocial; just shy"
 
2. Hostile to or disruptive of normal standards of social behaviour (= asocial)
"criminal behaviour or conduct that violates the rights of other individuals is antisocial"; "an antisocial deed";
""",
  );
// 188888880002200

  final String keyword = "antisocial";
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
    await flutterTts.speak("""antisocial""");
  }

  Future<void> speakantisocial1238(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Increasingly, smoking is regarded as an antisocial habit.");
  }

  Future<void> speakantisocial1240(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They'll think you're being antisocial if you don't go.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'JflCmAWVbEY';
    const double startSecondsend = 349;
    const String videoIdone = 'n7WH7A2v7OU';
    const double startSecondsone = 1;
    const String videoIdtwo = 'mCwbWie5WVc';
    const double startSecondstwo = 83;
    const String videoIdthree = 'qSmyimnMOBo';
    const double startSecondsthree = 1391;
    const String videoIdfour = 'LFB-ZhKAPPw';
    const double startSecondsfour = 752;
    const String videoIdfive = 'JTB5T5aldNo';
    const double startSecondsfive = 388;
    // final String _videoId = 'ItgkkdIgPe0';
    // final double _startSeconds = 152;
    // final String _videoId = 'mBdb20vBZtc';
    // final double _startSeconds = 593;
    // final String _videoId = 'pvJqvA0QU1g';
    // final double _startSeconds = 76;

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
                      word: """antisocial""",
                      // alsoEnglishWord: "also: antisocial",
                      britshText: """IpaUK: /ˌæntiˈsəʊʃl/""",
                      americanText: """IpaUS: /ˌæntiˈsəʊʃl/, /ˌæntaɪˈsəʊʃl/""",
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
کوردی: دژی داب‌ونەریتی کۆمەڵ و مایەی ھەراسانی خەڵکانی تر، دژەکۆمەڵ، دژی کۆمەڵ(گا)، دژی بەرژەوەندی کۆمەڵ(گا)، ناکۆمەڵایەتی، دوژمنی کۆمەڵ، گۆشەگیر، لاتەریک، دوورەپەرێز
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) خراپ و زیان‌بەخش بۆ کەسێک یان کۆمەڵگە بەگشتی"""),
                    SentencesRow(
                      englishText:
                          "Increasingly, smoking is regarded as an antisocial habit.",
                      kurdishText:
                          "جگەرەکێشان زیاتر و زیاتر لەلایەن خەڵکییەوە دادەنرێت بە شتێکی ناکۆمەڵایەتی.",
                      onPressedBritish: () => speakantisocial1238("en-GB"),
                      onPressedAmerican: () => speakantisocial1238("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) حەزنەکردن لە کات بەسەربردن لەگەڵ کەسانی تر"""),
                    SentencesRow(
                      englishText:
                          "They'll think you're being antisocial if you don't go.",
                      kurdishText: "وابیردەکەنەوە ناکۆمەڵایەتیت ئەگەر نەچیت.",
                      onPressedBritish: () => speakantisocial1240("en-GB"),
                      onPressedAmerican: () => speakantisocial1240("en-US"),
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
