import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadventure extends StatefulWidget {
  const EnglishEntryadventure({super.key});

  @override
  State<EnglishEntryadventure> createState() => _EnglishEntryadventureState();
}

class _EnglishEntryadventureState extends State<EnglishEntryadventure> {
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
- Noun: adventure (derived forms: adventured, adventures, adventuring)
1. A wild and exciting undertaking (not necessarily lawful) (= escapade, risky venture, dangerous undertaking)
 
2. A remarkable occurrence; an exciting incident or experience
 
3. (dated) a financially risky enterprise

- Verb: adventure  ad'ven-chu(r) or ud'ven-chu(r)
1. Take a risk in the hope of a favourable outcome (= gamble, chance, risk, hazard, take chances, run a risk, take a chance)
"When you buy these stocks you are adventuring";
 
2. Put at risk (= venture, hazard, stake, jeopardize, jeopardise [Brit])
""",
  );
// 188888880002200

  final String keyword = "adventure";
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
    await flutterTts.speak("""adventure""");
  }

  Future<void> speakadven356871(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "They fly around in their rocket ship and go on exciting adventures.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'oiLdWXLXDeA';
    const double startSecondsend = 1;
    const String videoIdone = '-8jjTVuev_s';
    const double startSecondsone = 797;
    const String videoIdtwo = 'qmnUl8jJKGM';
    const double startSecondstwo = 60;
    const String videoIdthree = '9PYNyL29OOI';
    const double startSecondsthree = 55;
    const String videoIdfour = 'bx79vJP4zWI';
    const double startSecondsfour = 895;

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
                      word: """adventure""",
                      // alsoEnglishWord: "also: adventure",
                      britshText: """IpaUK: /ədˈventʃə(r)/""",
                      americanText: """IpaUS: /ədˈventʃər/""",
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
کوردی: ڕووداو، سەرکێش، سەربردە، (بە)سەرھات، جەربەزەیی، سەروردی، کێشەخوازی، مەترسی‌کاری، سەرەڕۆیی، سەرلەکێشەخوران، مەترسی، کاری مەترسی‌دار یان خەتەر، کاری سەیر
"""),
                    const DefinitionKurdish(
                        text: "١. (ناو) کارێکی مەترسیدار کە زۆرجار چێژبەخشە"
                            ""),
                    SentencesRow(
                      englishText:
                          "They fly around in their rocket ship and go on exciting adventures.",
                      kurdishText:
                          "لە کەشتییە ئاسمانییەکەیان دەفڕن و دەچنە گەشتی جەربەزەیی چێژبەخش.",
                      onPressedBritish: () => speakadven356871("en-GB"),
                      onPressedAmerican: () => speakadven356871("en-US"),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
