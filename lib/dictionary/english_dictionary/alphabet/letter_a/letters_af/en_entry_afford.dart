// end afford
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryafford extends StatefulWidget {
  const EnglishEntryafford({super.key});

  @override
  State<EnglishEntryafford> createState() => _EnglishEntryaffordState();
}

class _EnglishEntryaffordState extends State<EnglishEntryafford> {
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
- Verb: afford (derived forms: affording, affords, afforded)
1. Be able to spare or give up
"I can't afford to spend two hours with this person"
 
2. Be the cause or source of (= yield, give)
"Our meeting afforded much interesting information";
 
3. Have the financial means to do something or buy something
"We can't afford to send our children to college"; "Can you afford this car?"
 
4. Provide entry or access to (= open, give)
""",
  );
// 188888880002200

  final String keyword = "afford";
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
    await flutterTts.speak("""afford""");
  }

  Future<void> speakaffor458(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She never took a taxi, even though she could afford to.");
  }

  Future<void> speakaff6665(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They couldn't afford to buy a house there.");
  }

  Future<void> speakaff4511(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We cannot afford to ignore this warning.");
  }

  Future<void> speakaf44922(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The tree affords some shelter from the sun.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = '_GuOjXYl5ew';
    const double startSecondsend = 366;
    const String videoIdone = 'KJy7T24rhg0';
    const double startSecondsone = 493;
    const String videoIdtwo = 'ewLpXw6uN28';
    const double startSecondstwo = 397;
    const String videoIdthree = 'EL5swb26Y_4';
    const double startSecondsthree = 791;
    const String videoIdfour = 'yCdbHiVPYwI';
    const double startSecondsfour = 237;
    const String videoIdfive = 'Cln0J87vulU';
    const double startSecondsfive = 942;
    // const String videoId = 'EFkyxzJtiv4';
    // const double startSeconds = 508;
    // const String videoId = 'nGrB-5ieeMU';
    // const double startSeconds = 398;
    // const String videoId = '8CUUFpRYtN4';
    // const double startSeconds = 320;
    // const String videoId = 'BfzXLjK6Pno';
    // const double startSeconds = 77;

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
                      word: """afford""",
                      // alsoEnglishWord: "also: afford",
                      britshText: """IpaUK: /əˈfɔːd/""",
                      americanText: """IpaUS: /əˈfɔːrd/""",
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
                    const DefinitionKurdish(text: """
١. (کردار) ھەبوونی پارەی پێویست"""),
                    SentencesRow(
                      englishText:
                          "She never took a taxi, even though she could afford to.",
                      kurdishText:
                          "ھەرگیز تەکسی نەدەگرت، ئەگەرچی پارەشی ھەبوو.",
                      onPressedBritish: () => speakaffor458("en-GB"),
                      onPressedAmerican: () => speakaffor458("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: "They couldn't afford to buy a house there.",
                      kurdishText: "نەیاندەتوانی خانوویەک لەوێ بکڕن.",
                      onPressedBritish: () => speakaff6665("en-GB"),
                      onPressedAmerican: () => speakaff6665("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) شتێک کە پێویستە خۆتی لێ بە دوور ئەگەرنا کێشەت بۆ درووست دەکات"""),
                    SentencesRow(
                      englishText: "We cannot afford to ignore this warning.",
                      kurdishText: "ناتوانین ئەم ھۆشدارییە پشتگوێ بخەین.",
                      onPressedBritish: () => speakaff4511("en-GB"),
                      onPressedAmerican: () => speakaff4511("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) پێدانی شتێک بە کەسێک"""),
                    SentencesRow(
                      englishText:
                          "The tree affords some shelter from the sun.",
                      kurdishText: "دارەکە ھەندێک سێبەر دەبەخشێت.",
                      onPressedBritish: () => speakaf44922("en-GB"),
                      onPressedAmerican: () => speakaf44922("en-US"),
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

