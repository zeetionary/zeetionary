import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamongst extends StatefulWidget {
  const EnglishEntryamongst({super.key});

  @override
  State<EnglishEntryamongst> createState() => _EnglishEntryamongstState();
}

class _EnglishEntryamongstState extends State<EnglishEntryamongst> {
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
- Preposition: amongst
1. In the middle of (= amid, amidst, amongstst)
"I found it amongst the trees";
 
2. In division, with shares to each (= amongstst, between)
"the top leadership divides the spoils amongst themselves";
 
3. Internal to, involving members of (a group of people) (= amongstst, between, within)
"they argued amongst themselves";
 
4. Being a member (or members) of, in the class of (= amongstst)
"amongst other things, she said...";
""",
  );
// 188888880002200

  final String keyword = "amongst";
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
    await flutterTts.speak("""amongst""");
  }

  Future<void> speakamongst7655(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I saw a few familiar faces amongst the crowd.");
  }

  Future<void> speakamongst4666(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("A British woman was amongst the survivors.");
  }

  Future<void> speakamongst4111(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He divided the country amongst his sons.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'hFZFjoX2cGg';
    const double startSecondsend = 1152;
    const String videoIdone = 'tXjHb5QmDV0';
    const double startSecondsone = 212;
    const String videoIdtwo = '-L7o6HtX8Vg';
    const double startSecondstwo = 1301;
    const String videoIdthree = 'lGSOWwUvJiU';
    const double startSecondsthree = 578;
    const String videoIdfour = 'yRmOWcWdQAo';
    const double startSecondsfour = 616;
    const String videoIdfive = 'W8uXhQnWgj4';
    const double startSecondsfive = 904;
    // final String _videoId = '58XEfDtU0Z4';
    // final double _startSeconds = 147;
    // final String _videoId = 'YZoZr_m9WLU';
    // final double _startSeconds = 28;
    // final String _videoId = 'FSHITL5oedk';
    // final double _startSeconds = 134;
    // final String _videoId = 'unk6n3_QdlM';
    // final double _startSeconds = 128;
    // final String _videoId = 'HAnw168huqA';
    // final double _startSeconds = 1949;
    // final String _videoId = 'qg2nGY1aqlg';
    // final double _startSeconds = 75;

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
                      word: """amongst""",
                      // alsoEnglishWord: "also: amongst",
                      britshText: """IpaUK: /əˈmʌŋst/""",
                      americanText: """IpaUS: /əˈmʌŋst/""",
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
کوردی: (لە) نێوان، لەنێو، لەنێوەڕاست، ل ئۆرتا، لە ڕێزەی، یەکێ لە
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ئامراز) دەوردراو بە کەسێک/شتێک، لە ناوەڕاستی کەسێک/شتێک"
                            ""),
                    SentencesRow(
                      englishText:
                          "I saw a few familiar faces amongst the crowd.",
                      kurdishText:
                          "چەند ڕووخسارێکی ناسیاوم بینی لەناو جەماوەرەکەدا.",
                      onPressedBritish: () => speakamongst7655("en-GB"),
                      onPressedAmerican: () => speakamongst7655("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ئامراز) بوون بە بەشێک لە گرووپێک"""),
                    SentencesRow(
                      englishText: "A British woman was amongst the survivors.",
                      kurdishText: "ژنێکی بەریتانی لەناو ڕزگاربووان بوو.",
                      onPressedBritish: () => speakamongst4666("en-GB"),
                      onPressedAmerican: () => speakamongst4666("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ئامراز) دابەشکردن لە نێوان سێ کەس یان زیاتر"""),
                    SentencesRow(
                      englishText: "He divided the country amongst his sons.",
                      kurdishText: "وڵاتەکەی لە نێوان کوڕەکانی دابەش‌کرد.",
                      onPressedBritish: () => speakamongst4111("en-GB"),
                      onPressedAmerican: () => speakamongst4111("en-US"),
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

