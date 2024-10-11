import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinterior extends StatefulWidget {
  const EnglishEntryinterior({super.key});

  @override
  State<EnglishEntryinterior> createState() => _EnglishEntryinteriorState();
}

class _EnglishEntryinteriorState extends State<EnglishEntryinterior> {
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
- Noun: interior (Derived forms: interiors)
1. The region that is inside of something (- inside)
 
2. The inner or enclosed surface of something (- inside)

- Adjective: interior
1. Situated within or suitable for inside a building
"an interior scene"; "interior decoration"; "an interior bathroom without windows"
 
2. Inside the country
"the British Home Office has broader responsibilities than the United States Department of the Interior"; (- home, internal, national)
 
3. Located inward (- inner, internal)
"she thinks she has no soul, no interior life, but the truth is that she has no access to it";
 
4. Inside and toward a centre
"interior regions of the earth"
 
5. Of or coming from the middle of a region or country (- midland, upcountry)
"interior districts";

- Noun: Interior
1. The United States federal department charged with conservation and the development of natural resources; created in 1849 (- Department of the Interior, Interior Department, DoI)
""",
  );

  final String keyword = "interior";
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
    await flutterTts.speak("""interior""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The original interior of the hotel has been replaced.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """People rarely travel into the interior of Australia alone.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The Minister of the Interior visited the border today.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'NFtQOxjWfaA';
    const double startSecondsend = 195;
    const String videoIdone = '7j5ul4XBjAI';
    const double startSecondsone = 148;
    const String videoIdtwo = 'V3NGBo2M1Ps';
    const double startSecondstwo = 77;
    const String videoIdthree = 'NFtQOxjWfaA';
    const double startSecondsthree = 195;
    const String videoIdfour = 'OZ_xhkg32nk';
    const double startSecondsfour = 616;
    const String videoIdfive = 'DxL2HoqLbyA';
    const double startSecondsfive = 890;

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
                      word: """interior""",
                      // alsoEnglishWord: "also: interior",
                      britshText: """IpaUK: /ɪnˈtɪəriə(r)/""",
                      americanText: """IpaUS: /ɪnˈtɪriər/""",
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
کوردی: نێوەکی، نێوخۆیی، ناوخۆیی، ناوەندی، دوور لە سنوور، لە کەنار دوور،	بەشی نێوەوە، ناوان، ناوەڕاست، نێوەوە، هەندەروون، دەروون، هوندر، ژوورەوە،	ناوچە دوور لە سنوورەکان، ناوچە ناوەندی‌یەکان، ناوچەکانی نێوەوە
"""),
// With short examples define "interior", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ناو) بەشی ناوەوەی شتێک"""),
                    SentencesRow(
                      englishText:
                          """The original interior of the hotel has been replaced.""",
                      kurdishText: """ناوەوەی سەرەتای هوتێلەکە گۆڕدراوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) بەشی ناوەوەی وڵاتێک یان کیشوەرێک کە زۆر لە کەناراوەوە"""),
                    SentencesRow(
                      englishText:
                          """People rarely travel into the interior of Australia alone.""",
                      kurdishText:
                          """خەڵکی بە دەگمەن دەچن بۆ ناوەندی ئوسترالیا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) کاری ناوخۆیی وڵاتێک نەک دەرەوە"""),
                    SentencesRow(
                      englishText:
                          """The Minister of the Interior visited the border today.""",
                      kurdishText:
                          """وەزیری ناوخۆ ئەمڕۆ سەردانی سەر سنووری کرد.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
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
// end interior