import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryappealing extends StatefulWidget {
  const EnglishEntryappealing({super.key});

  @override
  State<EnglishEntryappealing> createState() => _EnglishEntryappealingState();
}

class _EnglishEntryappealingState extends State<EnglishEntryappealing> {
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
- Adjective: appealing 
1. Able to attract interest or draw favourable attention
"He added an appealing and memorable figure to popular American mythology"; "an appealing sense of humour"; "the idea of having enough money to retire at fifty is very appealing"
 
2. (of characters in literature or drama) evoking empathic or sympathetic feelings (= sympathetic, likeable, likable)
"the appealing characters in the play";
""",
  );
// 188888880002200

  final String keyword = "appealing";
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
    await flutterTts.speak("""appealing""");
  }

  Future<void> speakappealing1011(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The large salary made their offer even more appealing to him.");
  }

  Future<void> speakappealing1015(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("‘Would you really help?’ he said with an appealing look.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'gZU0IG6Oq8k';
    const double startSecondsend = 480;
    const String videoIdone = 'PywGHJhDHh8';
    const double startSecondsone = 18;
    const String videoIdtwo = 'qWAagS_MANg';
    const double startSecondstwo = 132;
    const String videoIdthree = 'QLq6GEiHqR8';
    const double startSecondsthree = 1013;
    const String videoIdfour = '9K_CZizKdVs';
    const double startSecondsfour = 79;
    const String videoIdfive = 'sV6uuMAnJUE';
    const double startSecondsfive = 135;
    // final String _videoId = 'GYk4ymtQ1WM';
    // final double _startSeconds = 871;
    // final String _videoId = 'm0gZ0TfZq3U';
    // final double _startSeconds = 838;
    // final String _videoId = 'ithpKqYOvd0';
    // final double _startSeconds = 1136;
    // final String _videoId = 'TfaMLqEh1qM';
    // final double _startSeconds = 572;
    // final String _videoId = 'mrkAmmMakMg';
    // final double _startSeconds = 368;
    // final String _videoId = 'a7wC2M0b5u0';
    // final double _startSeconds = 1597;

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
                      word: """appealing""",
                      // alsoEnglishWord: "also: appealing",
                      britshText: """IpaUK: /əˈpiːlɪŋ/""",
                      americanText: """IpaUS: /əˈpiːlɪŋ/""",
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
کوردی: خۆش، سەرنج‌ڕاکێش، بالکێش، داوێن‌گرانە، داوێن‌گیرانە، بە پاڕانەوە
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) سەرسوڕھێنەر یان سەرنجڕاکێش"""),
                    SentencesRow(
                      englishText:
                          "The large salary made their offer even more appealing to him.",
                      kurdishText:
                          "مووچە بەرزەکە وایکرد ئۆفەرەکەیان زیاتر شیرین بێت.",
                      onPressedBritish: () => speakappealing1011("en-GB"),
                      onPressedAmerican: () => speakappealing1011("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) پیشاندانی ئەوەی دەتەوێت خەڵکی یارمەتیت بدەن یان بەزەییت پیشان بدەن"""),
                    SentencesRow(
                      englishText:
                          "‘Would you really help?’ he said with an appealing look.",
                      kurdishText:
                          "بە ڕووخسارێکی داوێن‌گیرانە وتی 'بەڕاست یارمەتیم دەدەیت؟'.",
                      onPressedBritish: () => speakappealing1015("en-GB"),
                      onPressedAmerican: () => speakappealing1015("en-US"),
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
