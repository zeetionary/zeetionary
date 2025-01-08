import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappropriation extends StatefulWidget {
  const EnglishEntryappropriation({super.key});

  @override
  State<EnglishEntryappropriation> createState() =>
      _EnglishEntryappropriationState();
}

class _EnglishEntryappropriationState extends State<EnglishEntryappropriation> {
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
- Noun: appropriation (derived forms: appropriations)
1. (legislature) money set aside (as by a legislature) for a specific purpose
 
2. Incorporation by joining or uniting (= annexation)
 
3. A deliberate act of acquisition of something, often without the permission of the owner
"the necessary funds were obtained by the government's appropriation of the company's operating unit"; "a person's appropriation of property belonging to another is dishonest"
""",
  );
// 188888880002200

  final String keyword = "appropriation";
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
    await flutterTts.speak("""appropriation""");
  }

  Future<void> speakappropriation425(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The film company sued them over their appropriation of a cartoon character.");
  }

  Future<void> speakappropriation432(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The team scheduled a meeting to discuss the appropriation of funds for the upcoming project.");
  }

  Future<void> speakappropriation436(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The committee approved an appropriation of £20,000 for the payment of debts.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'Vh7c7PSVubE';
    const double startSecondsend = 1;
    const String videoIdone = 'uBMeiGbfPI4';
    const double startSecondsone = 27;
    const String videoIdtwo = '4JC58UYeaBs';
    const double startSecondstwo = 186;
    const String videoIdthree = 'HcFNpFHcQUc';
    const double startSecondsthree = 38;
    const String videoIdfour = 'KXejDhRGOuI';
    const double startSecondsfour = 15;
    const String videoIdfive = 'dUjlMY_Y1Mg';
    const double startSecondsfive = 762;
    // final String _videoId = '0O0yi8YgYbs';
    // final double _startSeconds = 108;
    // final String _videoId = 'KaryoWAewIw';
    // final double _startSeconds = 1684;
    // final String _videoId = 'z1PviSrWYqw';
    // final double _startSeconds = 76;
    // final String _videoId = '1e-nMVL0-hk';
    // final double _startSeconds = 544;
    // final String _videoId = 's5Bnr1GM3tI';
    // final double _startSeconds = 434;

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
                      word: """appropriation""",
                      // alsoEnglishWord: "also: appropriation",
                      britshText: """IpaUK: /əˌprəʊpriˈeɪʃn/""",
                      americanText: """IpaUS: /əˌprəʊpriˈeɪʃn/""",
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
کوردی: تەرخان‌دان، تایبەت‌دان، بودجە، دراونامە، گرتن، دەست‌بەسەراگرتن، زەوت‌کردن، لێ‌سەندن، (لێ)ھەڵگرتن، دزین، بڕینەبەرخۆ، دانەبەرخۆ
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) بردنی شتی کەسێکی تر بەبێ مۆڵەت"""),
                    SentencesRow(
                      englishText:
                          "The film company sued them over their appropriation of a cartoon character.",
                      kurdishText:
                          "کۆمپانیا فیلمییەکە سکاڵای لەسەر تۆمارکردن بەھۆی دزینی کارەکتەرێکی فیلمە کارتۆنییە.",
                      onPressedBritish: () => speakappropriation425("en-GB"),
                      onPressedAmerican: () => speakappropriation425("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) تەرخانکردنی بڕە پارەیەک بۆ مەبەستێکی دیاریکراو"""),
                    SentencesRow(
                      englishText:
                          "The team scheduled a meeting to discuss the appropriation of funds for the upcoming project.",
                      kurdishText:
                          "تیمەکە کۆبوونەوەیەکیان ڕێکخست بۆ گفتوگۆی تەرخانکردنی پارەکە بۆ پڕۆژەکانی داھاتووی نزیک.",
                      onPressedBritish: () => speakappropriation432("en-GB"),
                      onPressedAmerican: () => speakappropriation432("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) بڕە پارەیەک کە تەرخان‌دەکرێت بۆ مەبەستێکی دیاریکراو، بەتایبەتی لەلایەن حکومەتێک یان کۆمپانیایەک"""),
                    SentencesRow(
                      englishText:
                          "The committee approved an appropriation of £20,000 for the payment of debts.",
                      kurdishText:
                          "لیژنەکە سەرفکردنی بڕی ٢٠,٠٠٠ پاوەندی پەسەندکرد بۆ دانەوەی قەرزەکان.",
                      onPressedBritish: () => speakappropriation436("en-GB"),
                      onPressedAmerican: () => speakappropriation436("en-US"),
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
