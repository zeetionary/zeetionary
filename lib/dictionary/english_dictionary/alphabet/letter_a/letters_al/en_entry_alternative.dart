import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryalternative extends StatefulWidget {
  const EnglishEntryalternative({super.key});

  @override
  State<EnglishEntryalternative> createState() =>
      _EnglishEntryalternativeState();
}

class _EnglishEntryalternativeState extends State<EnglishEntryalternative> {
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
Noun: alternative (derived forms: alternatives)
1. One of a number of things from which only one can be chosen (= option, choice)
"there is no other alternative";

- Adjective: alternative 
1. Serving or used in place of another (= alternate, substitute)
"an alternative plan";
 
2. Necessitating a choice between mutually exclusive possibilities
"alternative possibilities were neutrality or war"
 
3. Pertaining to unconventional choices
"an alternative life style"
""",
  );
// 188888880002200

  final String keyword = "alternative";
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
    await flutterTts.speak("""alternative""");
  }

  Future<void> speakalternative4599(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The car is too expensive so we're trying to find a cheaper alternative.");
  }

  Future<void> speakalternative14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We had no alternative but to fire Gibson.");
  }

  Future<void> speakalternative845(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The road was closed so we had to find an alternative route.");
  }

  Future<void> speakalternative659(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "In Los Angeles many companies encourage their employees to use alternative means of transportation, rather than the car.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'o_zZY7lgfzo';
    const double startSecondsend = 31;
    const String videoIdone = 'S72O0P1pSvk';
    const double startSecondsone = 25;
    const String videoIdtwo = 'RhVcQ-uup-0';
    const double startSecondstwo = 30;
    const String videoIdthree = 'qUif78u0ot0';
    const double startSecondsthree = 17;
    const String videoIdfour = 'wndGXOoqRLs';
    const double startSecondsfour = 148;
    const String videoIdfive = '5g_nqXb8r0A';
    const double startSecondsfive = 63;
    // final String _videoId = 'E7RT4wNhiYQ';
    // final double _startSeconds = 1318;
    // final String _videoId = 'GC-mYDq_bTY';
    // final double _startSeconds = 220;
    // final String _videoId = 'Y3azpFTrJlc';
    // final double _startSeconds = 13;
    // final String _videoId = 'ftyWe6DVvO4';
    // final double _startSeconds = 280;

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
                      word: """alternative""",
                      // alsoEnglishWord: "also: alternative",
                      britshText: """IpaUK: /ɔːlˈtɜːnətɪv/""",
                      americanText: """IpaUS: /ɔːlˈtɜːrnətɪv/""",
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
کوردی: ئالتێرناتیڤ، جێگرەوە، لەباتی، بریتی، جێگر، دی، ئیتر، ئیدی، ڕێگا، چارە، جیاواز، ھەڵبژاردن، سەرپشکی، ئیمکان، چار، ڕێگا یان چارە (یەکی‌تر)
"""),
                    const DefinitionKurdish(
                        text:
                            "١. (ناو) شتێک کە دەیکەیت یان ھەڵیدەبژێریت کاتێک زیاتر لە یەک ھەڵبژاردەت ھەیە"
                            ""),
                    SentencesRow(
                      englishText:
                          "The car is too expensive so we're trying to find a cheaper alternative.",
                      kurdishText:
                          "ئۆتۆمبێلەکە زۆر گرانە بۆیە ھەوڵ دەدەین جێگرەوەیەکی ھەرزانتر بدۆزینەوە.",
                      onPressedBritish: () => speakalternative4599("en-GB"),
                      onPressedAmerican: () => speakalternative4599("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "We had no alternative but to fire Gibson.",
                      kurdishText:
                          "ھیچ ھەڵبژاردەیەکمان نەبوو جگە لە دەرکردنی گیبسن لە کارەکەی.",
                      onPressedBritish: () => speakalternative14("en-GB"),
                      onPressedAmerican: () => speakalternative14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵناو) شتێک کە دەکرێت جێگرەوە بێت"""),
                    SentencesRow(
                      englishText:
                          "The road was closed so we had to find an alternative route.",
                      kurdishText:
                          "ڕێگاکە گیرابوو، بۆیە ناچاربووین یەکێکی دیکە بدۆزینەوە.",
                      onPressedBritish: () => speakalternative845("en-GB"),
                      onPressedAmerican: () => speakalternative845("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵناو) ئەو شتانەی کە باو نین بەڵام ڕێژەیەکی کەمی شوێنکەوتووی وابەستە بەخۆیان ھەیە"""),
                    SentencesRow(
                      englishText:
                          "In Los Angeles many companies encourage their employees to use alternative means of transportation, rather than the car.",
                      kurdishText:
                          "لە لۆس ئەنجلس زۆر کۆمپانیا کارمەندانیان ھاندەدەن کە ڕێگای دیکەی گواستنەوە بەکاربێنن لە جیاتی ئۆتۆمبێل.",
                      onPressedBritish: () => speakalternative659("en-GB"),
                      onPressedAmerican: () => speakalternative659("en-US"),
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


