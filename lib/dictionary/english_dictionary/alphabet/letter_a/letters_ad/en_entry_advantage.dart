import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadvantage extends StatefulWidget {
  const EnglishEntryadvantage({super.key});

  @override
  State<EnglishEntryadvantage> createState() => _EnglishEntryadvantageState();
}

class _EnglishEntryadvantageState extends State<EnglishEntryadvantage> {
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
- Noun: advantage (derived forms: advantages)
1. The quality of having a superior or more favourable position (= vantage)
"the experience gave him the advantage over me";
 
2. (tennis) first point scored after deuce
 
3. Benefit resulting from some event or action (= reward)
"it turned out to my advantage";

- Verb: advantage (derived forms: advantaging, advantages, advantaged)
1. Give preferential help or benefit to
"This system advantages the rich"
""",
  );
// 188888880002200

  final String keyword = "advantage";
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
    await flutterTts.speak("""advantage""");
  }

  Future<void> speakadvan35688(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The advantage of booking tickets in advance is that you get better seats.");
  }

  Future<void> speakadvan3674(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("For a goalkeeper, it's a great advantage to have big hands.");
  }

  Future<void> speakadvan6724(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Is there any advantage in getting there early?");
  }

  Future<void> speakadvant9436(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Affluent parents seek to advantage their children by sending them to more exclusive schools.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'mq1xzQlUxFc';
    const double startSecondsend = 4;
    const String videoIdone = 'EkuwWZs-X4g';
    const double startSecondsone = 409;
    const String videoIdtwo = 'hrkbOjBtBsw';
    const double startSecondstwo = 93;
    const String videoIdthree = 'X6wzFliHRbo';
    const double startSecondsthree = 107;
    const String videoIdfour = 'K1_qzg-2E1A';
    const double startSecondsfour = 799;
    const String videoIdfive = 'J41UAjOhTJE';
    const double startSecondsfive = 538;
    // const String videoId = '05gCLHlpzTU';
    // const double startSeconds = 200;

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
                      word: """advantage""",
                      // alsoEnglishWord: "also: advantage",
                      britshText: """IpaUK: /ədˈvɑːntɪdʒ/""",
                      americanText: """IpaUS: /ədˈvæntɪdʒ/""",
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
کوردی: باشی، ئیمتیاز، سوود، خێر، بەھرە، قازانج، کەڵک، بەرژەوەندی، مەسڵەحەت، پێشترایەتی، باشتربوون، لەپێش‌بوون، (لە یاری تێنیس‌دا) خاڵی یەکەم (پاش بەرامبەربوون)، خێروقازانج، خێروبەھرە، خێروبێر
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) شتێک کە دەتخاتە بارودۆخێکی باشتر وەک لە کەسانی تر"""),
                    SentencesRow(
                      englishText:
                          "The advantage of booking tickets in advance is that you get better seats.",
                      kurdishText:
                          "سوودی کڕینی بلیت لە پێشدا ئەوەیە کە جێگەی باشتر وەردەگریت.",
                      onPressedBritish: () => speakadvan35688("en-GB"),
                      onPressedAmerican: () => speakadvan35688("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "For a goalkeeper, it's a great advantage to have big hands.",
                      kurdishText:
                          "بۆ گۆڵپارێزێک، ھەبوونی دەستی گەورە سوودێکی گەورەی ھەیە.",
                      onPressedBritish: () => speakadvan3674("en-GB"),
                      onPressedAmerican: () => speakadvan3674("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) خاسیەتێک کە وادەکات شتێک باشتر بێت یان سوودی ھەبێت"""),
                    SentencesRow(
                      englishText:
                          "Is there any advantage in getting there early?",
                      kurdishText: "ھیچ بەرژەوەندییەک ھەیە لە زوو گەشتن بەوێ.",
                      onPressedBritish: () => speakadvan6724("en-GB"),
                      onPressedAmerican: () => speakadvan6724("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) بەرژەوەندی پێدان بە کەسێک"""),
                    SentencesRow(
                      englishText:
                          "Affluent parents seek to advantage their children by sending them to more prestigious universities",
                      kurdishText:
                          "دایک و باوکانی دەوڵەمەند ھەوڵ دەدەن سوود بە منداڵانیان بگەیەنن بە نادنیان بۆ زانکۆ ناودارەکان.",
                      onPressedBritish: () => speakadvant9436("en-GB"),
                      onPressedAmerican: () => speakadvant9436("en-US"),
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
