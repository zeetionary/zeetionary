import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryannounce extends StatefulWidget {
  const EnglishEntryannounce({super.key});

  @override
  State<EnglishEntryannounce> createState() => _EnglishEntryannounceState();
}

class _EnglishEntryannounceState extends State<EnglishEntryannounce> {
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
- Verb: announce (derived forms: announcing, announces, announced)
1. Make known; make an announcement (= denote)
"She announced her feelings clearly";
 
2. Announce publicly or officially (= declare)
"The President announced war";

3. Give the names of
"He announced the winners of the spelling bee"
 
4. Foreshadow or presage (= annunciate, harbinger, foretell, herald)
""",
  );
// 188888880002200

  final String keyword = "announce";
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
    await flutterTts.speak("""announce""");
  }

  Future<void> speakannounce350(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "We are pleased to announce that all five candidates were successful.");
  }

  Future<void> speakannounce352(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The government yesterday announced to the media plans to create a million new jobs.");
  }

  Future<void> speakannounce356(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Has our flight been announced yet?");
  }

  Future<void> speakannounce359(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She announced that she'd given up drinking.");
  }

  Future<void> speakannounce403(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He announced the guests as they arrived.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'MQYFIUdv5IY';
    const double startSecondsend = 23;
    const String videoIdone = 'uuyxj_PkicM';
    const double startSecondsone = 148;
    const String videoIdtwo = 'dwuc9VDOMMI';
    const double startSecondstwo = 122;
    const String videoIdthree = 'pQZ_ITSPwx8';
    const double startSecondsthree = 13;
    const String videoIdfour = 'A_Qvo4wjyNQ';
    const double startSecondsfour = 84;
    const String videoIdfive = 'Lz2N-UqbmGQ';
    const double startSecondsfive = 39;
    // final String _videoId = 'rRymSi8SmqA';
    // final double _startSeconds = 50;
    // final String _videoId = 'jKv_N0IDS2A';
    // final double _startSeconds = 11;
    // final String _videoId = 'raSeaAeryWE';
    // final double _startSeconds = 80;
    // final String _videoId = 'b1reY72ktEc';
    // final double _startSeconds = 986;
    // final String _videoId = 'ngTcyNtDjE8';
    // final double _startSeconds = 620;

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
                      word: """announce""",
                      // alsoEnglishWord: "also: announce",
                      britshText: """IpaUK: /əˈnaʊns/""",
                      americanText: """IpaUS: /əˈnaʊns/""",
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
١. (کردار) بە فەرمی ڕاگەیاندنی شتێک"""),
                    SentencesRow(
                      englishText:
                          "We are pleased to announce that all five candidates were successful.",
                      kurdishText:
                          "خۆشحاڵین بە ڕاگەیاندنی ئەوەی ھەر پێنج کاندیدەکە سەرکەوتووبوون.",
                      onPressedBritish: () => speakannounce350("en-GB"),
                      onPressedAmerican: () => speakannounce350("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "The government yesterday announced to the media plans to create a million new jobs.",
                      kurdishText:
                          "دوێنێ حکومەت پلانی ڕەخساندنی یەک ملیۆن ھەلی کاری بە میدیا ڕاگەیاند.",
                      onPressedBritish: () => speakannounce352("en-GB"),
                      onPressedAmerican: () => speakannounce352("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) پێدانی زانیاری بە خەڵکی، زۆرجار لە ڕێگەی بڵیندگۆوە"""),
                    SentencesRow(
                      englishText: "Has our flight been announced yet?",
                      kurdishText: "گەشتەکەمان ڕاگەیەندراوە؟",
                      onPressedBritish: () => speakannounce356("en-GB"),
                      onPressedAmerican: () => speakannounce356("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) وتنی شتێک بە دەنگی بەرز"""),
                    SentencesRow(
                      englishText:
                          "She announced that she'd given up drinking.",
                      kurdishText: "ڕایگەیاند وازی لە خواردنەوە ھێنا.",
                      onPressedBritish: () => speakannounce359("en-GB"),
                      onPressedAmerican: () => speakannounce359("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (کردار) ڕاگەیاندنی ناوی خۆت یان کەسێک کە دەگاتە شوێنێک"""),
                    SentencesRow(
                      englishText:
                          "He announced the guests as they arrived. (= called out their names, for example at a formal party)",
                      kurdishText: "ھاتنی میوانەکانی ڕاگەیاند کە گەشتن.",
                      onPressedBritish: () => speakannounce403("en-GB"),
                      onPressedAmerican: () => speakannounce403("en-US"),
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

