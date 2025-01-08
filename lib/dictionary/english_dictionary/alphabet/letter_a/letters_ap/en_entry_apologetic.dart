import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapologetic extends StatefulWidget {
  const EnglishEntryapologetic({super.key});

  @override
  State<EnglishEntryapologetic> createState() => _EnglishEntryapologeticState();
}

class _EnglishEntryapologeticState extends State<EnglishEntryapologetic> {
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
- Adjective: apologetic 
1. Offering or expressing apology (= excusatory)
"an apologetic manner";
""",
  );
// 188888880002200

  final String keyword = "apologetic";
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
    await flutterTts.speak("""apologetic""");
  }

  Future<void> speakapologetic255(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They were very apologetic about the trouble they'd caused.");
  }

  Future<void> speakapologetic256(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was profusely apologetic about the mistake.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'L6QJS8djygk';
    const double startSecondsend = 22;
    const String videoIdone = 'S4qvPouh1gE';
    const double startSecondsone = 2978;
    const String videoIdtwo = 'gruxiih9J_k';
    const double startSecondstwo = 218;
    const String videoIdthree = 'doCEDlMy0m8';
    const double startSecondsthree = 726;
    const String videoIdfour = 'tmLUEQUd6pQ';
    const double startSecondsfour = 261;
    const String videoIdfive = 'RdNSKxFAk-U';
    const double startSecondsfive = 719;
    // final String _videoId = 'SIoSBhVyxOI';
    // final double _startSeconds = 164;
    // final String _videoId = '8mUBV0CB1FY';
    // final double _startSeconds = 195;
    // final String _videoId = 'ZKAWtNW-Xfk';
    // final double _startSeconds = 785;
    // final String _videoId = 'dJZjgO67mFk';
    // final double _startSeconds = 255;
    // final String _videoId = 'iQqwglUCPHo';
    // final double _startSeconds = 590;

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
                      word: """apologetic""",
                      // alsoEnglishWord: "also: apologetic",
                      britshText: """IpaUK: /əˌpɒləˈdʒetɪk/""",
                      americanText: """IpaUS: /əˌpɑːləˈdʒetɪk/""",
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
کوردی: لێبوردن‌خوازانە، وادیارە داوای لێبوردن بکا، پەشیمان، بەداخ، ناڕەحەت
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) ھەست‌کردن یان پیشاندانی پەشیمانی یان داخ بۆ شتێک کە کردووتە یان دەیکەیت"""),
                    SentencesRow(
                      englishText:
                          "They were very apologetic about the trouble they'd caused.",
                      kurdishText: "زۆر بەداخن بۆ ئەو کێشەیەی ھەڵیان‌گیرساند.",
                      onPressedBritish: () => speakapologetic255("en-GB"),
                      onPressedAmerican: () => speakapologetic255("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "He was profusely apologetic about the mistake.",
                      kurdishText: "زۆر بەداخ بوو بۆ ھەڵەکە.",
                      onPressedBritish: () => speakapologetic256("en-GB"),
                      onPressedAmerican: () => speakapologetic256("en-US"),
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
