import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryindifferent extends StatefulWidget {
  const EnglishEntryindifferent({super.key});

  @override
  State<EnglishEntryindifferent> createState() =>
      _EnglishEntryindifferentState();
}

class _EnglishEntryindifferentState extends State<EnglishEntryindifferent> {
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
- Adjective: indifferent
1. Marked by a lack of interest (- apathetic)
"the universe is neither hostile nor friendly; it is simply indifferent";
 
2. Showing no care or concern in attitude or action
"indifferent to the sufferings of others"; "indifferent to her plea"
 
3. (usually followed by 'to') unwilling or refusing to pay heed (- deaf)
"indifferent to her warnings";
 
4. (often followed by 'to') lacking importance; not mattering one way or the other (- immaterial)
"whether you choose to do it or not is a matter that is quite indifferent"; "what others think is altogether indifferent to him";
 
5. Fairly poor to not very good
"has an indifferent singing voice"; "has indifferent qualifications for the job"
 
6. (chemistry) having only a limited ability to react chemically; chemically inactive (- inert, neutral)
"an indifferent chemical in a reaction";
 
7. Marked by no especial liking, dislike or preference for one thing over another
"indifferent about which book you would give them"; "was indifferent to their acceptance or rejection of her invitation"
 
8. Characterized by a lack of partiality (- unbiased, unbiassed)
"a properly indifferent jury";
 
9. Being neither good nor bad (- so-so)
"an indifferent performance"; "a gifted painter but an indifferent actor";
 
10. Neither too great nor too little
"a couple of indifferent hills to climb"
""",
  );

  final String keyword = "indifferent";
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
    await flutterTts.speak("""indifferent""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The government cannot afford to be indifferent to public opinion.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He appeared indifferent to her suffering.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Most staff were indifferent about the plans.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He suffered from indifferent health.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'wJa5Ch0O4BI';
    const double startSecondsend = 5010;
    const String videoIdone = 'WA4a8ouaars';
    const double startSecondsone = 491;
    const String videoIdtwo = 'qCbfTN-caFI';
    const double startSecondstwo = 1752;
    const String videoIdthree = 'd1eaQrxA6ZE';
    const double startSecondsthree = 363;
    const String videoIdfour = 'YMRRrvBlK8I';
    const double startSecondsfour = 273;
    const String videoIdfive = 'Aks0W6OSM2k';
    const double startSecondsfive = 231;

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
                      word: """indifferent""",
                      // alsoEnglishWord: "also: indifferent",
                      britshText: """IpaUK: /ɪnˈdɪfrənt/""",
                      americanText: """IpaUS: /ɪnˈdɪfrənt/""",
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
کوردی: بێ‌دەربەست، کەمتەرخەم، گوێ‌پێنەدەر، بێ‌خەم، بێ‌خەیاڵ،	بێ‌لایەن، نادەمارگرژ،	ناگرنگ، بێ‌بایەخ، هیچەکە، نە ئەوندە باش، ئاسایی، دەستە، ئەندازە، مام‌ناوەند
"""),
// With short examples define "indifferent", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کە هیچ گرنگی نادەیت بە کەسێک/شتێک"""),
                    SentencesRow(
                      englishText:
                          """The government cannot afford to be indifferent to public opinion.""",
                      kurdishText:
                          """حکومەت ناتوانێت بێ‌دەربەست بێت بە بۆچوونی خەڵکی.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He appeared indifferent to her suffering.""",
                      kurdishText: """بێ‌هەست بەرامبەر ئازارەکانی دەردەکەوت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Most staff were indifferent about the plans.""",
                      kurdishText:
                          """زۆرینەی ستافەکە کەمتەرخەم بوون بەرامبەر بە پلانەکانی.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) کە زۆرباش نییە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: mediocre"),
                    SentencesRow(
                      englishText: """He suffered from indifferent health.""",
                      kurdishText:
                          """بەدەست تەندرووستی مام‌ناوەندەوە دەیناڵاند.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
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