import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryimplant extends StatefulWidget {
  const EnglishEntryimplant({super.key});

  @override
  State<EnglishEntryimplant> createState() => _EnglishEntryimplantState();
}

class _EnglishEntryimplantState extends State<EnglishEntryimplant> {
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
- Noun: implant (Derived forms: implants)
1. A prosthesis placed permanently in tissue

- Verb: implant (Derived forms: implants, implanting, implanted)
1. Fix or set securely or deeply (- engraft, embed, imbed, plant)
"The dentist implanted a tooth in the gum";
 
2. Become attached to and embedded in the uterus
"The egg fertilized in vitro implanted in the uterus of the birth mother with no further complications"
 
3. Put firmly in the mind (- plant)
"implant a thought in the students' minds";
""",
  );

  final String keyword = "implant";
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
    await flutterTts.speak("""implant""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Prejudices can easily become implanted in the mind.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He needed an operation to implant an artificial heart.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The embryo is placed into the uterus where it has a chance to implant.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Dental implants can replace missing teeth.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'Pon4Zux5MaQ';
    const double startSecondsend = 369;
    const String videoIdone = 'lsbcN9-jU1Y';
    const double startSecondsone = 392;
    const String videoIdtwo = 'Mf4wwXM2o_M';
    const double startSecondstwo = 265;
    const String videoIdthree = 'bii-ci1Zc_c';
    const double startSecondsthree = 301;
    const String videoIdfour = 'iDNZGw6uWZg';
    const double startSecondsfour = 178;
    const String videoIdfive = 'Cg10exNmf7I';
    const double startSecondsfive = 100;

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
                      word: """implant""",
                      // alsoEnglishWord: "also: implant",
                      britshText: """IpaUK: /ɪmˈplɑːnt/""",
                      americanText: """IpaUS: /ɪmˈplænt/""",
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
کوردی: (پزشکی) چاندن، ڕواندن، تێ‌کردنەوە، پەیوەست، چەقاندن،	شتی پەیوەستە، چاندە، تێ‌کراوە
"""),
// With short examples define "implant", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) چاندنی باوەڕێک، هەڵوێستێک، هتد لە هزری کەسێکدا"""),
                    SentencesRow(
                      englishText:
                          """Prejudices can easily become implanted in the mind.""",
                      kurdishText: """ڕق دەکرێت لە مێشکدا بچێندرێت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) دانانی شتێک لە بەشێکی جەستەدا، زۆرجار بە نەشتەرگەری"""),
                    SentencesRow(
                      englishText:
                          """He needed an operation to implant an artificial heart.""",
                      kurdishText:
                          """پێویستی بە نەشتەرگەرییەک هەبوو بۆ چاندنی دڵێکی دەستکرد.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) ئەوەی هێلکەیەک یان ئاوڵەمە لە لەشی کەسێک یان ئاژەڵێک جێبگرێت بۆ ئەوەی گەشە بکات"""),
                    SentencesRow(
                      englishText:
                          """The embryo is placed into the uterus where it has a chance to implant.""",
                      kurdishText:
                          """ئاوڵەمەکە دەخرێتە ناو مناڵ‌دان بۆ ئەوەی تێیدا گەشە بکات.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) شتێک کە دەخرێتە ناو جەستە، زۆرجار بە نەشتەرگەری"""),
                    SentencesRow(
                      englishText:
                          """Dental implants can replace missing teeth.""",
                      kurdishText:
                          """چاندنی ددان دەکرێت جێگای ددانی شکاو بگرێتەوە.""",
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