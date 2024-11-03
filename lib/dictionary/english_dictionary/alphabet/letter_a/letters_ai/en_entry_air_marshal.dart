// end air marshal
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryairmarshal extends StatefulWidget {
  const EnglishEntryairmarshal({super.key});

  @override
  State<EnglishEntryairmarshal> createState() => _EnglishEntryairmarshalState();
}

class _EnglishEntryairmarshalState extends State<EnglishEntryairmarshal> {
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
- Noun: air marshal (derived forms: air marshals)
1. A person trained by the government in hijacking and terrorist tactics who (for security reasons) is a passenger aboard an airline flight (= sky marshal)
""",
  );
// 188888880002200

  final String keyword = "air marshal";
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
    await flutterTts.speak("""air marshal""");
  }

  Future<void> speakairmarshal524(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Her father was an air marshal in the Australian Air Force.");
  }

  Future<void> speakairmarshal3528(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "New security measures included increasing the number of air marshals and fortifying cockpit doors.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '_3Z3lmErOTo';
    const double startSecondsend = 33;
    const String videoIdone = 'vOH8eWO4H1Q';
    const double startSecondsone = 1;
    const String videoIdtwo = 'NUbVeDDKa0Y';
    const double startSecondstwo = 631;
    const String videoIdthree = 'ZBYC7QnHrQA';
    const double startSecondsthree = 6080;
    const String videoIdfour = 'hn1B7EDsVkU';
    const double startSecondsfour = 211;
    const String videoIdfive = 'IlaW6MQIbpY';
    const double startSecondsfive = 824;
    // final String _videoId = 'PP_5UuCxqCM';
    // final double _startSeconds = 1082;
    // final String _videoId = 'qNNNUeRJrlk';
    // final double _startSeconds = 102;

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
                      word: """air marshal""",
                      // alsoEnglishWord: "also: air marshal",
                      britshText: """IpaUK: /ˈeə mɑːʃl/""",
                      americanText: """IpaUS: /ˈer mɑːrʃl/""",
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
                    const DefinitionKurdish(text: """
١. (ناو) ئەفسەرێکی باڵا لە ھێزی ئاسمانیی بەریتانیا و ژمارەیەک وڵاتی تر"""),
                    SentencesRow(
                      englishText:
                          "Her father was an air marshal in the Australian Air Force.",
                      kurdishText:
                          "باوکی ئەفسەری باڵای ھێزی ئاسمانیی ئوسترالیا بوو.",
                      onPressedBritish: () => speakairmarshal524("en-GB"),
                      onPressedAmerican: () => speakairmarshal524("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) کەسێکی ڕاھێنراو کە وەک سەرنشینێکی ئاسایی لە فڕۆکەیەکە بۆ حاڵەتی نەخوازراو"""),
                    SentencesRow(
                      englishText:
                          "New security measures included increasing the number of air marshals and fortifying cockpit doors.",
                      kurdishText:
                          "ڕێکارە تازەکانی ئەمنییەت زیادکردنی ژمارەی ئەفسەرە نھێنییەکان و توندکردنی دەرگای ژووری فڕۆکەوانەکان لەخۆدەگرێت.",
                      onPressedBritish: () => speakairmarshal3528("en-GB"),
                      onPressedAmerican: () => speakairmarshal3528("en-US"),
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
