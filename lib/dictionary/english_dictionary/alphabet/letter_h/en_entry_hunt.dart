import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhunt extends StatefulWidget {
  const EnglishEntryhunt({super.key});

  @override
  State<EnglishEntryhunt> createState() => _EnglishEntryhuntState();
}

class _EnglishEntryhuntState extends State<EnglishEntryhunt> {
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
- Verb: hunt (Derived forms: hunts, hunted, hunting)
1. Pursue for food or sport (as of wild animals) (- run, hunt down, track down)
"Goering often hunted wild boars in Poland"; "The Duke hunted in these woods"; "Goering often hunted down wild boars in Poland";
 
2. Seek, search for
"She hunted for her reading glasses but was unable to locate them"
 
3. Pursue or chase relentlessly (- hound, trace)
"the detectives hunted the suspect until they found him";
 
4. Chase or drive away, as with force
"They hunted the unwanted immigrants out of the neighbourhood"
 
5. Yaw back and forth about a flight path
 
6. Oscillate about a desired speed, position, or state to an undesirable extent
"The oscillator hunts about the correct frequency"
 
7. Search (an area) for prey
"The King used to hunt these forests"

- Noun: hunt (Derived forms: hunts)
1. An association of huntsmen who hunt for sport (- hunt club)
 
2. An instance of searching for something
"the hunt for submarines"
 
3. The activity of looking thoroughly in order to find something or someone (- search, hunting)
 
4. The work of finding and killing or capturing animals for food or pelts (- hunting)
 
5. The pursuit and killing or capture of wild animals regarded as a sport (- hunting)

- Noun: Hunt (Derived forms: Hunts)
1. Englishman and Pre-Raphaelite painter (1827-1910) (- Holman Hunt, William Holman Hunt)
 
2. British writer who defended the Romanticism of Keats and Shelley (1784-1859) (- Leigh Hunt, James Henry Leigh Hunt)
 
3. United States architect (1827-1895) (- Richard Morris Hunt)
""",
  );

  final String keyword = "hunt";
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
    await flutterTts.speak("""hunt""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Lions sometimes hunt alone.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Whales are still being hunted and killed in the Arctic.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The animals are hunted for their fur.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The animals come out at night to hunt for mice and other small animals.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She is still hunting for a new job.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I've hunted everywhere but I can't find it.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """After spending half an hour hunting through the boxes, he had still found nothing.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Police are hunting an escaped criminal.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The hunt is on for a suitable candidate.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Hundreds have joined a police hunt for the missing teenager.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """As the story begins, three young men are preparing to go on a fox hunt.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'DO9U_XxN-Kc';
    const double startSecondsend = 722;
    const String videoIdone = 'MnExgQ81fhU';
    const double startSecondsone = 353;
    const String videoIdtwo = 'zqllxbPWKNI';
    const double startSecondstwo = 1448;
    const String videoIdthree = 'AF8d72mA41M';
    const double startSecondsthree = 575;
    const String videoIdfour = 'pTysrwci0pU';
    const double startSecondsfour = 950;
    const String videoIdfive = '-6vzjjIrRK8';
    const double startSecondsfive = 168;

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
                      word: """hunt""",
                      // alsoEnglishWord: "also: hunt",
                      britshText: """IpaUK: /hʌnt/""",
                      americanText: """IpaUS: /hʌnt/""",
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
//                     const KurdishVocabulary(text: """
// کوردی:
// """),
                    const DefinitionKurdish(text: """١. (کردار) ڕاوکردن"""),
                    SentencesRow(
                      englishText: """Lions sometimes hunt alone.""",
                      kurdishText: """شیر هەندێک جار بە تەنها ڕاو دەکات.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Whales are still being hunted and killed in the Arctic.""",
                      kurdishText:
                          """نەهەنگ هێشتا ڕاودەکرێت و دەکوژرێت لە ئارکتیک.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The animals are hunted for their fur.""",
                      kurdishText: """ئاژەڵەکان بۆ فەرووەکەیان ڕاو دەکرێن.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The animals come out at night to hunt for mice and other small animals.""",
                      kurdishText:
                          """ئاژەڵەکان لە شەودا دەهاتنە دەر بۆ ڕاو بۆ مشک و ئاژەڵی دیکەی بچووک.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) گەڕان بۆ شتێک کە سەختە بدۆزرێتەوە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: search"),
                    SentencesRow(
                      englishText: """She is still hunting for a new job.""",
                      kurdishText: """هێشتا بۆ کارێکی تازە دەگەڕێت.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I've hunted everywhere but I can't find it.""",
                      kurdishText:
                          """هەموو شوێنێک گەڕاوم بەڵام ناتوانم بیدۆزمەوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """After spending half an hour hunting through the boxes, he had still found nothing.""",
                      kurdishText:
                          """لە دوای بەسەربردنی نیو کاتژمێر لە گەڕان بەناو سندووقەکان، هێشتا هیچی نەدۆزیبووەوە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) گەڕان بۆ کەسێک بۆ گرتنی یان زیان گەیاندن پێی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Police are hunting an escaped criminal.""",
                      kurdishText: """پۆلیس بۆ تاوانبارێکی ڕاکردوو دەگەڕێن.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) گەڕان بۆ کەسێک/شتێک کە سەختە بدۆزرێتەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The hunt is on for a suitable candidate.""",
                      kurdishText:
                          """گەڕان بۆ بەربژێرێکی گونجاو دەستی پێکردووە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Hundreds have joined a police hunt for the missing teenager.""",
                      kurdishText:
                          """سەدان کەس بەژداریان کردووە لەگەڵ پۆلیس بۆ هەرزەکارە ونبووەکە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) ڕاوکردنی ئاژەڵ"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """As the story begins, three young men are preparing to go on a fox hunt.""",
                      kurdishText:
                          """کە چیرۆکەکە دەست پێدەکات، سێ پیاوی گەنج ئامادەکاری دەکەن بۆ چوون بۆ ڕاوە ڕێوی .""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
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
