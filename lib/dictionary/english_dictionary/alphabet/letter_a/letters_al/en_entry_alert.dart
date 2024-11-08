import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalert extends StatefulWidget {
  const EnglishEntryalert({super.key});

  @override
  State<EnglishEntryalert> createState() => _EnglishEntryalertState();
}

class _EnglishEntryalertState extends State<EnglishEntryalert> {
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
- Verb: alert (derived forms: alerts, alerting, alerted)
1. Warn or arouse to a sense of danger or call to a state of preparedness (= alarm)
"We alerted the new neighbours to the high rate of burglaries";


- Adjective: alert (derived forms: alerter, alertest)
1. Engaged in or accustomed to close observation (= watchful)
"alert enough to spot the opportunity when it came"; "constantly alert and vigilant, like a sentinel on duty"; "caught by a couple of alert cops";
 
2. Quick and energetic (= brisk, lively, merry, rattling, snappy [informal], spanking [informal], zippy [informal])
 
3. Mentally perceptive and responsive (= alive, awake, on the ball)
"an alert mind"; "alert to the problems";

- Noun: alert (derived forms: alerts)
1. Condition of heightened watchfulness or preparation for action (= qui vive)
"bombers were put on alert during the crisis";
 
2. A warning serves to make you more alert to danger (= alerting)
 
3. An automatic signal (usually a sound) warning of danger (= alarm, warning signal, alarum [archaic])
""",
  );
// 188888880002200

  final String keyword = "alert";
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
    await flutterTts.speak("""alert""");
  }

  Future<void> speakalert3524(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "An anonymous letter alerted police to the possibility of a terrorist attack at the airport.");
  }

  Future<void> speakalert352(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Neighbours quickly alerted the emergency services.");
  }

  Future<void> speakalert29637(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "They had been alerted to the possibility of further price rises.");
  }

  Future<void> speakalert6277(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("More than 5 000 troops have been placed on (full) alert.");
  }

  Future<void> speakalert96526(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I get text alerts when I have used 80% of my mobile data.");
  }

  Future<void> speakalert34655(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Two alert scientists spotted the mistake.");
  }

  Future<void> speakalert3566(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We must be alert to the possibility of danger.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'Br9bUTdKu0U';
    const double startSecondsend = 117;
    const String videoIdone = 'T8LlB3psUtM';
    const double startSecondsone = 257;
    const String videoIdtwo = '-5n7QMaGxgg';
    const double startSecondstwo = 40;
    const String videoIdthree = 'bEb-0GzX0RY';
    const double startSecondsthree = 91;
    const String videoIdfour = 'SVEoC-gkbOU';
    const double startSecondsfour = 427;
    const String videoIdfive = '1HC3jZEnJNM';
    const double startSecondsfive = 57;
    // final String _videoId = '4Ww6CwfyZVE';
    // final double _startSeconds = 1;
    // final String _videoId = 'eZnIUMAJtBo';
    // final double _startSeconds = 2758;
    // final String _videoId = 'VrKW58MS12g';
    // final double _startSeconds = 1138;
    // final String _videoId = 'PmlRbfSavbI';
    // final double _startSeconds = 190;

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
                      word: """alert""",
                      // alsoEnglishWord: "also: alert",
                      britshText: """IpaUK: /əˈlɜːt/""",
                      americanText: """IpaUS: /əˈlɜːrt/""",
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
کوردی: گوێ‌قوڵاخ، وریا، چاوکراوە، زیت، وازر، ھۆشیار، ئاگادار، بەئاگا، ھایدار، قوت، زیرەک، بیرا، ئامادەباش، ڕەوش یان بارودۆخی تەنگەتاوی، باری نائاسایی، ئاگادارکردنەوە لە مەترسی یان کێشەیێ
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (کردار) وریاکردنەوەی کەسێک لەسەر بارودۆخێکی مەترسیدار، یان یەکێک کە پێویستە بەپەلە مامەڵەی لەگەڵ بکرێت"
                            ""),
                    SentencesRow(
                      englishText:
                          "An anonymous letter alerted police to the possibility of a terrorist attack at the airport.",
                      kurdishText:
                          "نامەیەکی نھێنی پۆلیسی ئاگادارکردەوە لە ئەگەری ھێرشێکی تیرۆریستی لە فڕۆکەخانەکە.",
                      onPressedBritish: () => speakalert3524("en-GB"),
                      onPressedAmerican: () => speakalert3524("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "Neighbours quickly alerted the emergency services.",
                      kurdishText:
                          "دراوسێیەکان بەپەلە تیمە فریاگوزارییەکانیان ئاگادارکردەوە.",
                      onPressedBritish: () => speakalert352("en-GB"),
                      onPressedAmerican: () => speakalert352("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) ئاگادارکردنەوەی کەسێک لە شتێک"""),
                    SentencesRow(
                      englishText:
                          "They had been alerted to the possibility of further price rises.",
                      kurdishText:
                          "ئاگادارکرابوونەوە لە ئەگەری زیادبوونی زیاتری نرخ.",
                      onPressedBritish: () => speakalert29637("en-GB"),
                      onPressedAmerican: () => speakalert29637("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) بارودۆخێک کە تێیدا خەڵکی ئاگادارکراون بۆ مەترسی"""),
                    SentencesRow(
                      englishText:
                          "More than 5 000 troops have been placed on (full) alert.",
                      kurdishText:
                          "زیاتر لە ٥٠٠٠ سەرباز خراونەتە ئامادابەشیی تەواو.",
                      onPressedBritish: () => speakalert6277("en-GB"),
                      onPressedAmerican: () => speakalert6277("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ناو) ئاگادارکەرەوە بۆ شتێک"""),
                    SentencesRow(
                      englishText:
                          "I get text alerts when I have used 80% of my mobile data.",
                      kurdishText:
                          "ئاگادارکەرەوەیەکی نووسراوم پێدەگات کە زیاتر لە ٨٠٪ ئینتەرنێتی موبایلەکەم بەکاربێنم.",
                      onPressedBritish: () => speakalert96526("en-GB"),
                      onPressedAmerican: () => speakalert96526("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (ھاوەڵناو) ھەبوونی توانای بیرکردنەوە بەخێرایی"""),
                    SentencesRow(
                      englishText: "Two alert scientists spotted the mistake.",
                      kurdishText: "دوو زانای وریا تێبینی ھەڵەکەیان کرد.",
                      onPressedBritish: () => speakalert34655("en-GB"),
                      onPressedAmerican: () => speakalert34655("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (ھاوەڵناو) ئاگاداربوون لە شتێک"""),
                    SentencesRow(
                      englishText:
                          "We must be alert to the possibility of danger.",
                      kurdishText: "پێویستە چاوکراوە بین بۆ مەترسی.",
                      onPressedBritish: () => speakalert3566("en-GB"),
                      onPressedAmerican: () => speakalert3566("en-US"),
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

