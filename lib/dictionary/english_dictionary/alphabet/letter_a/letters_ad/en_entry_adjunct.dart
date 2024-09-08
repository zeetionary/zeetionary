import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadjunct extends StatefulWidget {
  const EnglishEntryadjunct({super.key});

  @override
  State<EnglishEntryadjunct> createState() => _EnglishEntryadjunctState();
}

class _EnglishEntryadjunctState extends State<EnglishEntryadjunct> {
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
- Noun: adjunct (derived forms: adjuncts)
1. Something added to another thing but not an essential part of it
 
2. A person who is an assistant or subordinate to another
 
3. A construction that can be used to extend the meaning of a word or phrase but is not one of the main constituents of a sentence

- Adjective: adjunct
1. Furnishing added support (= accessory, ancillary, adjuvant, appurtenant, auxiliary)
"an adjunct pump";
 
2. Of or relating to a person who is subordinate to another (= assistant)
""",
  );
// 188888880002200

  final String keyword = "adjunct";
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
    await flutterTts.speak("""adjunct""");
  }

  Future<void> speakadj58692(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The course would be a useful adjunct to my studies.");
  }

  @override
  Widget build(BuildContext context) {
    
    const String videoIdend = '8bQf9URnIAY';
    const double startSecondsend = 389;
    const String videoIdone = '7nJgHBbEgsE';
    const double startSecondsone = 4242;
    const String videoIdtwo = 'YytF2v7Vvw0';
    const double startSecondstwo = 505;
    const String videoIdthree = 'UbZlYl92OGU';
    const double startSecondsthree = 1;
    const String videoIdfour = '5-IuFSt5xWA';
    const double startSecondsfour = 99;
    const String videoIdfive = '_h-u20eMwlw';
    const double startSecondsfive = 342;
    // const String videoId = 'TAPOQFWSUkE';
    // const double startSeconds = 235;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """adjunct""",
                      // alsoEnglishWord: "also: adjunct",
                      britshText: """IpaUK: /ˈædʒʌŋkt/""",
                      americanText: """IpaUS: /ˈædʒʌŋkt/""",
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
کوردی: پاشکۆ، سەرخستە، یاریدەدەر، کۆمەک، یارمەتی‌دەر، ئاوەڵکار یان فریزێ کە واتای کارەکە لە ڕستەدا یان لە بەشێکی ڕستەدا زیاد دەکا، ڕێزمان، شتی لاوەکی، بەشی زیادی یان سەرخراو
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) ھاوەڵکارێک یان دەستەواژەیەک کە واتا زیاددەکات بۆ کرداری ڕستەیەک"
                                  ""),
                          const DefinitionKurdish(text: """
٢. (ناو) شتێک کە زیاددەکرێت بۆ شتێکی تر"""),
                          SentencesRow(
                            englishText:
                                "The course would be a useful adjunct to my studies.",
                            kurdishText:
                                "کۆرسەکە سەرخستەیەکی باش دەبێت بۆ خوێندنەکەم.",
                            onPressedBritish: () => speakadj58692("en-GB"),
                            onPressedAmerican: () => speakadj58692("en-US"),
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
