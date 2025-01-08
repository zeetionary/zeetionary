import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryannouncement extends StatefulWidget {
  const EnglishEntryannouncement({super.key});

  @override
  State<EnglishEntryannouncement> createState() =>
      _EnglishEntryannouncementState();
}

class _EnglishEntryannouncementState extends State<EnglishEntryannouncement> {
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
- Noun: announcement (derived forms: announcements)
1. A formal public statement (= proclamation, annunciation, declaration)
"the government made an announcement about changes in the drug war";
 
2. A public statement containing information about an event that has happened or is going to happen (= promulgation)
"the announcement appeared in the local newspaper";
""",
  );
// 188888880002200

  final String keyword = "announcement";
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
    await flutterTts.speak("""announcement""");
  }

  Future<void> speakannouncement413(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We welcome the recent announcement by the Government.");
  }

  Future<void> speakannouncement416(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("An announcement about her future is expected soon.");
  }

  Future<void> speakannouncement420(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Announcement of the verdict was accompanied by shouts and cheers.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '_87u17d5xEk';
    const double startSecondsend = 1041;
    const String videoIdone = 'L-BN9Db5QhY';
    const double startSecondsone = 22;
    const String videoIdtwo = 'MEwpwwTg6Eo';
    const double startSecondstwo = 1;
    const String videoIdthree = '5iaK9hweMEk';
    const double startSecondsthree = 377;
    const String videoIdfour = 'nSjvIx58YdA';
    const double startSecondsfour = 21;
    const String videoIdfive = '-R85IryO59Q';
    const double startSecondsfive = 1;
    // final String _videoId = 'Ky4Ul_kHsh4';
    // final double _startSeconds = 1;
    // final String _videoId = 'hSUOsR_Si2M';
    // final double _startSeconds = 19;
    // final String _videoId = 'YKtHE50xSmc';
    // final double _startSeconds = 25;
    // final String _videoId = 'jD0tuRPJCds';
    // final double _startSeconds = 1;

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
                      word: """announcement""",
                      // alsoEnglishWord: "also: announcement",
                      britshText: """IpaUK: /əˈnaʊnsmənt/""",
                      americanText: """IpaUS: /əˈnaʊnsmənt/""",
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
کوردی: ڕاگەیاندن، دانەزانین، بڵاوکاری، بڵاوکردنەوە، ئاگاداری، ئاگاھی، بانگەواز، جاڕ، بڵاوکراوە، ھەواڵ
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ڕاگەیاندنێک کە بە فەرمی بە خەڵکی دەوترێت"""),
                    SentencesRow(
                      englishText:
                          "We welcome the recent announcement by the Government.",
                      kurdishText:
                          "پێشوازی لە ڕاگەیاندنە تازەکەی حکومەت دەکەین.",
                      onPressedBritish: () => speakannouncement413("en-GB"),
                      onPressedAmerican: () => speakannouncement413("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "An announcement about her future is expected soon.",
                      kurdishText:
                          "بەم‌زوانە چاوەڕوانی ڕاگەیاندنێک دەکرێت دەربارەی داھاتووی.",
                      onPressedBritish: () => speakannouncement416("en-GB"),
                      onPressedAmerican: () => speakannouncement416("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) بە فەرمی ڕاگەیاندنی شتێک بە خەڵکی """),
                    SentencesRow(
                      englishText:
                          "Announcement of the verdict was accompanied by shouts and cheers.",
                      kurdishText:
                          "ڕاگەیاندنی بڕیارەکە ھاوار و قریوەی بەدواداھات.",
                      onPressedBritish: () => speakannouncement420("en-GB"),
                      onPressedAmerican: () => speakannouncement420("en-US"),
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

// end WORD_WEB


