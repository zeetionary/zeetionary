import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadvocate extends StatefulWidget {
  const EnglishEntryadvocate({super.key});

  @override
  State<EnglishEntryadvocate> createState() => _EnglishEntryadvocateState();
}

class _EnglishEntryadvocateState extends State<EnglishEntryadvocate> {
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
- Verb: advocate (derived forms: advocates, advocated, advocating)
1. Push for something (= recommend, urge, encourage)
"The travel agent advocated strongly that we not travel on Thanksgiving Day";
 
2. Speak, plead, or argue in favour of (= preach)
"The doctor advocated a smoking ban in the entire house";

- Noun: advocate (derived forms: advocates)
1. A person who pleads for a cause or propounds an idea (= advocator, proponent, exponent)
 
2. (law) a lawyer who pleads cases in court (= counsel, counselor [US], counsellor [Brit, Cdn], counselor-at-law [US, Ireland], pleader)
""",
  );
// 188888880002200

  final String keyword = "advocate";
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
    await flutterTts.speak("""advocate""");
  }

  Future<void> speakadvo3569(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Canada was one of the strongest advocates of sanctions.");
  }

  Future<void> speakadvo2564(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The group does not advocate the use of violence.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'gO_gm74yiUY';
    const double startSecondsend = 411;
    const String videoIdone = 'eRZs8gmFhT4';
    const double startSecondsone = 327;
    const String videoIdtwo = 'C1oxhniG_Fc';
    const double startSecondstwo = 1105;
    const String videoIdthree = 'HaP_OeRuNew';
    const double startSecondsthree = 353;
    const String videoIdfour = 'Jsym-0cv7CU';
    const double startSecondsfour = 689;
    const String videoIdfive = 'fTGiyCrK6yE';
    const double startSecondsfive = 306;

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
                      word: """advocate""",
                      // alsoEnglishWord: "also: advocate",
                      britshText: """IpaUK: /ˈædvəkət/""",
                      americanText: """IpaUS: /ˈædvəkət/""",
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
کوردی: لایەنگر، لاگیر، داژدار، پشتیوان، دەستە، داکۆکی‌کار، پارێزەر، ئاووکات، بەرەڤانی‌کار
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) لایەنگر و داکۆکیکاری شتێک " ""),
                    SentencesRow(
                      englishText:
                          "Canada was one of the strongest advocates of sanctions.",
                      kurdishText:
                          "کەنەدا یەکێک لە سەختترین داکۆکیکارانی سزاکان بوو.",
                      onPressedBritish: () => speakadvo3569("en-GB"),
                      onPressedAmerican: () => speakadvo3569("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) پشتگیریکردنی شتێک بەشێوەیەکی گشتی """),
                    SentencesRow(
                      englishText:
                          "The group does not advocate the use of violence.",
                      kurdishText:
                          "گرووپەکە پشتیوانی بەکارھێنانی توندوتیژی ناکات.",
                      onPressedBritish: () => speakadvo2564("en-GB"),
                      onPressedAmerican: () => speakadvo2564("en-US"),
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
