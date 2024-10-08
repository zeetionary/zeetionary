// end agree
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryagree extends StatefulWidget {
  const EnglishEntryagree({super.key});

  @override
  State<EnglishEntryagree> createState() => _EnglishEntryagreeState();
}

class _EnglishEntryagreeState extends State<EnglishEntryagree> {
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
- Verb: agree (derived forms: agrees, agreeing, agreed)
1. Be in accord; be in agreement (= hold, concur, concord)
"We agreed on the terms of the settlement"; "I can't agree with you!";
 
2. Consent or assent to a condition, or agree to do something
"She agreed to all my conditions"; "He agreed to leave her alone"
 
3. Be compatible, similar or consistent; coincide in their characteristics (= match, fit, correspond, check, jibe, gibe, tally, marry up, marry)
"The two stories don't agree in many details";
 
4. Go well together (= harmonize, harmonise [Brit], consort, accord, concord, fit in)
"The colours don't agree";
 
5. (grammar) show grammatical agreement
"Subjects and verbs must always agree in English"
 
6. Be agreeable or suitable
"White wine doesn't agree with me"
 
7. Achieve harmony of opinion, feeling, or purpose
"No two of my colleagues would agree on whom to elect chairman"
""",
  );
// 188888880002200

  final String keyword = "agree";
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
    await flutterTts.speak("""agree""");
  }

  Future<void> speakagree6778(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("When he said that, I had to agree.");
  }

  Future<void> speakag2256(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I don't agree with hitting children as a punishment.");
  }

  Future<void> speakagree2344(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I asked for a pay rise and she agreed.");
  }

  Future<void> speakagre3555(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We agreed to meet on Thursday.");
  }

  Future<void> speakagree37859(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Next year's budget has been agreed.");
  }

  Future<void> speakagr3544(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Your account of the accident does not agree with hers.");
  }

  @override
  Widget build(BuildContext context) {
    const String videoIdend = 'E37swnRU2fs';
    const double startSecondsend = 785;
    const String videoIdone = 'LnnDOMyZjbE';
    const double startSecondsone = 1;
    const String videoIdtwo = '_iQmmsGdaGo';
    const double startSecondstwo = 1197;
    const String videoIdthree = 'BgPmPaO9Duk';
    const double startSecondsthree = 6;
    const String videoIdfour = 'qNQsVH16jNw';
    const double startSecondsfour = 121;
    const String videoIdfive = '4eov699jiaM';
    const double startSecondsfive = 1;
    // final String _videoId = 'OHxtzgBkE_I';
    // final double _startSeconds = 1;
    // final String _videoId = 'a5F5UMbcHvM';
    // final double _startSeconds = 114;
    // final String _videoId = 'KBPPpvihR4s';
    // final double _startSeconds = 144;
    // final String _videoId = 't093mNvl03c';
    // final double _startSeconds = 62;

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
                      word: """agree""",
                      // alsoEnglishWord: "also: agree",
                      britshText: """IpaUK: /əˈɡriː/""",
                      americanText: """IpaUS: /əˈɡriː/""",
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
١. (کردار) ھاوڕابوون لەگەڵ کەسێک"""),
                    SentencesRow(
                      englishText: "When he said that, I had to agree.",
                      kurdishText: "کە ئەوەی گوت، ناچاربووم ھاوڕابم.",
                      onPressedBritish: () => speakagree6778("en-GB"),
                      onPressedAmerican: () => speakagree6778("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٢. (کردار) پەسەندکردنی شتێک"""),
                    SentencesRow(
                      englishText:
                          "I don't agree with hitting children as a punishment.",
                      kurdishText: "لێدانی مناڵ وەک سزادان پەسەند ناکەم.",
                      onPressedBritish: () => speakag2256("en-GB"),
                      onPressedAmerican: () => speakag2256("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٣. (کردار) کردن یان ڕێگەدان بە شتێک کە کەسێک دەیەوێت"""),
                    SentencesRow(
                      englishText: "I asked for a pay rise and she agreed.",
                      kurdishText:
                          "داوای زیادکردنی مووچەکەمم کرد و ئەویش ڕازی بوو.",
                      onPressedBritish: () => speakagree2344("en-GB"),
                      onPressedAmerican: () => speakagree2344("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٤. (کردار) ڕێککەوتن لەگەڵ کەسێک بۆ کردنی شتێک"""),
                    SentencesRow(
                      englishText: "We agreed to meet on Thursday.",
                      kurdishText: "ڕێککەوتین پێنجشەممە چاومان بە یەک بکەوێت.",
                      onPressedBritish: () => speakagre3555("en-GB"),
                      onPressedAmerican: () => speakagre3555("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٥. (کردار) پەسەندکردنی پلانێک یان داوایەک"""),
                    SentencesRow(
                      englishText: "Next year's budget has been agreed.",
                      kurdishText: "بودجەی ساڵی داھاتوو پەسەندکراوە.",
                      onPressedBritish: () => speakagree37859("en-GB"),
                      onPressedAmerican: () => speakagree37859("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """
٦. (کردار) دوو شت یەکبگرنەوە لەگەڵ یەک و ھەمان شت بن"""),
                    SentencesRow(
                      englishText:
                          "Your account of the accident does not agree with hers.",
                      kurdishText:
                          "گێڕانەوەت بۆ ڕووداوەکە یەکناگرێتەوە لەگەڵ گێڕانەوەی ئەو.",
                      onPressedBritish: () => speakagr3544("en-GB"),
                      onPressedAmerican: () => speakagr3544("en-US"),
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

