import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrykite extends StatefulWidget {
  const EnglishEntrykite({super.key});

  @override
  State<EnglishEntrykite> createState() => _EnglishEntrykiteState();
}

class _EnglishEntrykiteState extends State<EnglishEntrykite> {
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
- Noun: kite (Derived forms: kites)
1. Plaything consisting of a light frame covered with tissue paper; flown in wind at end of a string
 
2. [N. Amer] A bank check that has been fraudulently altered to increase its face value
 
3. [N. Amer] A bank check drawn on insufficient funds at another bank in order to take advantage of the float
 
4. Any of several small graceful hawks of the family Accipitridae having long pointed wings and feeding on insects and small animals
 
5. A large and usually triangular headsail; carried by a yacht as a headsail when running before the wind (- spinnaker)
 
6. (geometry) a quadrilateral having two pairs of adjacent edges of equal length; the shape of a simple kite

- Verb: kite (Derived forms: kited, kites, kiting)
1. [N. Amer] Increase the amount (of a check) fraudulently
"He kited many checks"
 
2. [N. Amer] Get credit or money by using a bad check
"The businessman kited millions of dollars"
 
3. (air travel) soar or fly like a kite
"The pilot kited for a long time over the mountains"
 
4. Fly a kite
"Kids were kiting in the park"; "They kited the Red Dragon model"
""",
  );

  final String keyword = "kite";
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
    await flutterTts.speak("""kite""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""On windy days the kids fly their kites in the park.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/gngPQ771Ahk?t=712';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/4I-p8vjQ95s?t=501';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/AAGIi62-sAU?t=705';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/AevZSvQ-r9c?t=11';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/M1C5ni-w0dE?t=75';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/mc3AUuuj9_I?t=5';
    const double startSecondsfive = 0;

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
                      word: """kite""",
                      // alsoEnglishWord: "also: kite",
                      britshText: """IpaUK: /kaɪt/""",
                      americanText: """IpaUS: /kaɪt/""",
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
کوردی: بادەوە، کۆلارە، بەرزەحەوایلە، بادەوان، فڕۆنەک
"""),
// With short examples define "kite", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) یارییەکی منداڵان کە پێکهاتووە لە چوارچێوەیەکی سووک و کاغەز، قوماش، هتد ــی پێوە کراوە و دەفڕێت"""),
                    SentencesRow(
                      englishText:
                          """On windy days the kids fly their kites in the park.""",
                      kurdishText:
                          """لە ڕؤژانی بادا منداڵان کۆلارەکانیان لە پارکەکە دەفڕێنن.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
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
// end kite