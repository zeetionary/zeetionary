import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaged extends StatefulWidget {
  const EnglishEntryaged({super.key});

  @override
  State<EnglishEntryaged> createState() => _EnglishEntryagedState();
}

class _EnglishEntryagedState extends State<EnglishEntryaged> {
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
- Adjective: aged
1. At an advanced stage of erosion (pronounced as one syllable)
"aged rocks"
 
2. Having attained a specific age (= of age)
"aged ten";

3. (of wine, cheese, etc) stored for some time to enhance the flavour (= ripened)
"mature well-aged cheeses";

4. (used of tobacco) undergone the effects of time as a preservative process (= cured)
""",
  );
// 188888880002200

  final String keyword = "aged";
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
    await flutterTts.speak("""aged""");
  }

  Future<void> speakaged5628846(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They have two children aged six and nine.");
  }

  Future<void> speakaged4896223(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I’m not sure if my aged car can make it up that hill.");
  }

  Future<void> speakaged259363(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The hospital was built to meet the needs of the aged.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'EgZeQbwcmz4';
    const double startSecondsend = 283;
    const String videoIdone = 'RAWvd_9La5c';
    const double startSecondsone = 1;
    const String videoIdtwo = 'fbSUvsgJgBs';
    const double startSecondstwo = 68;
    const String videoIdthree = 'PXHuKn7Qwrg';
    const double startSecondsthree = 11;
    const String videoIdfour = '7vNnW004BvY';
    const double startSecondsfour = 292;
    const String videoIdfive = 'RS6OooobAsM';
    const double startSecondsfive = 12;
    // final String _videoId = 'CVUna2CZv9E';
    // final double _startSeconds = 450;

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
                      word: """aged""",
                      // alsoEnglishWord: "also: aged",
                      britshText: """IpaUK: /eɪdʒd/, /ˈeɪdʒɪd/""",
                      americanText: """IpaUS: /eɪdʒd/, /ˈeɪdʒɪd/""",
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
کوردی: (لە لێکدان‌دا) ـساڵە، پیر، بەتەمەن، سەرە، بەساڵاچوو، کۆنەساڵ، تەمەن‌لێ‌ڕۆیشتوو، کۆن، زۆرلەمێژینە
"""),
                    const DefinitionKurdish(
                        text: "١. (ھاوەڵناو) لە تەمەنێکدا" ""),
                    SentencesRow(
                      englishText: "They have two children aged six and nine.",
                      kurdishText:
                          "دوو منداڵیان ھەیە کە تەمەنیان شەش و نۆ ساڵانن.",
                      onPressedBritish: () => speakaged5628846("en-GB"),
                      onPressedAmerican: () => speakaged5628846("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) زۆر پیر"""),
                    SentencesRow(
                      englishText:
                          "I’m not sure if my aged car can make it up that hill.",
                      kurdishText:
                          "دڵنیانیم کە ئەم ئۆتۆمبێلە کۆنەم بتوانێ بەو گردەدا بچێتە سەرەوە.",
                      onPressedBritish: () => speakaged4896223("en-GB"),
                      onPressedAmerican: () => speakaged4896223("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) کەسانی زۆر پیر"""),
                    SentencesRow(
                      englishText:
                          "The hospital was built to meet the needs of the aged.",
                      kurdishText:
                          "نەخۆشخانەکە بنیادنرا بۆ دابینکردنی پێداویستییەکانی کەسانی بەتەمەن.",
                      onPressedBritish: () => speakaged259363("en-GB"),
                      onPressedAmerican: () => speakaged259363("en-US"),
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
