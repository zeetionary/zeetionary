import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylapse extends StatefulWidget {
  const EnglishEntrylapse({super.key});

  @override
  State<EnglishEntrylapse> createState() => _EnglishEntrylapseState();
}

class _EnglishEntrylapseState extends State<EnglishEntrylapse> {
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
- Noun: lapse (Derived forms: lapses)
1. A mistake resulting from inattention (- oversight)
 
2. A break or intermission in the occurrence of something
"a lapse of three weeks between letters"
 
3. A failure to maintain a higher state (- backsliding, lapsing, relapse, relapsing, reversion, reverting)

- Verb: lapse (Derived forms: lapsed, lapses, lapsing)
1. Pass into a specified state or condition; sink into (- sink, pass)
"He lapsed into nirvana";
 
2. End, at least for a long time
"The correspondence lapsed"
 
3. Drop to a lower level, as in one's morals or standards (- backslide)
"Conservatives worry about McCain's lapse on immigration";
 
4. Go back to bad behaviour (- relapse, recidivate, regress, retrogress, fall back)
 
5. Let slip
"He lapsed his membership"
 
6. Become later by the passage of a given amount of time (- elapse, pass, slip by, glide by, slip away, go by, slide by, go along)
"three years lapsed";
""",
  );

  final String keyword = "lapse";
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
    await flutterTts.speak("""lapse""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I had a momentary lapse when I couldn't remember his name.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I keep suffering these mental lapses.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""After a lapse of six months we met up again.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""It was an odd lapse for one who is normally so polite.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The treaty lapsed in 1995.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This custom had lapsed over the years.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He lapsed from Judaism when he was a student.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/dGpJRvawgNI?t=1105';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/7Vm282YvOGw?t=782';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/Uhh_An7FGek?t=1149';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/uT_GcOGEFsk?t=2091';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/HG29zeyWn58?t=394';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/E2rtQFAibEA?t=7266';
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
                      word: """lapse""",
                      // alsoEnglishWord: "also: lapse",
                      britshText: """IpaUK: /læps/""",
                      americanText: """IpaUS: /læps/""",
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
// کوردی: هەڵە، خەتا، شاشی (چکۆلە)، سەهو، هەڵخلیسکان،	لادان، لە دین وەرگەڕان، هەڵگەڕانەوە، بادانەوە،	(کات) بەسەرچوون، لەدەس‌دان، تێپەڕین،	لەدەس‌دان، چووان، چوون، سووتان، لەکیس‌چوون (لەبەر بەکارنەهێنانی)
// """),
// With short examples define "lapse", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) هەڵەیەکی بچووک، بە تایبەتی بە کە بە لەبیرکردنی شتێک یان بە بێ‌ئاگایی درووست دەبێت"""),
                    SentencesRow(
                      englishText:
                          """I had a momentary lapse when I couldn't remember his name.""",
                      kurdishText:
                          """تێکچوونێکی کورتخایەنم هەبوو کە نەمتوانی ناویم بیربکەوێتەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I keep suffering these mental lapses.""",
                      kurdishText: """بەردەوام شاشی دەروونیم دەبێت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) ماوەی نێوان دوو شت کە ڕووددەەن"""),
                    const AlsoEnglishckb(word: "ھەروەھا: interval"),
                    SentencesRow(
                      englishText:
                          """After a lapse of six months we met up again.""",
                      kurdishText:
                          """لە دوای ماوەی شەش مانگ دووبارە یەکدیمان بینیوە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) نموونە یان ماوەیەک لە ڕەفتاری خراپی کەسێک کە بە شێوەی ئاسایی باشە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It was an odd lapse for one who is normally so polite.""",
                      kurdishText:
                          """ڕەفتارێکی نامۆ بوو بۆ کەسێک کە زۆرجار بەڕێزە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) ئەوەی چی دیکە بە فەرمی دانپێدانراو نەبێت بەهۆی ئەوەی ماوەی تەواو بووە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The treaty lapsed in 1995.""",
                      kurdishText: """پەیماننامەکە لە ١٩٩٥ بەسەرچوو.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) ئەوەی کەم کەم لاواز بێت یان کۆتایی بێت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: expire"),
                    SentencesRow(
                      englishText: """This custom had lapsed over the years.""",
                      kurdishText:
                          """ئەم نەریتە لە ماوەی ساڵاندا کاڵ بووەتەوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) ئەوەی واز لە ئایینەکەت بهێنیت یان چی دیکە پەیڕەوی نەکەیت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He lapsed from Judaism when he was a student.""",
                      kurdishText:
                          """باوەڕی بە جودایزم نەما کە خوێندکار بوو.""",
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
// end lapse