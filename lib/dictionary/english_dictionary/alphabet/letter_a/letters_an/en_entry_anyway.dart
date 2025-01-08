import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanyway extends StatefulWidget {
  const EnglishEntryanyway({super.key});

  @override
  State<EnglishEntryanyway> createState() => _EnglishEntryanywayState();
}

class _EnglishEntryanywayState extends State<EnglishEntryanyway> {
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
- Adverb: anyway 
1. Used to indicate that a statement explains or supports a previous statement (= anyhow, anyways [N. Amer, informal], in any case, at any rate, in any event, anyroad [UK, dialect])
"I don't know what happened to it; anyway, it's gone"; "anyway, there is another factor to consider";
 
2. In any way whatsoever (= anyhow)
"get it done anyway you can";
 
3. In spite of everything; without regard to drawbacks (= regardless, irrespective, disregardless, no matter, disregarding)
""",
  );
// 188888880002200

  final String keyword = "anyway";
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
    await flutterTts.speak("""anyway""");
  }

  Future<void> speakanyway847(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It's too expensive and anyway the colour doesn't suit you.");
  }

  Future<void> speakanyway849(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It's going to happen anyway, so we won't object to it.");
  }

  Future<void> speakanyway855(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Anyway, I'd better go now—I'll see you tomorrow.");
  }

  Future<void> speakanyway858(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I think she's right. I hope so, anyway.");
  }

  Future<void> speakanyway900(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She works in a bank. She did when I last saw her, anyway.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'Jnfkdm_wGAs';
    const double startSecondsend = 1044;
    const String videoIdone = 'drCGm4wW7ok';
    const double startSecondsone = 83;
    const String videoIdtwo = 'x2jZsU17JbA';
    const double startSecondstwo = 311;
    const String videoIdthree = '3XjSTG-oIMw';
    const double startSecondsthree = 18;
    const String videoIdfour = 'AnfBDO1gBOM';
    const double startSecondsfour = 81;
    const String videoIdfive = 'ObkV-btuqlo';
    const double startSecondsfive = 27;
    // final String _videoId = '2-p44-9S4O0';
    // final double _startSeconds = 967;
    // final String _videoId = 'RXbYSpAK7F0';
    // final double _startSeconds = 783;
    // final String _videoId = '_wNsZEqpKUA';
    // final double _startSeconds = 87;
    // final String _videoId = 'zKx2B8WCQuw';
    // final double _startSeconds = 278;
    // final String _videoId = 'qxVWpWNPEWU';
    // final double _startSeconds = 177;
    // final String _videoId = 'LAOoF2gyQaA';
    // final double _startSeconds = 446;

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
                      word: """anyway""",
                      // alsoEnglishWord: "also: anyway",
                      britshText: """IpaUK: /ˈeniweɪ/""",
                      americanText: """IpaUS: /ˈeniweɪ/""",
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
کوردی: بەھەر شێوەیێ، بەھەرچەشنێ، ھەرچۆنێ بێ، بە ھەر لەونێ، بەھەرجۆرێ، لەگەڵ ئەمەش، سەرەڕای ئەمەش
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵکار) بەکاردێت بۆ زیادکردنی ڕستەیەک وەک پشتگیری بۆ یەکێکی تر"""),
                    SentencesRow(
                      englishText:
                          "It's too expensive and anyway the colour doesn't suit you.",
                      kurdishText:
                          "زۆر گرانە، لەگەڵ ئەوەش ڕەنگەکەیت پێ ناکەوێ.",
                      onPressedBritish: () => speakanyway847("en-GB"),
                      onPressedAmerican: () => speakanyway847("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵکار) سەرەڕای شتێک"""),
                    SentencesRow(
                      englishText:
                          "It's going to happen anyway, so we won't object to it.",
                      kurdishText: "ھەرچۆنێ بێت ھەر ڕوودەدات، بۆیە دژی نابین.",
                      onPressedBritish: () => speakanyway849("en-GB"),
                      onPressedAmerican: () => speakanyway849("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵکار) بەکاردێت لە کاتی گۆڕینی بابەتی گدتوگۆیەک، کۆتایی پێھێنانی، یان گەڕانەوە بۆی"""),
                    SentencesRow(
                      englishText:
                          "Anyway, I'd better go now—I'll see you tomorrow.",
                      kurdishText:
                          "ھەرچۆنێ بێت، باشترە ئێستا بچم، سبەی دەتبینمەوە.",
                      onPressedBritish: () => speakanyway855("en-GB"),
                      onPressedAmerican: () => speakanyway855("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ھاوەڵکار) بەکاردێت بۆ ڕاستکردنەوە یان کەمێک گۆڕین ئەوەی وتت"""),
                    SentencesRow(
                      englishText: "I think she's right. I hope so, anyway.",
                      kurdishText: "پێم‌وایە ڕاستە. یان ھیوادارم ڕاست بێت.",
                      onPressedBritish: () => speakanyway858("en-GB"),
                      onPressedAmerican: () => speakanyway858("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "She works in a bank. She did when I last saw her, anyway.",
                      kurdishText:
                          "لە بانکێک کار دەکات. ڕاستی کە کۆتا جار بینیم ئەوەی وت.",
                      onPressedBritish: () => speakanyway900("en-GB"),
                      onPressedAmerican: () => speakanyway900("en-US"),
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
