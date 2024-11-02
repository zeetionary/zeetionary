import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjuvenile extends StatefulWidget {
  const EnglishEntryjuvenile({super.key});

  @override
  State<EnglishEntryjuvenile> createState() => _EnglishEntryjuvenileState();
}

class _EnglishEntryjuvenileState extends State<EnglishEntryjuvenile> {
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
- Adjective: juvenile
1. Displaying or suggesting a lack of maturity (- adolescent, jejune, puerile)
"their behaviour was juvenile";
 
2. Of or relating to or characteristic of or appropriate for children or young people
"juvenile diabetes"; "juvenile fashions"

- Noun: juvenile (Derived forms: juveniles)
1. A young person, not fully developed (- juvenile person)
""",
  );

  final String keyword = "juvenile";
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
    await flutterTts.speak("""juvenile""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """What can be done to help these juvenile delinquents turn away from crime?""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Juvenile crabs hide in sand to avoid predators.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Don't be so juvenile!""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Most of the suspects were juveniles under the age of 17.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The juveniles have lighter-coloured feathers.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/LwZIxGAG8xA?t=376';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/YLmDE_JYUNU?t=460';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/yRmOWcWdQAo?t=201';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/ce28TIoa4ao?t=1161';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/bFEj-6tBZeA?t=2950';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/tExo3ovEBWQ?t=2222';
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
                      word: """juvenile""",
                      // alsoEnglishWord: "also: juvenile",
                      britshText: """IpaUK: /ˈdʒuːvənaɪl/""",
                      americanText: """IpaUS: /ˈdʒuːvənl/""",
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
کوردی: مناڵ، تازەلاو (لە زۆربەی وڵاتان‌دا کەم‌تر لە 18 ساڵ)،	(لە گیانەوەران‌دا) بێچوو، بەچکە، جووچک، جووجەڵە،	کتێبی مناڵان
"""),
// With short examples define "juvenile", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) پەیوەندیدار بە کەسانی تازەلاو کە هێشتە گەورە نین"""),
                    SentencesRow(
                      englishText:
                          """What can be done to help these juvenile delinquents turn away from crime?""",
                      kurdishText:
                          """چی دەکرێت بکرێت تاوەکو ئەم تاوانکارە تازەلاوانە لە تاوان دووربن؟""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) پەیوەندیدار بە باڵندە و ئاژەڵی تازە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Juvenile crabs hide in sand to avoid predators.""",
                      kurdishText:
                          """قرژاڵی گەنج خۆیان لە خۆڵ دەشارنەوە بۆ دووربوون لە ڕاوکەران.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) گەمژانە و زیاتر ئەوەی لە منداڵێک بوەشێتەوە نەک گەورە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: childish"),
                    SentencesRow(
                      englishText: """Don't be so juvenile!""",
                      kurdishText: """هێندە منداڵ مەبە!""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) کەسێکی گەنج کە هێشتا گەورە نییە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Most of the suspects were juveniles under the age of 17.""",
                      kurdishText:
                          """زۆرێک لە گومانلێکراوان تازەلاوان بوون لە خوار ١٧ ساڵ.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) باڵندە یان ئاژەڵێکی گەنج"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The juveniles have lighter-coloured feathers.""",
                      kurdishText:
                          """باڵندە گەنجەکان پەڕی ڕەنگ کاڵتریان هەیە.""",
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
// end juvenile