import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryadd extends StatefulWidget {
  const EnglishEntryadd({super.key});

  @override
  State<EnglishEntryadd> createState() => _EnglishEntryaddState();
}

class _EnglishEntryaddState extends State<EnglishEntryadd> {
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
- Verb: add (derived forms: added, adds, adding)
1. Make an addition (to); join or combine or unite with others; increase the quality, quantity, size or scope of
"We added two students to that dorm room"; "She added a personal note to her letter"; "Add insult to injury"; "Add some extra plates to the dinner table"
 
2. State or say further (= append, supply)
"'It doesn't matter,' he added";
 
3. Provide a particular quality or character (= lend, impart, bestow, contribute, bring)
"The music added a lot to the play"; "This adds a light note to the program";
 
4. (arithmetic) make an addition by combining numbers (= add together)
"Add 27 and 49, please!"; "add together 27 and 49, please!";
 
5. Determine the sum of(= total, tot, tot up, sum, sum up, summate, tote up, add together, tally, add up)
"Add all the people in this town to those of the neighbouring town"; "add together all the people in this town to those of the neighbouring town"; "add up all the people in this town to those of the neighbouring town";
 
6. Constitute an addition
"This paper will add to her reputation"

- Noun: ADD
A condition (mostly in boys) characterized by behavioral and learning disorders (= - attention deficit disorder, attention deficit hyperactivity disorder, ADHD, hyperkinetic syndrome, minimal brain dysfunction, minimal brain damage, MBD)
""",
  );
// 188888880002200

  final String keyword = "add";
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
    await flutterTts.speak("""add""");
  }

  Future<void> speakadd4257(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Shall I add your name to the list?");
  }

  Future<void> speakadd45698(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Chlorine is added to the water to kill bacteria.");
  }

  Future<void> speakadd241(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He knew how to add and subtract.");
  }

  Future<void> speakadd459224(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I have nothing to add to my earlier statement.");
  }

  @override
  Widget build(BuildContext context) {

    const String videoIdend = '_3tdqQR8j28';
    const double startSecondsend = 127;
    const String videoIdone = 'j6r6NQcLDMs';
    const double startSecondsone = 117;
    const String videoIdtwo = 'AwysSy4scqA';
    const double startSecondstwo = 363;
    const String videoIdthree = 'fmLxHjk1n4o';
    const double startSecondsthree = 16;
    const String videoIdfour = 'qzAXbtw0S0U';
    const double startSecondsfour = 47;
    const String videoIdfive = 'g2ABXldEEv0';
    const double startSecondsfive = 4;
    // const String videoId = 'hE3KjKg69ZA';
    // const double startSeconds = 685;
    // const String videoId = 'Cr4RYby4L6Q';
    // const double startSeconds = 24;
    // const String videoId = 'LTnl36-0-zU';
    // const double startSeconds = 439;
    // const String videoId = 'mi2B_Y2z-ts';
    // const double startSeconds = 48;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """add""",
                      // alsoEnglishWord: "also: add",
                      britshText: """IpaUK: /æd/""",
                      americanText: """IpaUS: /æd/""",
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
کوردی: خستنەسەر، کۆکردنەوە، پێوەنان
"""),
                          const DefinitionKurdish(
                              text: "١. (کردار) زیادکردنی شتێک بۆ شتێکی تر" ""),
                          SentencesRow(
                            englishText: "Shall I add your name to the list?",
                            kurdishText: "ناوت زیادبکەم بۆ لیستەکە؟",
                            onPressedBritish: () => speakadd4257("en-GB"),
                            onPressedAmerican: () => speakadd4257("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Chlorine is added to the water to kill bacteria.",
                            kurdishText:
                                "کلۆر زیاد دەکرێت بۆ ئاو بۆ کووشتنی بەکتریا.",
                            onPressedBritish: () => speakadd45698("en-GB"),
                            onPressedAmerican: () => speakadd45698("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) کۆکردنەوەی ژمارە پێکەوە"""),
                          SentencesRow(
                            englishText: "He knew how to add and subtract.",
                            kurdishText:
                                "دەیزانی چۆن کۆکرنەوە و لێدەرکردن بکات.",
                            onPressedBritish: () => speakadd241("en-GB"),
                            onPressedAmerican: () => speakadd241("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) زیادکردنی قسەیەک بۆ شتێک کە پێشتر وتووتە"""),
                          SentencesRow(
                            englishText:
                                "I have nothing to add to my earlier statement.",
                            kurdishText:
                                "ھیچم نییە بۆ وتن زیاتر لەوەی پێشتر وتم.",
                            onPressedBritish: () => speakadd459224("en-GB"),
                            onPressedAmerican: () => speakadd459224("en-US"),
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
