import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhitch extends StatefulWidget {
  const EnglishEntryhitch({super.key});

  @override
  State<EnglishEntryhitch> createState() => _EnglishEntryhitchState();
}

class _EnglishEntryhitchState extends State<EnglishEntryhitch> {
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
- Noun: hitch (Derived forms: hitches)
1. An unforeseen obstacle (- hang-up, rub, snag)
 
2. The state of inactivity following an interruption (- arrest, check, halt, stay, stop, stoppage)
 
3. A connection between a vehicle and the load that it pulls
 
4. A knot that can be undone by pulling against the strain that holds it; a temporary knot
 
5. Any obstruction that impedes or is burdensome (- hindrance, hinderance, preventive, preventative, encumbrance, incumbrance, interference)
 
6. The uneven manner of walking that results from an injured leg (- hobble, limp)
 
7. A period of time spent in military, diplomatic or other service (- enlistment, term of enlistment, tour of duty, duty tour, tour

- Verb: hitch (Derived forms: hitching, hitched, hitches)
1. Fasten, esp. temporarily
 
2. To hook or entangle (- catch)
"One foot hitched in the stirrup";
 
3. Jump vertically, with legs stiff and back arched (- buck, jerk)
 
4. Travel by getting free rides from motorists (- hitchhike, thumb)
"You can, of course, hitch anywhere that there are cars and traffic";
 
5. Connect to a vehicle:
 
6. [N. Amer, informal] Walk impeded by some physical limitation or injury (- limp, gimp [N. Amer, informal], hobble)
"The old woman hitches down to the store every day";
""",
  );

  final String keyword = "hitch";
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
    await flutterTts.speak("""hitch""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They hitched a ride in a truck.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They tried to hitch a lift back to London.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She hitched up her skirt and waded into the river.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She hitched herself up.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He hitched himself onto the bar stool.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She hitched the pony to the gate.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The ceremony went off without a hitch.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There's been a hitch in the plans.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'OZ_xhkg32nk';
    const double startSecondsend = 257;
    const String videoIdone = 'OIo2Ie1HwHY';
    const double startSecondsone = 2359;
    const String videoIdtwo = 'LfR4QfmwTAc';
    const double startSecondstwo = 182;
    const String videoIdthree = 's3YTfhJmh1I';
    const double startSecondsthree = 473;
    const String videoIdfour = 'XxOh12Uhg08';
    const double startSecondsfour = 895;
    const String videoIdfive = 'HbUGTcdFIio';
    const double startSecondsfive = 3039;

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
                      word: """hitch""",
                      // alsoEnglishWord: "also: hitch",
                      britshText: """IpaUK: /hɪtʃ/""",
                      americanText: """IpaUS: /hɪtʃ/""",
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
کوردی: تەکان، پاڵ،	گرێ (قوڵفە)،	وێستان،	گیر، کێشە، گرێ، قۆرت، گرفت
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئەوەی کەسێک بە بێ‌بەرامبەر بتگەیەنێتە شوێنێک بە ئۆتۆمبێل"""),
                    SentencesRow(
                      englishText: """They hitched a ride in a truck.""",
                      kurdishText: """گەیاندنێکیان لە بارهەڵگرێک بەدەست خست.""",
                      englishNote: """British English: They hitched a lift.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They tried to hitch a lift back to London.""",
                      kurdishText:
                          """هەوڵیان دا گەڕانەوەیەک بۆ لەندەن بەدەست بخەن.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (کردار) بەرزکردنەوەی پارچە جلێکت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: hike up"),
                    SentencesRow(
                      englishText:
                          """She hitched up her skirt and waded into the river.""",
                      kurdishText:
                          """تەنوورەکەیی بەرزکردەوە و ڕۆشتە ناو ڕووبارەکە.""",
                      englishNote:
                          """This means she pulled her skirt higher to avoid getting it wet and then walked into the shallow part of the river.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) بەرزکردنەوەی خۆت بۆ شوێنێکی بەرزتر یان ئەو شوێنەی باسکراوە"""),
                    SentencesRow(
                      englishText: """She hitched herself up.""",
                      kurdishText: """خۆی بەرزکردەوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He hitched himself onto the bar stool.""",
                      kurdishText: """خۆی بەرزکردە سەر کورسی باڕەکە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (کردار) بەستنەوەی شتێک بە شتێکی دیکە"""),
                    SentencesRow(
                      englishText: """She hitched the pony to the gate.""",
                      kurdishText: """ئەسپۆکەکەی بەستە دەروازەکەوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) کێشە یان سەختییەک کە دواکەوتنێکی کورت درووست دەکات"""),
                    SentencesRow(
                      englishText: """The ceremony went off without a hitch.""",
                      kurdishText: """بۆنەکە بەبێ کێشە بەڕێوەچوو.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """There's been a hitch in the plans.""",
                      kurdishText: """کێشەیەک لە پلانەکان درووست بووە.""",
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