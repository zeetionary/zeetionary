import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaffection extends StatefulWidget {
  const EnglishEntryaffection({super.key});

  @override
  State<EnglishEntryaffection> createState() => _EnglishEntryaffectionState();
}

class _EnglishEntryaffectionState extends State<EnglishEntryaffection> {
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
- Noun: affection (derived forms: affections)
1. A positive feeling of liking (= affectionateness, fondness, tenderness, heart, warmness, warmheartedness, philia)
"he had trouble expressing the affection he felt";
""",
  );
// 188888880002200

  final String keyword = "affection";
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
    await flutterTts.speak("""affection""");
  }

  Future<void> speakaffe6811(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Children need lots of love and affection.");
  }

  Future<void> speakaffec3599(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I have a great affection for New York.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'uYFU351tUeY';
    const double startSecondsend = 240;
    const String videoIdone = '5tq83yqreU0';
    const double startSecondsone = 20;
    const String videoIdtwo = 'b140V_tFQng';
    const double startSecondstwo = 673;
    const String videoIdthree = '1YdLd4cvMSI';
    const double startSecondsthree = 1;
    const String videoIdfour = 'tu0fjwr9mgU';
    const double startSecondsfour = 51;
    const String videoIdfive = 'muEDcp_SBA8';
    const double startSecondsfive = 338;
    // const String videoId = 'd4sEDQ3cA-w';
    // const double startSeconds = 1;

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
                      word: """affection""",
                      // alsoEnglishWord: "also: affection",
                      britshText: """IpaUK: /əˈfekʃn/""",
                      americanText: """IpaUS: /əˈfekʃn/""",
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
کوردی: خۆشەویستی، دڵ‌تێچوون، دڵ‌پێدان، دڵ‌بەستەیی، ئەڤینداری، میر، حەز، ویست، مەیل، ئارەزوو، ھۆگری، سۆز، سۆزداری، نەخۆشی، تووش‌بوون، (پیا)پیاکران، گرتن، دوچار بوون، پێوەبوون، کارتێ‌کردن، کارلێ‌کردن، کارتێ‌کران
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) سۆز و خۆشەویستی" ""),
                    SentencesRow(
                      englishText: "Children need lots of love and affection.",
                      kurdishText:
                          "منداڵان پێویستیان بە سۆز و خەشەویستی زۆر ھەیە.",
                      onPressedBritish: () => speakaffe6811("en-GB"),
                      onPressedAmerican: () => speakaffe6811("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "I have a great affection for New York.",
                      kurdishText: "خۆشەویستی زۆرم بۆ نیویۆرک ھەیە.",
                      onPressedBritish: () => speakaffec3599("en-GB"),
                      onPressedAmerican: () => speakaffec3599("en-US"),
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
