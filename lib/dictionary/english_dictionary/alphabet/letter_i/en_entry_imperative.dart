import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryimperative extends StatefulWidget {
  const EnglishEntryimperative({super.key});

  @override
  State<EnglishEntryimperative> createState() => _EnglishEntryimperativeState();
}

class _EnglishEntryimperativeState extends State<EnglishEntryimperative> {
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
- Adjective: imperative
1. Of greatest importance (- paramount)
"It is imperative to address these issues to improve well-being";
 
2. Requiring attention or action
"as nuclear weapons proliferate, preventing war becomes imperative"; "requests that grew more and more imperative"
 
3. (grammar) relating to verbs in the imperative mood

- Noun: imperative (Derived forms: imperatives)
1. Some duty that is essential and urgent
 
2. A verb in the imperative mood. (- imperative verb)
 
3. A mood that expresses an intention to influence the listener's behaviour (- imperative mood, jussive mood, imperative form)
""",
  );

  final String keyword = "imperative";
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
    await flutterTts.speak("""imperative""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""It is absolutely imperative that we finish by next week.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It is imperative to continue the treatment for at least two months.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In the phrase "Leave him alone!", the verb "leave" is in the imperative form.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Getting the unemployed back to work, said the mayor, is a moral imperative.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In the phrase "Leave him alone!", the verb "leave" is an imperative/is in the imperative.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'VNZ0so0LCoM';
    const double startSecondsend = 746;
    const String videoIdone = 'LbPw9AlVKVM';
    const double startSecondsone = 1011;
    const String videoIdtwo = 'wJa5Ch0O4BI';
    const double startSecondstwo = 1332;
    const String videoIdthree = '9HabyEoLBGs';
    const double startSecondsthree = 161;
    const String videoIdfour = 'OoJsPvmFixU';
    const double startSecondsfour = 2810;
    const String videoIdfive = '1n2nPRxAOss';
    const double startSecondsfive = 1521;

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
                      word: """imperative""",
                      // alsoEnglishWord: "also: imperative",
                      britshText: """IpaUK: /ɪmˈperətɪv/""",
                      americanText: """IpaUS: /ɪmˈperətɪv/""",
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
کوردی: پێویست، پێدڤی، هەرەگرنگ،	زۆرەملی، بەزۆر، توند، زۆردارانە، دەستووردەرانە،	(ڕێزمان) فەرمانی
"""),
// With short examples define "imperative", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) زۆر گرنگ کە پێویستی بە مامەڵەی دەستبەجێیە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: vital"),
                    SentencesRow(
                      englishText:
                          """It is absolutely imperative that we finish by next week.""",
                      kurdishText:
                          """تەواو گرنگە کە تاوەکو هەفتەی داهاتوو تەواو بین.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It is imperative to continue the treatment for at least two months.""",
                      kurdishText:
                          """زۆر پێویستە کە چارەسەرەکە تاوەکو دوو مانگ بەردەوامی پێبدەیت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) کە فەرمان دەردەبڕێت"""),
                    SentencesRow(
                      englishText:
                          """In the phrase "Leave him alone!", the verb "leave" is in the imperative form.""",
                      kurdishText:
                          """لە دەستەواژەی "Leave him alone!"، کرداری "leave" لە شێوەی فەرمانییە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) شتێک کە زۆر گرنگە و پێویستی بە مامەڵەی دەستبەجێیە"""),
                    SentencesRow(
                      englishText:
                          """Getting the unemployed back to work, said the mayor, is a moral imperative.""",
                      kurdishText:
                          """سەرۆک شارەوانییەکە گوتی دووبارە هێنانەوەی بێکاران بۆ سەر ئەرکێکی ئەخلاقییە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) شێوەی کردار کە فەرمان پیشان دەدات"""),
                    SentencesRow(
                      englishText:
                          """In the phrase "Leave him alone!", the verb "leave" is an imperative/is in the imperative.""",
                      kurdishText:
                          """لە دەستەواژەی "Leave him alone!"، کرداری "leave" فەرمانییە.""",
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