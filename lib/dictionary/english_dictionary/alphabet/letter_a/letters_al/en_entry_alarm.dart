import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalarm extends StatefulWidget {
  const EnglishEntryalarm({super.key});

  @override
  State<EnglishEntryalarm> createState() => _EnglishEntryalarmState();
}

class _EnglishEntryalarmState extends State<EnglishEntryalarm> {
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
- Noun: alarm (derived forms: alarms)
1. Fear resulting from the awareness of danger (= dismay, consternation)
 
2. A device that signals the occurrence of some undesirable event (= warning device, alarm system)
 
3. An automatic signal (usually a sound) warning of danger (= alert, warning signal, alarum [archaic])
 
4. A clock that wakes a sleeper at some preset time (= alarm clock)

- Verb: alarm (derived forms: alarms, alarming, alarmed)
1. Fill with apprehension or alarm; cause to be unpleasantly surprised (= dismay, appal [Brit, Cdn], appall [US], horrify)
"I was alarmed at the thought of being late for my interview";

2. Warn or arouse to a sense of danger or call to a state of preparedness (= alert)
"The empty house alarmed him";
""",
  );
// 188888880002200

  final String keyword = "alarm";
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
    await flutterTts.speak("""alarm""");
  }

  Future<void> speakalarm355(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She decided to sound the alarm.");
  }

  Future<void> speakalarm466(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I hammered on all the doors to raise the alarm.");
  }

  Future<void> speakalarm4255(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A car alarm went off in the middle of the night.");
  }

  Future<void> speakalarm4522(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The alarm went off at 7 o'clock.");
  }

  Future<void> speakalarm4277(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The doctor said there was no cause for alarm.");
  }

  Future<void> speakalarm7692(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It alarms me that nobody takes this problem seriously.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'lyErdsXeMuA';
    const double startSecondsend = 75;
    const String videoIdone = 'C3CeB0X16LA';
    const double startSecondsone = 1;
    const String videoIdtwo = 'DuAeaIcAXtg';
    const double startSecondstwo = 154;
    const String videoIdthree = 'To2L5aNAmfk';
    const double startSecondsthree = 63;
    const String videoIdfour = 'JmVF-HW7W0U';
    const double startSecondsfour = 28;
    const String videoIdfive = 'ivJj8NDb-jk';
    const double startSecondsfive = 33;
    // final String _videoId6 = 'LTFmuNxsnKg';
    // final double _startSeconds6 = 9;
    // final String _videoId = 'SU0v2fz0F8g';
    // final double _startSeconds = 362;
    // final String _videoId = 'QLq6GEiHqR8';
    // final double _startSeconds = 504;
    // final String _videoId = 'yOp0cyWp_P4';
    // final double _startSeconds = 590;

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
                      word: """alarm""",
                      // alsoEnglishWord: "also: alarm",
                      britshText: """IpaUK: /əˈlɑːm/""",
                      americanText: """IpaUS: /əˈlɑːrm/""",
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
کوردی: لوورە، زەنگی مەترسی، نیشانەی مەترسی، ئاگادارکردنەوە، ھوشیارکردنەوە،	ترس، تۆقین، مەترسی، دڵەتەپێ، دڵەخورپە، سەعاتی زەنگ‌دار، چاڵمە، شەیپوور یان دەھۆڵی ئامادەبوون، ئاژیر، دەھۆڵی ئامادەباش(ی)
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) دەنگێکی بەرز کە خەڵکی لە کێشە ئاگادار دەکاتەوە"
                            ""),
                    SentencesRow(
                      englishText:
                          "She decided to sound the alarm (= warn people that the situation was dangerous).",
                      kurdishText: "بڕیاریدا زەنگی مەترسی لێبدا.",
                      onPressedBritish: () => speakalarm355("en-GB"),
                      onPressedAmerican: () => speakalarm355("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "I hammered on all the doors to raise the alarm.",
                      kurdishText: "لە ھەموو دەرگاکانم دا بۆ ئاگادارکردنەوە.",
                      onPressedBritish: () => speakalarm466("en-GB"),
                      onPressedAmerican: () => speakalarm466("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ئامێرێک کە زەنگی مەترسی لێدەدات"""),
                    SentencesRow(
                      englishText:
                          "A car alarm went off in the middle of the night (= started ringing).",
                      kurdishText:
                          "زەنگی ئاگادارکەرەوەی ئۆتۆمبێلێک لە نیوە شەودا دەستی بە لێدان کرد.",
                      onPressedBritish: () => speakalarm4255("en-GB"),
                      onPressedAmerican: () => speakalarm4255("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) زەنگێک کە دیاری دەکەیت لەسەر کاتژمێرێک یان موبایل بۆ ئەوەی لە کاتێکی دیاریکراو لێبدات"""),
                    SentencesRow(
                      englishText: "The alarm went off at 7 o'clock.",
                      kurdishText: "زەنگەکە لە کاتژمێر ٧ دەستی بە لێدان کرد.",
                      onPressedBritish: () => speakalarm4522("en-GB"),
                      onPressedAmerican: () => speakalarm4522("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ناو) ترس و نیگەرانی لە کاتی مەترسی"""),
                    SentencesRow(
                      englishText:
                          "The doctor said there was no cause for alarm.",
                      kurdishText: "پزیشکەکە وتی ھیچ ھۆکارێک نییە بۆ دڵەخورپە.",
                      onPressedBritish: () => speakalarm4277("en-GB"),
                      onPressedAmerican: () => speakalarm4277("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (کردار) درووستکردنی نیگەرانی یان مەترسی لای کەسێک"""),
                    SentencesRow(
                      englishText:
                          "It alarms me that nobody takes this problem seriously.",
                      kurdishText:
                          "تووشی دڵەخورپە دەبم کە ھیچ کەس ئەم کێشەیە بە جدی وەرناگرێت.",
                      onPressedBritish: () => speakalarm7692("en-GB"),
                      onPressedAmerican: () => speakalarm7692("en-US"),
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

