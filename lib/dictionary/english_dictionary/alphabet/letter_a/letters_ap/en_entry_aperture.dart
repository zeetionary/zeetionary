import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryaperture extends StatefulWidget {
  const EnglishEntryaperture({super.key});

  @override
  State<EnglishEntryaperture> createState() => _EnglishEntryapertureState();
}

class _EnglishEntryapertureState extends State<EnglishEntryaperture> {
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
- Noun: aperture (derived forms: apertures)
1. A variable-sized hole that controls the amount of light admitted to a camera
 
2. A natural opening in something
 
3. A man-made opening; usually small
""",
  );
// 188888880002200

  final String keyword = "aperture";
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
    await flutterTts.speak("""aperture""");
  }

  Future<void> speakaperture201(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The soldier fired the rifle through a narrow aperture in a pile of sandbags.");
  }

  Future<void> speakaperture204(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Binoculars of this aperture are very expensive.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'Y9UulQbxSYs';
    const double startSecondsend = 1;
    const String videoIdone = 'dmn3K-06YTg';
    const double startSecondsone = 1;
    const String videoIdtwo = 's11kqGPxPjA';
    const double startSecondstwo = 1;
    const String videoIdthree = 'zUt9VqxXMQc';
    const double startSecondsthree = 14;
    const String videoIdfour = 'DuXpMvia2q0';
    const double startSecondsfour = 7;
    const String videoIdfive = 'D-GfbRkFtuw';
    const double startSecondsfive = 15;
    // final String _videoId = 'EIEwy8rPik4';
    // final double _startSeconds = 84;
    // final String _videoId = 'pTCgWVjB6UE';
    // final double _startSeconds = 215;
    // final String _videoId = '996wliAI_y4';
    // final double _startSeconds = 4651;
    // final String _videoId = 'SAaESb4wTCM';
    // final double _startSeconds = 65;
    // final String _videoId = 'MZ8giCWDcyE';
    // final double _startSeconds = 37;
    // final String _videoId = 'w8okHnF7yF8';
    // final double _startSeconds = 518;

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
                      word: """aperture""",
                      // alsoEnglishWord: "also: aperture",
                      britshText: """IpaUK: /ˈæpətʃə(r)/""",
                      americanText: """IpaUS: /ˈæpərtʃʊr/""",
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
کوردی: کون، قەڵەش، کەلەبەر، کەلێن، دەلاقە، ڕۆچنە، ڕۆژنە، دەربیجە، دەرچە، کونەڕووناکی
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) کونێکی بچووک لە شتێک"""),
                    SentencesRow(
                      englishText:
                          "The soldier fired the rifle through a narrow aperture in a pile of sandbags.",
                      kurdishText:
                          "سەربازەکە فیشەکێکی تەقاند لە کونێکی بچووکەوە لە کەڵەکەیەک کیسەلمەوە.",
                      onPressedBritish: () => speakaperture201("en-GB"),
                      onPressedAmerican: () => speakaperture201("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ناو) کونێکی بچووک کە ڕێگە بە ڕووناکی دەدات بگات بە لێنزێک، بەتایبەتی لە کامێرادا"""),
                    SentencesRow(
                      englishText:
                          "Binoculars of this aperture are very expensive.",
                      kurdishText: "دووربینەکانی ئەم دەرچەیە زۆر گرانن.",
                      onPressedBritish: () => speakaperture204("en-GB"),
                      onPressedAmerican: () => speakaperture204("en-US"),
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
