import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjab extends StatefulWidget {
  const EnglishEntryjab({super.key});

  @override
  State<EnglishEntryjab> createState() => _EnglishEntryjabState();
}

class _EnglishEntryjabState extends State<EnglishEntryjab> {
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
- Verb: jab (Derived forms: jabs, jabbed, jabbing)
1. Push suddenly or strongly with a finger or something pointed (- prod, stab, poke, dig)
"he jabbed his finger into her ribs";
 
2. Strike or punch with quick and short blows
 
3. Stab or pierce (- stab)
"he jabbed the piece of meat with his pocket knife";
 
4. [Brit, informal] (medicine) perform vaccinations or produce immunity in by inoculation (- immunize, immunise [Brit], inoculate, vaccinate, vax [informal])

- Noun: jab (Derived forms: jabs)
1. A sharp hand gesture (resembling a blow) (- jabbing, poke, poking, thrust, thrusting)
"he warned me with a jab with his finger";
 
2. A quick short straight punch
 
3. The act of touching someone suddenly with your finger or elbow (- dig)
"she gave me a sharp jab in the ribs";
 
4. [Brit, informal] Taking a vaccine as a precaution against contracting a disease (- inoculation, vaccination, vax [informal])
 
5. [Brit, informal] The act of putting a liquid into the body by means of a syringe (- injection, shot)
"the nurse gave him a flu jab";
""",
  );

  final String keyword = "jab";
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
    await flutterTts.speak("""jab""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She jabbed him in the ribs with her finger.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She jabbed her finger in his ribs.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He jabbed at the picture with his finger.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He refused to say whether he had been jabbed against Covid.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Over 80% of the population had been double-jabbed.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She gave him a jab in the stomach with her elbow.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Scott gave him a sharp left jab to the ribs.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""You'll need some jabs if you're going to Egypt.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/LQpLMvC7Et0?t=683';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/drhDGeNauuo?t=889';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/_h95pZQiKwI?t=764';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/RVEm5Am-tYc?t=247';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/1OceijOEVqU?t=229';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/MXTO0rTpfks?t=206';
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
                      word: """jab""",
                      // alsoEnglishWord: "also: jab",
                      britshText: """IpaUK: /dʒæb/""",
                      americanText: """IpaUS: /dʒæb/""",
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
کوردی: لێدان، مشتەکۆڵە، سیخورمە، تێ‌ژەنین، پیاکردن، تێ‌کوتان، تێ‌وەژاندن،	دەرزی، کوتان
"""),
// With short examples define "jab", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) پاڵنانی شتێک بۆ ناو کەسێک/شتێک، یان بەرەو ئاراستەی کەسێک/شتێک، بە جووڵەیەکی بەهێزی لەناکاو"""),
                    const AlsoEnglishckb(word: "ھەروەھا: prod"),
                    SentencesRow(
                      englishText:
                          """She jabbed him in the ribs with her finger.""",
                      kurdishText: """بە پەنجەی کێشای بە پەراسوویدا.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She jabbed her finger in his ribs.""",
                      kurdishText: """پەنجەی کێشا بە پەراسوویدا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He jabbed at the picture with his finger.""",
                      kurdishText: """بە پەنجەی کێشای بە وێنەکەدا.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) پێدانی ڤاکسین بە کەسێک دژ بە نەخۆشییەک"""),
                    SentencesRow(
                      englishText:
                          """He refused to say whether he had been jabbed against Covid.""",
                      kurdishText:
                          """ڕەتیکردەوە بڵێت کە ڤاکسینی دژ بە کۆڤید وەرگرتووە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Over 80% of the population had been double-jabbed (= had had two vaccinations against Covid-19)""",
                      kurdishText:
                          """سەروو ٨٠٪ ــی خەڵکی دوو جار دژ بە کۆرۆنا کوترابوون.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) لێدانێکی لەناکاوی توند بە شتێکی نووکدار یان بە مشت"""),
                    SentencesRow(
                      englishText:
                          """She gave him a jab in the stomach with her elbow.""",
                      kurdishText: """لێدانێکی کێشا بە گەدەیدا بە ئانیشكی.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Scott gave him a sharp left jab to the ribs.""",
                      kurdishText:
                          """سکۆت سیخورمەیەکی توندی بە دەستی چەپی کێشا بە پەراسوویدا.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) کوتان دژ بە نەخۆشییەک"""),
                    SentencesRow(
                      englishText:
                          """You'll need some jabs if you're going to Egypt.""",
                      kurdishText:
                          """پێویستیت بە هەندێک کوتانە ئەگەر دەچیت بۆ میسر.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
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
// end jab