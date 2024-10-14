import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhustle extends StatefulWidget {
  const EnglishEntryhustle({super.key});

  @override
  State<EnglishEntryhustle> createState() => _EnglishEntryhustleState();
}

class _EnglishEntryhustleState extends State<EnglishEntryhustle> {
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
- Verb: hustle (Derived forms: hustled, hustles, hustling)
1. Cause to move furtively and hurriedly
"The secret service agents hustled the speaker out of the amphitheatre"
 
2. Move or cause to move energetically or busily (- bustle, bustle about)
"The cheerleaders hustled about excitedly before their performance";
 
3. [informal] Sell something to or obtain something from by energetic and especially underhanded activity (- pluck, roll)
 
4. [informal] Get by trying hard
"she hustled a free lunch from the waiter"
 
5. Pressure or urge someone into an action

- Noun: hustle (Derived forms: hustles)
1. [informal] A swindle in which you cheat at gambling or persuade a person to buy worthless property (- bunco [N. Amer, informal], bunco game [N. Amer, informal], bunko [N. Amer, informal], bunko game [N. Amer, informal], con [informal], confidence trick, confidence game, con game [informal], sting [informal], flimflam [informal])
 
2. A rapid active commotion (- bustle, flurry, ado, fuss, stir)
""",
  );

  final String keyword = "hustle";
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
    await flutterTts.speak("""hustle""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He grabbed her arm and hustled her out of the room.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I was hustled into a waiting car.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was hustled away by some police officers.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """All the family felt that Stephen had been hustled into the engagement by Claire.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They survive by hustling on the streets.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We escaped from the hustle and bustle of the city for the weekend.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""There is a long list of hustles used to avoid the draft.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'hS2x1zl4rn0';
    const double startSecondsend = 144;
    const String videoIdone = 'XdKzUbAiswE';
    const double startSecondsone = 18;
    const String videoIdtwo = 'Fr-qagv7ig0';
    const double startSecondstwo = 1538;
    const String videoIdthree = 'cY4e0uvp7uI';
    const double startSecondsthree = 73;
    const String videoIdfour = 'XXhc5UTxv5I';
    const double startSecondsfour = 349;
    const String videoIdfive = 'JR3z8lq2cNM';
    const double startSecondsfive = 641;

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
                      word: """hustle""",
                      // alsoEnglishWord: "also: hustle",
                      britshText: """IpaUK: /ˈhʌsl/""",
                      americanText: """IpaUS: /ˈhʌsl/""",
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
کوردی: پاڵ، پاڵنان، شان، تەکان،	پاڵەپەستۆ، شانەترنجێ،	پەلە، لەز،	چالاکی، پڕکاری، شلوقی، جم‌وجۆڵ، کار،	فێڵ‌وفەرەج، هەڵفریواندن، لەخشتەبردن، دسبڕی
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) ئەوەی وا بکەیت کەسێک خێرا بجووڵیت بەوەی پاڵی بنێیت"""),
                    SentencesRow(
                      englishText:
                          """He grabbed her arm and hustled her out of the room.""",
                      kurdishText:
                          """دەستی گرت و لە ژوورەکە پەلکێشی کردە دەرەوە .""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I was hustled into a waiting car.""",
                      kurdishText: """پەلکێشکرامە ئۆتۆمبێلێکی وەستاوەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She was hustled away by some police officers.""",
                      kurdishText: """لەلایەن ژمارەیەک پۆلیسەوە پەلکێشکرا.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) زۆرکردن لە کەسێک لە بڕیاردان پێش ئەوەی ئامادە یان دڵنیا بێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """All the family felt that Stephen had been hustled into the engagement by Claire.""",
                      kurdishText:
                          """هەموو خێزانەکە هەستیان کرد ستیفن ڕاکێشاوەتە ناو دەستگیرانداری.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) فرۆشتن یان بەدەستهێنانی شتێک، زۆرجار بە نایاسایی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They survive by hustling on the streets.""",
                      kurdishText: """دەژین بە فرۆشتن لەسەر شەقامەکان.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) دەنگەدەنگی خەڵکێکی زۆر لە یەک شوێندا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We escaped from the hustle and bustle of the city for the weekend.""",
                      kurdishText:
                          """بۆ کۆتایی هەفتەکە لە جەنجاڵی شارەکە دەرچووین.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) ئەوەی کەسێک شتێک بەدەست بهێنێت بە فێڵ و تەڵەکەبازی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There is a long list of hustles used to avoid the draft.""",
                      kurdishText:
                          """لیستێکی درێژ لە تەڵەکەبازی هەیە بۆ دووربوون لە سەربازیی زۆرەملێ.""",
                      englishNote:
                          """This means there are many different tricks or schemes that people use to avoid being forced to join the military (the draft).""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
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