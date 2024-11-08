import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamp extends StatefulWidget {
  const EnglishEntryamp({super.key});

  @override
  State<EnglishEntryamp> createState() => _EnglishEntryampState();
}

class _EnglishEntryampState extends State<EnglishEntryamp> {
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
- Noun: amp (derived forms: amps)
1. The basic unit of electric current adopted under the Système International d'Unités. (= ampere, A) 
"a typical household circuit carries 15 to 50 amps";
 
2. [informal] Electronic equipment that increases strength of signals passing through it (= amplifier)
"he didn't have the right connector between the amp and the speakers";

- Verb: amp (derived forms: amping, amps, amped)
Usage: informal
1. Increase the volume of (= amplify)

- Noun: AMP
1. A nucleotide found in muscle cells and important in metabolism; reversibly convertible to ADP and ATP (= adenosine monophosphate, adenylic acid)
""",
  );
// 188888880002200

  final String keyword = "amp";
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
    await flutterTts.speak("""amp""");
  }

  Future<void> speakamp4599(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A typical household circuit carries 15 to 50 amps.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'uuPvhk-EP9E';
    const double startSecondsend = 15;
    const String videoIdone = 'KXT2O92Ywfg';
    const double startSecondsone = 50;
    const String videoIdtwo = 'H_B4ur4VnaQ';
    const double startSecondstwo = 1;
    const String videoIdthree = '2JzK2BZEyRg';
    const double startSecondsthree = 147;
    const String videoIdfour = 'COPftLQiCUY';
    const double startSecondsfour = 1;
    const String videoIdfive = 't5NVoyKj8EA';
    const double startSecondsfive = 41;
    // final String _videoId = 'yVCD_e0IlTI';
    // final double _startSeconds = 271;
    // final String _videoId = '7QqvQImkxcc';
    // final double _startSeconds = 82;
    // final String _videoId = 'kyQcgxMe1YI';
    // final double _startSeconds = 684;
    // final String _videoId = 'lex6USTugUU';
    // final double _startSeconds = 254;
    // final String _videoId = 'IgF3OX8nT0w';
    // final double _startSeconds = 822;
    // final String _videoId = 'Syff4tqo7w0';
    // final double _startSeconds = 390;

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
                      word: """amp""",
                      // alsoEnglishWord: "also: amp",
                      britshText: """IpaUK: /æmp/""",
                      americanText: """IpaUS: /æmp/""",
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
                    const DefinitionKurdish(text: """
١. (ناو) ئەمپێر؛ یەکەی پێوانەی تەزووی کارەبا"""),
                    SentencesRow(
                      englishText:
                          "A typical household circuit carries 15 to 50 amps.",
                      kurdishText:
                          "سرکتێکی ئاسایی ماڵان ١٥ بۆ ٢٠ ئەمپێر دەگوازێتەوە.",
                      onPressedBritish: () => speakamp4599("en-GB"),
                      onPressedAmerican: () => speakamp4599("en-US"),
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

