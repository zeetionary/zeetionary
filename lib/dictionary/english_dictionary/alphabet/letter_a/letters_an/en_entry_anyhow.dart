import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryanyhow extends StatefulWidget {
  const EnglishEntryanyhow({super.key});

  @override
  State<EnglishEntryanyhow> createState() => _EnglishEntryanyhowState();
}

class _EnglishEntryanyhowState extends State<EnglishEntryanyhow> {
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
- Adverb: anyhow 
1. Used to indicate that a statement explains or supports a previous statement (= anyway, anyways [N. Amer, informal], in any case, at any rate, in any event, anyroad [UK, dialect])
"Anyhow, he is dead now"; "I think they're asleep; anyhow, they're quiet";
 
2. In any way whatsoever (= anyway)
"they came anyhow they could";
""",
  );
// 188888880002200

  final String keyword = "anyhow";
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
    await flutterTts.speak("""anyhow""");
  }

  Future<void> speakanyhow847(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It's too expensive and anyhow the colour doesn't suit you.");
  }

  Future<void> speakanyhow849(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It's going to happen anyhow, so we won't object to it.");
  }

  Future<void> speakanyhow855(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("anyhow, I'd better go now—I'll see you tomorrow.");
  }

  Future<void> speakanyhow858(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I think she's right. I hope so, anyhow.");
  }

  Future<void> speakanyhow900(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She works in a bank. She did when I last saw her, anyhow.");
  }

  Future<void> speakanyhow908(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She piled the papers in a heap on her desk, just anyhow.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'raSeaAeryWE';
    const double startSecondsend = 2016;
    const String videoIdone = 'Unzc731iCUY';
    const double startSecondsone = 1046;
    const String videoIdtwo = 'kBdfcR-8hEY';
    const double startSecondstwo = 2357;
    const String videoIdthree = '5wxs_WNwDJE';
    const double startSecondsthree = 103;
    const String videoIdfour = '4l8M3dQlUwg';
    const double startSecondsfour = 1696;
    const String videoIdfive = 'KIWXcJ2wbyw';
    const double startSecondsfive = 192;
    // final String _videoId = '5U-yqm9H_Sg';
    // final double _startSeconds = 3107;
    // final String _videoId = 'zhWWcWtAUoY';
    // final double _startSeconds = 3503;
    // final String _videoId = '9-XnufbXpak';
    // final double _startSeconds = 1114;
    // final String _videoId = 'VAn5xYpbVR8';
    // final double _startSeconds = 55;
    // final String _videoId = 'ZGc9H3BJGZo';
    // final double _startSeconds = 583;

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
                      word: """anyhow""",
                      // alsoEnglishWord: "also: anyhow",
                      britshText: """IpaUK: /ˈenihaʊ/""",
                      americanText: """IpaUS: /ˈenihaʊ/""",
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
                          "It's too expensive and anyhow the colour doesn't suit you.",
                      kurdishText:
                          "زۆر گرانە، لەگەڵ ئەوەش ڕەنگەکەیت پێ ناکەوێ.",
                      onPressedBritish: () => speakanyhow847("en-GB"),
                      onPressedAmerican: () => speakanyhow847("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (ھاوەڵکار) سەرەڕای شتێک"""),
                    SentencesRow(
                      englishText:
                          "It's going to happen anyhow, so we won't object to it.",
                      kurdishText: "ھەرچۆنێ بێت ھەر ڕوودەدات، بۆیە دژی نابین.",
                      onPressedBritish: () => speakanyhow849("en-GB"),
                      onPressedAmerican: () => speakanyhow849("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (ھاوەڵکار) بەکاردێت لە کاتی گۆڕینی بابەتی گدتوگۆیەک، کۆتایی پێھێنانی، یان گەڕانەوە بۆی"""),
                    SentencesRow(
                      englishText:
                          "anyhow, I'd better go now—I'll see you tomorrow.",
                      kurdishText:
                          "ھەرچۆنێ بێت، باشترە ئێستا بچم، سبەی دەتبینمەوە.",
                      onPressedBritish: () => speakanyhow855("en-GB"),
                      onPressedAmerican: () => speakanyhow855("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (ھاوەڵکار) بەکاردێت بۆ ڕاستکردنەوە یان کەمێک گۆڕین ئەوەی وتت"""),
                    SentencesRow(
                      englishText: "I think she's right. I hope so, anyhow.",
                      kurdishText: "پێم‌وایە ڕاستە. یان ھیوادارم ڕاست بێت.",
                      onPressedBritish: () => speakanyhow858("en-GB"),
                      onPressedAmerican: () => speakanyhow858("en-US"),
                    ),
                    const DividerSentences(),
                    // const DividerDefinition(),
                    SentencesRow(
                      englishText:
                          "She works in a bank. She did when I last saw her, anyhow.",
                      kurdishText:
                          "لە بانکێک کار دەکات. ڕاستی کە کۆتا جار بینیم ئەوەی وت.",
                      onPressedBritish: () => speakanyhow900("en-GB"),
                      onPressedAmerican: () => speakanyhow900("en-US"),
                    ),
                    // const DividerSentences(),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (ھاوەڵکار) بە کەم‌تەرخەمانە بەبێ ڕیزبەندی"""),
                    SentencesRow(
                      englishText:
                          "She piled the papers in a heap on her desk, just anyhow.",
                      kurdishText:
                          "کاغەزەکانی بە کەمتەرخەمی کەڵەکەکرد بە چین چین لەسەر مێزەکەی.",
                      onPressedBritish: () => speakanyhow908("en-GB"),
                      onPressedAmerican: () => speakanyhow908("en-US"),
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
