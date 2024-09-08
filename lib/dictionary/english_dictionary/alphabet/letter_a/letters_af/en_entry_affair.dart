import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaffair extends StatefulWidget {
  const EnglishEntryaffair({super.key});

  @override
  State<EnglishEntryaffair> createState() => _EnglishEntryaffairState();
}

class _EnglishEntryaffairState extends State<EnglishEntryaffair> {
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
- Noun: affair (derived forms: affairs)
1. A vaguely specified concern (= matter, thing)
"it is none of your affair";

2. A usually secretive or illicit sexual relationship (= affaire, intimacy, liaison, involvement, amour)

3. A formal or official social gathering or ceremony of people (= occasion, social occasion, function, social function)
"the party was quite an affair";
""",
  );
// 188888880002200

  final String keyword = "affair";
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
    await flutterTts.speak("""affair""");
  }

  Future<void> speakaff25941(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He's always interfering in other people's affairs.");
  }

  Future<void> speakaffa35228(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "As a leader, he's been criticized for his inexperience in foreign affairs.");
  }

  Future<void> speakaffa25677(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The newspapers exaggerated the whole affair wildly.");
  }

  Future<void> speakaffa2411(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was having an affair with a co-worker.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'Un1gfVckcVw';
    const double startSecondsend = 514;
    const String videoIdone = 'XZNHRE96q6Y';
    const double startSecondsone = 37;
    const String videoIdtwo = 'aLU1wNntRa0';
    const double startSecondstwo = 399;
    const String videoIdthree = 'ky3gAwxC4KI';
    const double startSecondsthree = 36;
    const String videoIdfour = 'yE_nDzzWrb4';
    const double startSecondsfour = 65;
    const String videoIdfive = '5M4I6Oa4E_I';
    const double startSecondsfive = 8;
    // const String videoId = 'wcnpVuJIJjQ';
    // const double startSeconds = 58;
    // const String videoId = '3X0zokF_hHg';
    // const double startSeconds = 1;
    // const String videoId = 'RYe2tJ8EDFI';
    // const double startSeconds = 29;
    // const String videoId = 'VlhdgHLCtrk';
    // const double startSeconds = 11;

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
                      word: """affair""",
                      // alsoEnglishWord: "also: affair",
                      britshText: """IpaUK: /əˈfeə(r)/""",
                      americanText: """IpaUS: /əˈfeər/""",
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
کوردی: کار، کردە، شت، کاروبار (کۆ)، پرس، دۆز، بابەت، مژار، بوویەر، ڕووداو، کاروباری بازرگانی یان دارایی، پێوەندی سێکسی، دڵداری، حەزلێ‌کردوویی، تێکەڵ‌بوونی ژن و پیاوێ
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) ئەو بابەتانەی کە خەڵکی گرنگیان پێدەدات، یان مژاری سیاسی"
                            ""),
                    SentencesRow(
                      englishText:
                          "He's always interfering in (= trying to influence) other people's affairs.",
                      kurdishText: "ھەمیشە خۆی لە کاری خەڵکی تر ھەڵدەقورتێنێت.",
                      onPressedBritish: () => speakaff25941("en-GB"),
                      onPressedAmerican: () => speakaff25941("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "As a leader, he's been criticized for his inexperience in foreign affairs.",
                      kurdishText:
                          "وەک سەرکردەیەک، ڕەخنەی لێ گیردرا بۆ بێ ئەزموونیی لە کارووباری دەرەوە.",
                      onPressedBritish: () => speakaffa35228("en-GB"),
                      onPressedAmerican: () => speakaffa35228("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) ڕووداوێک کە خەڵکی قسەی لەسەر دەکەن"""),
                    SentencesRow(
                      englishText:
                          "The newspapers exaggerated the whole affair wildly.",
                      kurdishText:
                          "ڕۆژنامەکان تەواوی ڕووداوەکەی زۆر گەورە کرد.",
                      onPressedBritish: () => speakaffa25677("en-GB"),
                      onPressedAmerican: () => speakaffa25677("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) پەیوەندی سێکسی نێوان دوو کەس، زۆرجار لە کاتێکدا یەکێک یان ھەردووکیان لە پەیوەندین لەگەڵ کەسێکی تردا"""),
                    SentencesRow(
                      englishText: "She was having an affair with a co-worker.",
                      kurdishText: "پەیوەندی سێکسی ھەبوو لەگەڵ ھاوپیشەیەکی.",
                      onPressedBritish: () => speakaffa2411("en-GB"),
                      onPressedAmerican: () => speakaffa2411("en-US"),
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
