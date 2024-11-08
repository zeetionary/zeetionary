import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryamend extends StatefulWidget {
  const EnglishEntryamend({super.key});

  @override
  State<EnglishEntryamend> createState() => _EnglishEntryamendState();
}

class _EnglishEntryamendState extends State<EnglishEntryamend> {
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
- Verb: amend (derived forms: amended, amending, amends)
1. Make amendments to
"amend the document"
 
2. To make better (= better, improve, ameliorate, meliorate, mend)
"The editor amended the manuscript with his changes";
 
3. Set straight or right (= rectify, remediate, remedy, repair)
"amend the inequities in salaries";
""",
  );
// 188888880002200

  final String keyword = "amend";
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
    await flutterTts.speak("""amend""");
  }

  Future<void> speakamend466(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Parliament will vote to amend the constitution.");
  }

  Future<void> speakamend49996(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "MPs were urged to amend the law to prevent another oil tanker disaster.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '-E4TUQ4THIE';
    const double startSecondsend = 2538;
    const String videoIdone = 'ZFOwUrHA3q8';
    const double startSecondsone = 57;
    const String videoIdtwo = 'x8LysT1ukjY';
    const double startSecondstwo = 2659;
    const String videoIdthree = 'zQj3vzTSnlY';
    const double startSecondsthree = 108;
    const String videoIdfour = 'ci1v0w8qNxw';
    const double startSecondsfour = 63;
    const String videoIdfive = '_mqP7kd1H_Y';
    const double startSecondsfive = 326;
    // final String _videoId = 'uCM0Tvp6Dko';
    // final double _startSeconds = 624;
    // final String _videoId = '3Kd2x1mXV_k';
    // final double _startSeconds = 318;
    // final String _videoId = 'AZnTIP9FRdI';
    // final double _startSeconds = 151;
    // final String _videoId = 'LtWXwj_ZXAI';
    // final double _startSeconds = 83;
    // final String _videoId = 'eJ-WJssJgdg';
    // final double _startSeconds = 4278;
    // final String _videoId = 'v-nblE8ps2M';
    // final double _startSeconds = 690;

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
                      word: """amend""",
                      // alsoEnglishWord: "also: amend",
                      britshText: """IpaUK: /əˈmend/""",
                      americanText: """IpaUS: /əˈmend/""",
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
١. (کردار) دەستکاریکردنی یاسایەک یان لێدوانێک بۆ چاککردنی ھەڵەیەک یان باشترکردنی"""),
                    SentencesRow(
                      englishText:
                          "Parliament will vote to amend the constitution.",
                      kurdishText:
                          "پەرلەمان دەنگ لەسەر ھەموارکردنی دەستوور دەدات.",
                      onPressedBritish: () => speakamend466("en-GB"),
                      onPressedAmerican: () => speakamend466("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "MPs were urged to amend the law to prevent another oil tanker disaster.",
                      kurdishText:
                          "پەرلەمانتاران ھاندران گۆڕانکاری لە یاساکە بکەن بۆ ڕێگری لە کارەساتێکی دیکەی تەنکەری نەوتی.",
                      onPressedBritish: () => speakamend49996("en-GB"),
                      onPressedAmerican: () => speakamend49996("en-US"),
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

