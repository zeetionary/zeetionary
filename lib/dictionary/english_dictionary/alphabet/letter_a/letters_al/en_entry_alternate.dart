import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalternate extends StatefulWidget {
  const EnglishEntryalternate({super.key});

  @override
  State<EnglishEntryalternate> createState() => _EnglishEntryalternateState();
}

class _EnglishEntryalternateState extends State<EnglishEntryalternate> {
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
- Adjective: alternate
1. (botany) of leaves and branches etc; first on one side and then on the other in two ranks along an axis; not paired
"stems with alternate leaves"
 
2. Every second one of a series
"the cleaning lady comes on alternate Wednesdays"
 
3. Serving or used in place of another (= alternative, substitute)
"an alternate plan";
 
4. Occurring by turns; first one and then the other (= alternating)
"alternate feelings of love and hate";

- Verb: alternate (derived forms: alternating, alternates, alternated)
1. Go back and forth; swing back and forth between two states or conditions (= jump)
 
2. Exchange people temporarily to fulfil certain jobs and functions
 
3. Be an understudy or alternate for a role (= understudy)
 
4. Reverse (a direction, attitude, or course of action) (= interchange, tack, switch, flip, flip-flop)
 
5. Do something in turns (= take turns)
"We alternate on the night shift";

- Noun: alternate (derived forms: alternating, alternates, alternated) 
1. Someone who takes the place of another person (= surrogate, replacement)
""",
  );
// 188888880002200

  final String keyword = "alternate";
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
    await flutterTts.speak("""alternate""");
  }

  Future<void> speakalternate4599(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Stretch up 30 times with alternate arms as a warm-up exercise.");
  }

  Future<void> speakalternate492(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He and I clean our room on alternate days.");
  }

  Future<void> speakalternate4588(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She alternated between cheerfulness and deep despair.");
  }

  Future<void> speakalternate385(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Ambulance crews alternate between emergency and routine work.");
  }

  Future<void> speakalternate5266(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "David was too sick to attend, so Janet served as his alternate.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'Fon7og7w4Yw';
    const double startSecondsend = 41;
    const String videoIdone = 'PRL5EumA9xc';
    const double startSecondsone = 10;
    const String videoIdtwo = 'QxYA721dI7g';
    const double startSecondstwo = 1;
    const String videoIdthree = 'PGk3qLxwmDQ';
    const double startSecondsthree = 173;
    const String videoIdfour = '544DTGHIBM0';
    const double startSecondsfour = 382;
    const String videoIdfive = 'iuOYz8zt9J4';
    const double startSecondsfive = 1;
    // final String _videoId = 'Mx8JkGHaGUI';
    // final double _startSeconds = 477;
    // final String _videoId = 'S-4rhjO6xYg';
    // final double _startSeconds = 146;
    // final String _videoId = 'EM4SJlhsXSE';
    // final double _startSeconds = 269;
    // final String _videoId = '6QgR6Tjle7g';
    // final double _startSeconds = 80;
    // final String _videoId = 'DMRMWLwvAGA';
    // final double _startSeconds = 700;
    // final String _videoId = 'T4gRYEjiyzQ';
    // final double _startSeconds = 763;

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
                      word: """alternate""",
                      // alsoEnglishWord: "also: alternate",
                      britshText: """IpaUK: haʊʊʊʊʊʊʊ4""",
                      americanText: """IpaUS: haʊʊʊʊʊʊʊ4""",
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
کوردی: یەک‌بەدوای‌یەک، بەشوێن‌یەکا، یەک‌نایەک، جارەناجار، بە نۆرە، یەک بە یەک، ئاڵ‌وگۆڕ، ئالتێرنێیت (بیرکاری)، ئەویدی، دی
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) کردنی شتێک سەرەتا بە یەکەم شت، دواتر بە شتێکی تر، و ئینجا دووبارە بە یەکەم شت"
                            ""),
                    SentencesRow(
                      englishText:
                          "Stretch up 30 times with alternate arms as a warm-up exercise.",
                      kurdishText:
                          "وەک خۆگەرمکردنەوەیەک ٣٠ جار سترێچ بکە، ھەرجارە و بە دەستێک.",
                      onPressedBritish: () => speakalternate4599("en-GB"),
                      onPressedAmerican: () => speakalternate4599("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) ڕۆژ نا ڕۆژ، جار نا جار، ساڵ نا ساڵ"""),
                    SentencesRow(
                      englishText: "He and I clean our room on alternate days.",
                      kurdishText:
                          "من و ئەو ژوورەکەمان ڕۆژ نا ڕۆژێک پاکدەکەینەوە.",
                      onPressedBritish: () => speakalternate492("en-GB"),
                      onPressedAmerican: () => speakalternate492("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) ڕوودان بەدوای یەکدا"""),
                    SentencesRow(
                      englishText:
                          "She alternated between cheerfulness and deep despair.",
                      kurdishText:
                          "بەردەوام لە نێوان دڵخۆشی و نائومێدی قووڵ بوو.",
                      onPressedBritish: () => speakalternate4588("en-GB"),
                      onPressedAmerican: () => speakalternate4588("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (کردار) ڕوودان بە بەردەوامی"""),
                    SentencesRow(
                      englishText:
                          "Ambulance crews alternate between emergency and routine work.",
                      kurdishText:
                          "تیمەکانی فریاگوزاری بەردەوام لەنێوان کاری ئاسایی ڕۆژانەیان و حاڵەتی نەخوازراون.",
                      onPressedBritish: () => speakalternate385("en-GB"),
                      onPressedAmerican: () => speakalternate385("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (ناو) کەسێکی جێگرەوە"""),
                    SentencesRow(
                      englishText:
                          "David was too sick to attend, so Janet served as his alternate.",
                      kurdishText:
                          "دەیڤد زۆر نەخۆش بوو کە بتوانێت بەژداربێت، بۆیە جانێت وەک جێگرەوەی کاری کرد.",
                      onPressedBritish: () => speakalternate5266("en-GB"),
                      onPressedAmerican: () => speakalternate5266("en-US"),
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

