import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappointment extends StatefulWidget {
  const EnglishEntryappointment({super.key});

  @override
  State<EnglishEntryappointment> createState() =>
      _EnglishEntryappointmentState();
}

class _EnglishEntryappointmentState extends State<EnglishEntryappointment> {
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
- Noun: appointment (derived forms: appointments)
1. The act of putting a person into a non-elective position (= assignment, designation, naming)
"the appointment had to be approved by the whole committee";
 
2. A meeting arranged in advance (= date, engagement)
 
3. (usually in the plural) furnishings and equipment (especially for a ship or hotel) (= fitting)
 
4. A person who is appointed to a job or position (= appointee)
 
5. The job to which you are (or hope to be) appointed
"he applied for an appointment in the treasury"
 
6. (law) the act of disposing of property by virtue of the power of appointment
"she allocated part of the trust to her church by appointment"
""",
  );
// 188888880002200

  final String keyword = "appointment";
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
    await flutterTts.speak("""appointment""");
  }

  Future<void> speakappointment836(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I've got a dental appointment at 3 o'clock.");
  }

  Future<void> speakappointment839(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She made an appointment for her son to see the doctor.");
  }

  Future<void> speakappointment844(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They announced the appointments of key security officials.");
  }

  Future<void> speakappointment847(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I would like to congratulate you on your appointment.");
  }

  Future<void> speakappointment848(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Government ministers and other political appointments are frequently replaced.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'e09xig209cQ';
    const double startSecondsend = 319;
    const String videoIdone = 'KJy7T24rhg0';
    const double startSecondsone = 129;
    const String videoIdtwo = 'XG8b7WhANNA';
    const double startSecondstwo = 211;
    const String videoIdthree = 'Tuk04k5YLwk';
    const double startSecondsthree = 769;
    const String videoIdfour = 'ZvGFV1WoVeo';
    const double startSecondsfour = 490;
    const String videoIdfive = 'EM4SJlhsXSE';
    const double startSecondsfive = 195;
    // final String _videoId = 'UoSSCUMk-7I';
    // final double _startSeconds = 90;
    // final String _videoId = 'SiUotSKZUtM';
    // final double _startSeconds = 411;
    // final String _videoId = '_vy5IjC4LTM';
    // final double _startSeconds = 583;
    // final String _videoId = 'FhrBGkeTPi0';
    // final double _startSeconds = 182;

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
                      word: """appointment""",
                      // alsoEnglishWord: "also: appointment",
                      britshText: """IpaUK: /əˈpɔɪntmənt/""",
                      americanText: """IpaUS: /əˈpɔɪntmənt/""",
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
کوردی: بڕیار (دانانی کاتێ بۆ یەکتر دیتن)، پۆست، پلەوپایە، کار، ئیش، دانان، دیاری‌کردن، ھەڵبژاردن، دامەزراندن، خستنەکار، کەل‌وپەلی نێوماڵ، شمەکی ناوماڵ
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئامادەکاری بۆ بینین یان سەردانی کەسێک لە کاتێکی دیاریکراو"""),
                    SentencesRow(
                      englishText:
                          "I've got a dental appointment at 3 o'clock.",
                      kurdishText:
                          "وادەیەکم لای دکتۆری ددان ھەیە لە کاتژمێر ٣.",
                      onPressedBritish: () => speakappointment836("en-GB"),
                      onPressedAmerican: () => speakappointment836("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "She made an appointment for her son to see the doctor.",
                      kurdishText: "وادەی دانا بۆ کوڕەکەی بۆ بینینی دکتۆر.",
                      onPressedBritish: () => speakappointment839("en-GB"),
                      onPressedAmerican: () => speakappointment839("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) دیاریکردنی کەسێک بۆ کارێک یان بەرپرسیاریەتییەک"""),
                    SentencesRow(
                      englishText:
                          "They announced the appointments of key security officials.",
                      kurdishText:
                          "دەستنیشانکردنی بەرپرسانی ئاسایشیان ڕاگەیاند.",
                      onPressedBritish: () => speakappointment844("en-GB"),
                      onPressedAmerican: () => speakappointment844("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) کارێک یان پۆستێک"""),
                    SentencesRow(
                      englishText:
                          "I would like to congratulate you on your appointment.",
                      kurdishText: "پیرۆزبایی پۆستە تازەکەت لێ‌دەکەم.",
                      onPressedBritish: () => speakappointment847("en-GB"),
                      onPressedAmerican: () => speakappointment847("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ناو) کەسێک کە لە کارێک یان پۆستێکدایە"""),
                    SentencesRow(
                      englishText:
                          "Government ministers and other political appointments are frequently replaced.",
                      kurdishText:
                          "وەزیرەکانی حکومەت و بەرپرسانی سیاسی دیکە زوو زوو دەگۆڕدرێن.",
                      onPressedBritish: () => speakappointment848("en-GB"),
                      onPressedAmerican: () => speakappointment848("en-US"),
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
