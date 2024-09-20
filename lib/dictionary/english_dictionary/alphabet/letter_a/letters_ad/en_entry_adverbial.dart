import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadverbial extends StatefulWidget {
  const EnglishEntryadverbial({super.key});

  @override
  State<EnglishEntryadverbial> createState() => _EnglishEntryadverbialState();
}

class _EnglishEntryadverbialState extends State<EnglishEntryadverbial> {
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
- Adjective: adverbial (derived forms: adverbials)
1. Of or relating to or functioning as an adverb
"adverbial syntax"

- Noun: adverbial  ad'vur-bee-ul
1. A word or group of words function as an adverb
""",
  );
// 188888880002200

  final String keyword = "adverbial";
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
    await flutterTts.speak("""adverbial""");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'PYxNxegyNrw';
    const double startSecondsend = 1365;
    const String videoIdone = '_OqvF3SOMVY';
    const double startSecondsone = 155;
    const String videoIdtwo = 'zmxCmcCxCUY';
    const double startSecondstwo = 1;
    const String videoIdthree = 'Cd57pgv6RUA';
    const double startSecondsthree = 87;
    const String videoIdfour = '4zAkoXyhrdI';
    const double startSecondsfour = 669;
    const String videoIdfive = 'rN0hR0BdibA';
    const double startSecondsfive = 1626;
    // const String videoId = 'u3CJs0etXkw';
    // const double startSeconds = 565;
    // const String videoId = 'udpnAtyYboU';
    // const double startSeconds = 80;
    // const String videoId = '7XBYuCz52Sc';
    // const double startSeconds = 231;

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
                      word: """adverbial""",
                      // alsoEnglishWord: "also: adverbial",
                      britshText: """IpaUK: /ædˈvɜːbiəl/""",
                      americanText: """IpaUS: /ædˈvɜːrbiəl/""",
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
              const SingleChildScrollView(
                child: CustomColumnWidget(
                  children: [
                    KurdishVocabulary(text: """
کوردی: ئاوەڵ‌کاری، سەربە ئاوەڵ‌کار، کار ئاوەڵ‌کار دەکا
"""),
                    DefinitionKurdish(
                        text:
                            "١. (ھاوەڵناو) زانیاری زیادکردن لەسەر کات، شوێن، شێواز، ھۆکار، یان ئاست بۆ کردارێک، ھاوەڵناوێک، دەستەواژەیەک، یان ھاوەڵکارێکی تر"
                            ""),
                    DividerDefinition(),
                    DefinitionKurdish(text: """
٢. (ناو) وشەیەک یان دەستەواژەیەک کە زانیاری زیاد دەکات لەسەر کات، شوێن، شێواز، ھۆکار، یان ئاست بۆ کردارێک، ھاوەڵناوێک، دەستەواژەیەک، یان ھاوەڵکارێکی تر"""),
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
