import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjolly extends StatefulWidget {
  const EnglishEntryjolly({super.key});

  @override
  State<EnglishEntryjolly> createState() => _EnglishEntryjollyState();
}

class _EnglishEntryjollyState extends State<EnglishEntryjolly> {
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
- Adjective: jolly (Derived forms: jolliest, jollier)
1. Full of or showing high-spirited merriment (- gay, jocund [formal], jovial, merry, mirthful)
"the jolly crowd at the reunion"; "jolly old Saint Nick";

- Noun: jolly (Derived forms: jollies)
1. [Brit, NZ, informal] A happy party
 
2. A yawl used by a ship's sailors for general work (- jolly boat)

- Verb: jolly (Derived forms: jollying, jollied, jollies)
Usage: informal
1. Be silly or tease one another (- kid [informal], chaff, josh [informal], banter)
"After we relaxed, we just jollied around";
 
2. Cause (somebody) to feel happier or more cheerful (- cheer, cheer up, jolly along [informal], jolly up [informal], buck up [informal])
 
3. Become cheerful (- cheer, cheer up, buck up [informal])

- Adverb: jolly
Usage: Brit, informal
1. To certain extent or degree (- reasonably, moderately, pretty [informal], somewhat, fairly, middling, passably, middlingly, averagely)
"jolly decent of him";
""",
  );

  final String keyword = "jolly";
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
    await flutterTts.speak("""jolly""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He had a round, jolly face.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We spent a very jolly evening together.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""That's a jolly good idea.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""That's a jolly nice scarf you're wearing.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He hasn't come here for a jolly; he's come to win.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/xHI57s2tvDE?t=31';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/qg2nGY1aqlg?t=423';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/amdbtHvSeeA?t=421';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/bcdEFos9YQQ?t=1438';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/YLmDE_JYUNU?t=216';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/8qBnrS9-d4M?t=64';
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
                      word: """jolly""",
                      // alsoEnglishWord: "also: jolly",
                      britshText: """IpaUK: /ˈdʒɒli/""",
                      americanText: """IpaUS: /ˈdʒɑːli/""",
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
کوردی:  یەکجار، زۆر، گەلێ، فرە، بەکەیف، ڕووبەپێکەنین، ڕووخۆش، بەدەماخ، خۆش، سەرخۆش، کەمێ مەست، بەگوڕ، شاد
"""),
// With short examples define "jolly", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) دڵخۆش و بەجۆش"""),
                    SentencesRow(
                      englishText: """He had a round, jolly face.""",
                      kurdishText: """ڕووخسارێکی خڕی بەجۆشی هەیە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٢. (ھاوەڵناو) خۆش"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We spent a very jolly evening together.""",
                      kurdishText: """ئێوارەیەکی خۆشمان پێکەوە بەسەر برد.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٣. (ھاوەڵکار) زۆر"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """That's a jolly good idea.""",
                      kurdishText: """بیرۆکەیەکی زۆر باشە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """That's a jolly nice scarf you're wearing.""",
                      kurdishText: """لەچکێکی زۆر جوانە پۆشیوتە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) گەشت یان بۆنەیەک کە بۆ خۆشییە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He hasn't come here for a jolly; he's come to win.""",
                      kurdishText:
                          """بۆ خۆشی نەهاتووە بۆ ئێرە؛ بۆ بردنەوە هاتووە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
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
// end jolly