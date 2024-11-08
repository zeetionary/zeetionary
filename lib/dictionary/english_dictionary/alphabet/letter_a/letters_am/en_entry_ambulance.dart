import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryambulance extends StatefulWidget {
  const EnglishEntryambulance({super.key});

  @override
  State<EnglishEntryambulance> createState() => _EnglishEntryambulanceState();
}

class _EnglishEntryambulanceState extends State<EnglishEntryambulance> {
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
- Noun: ambulance (derived forms: ambulances)
1. A vehicle that takes people to and from hospitals
"The car pulled over when the ambulance approached at high speed"
""",
  );
// 188888880002200

  final String keyword = "ambulance";
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
    await flutterTts.speak("""ambulance""");
  }

  Future<void> speakambulanc7955(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The ambulance crew rushed her to the hospital.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'oTLZ4Essy8o';
    const double startSecondsend = 60;
    const String videoIdone = 'T1xLtk6F27E';
    const double startSecondsone = 21;
    const String videoIdtwo = 'K6HTPAUqE-o';
    const double startSecondstwo = 6;
    const String videoIdthree = 'uxwHuT4C8_c';
    const double startSecondsthree = 1;
    const String videoIdfour = 's_TUCjplHzE';
    const double startSecondsfour = 3;
    const String videoIdfive = 'iiKDU1QHD6c';
    const double startSecondsfive = 23;
    // final String _videoId = 'UhWX5vPZfFY';
    // final double _startSeconds = 28;
    // final String _videoId = '2tBokI5lw1w';
    // final double _startSeconds = 25;
    // final String _videoId = 'kar_AQ5WKE4';
    // final double _startSeconds = 21;
    // final String _videoId = '8_RP8PadxgI';
    // final double _startSeconds = 1;

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
                      word: """ambulance""",
                      // alsoEnglishWord: "also: ambulance",
                      britshText: """IpaUK: /ˈæmbjələns/""",
                      americanText: """IpaUS: /ˈæmbjələns/""",
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
کوردی: ئۆتۆمبێلی فریاکەوتن، نەخۆش‌بەر، نەخۆش‌ھەڵگر، نەخۆش‌خانەی گەڕۆک
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) ئۆتۆمبێلێک کە کەرەستەی تایبەتی تێدایە و نەخۆشی پێ دەبردرێت بۆ نەخۆشخانە"
                            ""),
                    SentencesRow(
                      englishText:
                          "The ambulance crew rushed her to the hospital.",
                      kurdishText:
                          "ستافی ئەمبولانسەکە خێرا بردیان بۆ نەخۆشخانە.",
                      onPressedBritish: () => speakambulanc7955("en-GB"),
                      onPressedAmerican: () => speakambulanc7955("en-US"),
                    ),
                    // const DividerSentences()
                    // const DividerDefinition()
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
