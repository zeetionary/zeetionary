import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadhere extends StatefulWidget {
  const EnglishEntryadhere({super.key});

  @override
  State<EnglishEntryadhere> createState() => _EnglishEntryadhereState();
}

class _EnglishEntryadhereState extends State<EnglishEntryadhere> {
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
- Verb: adhere (derived forms: adhered, adheres, adhering)
1. Be compatible or in accordance with
"You must adhere to the rules"
 
2. Follow through or carry out a plan without deviation
"They adhered to their plan"
 
3. Come or be in close contact with; stick or hold together and resist separation (= cling, cleave, stick, cohere)
"The dress adheres to her body";
 
4. Be a devoted follower or supporter (= stick)
"The residents of this village adhered to Catholicism";
 
5. Be loyal to (= stand by, stick by, stick)
 
6. Remain stuck to; keep in place (= hold fast, bond, bind, stick, stick to)
"Will this wallpaper adhere to the wall?";
""",
  );
// 188888880002200

  final String keyword = "adhere";
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
    await flutterTts.speak("""adhere""");
  }

  Future<void> speakadhe55661(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Clean the surface first, or the paint will not adhere.");
  }

  Future<void> speakadhe2537(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Once in the bloodstream, the bacteria adhere to the surface of the red cells.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'KLGSLCaksdY';
    const double startSecondsend = 285;
    const String videoIdone = 'NGbFtTYQpus';
    const double startSecondsone = 544;
    const String videoIdtwo = 'Y63dBBlHlSk';
    const double startSecondstwo = 88;
    const String videoIdthree = '3J8_JM7Qiss';
    const double startSecondsthree = 790;
    const String videoIdfour = 'sVnikEoeruU';
    const double startSecondsfour = 1244;
    const String videoIdfive = 'mVqgzW2V9OA';
    const double startSecondsfive = 113;

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
                      word: """adhere""",
                      // alsoEnglishWord: "also: adhere",
                      britshText: """IpaUK: /ədˈhɪə(r)/""",
                      americanText: """IpaUS: /ədˈhɪr/""",
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
١. (کردار) لکان بە شتێکەوە"""),
                    SentencesRow(
                      englishText:
                          "Clean the surface first, or the paint will not adhere.",
                      kurdishText:
                          "سەرەتا ڕووەکەی پاکبکەوە ئەگەرنا بۆیەکە پێوەی نالکێنێت.",
                      onPressedBritish: () => speakadhe55661("en-GB"),
                      onPressedAmerican: () => speakadhe55661("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          "Once in the bloodstream, the bacteria adhere to the surface of the red cells.",
                      kurdishText:
                          "ھەرکە بچێتە ناو سووڕی خوێن، بەکتریا دەلکێت بە خڕۆکە سوورەکانەوە.",
                      onPressedBritish: () => speakadhe2537("en-GB"),
                      onPressedAmerican: () => speakadhe2537("en-US"),
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
