import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryapart extends StatefulWidget {
  const EnglishEntryapart({super.key});

  @override
  State<EnglishEntryapart> createState() => _EnglishEntryapartState();
}

class _EnglishEntryapartState extends State<EnglishEntryapart> {
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
- Adverb: apart  
1. Separated or at a distance in place or position or time
"These towns are many miles apart"; "stood with his legs apart"; "born two years apart"
 
2. Not taken into account or excluded from consideration (= aside)
"these problems apart, the country is doing well";
 
3. Away from another or others
"they grew apart over the years"; "kept apart from the group out of shyness"; "decided to live apart"
 
4. Placed or kept separate and distinct as for a purpose (= aside)
"had a feeling of being set apart"; "quality sets it apart";
 
5. One from the other
"people can't tell the twins apart"
 
6. Into parts or pieces (= asunder)
"he took his father's watch apart"; "split apart";

- Adjective: apart 
1. Remote and separate physically or socially (= isolated, obscure, out on a limb)
"existed over the centuries as a world apart"; "preserved because they inhabited a place apart";
 
2. Having characteristics not shared by others
"scientists felt they were a group apart"
""",
  );
// 188888880002200

  final String keyword = "apart";
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
    await flutterTts.speak("""apart""");
  }

  Future<void> speakapart1105(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The two houses stood 500 metres apart.");
  }

  Future<void> speakapart1106(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Their birthdays are only three days apart.");
  }

  Future<void> speakapart1108(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We're living apart now.");
  }

  Future<void> speakapart1110(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Within minutes the ship began to break apart.");
  }

  Future<void> speakapart1112(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Victoria apart, not one of them seems suitable for the job.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'XKuPfZpzEHg';
    const double startSecondsend = 10;
    const String videoIdone = 'o8jQbaJ9u50';
    const double startSecondsone = 251;
    const String videoIdtwo = 'kBFR_7s7cAM';
    const double startSecondstwo = 565;
    const String videoIdthree = 'i-nxUdNaLN0';
    const double startSecondsthree = 156;
    const String videoIdfour = 'Ama904nn-rA';
    const double startSecondsfour = 9;
    const String videoIdfive = 'EK8y_a3ZXEY';
    const double startSecondsfive = 1;
    // final String _videoId = 'Z91g1gHt9gU';
    // final double _startSeconds = 11;
    // final String _videoId = 'qeWvgZLz9yU';
    // final double _startSeconds = 6;
    // final String _videoId = '609KvI-8jzw';
    // final double _startSeconds = 524;
    // final String _videoId = 'w9RyGeCwg0Y';
    // final double _startSeconds = 46;
    // final String _videoId = 'HO1FplJGsgY';
    // final double _startSeconds = 246;
    // final String _videoId = 'f59cdoN7oAA';
    // final double _startSeconds = 36;

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
                      word: """apart""",
                      // alsoEnglishWord: "also: apart",
                      britshText: """IpaUK: /əˈpɑːt/""",
                      americanText: """IpaUS: /əˈpɑːrt/""",
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
کوردی: دوور، جیا، لێک‌جیا، لەیەک دوور، بە مەودایێکەوە، لەپاڵ، لەکن، لەلای، لای، تەنیا، بەتەنیایی، سەرەڕای، زێدەباری
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵکار) جیایی لە یەک بەھۆی دووری یان کات"""),
                    SentencesRow(
                      englishText: "The two houses stood 500 metres apart.",
                      kurdishText: "دوو خانووەکە ٥٠٠ مەتر لە یەکدی دووربوون.",
                      onPressedBritish: () => speakapart1105("en-GB"),
                      onPressedAmerican: () => speakapart1105("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText: "Their birthdays are only three days apart.",
                      kurdishText: "ڕۆژی لەدایکبوونیان تەنھا سێ ڕۆژی جیاوازە.",
                      onPressedBritish: () => speakapart1106("en-GB"),
                      onPressedAmerican: () => speakapart1106("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵکار) بەجیا، نەک پێکەوە"""),
                    SentencesRow(
                      englishText: "We're living apart now.",
                      kurdishText: "ئێستا بە جیا دەژین.",
                      onPressedBritish: () => speakapart1108("en-GB"),
                      onPressedAmerican: () => speakapart1108("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵکار) پارچە پارچە"""),
                    SentencesRow(
                      englishText:
                          "Within minutes the ship began to break apart.",
                      kurdishText:
                          "لەماوەی چەند خولەکێکدا کەشتییەکە دەستی بە پارچە پارچە بوون کرد.",
                      onPressedBritish: () => speakapart1110("en-GB"),
                      onPressedAmerican: () => speakapart1110("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ھاوەڵکار) بەکاردێت بۆ وتنە ئەوەی کەسێک بەشێک نییە لەوەی دەیڵێیت"""),
                    SentencesRow(
                      englishText:
                          "Victoria apart, not one of them seems suitable for the job.",
                      kurdishText:
                          "جگە لە ڤیکتۆریا، کەسی تریان گونجاو نین بۆ کارەکە.",
                      onPressedBritish: () => speakapart1112("en-GB"),
                      onPressedAmerican: () => speakapart1112("en-US"),
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
