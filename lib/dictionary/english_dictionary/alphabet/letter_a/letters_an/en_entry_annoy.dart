import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryannoy extends StatefulWidget {
  const EnglishEntryannoy({super.key});

  @override
  State<EnglishEntryannoy> createState() => _EnglishEntryannoyState();
}

class _EnglishEntryannoyState extends State<EnglishEntryannoy> {
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
- Verb: annoy (derived forms: annoyed, annoys, annoying)
1. Cause annoyance in; disturb, especially by minor irritations (= rag, get to, bother, get at [informal], irritate, rile, nark [Brit, slang], nettle, gravel [US], vex, chafe, devil, tick off [informal], roil [N. Amer])
"Mosquitoes buzzing in my ear really annoys me";
""",
  );
// 188888880002200

  final String keyword = "annoy";
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
    await flutterTts.speak("""annoy""");
  }

  Future<void> speakannoy716(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I’m sure she does it just to annoy me.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'Kd2lC_ziajQ';
    const double startSecondsend = 7;
    const String videoIdone = '78cMUThuifg';
    const double startSecondsone = 1;
    const String videoIdtwo = 'KgoW8Dvedq4';
    const double startSecondstwo = 17;
    const String videoIdthree = 'O2Fb5N2-xjA';
    const double startSecondsthree = 8;
    const String videoIdfour = 'n_1TdVBQLRI';
    const double startSecondsfour = 20;
    const String videoIdfive = '3kmgqA59wgo';
    const double startSecondsfive = 6;
    // final String _videoId = 'Wb28RQgeY9c';
    // final double _startSeconds = 1;
    // final String _videoId = 'raHRPtIk6fU';
    // final double _startSeconds = 1;
    // final String _videoId = '0oOUbSbAmgc';
    // final double _startSeconds = 1;
    // final String _videoId = 'lex6USTugUU';
    // final double _startSeconds = 466;
    // final String _videoId = 'ljl4sjHnxxE';
    // final double _startSeconds = 591;
    // final String _videoId = 'nMuepMTnIow';
    // final double _startSeconds = 191;

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
                      word: """annoy""",
                      // alsoEnglishWord: "also: annoy",
                      britshText: """IpaUK: /əˈnɔɪ/""",
                      americanText: """IpaUS: /əˈnɔɪ/""",
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
کوردی: ناڕەحەت‌کردن، بێزارکردن، وەڕەس‌کردن
"""),
                    const DefinitionKurdish(
                        text: "١. (کردار) کەمێک کەسێک بێزار بکەیت" ""),
                    SentencesRow(
                      englishText: "I’m sure she does it just to annoy me.",
                      kurdishText: "دڵنیام تەنھا بۆ بێزارکردنی من دەیکات.",
                      onPressedBritish: () => speakannoy716("en-GB"),
                      onPressedAmerican: () => speakannoy716("en-US"),
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



