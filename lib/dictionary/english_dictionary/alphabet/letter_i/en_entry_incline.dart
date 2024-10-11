import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryincline extends StatefulWidget {
  const EnglishEntryincline({super.key});

  @override
  State<EnglishEntryincline> createState() => _EnglishEntryinclineState();
}

class _EnglishEntryinclineState extends State<EnglishEntryincline> {
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
- Verb: incline (Derived forms: inclined, inclining, inclines)
1. Have a tendency or disposition to do or be something; be inclined (- tend, be given, lean, run)
"He inclined to corpulence";
 
2. Bend or turn (one's ear) towards a speaker in order to listen well
"He inclined his ear to the wise old man"
 
3. Lower or bend (the head or upper body), as in a nod or bow
"She inclined her head to the student"
 
4. Be at an angle (- slope, pitch)
"The terrain inclined down";
 
5. Feel favourably disposed or willing
"She inclines to the view that people should be allowed to express their religious beliefs"
 
6. Make receptive or willing towards an action or attitude or belief (- dispose)
"Their language inclines us to believe them";

- Noun: incline (Derived forms: inclines)
1. A non-flat area of ground that tends upwards or downwards (- slope, side)
"he climbed the steep incline";
 
2. An inclined surface connecting two levels (- ramp)
""",
  );

  final String keyword = "incline";
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
    await flutterTts.speak("""incline""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I incline to the view that we should take no action at this stage.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The government is more effective than we incline to think.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""His obvious sincerity inclined me to trust him.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He inclined his head in acknowledgement.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The land inclined gently towards the shore.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The road has a slight incline near the park.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'hFZFjoX2cGg';
    const double startSecondsend = 381;
    const String videoIdone = 'wMmy2MlH55U';
    const double startSecondsone = 591;
    const String videoIdtwo = 'qCbfTN-caFI';
    const double startSecondstwo = 3236;
    const String videoIdthree = 'Yz7Ofr9z1co';
    const double startSecondsthree = 438;
    const String videoIdfour = 'KGqexebCcUo';
    const double startSecondsfour = 366;
    const String videoIdfive = 'JqJz_KNgXLw';
    const double startSecondsfive = 134;

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
                      word: """incline""",
                      // alsoEnglishWord: "also: incline",
                      britshText: """IpaUK: /ɪnˈklaɪn/""",
                      americanText: """IpaUS: /ɪnˈklaɪn/""",
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
کوردی: لێژ، سەرەوخواری، ئاستی سەرەوخوار
"""),
// With short examples define "incline", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) هەبوونی خواستی ئەوەی کە بە شێوەیەکی دیاریکراو ڕەفتار بکەیت"""),
                    SentencesRow(
                      englishText:
                          """I incline to the view that we should take no action at this stage.""",
                      kurdishText:
                          """ئەو دیدەم هەیە کە هیچ هەنگاوێک نەنێین لەم قۆناغەدا.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The government is more effective than we incline to think.""",
                      kurdishText:
                          """حکومەت کاریگەرترە وەک لەوەی وای بۆدەچین بیری لێ بکەینەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """His obvious sincerity inclined me to trust him.""",
                      kurdishText:
                          """سەرڕاستییەکەی وایکرد مەیلم هەبێت متمانەی پێ بکەم.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) چەماندنەوەی سەرت بۆ پێشەوە، بە تایبەتی وەک ئاماژەی ڕازیبوون، پێشوازی، هتد"""),
                    SentencesRow(
                      englishText:
                          """He inclined his head in acknowledgement.""",
                      kurdishText: """بە ڕەزامەندییەوە سەری چەماندەوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) چەمانەوە بە ئاراستەیەکی دیاریکراو"""),
                    SentencesRow(
                      englishText:
                          """The land inclined gently towards the shore.""",
                      kurdishText:
                          """زەوییەکە بە کەمی بەرەو کەناراوەکە لێژ دەبوویەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٤. (ناو) لێژی"""),
                    SentencesRow(
                      englishText:
                          """The road has a slight incline near the park.""",
                      kurdishText:
                          """ڕێگاکە لێژییەکی کەمی هەیە لە نزیکی پارکەکە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
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