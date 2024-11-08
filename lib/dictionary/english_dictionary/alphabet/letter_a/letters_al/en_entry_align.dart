import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalign extends StatefulWidget {
  const EnglishEntryalign({super.key});

  @override
  State<EnglishEntryalign> createState() => _EnglishEntryalignState();
}

class _EnglishEntryalignState extends State<EnglishEntryalign> {
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
- Verb: align (derived forms: aligned, aligning, aligns)
1. Place in a line or arrange so as to be parallel or straight (= aline [non-standard], line up, adjust)
"align the car with the curb";
 
2. Be or come into adjustment with
 
3. Align oneself with a group or a way of thinking (= array)
 
4. Bring (components or parts) into proper or desirable coordination (= ordinate, coordinate)
"align the wheels of my car";
""",
  );
// 188888880002200

  final String keyword = "align";
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
    await flutterTts.speak("""align""");
  }

  Future<void> speakalign43659(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The top and bottom line of each column on the page should align.");
  }

  Future<void> speakalign35255(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("This pillar is roughly aligned with the others.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'Q1oJy3pWTyA';
    const double startSecondsend = 58;
    const String videoIdone = 'z822U6adC2I';
    const double startSecondsone = 9;
    const String videoIdtwo = 'IxnK1XE6ZAA';
    const double startSecondstwo = 1;
    const String videoIdthree = 'ecypANL48j0';
    const double startSecondsthree = 1;
    const String videoIdfour = '4EawDIAZTEk';
    const double startSecondsfour = 15;
    const String videoIdfive = 'zKvyZ7MCks8';
    const double startSecondsfive = 1;
    // final String _videoId = 'iJueYgDbeyQ';
    // final double _startSeconds = 5;
    // final String _videoId = 'eZQyzJ4dITk';
    // final double _startSeconds = 1;
    // final String _videoId = 'oLYbcsTa73I';
    // final double _startSeconds = 27;
    // final String _videoId = '2n9IySf2wr0';
    // final double _startSeconds = 105;
    // final String _videoId = '6yWs9XshwOE';
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
                      word: """align""",
                      // alsoEnglishWord: "also: align",
                      britshText: """IpaUK: /əˈlaɪn/""",
                      americanText: """IpaUS: /əˈlaɪn/""",
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
کوردی: ھاوڕێکی، ھاوھێڵی، ھاوتەختی، لاڕێککردن، لاگرتن (ڕێکخستنی دەق، وێنە، ھتد، بۆ لای ڕاست، ناوەڕاست یان چەپ.)
"""),
                    const DefinitionKurdish(
                        text: "١. (کردار) ھاوتەریب یان ھاوئاراستەکردن" ""),
                    SentencesRow(
                      englishText:
                          "The top and bottom line of each column on the page should align.",
                      kurdishText:
                          "ھێڵی سەرەوە و خوارەوەی ستوونی سەر پەڕەکە دەبێت لەسەر یەک ھێڵ بن.",
                      onPressedBritish: () => speakalign43659("en-GB"),
                      onPressedAmerican: () => speakalign43659("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "This pillar is roughly aligned with the others.",
                      kurdishText: "پایەکە تاڕادەیەک تەریبە لەگەڵ ئەوانی تر.",
                      onPressedBritish: () => speakalign35255("en-GB"),
                      onPressedAmerican: () => speakalign35255("en-US"),
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


