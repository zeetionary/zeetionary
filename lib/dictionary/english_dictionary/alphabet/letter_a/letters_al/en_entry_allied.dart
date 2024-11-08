import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryallied extends StatefulWidget {
  const EnglishEntryallied({super.key});

  @override
  State<EnglishEntryallied> createState() => _EnglishEntryalliedState();
}

class _EnglishEntryalliedState extends State<EnglishEntryallied> {
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
- Adjective: allied 
1. Related by common characteristics or ancestry
"allied species"; "allied studies"
 
2. United in a confederacy or league (= confederate, confederative)
 
3. Joined by treaty or agreement

- Adjective: Allied
1. Of or relating to or denoting the Allies in World War I
"an allied offensive"; "the Allied powers"
 
2. Of or relating to or denoting the Allies in World War II
"an Allied victory"; "the Allied armies"
""",
  );
// 188888880002200

  final String keyword = "allied";
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
    await flutterTts.speak("""allied""");
  }

  Future<void> speakallied425(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Many civilians died as a result of allied bombing.");
  }

  Future<void> speakallied459(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Italy joined the war on the Allied side in 1915.");
  }

  Future<void> speakallied4399(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Computer science and allied subjects are not taught here.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'XUKfR3aHPic';
    const double startSecondsend = 5;
    const String videoIdone = 'zf1rvY1xf58';
    const double startSecondsone = 53;
    const String videoIdtwo = 'c31gaNHKhbY';
    const double startSecondstwo = 47;
    const String videoIdthree = '_69AThNKKM0';
    const double startSecondsthree = 41;
    const String videoIdfour = '9lpmSyUrzk0';
    const double startSecondsfour = 30;
    const String videoIdfive = 'sPH5cOHD4Z0';
    const double startSecondsfive = 1;
    // final String _videoId = 'fYzbodD6uSE';
    // final double _startSeconds = 6;
    // final String _videoId = 'Va61tHBFBrg';
    // final double _startSeconds = 8;
    // final String _videoId = 'IgF3OX8nT0w';
    // final double _startSeconds = 634;
    // final String _videoId = 'zqllxbPWKNI';
    // final double _startSeconds = 1453;

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
                      word: """allied""",
                      // alsoEnglishWord: "also: allied",
                      britshText: """IpaUK: /ˈælaɪd/""",
                      americanText: """IpaUS: /ˈælaɪd/""",
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
کوردی: یەک‌گرتوو، ھاوپەیمان، یەک‌کەوتوو، ڕێک‌کەوتوو، ھەڤگرتی، پێکبەستراو، پێکبەند، پێوەندیدار، سەربە ھاوپەیمانان لە جەنگی دووەمی جیھانی
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) پەیوەندیدار بە چەند وڵاتێکی ھاوپەیمان لە جەنگدا"""),
                    SentencesRow(
                      englishText:
                          "Many civilians died as a result of allied bombing.",
                      kurdishText:
                          "زۆر ھاوڵاتی مەدەنی گیانیان لەدەستدا لە ئەنجامی بۆردوومانی ھاوپەیمانان.",
                      onPressedBritish: () => speakallied425("en-GB"),
                      onPressedAmerican: () => speakallied425("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) پەیوەندیدار بە وڵاتانی ھاوپەیمان لە جەنگی یەکەم و دووەمی جیھانی"""),
                    SentencesRow(
                      englishText:
                          "Italy joined the war on the Allied side in 1915.",
                      kurdishText:
                          "ئیتالیا لە ساڵی ١٩١٥ لە بەرەی ھاوپەیمانان پەیوەندی بە جەنگەکەوە کرد.",
                      onPressedBritish: () => speakallied459("en-GB"),
                      onPressedAmerican: () => speakallied459("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ناو) پەیوەندیدار بە یەکدی"""),
                    SentencesRow(
                      englishText:
                          "Computer science and allied subjects are not taught here.",
                      kurdishText:
                          "زانستی کۆمپیوتەر و بابەتە پەیوەندیدارەکانی لێرە ناوترێنەوە.",
                      onPressedBritish: () => speakallied4399("en-GB"),
                      onPressedAmerican: () => speakallied4399("en-US"),
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

