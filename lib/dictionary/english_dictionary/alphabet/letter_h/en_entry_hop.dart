import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhop extends StatefulWidget {
  const EnglishEntryhop({super.key});

  @override
  State<EnglishEntryhop> createState() => _EnglishEntryhopState();
}

class _EnglishEntryhopState extends State<EnglishEntryhop> {
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
- Verb: hop (Derived forms: hopping, hops, hopped)
1. Jump lightly (- skip, hop-skip)
 
2. Move quickly from one place to another
 
3. Travel by means of an aircraft, bus, etc.
"She hopped a train to Chicago"; "He hopped rides all over the country"
 
4. Traverse as if by a short aeroplane trip
"Hop the Pacific Ocean"
 
5. Jump across
"He hopped the bush"
 
6. Make a jump forward or upward

- Noun: hop (Derived forms: hops)
1. The act of hopping; jumping upward or forward (especially on one foot)
 
2. Twining perennials having cordate leaves and flowers arranged in conelike spikes; the dried flowers of this plant are used in brewing to add the characteristic bitter taste to beer (- hops)
 
3. An informal dance where popular music is played (- record hop)
""",
  );

  final String keyword = "hop";
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
    await flutterTts.speak("""hop""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was hopping from foot to foot.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I couldn't put my weight on my ankle and had to hop everywhere.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A robin was hopping around on the path.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The frog hopped towards him.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Hop in, I'll drive you home.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She hopped out of the car at the traffic lights.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I hopped on the next train.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We hopped over to Paris for the weekend.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I hopped a plane for New York.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She’s always hopping from one project to the next.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I like to hop from channel to channel when I watch TV.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """With his feet tied together he could only move in little hops.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's only a short hop to Paris.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Almost 80% of the nation's hops are grown in this area.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'rPe4yziWiOg';
    const double startSecondsend = 126;
    const String videoIdone = 'hFZFjoX2cGg';
    const double startSecondsone = 564;
    const String videoIdtwo = 'v6yg4ImnYwA';
    const double startSecondstwo = 585;
    const String videoIdthree = 'tsxmyL7TUJg';
    const double startSecondsthree = 776;
    const String videoIdfour = 'hTqtGJwsJVE';
    const double startSecondsfour = 1097;
    const String videoIdfive = 'mY3SEMTROas';
    const double startSecondsfive = 1354;

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
                      word: """hop""",
                      // alsoEnglishWord: "also: hop",
                      britshText: """IpaUK: /hɒp/""",
                      americanText: """IpaUS: /hɑːp/""",
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
کوردی: هەنگڵەشەلە، لەنگڕۆ، هەڵقون، قەنە، هەڵبەزهەڵبەز، هەڵبەزودابەز
"""),
                    const DefinitionKurdish(
                        text: """١. (کردار) ڕۆشتن بە بازدان لەسەر یەک لاق"""),
                    SentencesRow(
                      englishText: """He was hopping from foot to foot.""",
                      kurdishText: """هەڵبەز و دابەزی بوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I couldn't put my weight on my ankle and had to hop everywhere.""",
                      kurdishText:
                          """نەمدەتوانی هێز بخەمە سەر لاقم و دەبوو بازبازێن بکەم بۆ هەموو شوێنێک.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) کە ئاژەڵێک دەجووڵێت بە بەکارهێنانی هەموو لاقەکانی پێکەوە"""),
                    SentencesRow(
                      englishText:
                          """A robin was hopping around on the path.""",
                      kurdishText: """ڕۆبنێک لەسەر ڕێگاکە خەریکی بازدان بوو.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The frog hopped towards him.""",
                      kurdishText: """بۆقەکە بازی دا بۆ لای.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) چوونە شوێنێک بە خێرایی و لەناکاو"""),
                    SentencesRow(
                      englishText: """Hop in, I'll drive you home.""",
                      kurdishText: """سەرکەوە، دەتگەیەنمە ماڵەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She hopped out of the car at the traffic lights.""",
                      kurdishText:
                          """لە ترافیک لایتەکان بازی دایە خوارەوەی ئۆتۆمبێلەکە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I hopped on the next train.""",
                      kurdishText: """سواری شەمەندەفەری دواتر بووم.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We hopped over to Paris for the weekend.""",
                      kurdishText: """بۆ کۆتایی هەفتەکە بۆ پاریس بەڕێکەوتین.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (کردار) چوونە سەر فڕۆکەیەک، پاسێک، هتد"""),
                    SentencesRow(
                      englishText: """I hopped a plane for New York.""",
                      kurdishText: """سەرکەوتمە ناو فڕۆکەیەک بۆ نیویۆرک.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) گۆڕینی چالاکییەک یان بابەتێک بۆ یەکێکی دیکە"""),
                    SentencesRow(
                      englishText:
                          """She’s always hopping from one project to the next.""",
                      kurdishText:
                          """هەمیشە لە پڕۆژەیەکەوە دەچێتە یەکێکی دیکە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I like to hop from channel to channel when I watch TV.""",
                      kurdishText:
                          """حەز دەکەم لە کەناڵێکەوە بچمە یەکێکی دیکە کە سەیری تەلەفیزیۆن دەکەم.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) بازێکی کورت لەلایەن کەسێکەوە لەسەر یەک لاق یان لەلایەن ئاژەڵێکەوە لەسەر هەموو لاقەکانی"""),
                    SentencesRow(
                      englishText:
                          """With his feet tied together he could only move in little hops.""",
                      kurdishText:
                          """بەوەی پێیەکانی پێکەوە گرێدرابوون تەنها دەیتوانی باز بدات.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ناو) گەشتێکی کورت، بە تایبەتی بە فڕۆکە"""),
                    SentencesRow(
                      englishText: """It's only a short hop to Paris.""",
                      kurdishText: """تەنها کورتە گەشتێکە بۆ پاریس.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ناو) ڕووەکێکی پیاهەڵگژ کە گوڵی شێوە قووچەقی سەوزی هەیە؛ گوڵی ئەم ڕووەکە کە وشککراوە و لە درووستکردنی بیرە بەکاردێت"""),
                    SentencesRow(
                      englishText:
                          """Almost 80% of the nation's hops are grown in this area.""",
                      kurdishText:
                          """بە نزیکەیی ٨٠٪ ـی جەنجەلەی وڵاتەکە لەم هەرێمە بەرهەم دێت.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
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