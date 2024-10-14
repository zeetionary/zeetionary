import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhorror extends StatefulWidget {
  const EnglishEntryhorror({super.key});

  @override
  State<EnglishEntryhorror> createState() => _EnglishEntryhorrorState();
}

class _EnglishEntryhorrorState extends State<EnglishEntryhorror> {
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
- Noun: horror (Derived forms: horrors)
1. Intense and profound fear
 
2. Something that inspires horror; something horrible
"the painting that others found so beautiful was a horror to him"
 
3. Intense aversion (- repugnance, repulsion, revulsion)
""",
  );

  final String keyword = "horror";
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
    await flutterTts.speak("""horror""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The thought of being left alone filled her with horror.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """People watched in horror as the plane crashed to the ground.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She realized with horror that somebody had broken into her house.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The UN has been slow to condemn the horrors being perpetrated by the regime.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They will never recover mentally from the horrors of that day.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He had witnessed horrors committed by the enemy.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""In his dreams he relives the horror of the attack.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The full horror of the accident was beginning to become clear.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Most people have a horror of speaking in public.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The horror movie had a blood-curdling scene that left everyone terrified.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In the horror movie, a group of friends stumbled upon a cave inhabited by cannibals.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""To my horror the bank bounced the cheque.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The country had just emerged from the horrors of civil war.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""TV viewers watched in horror as events unfolded.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Her eyes dilated with horror at what she had done.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'DO9U_XxN-Kc';
    const double startSecondsend = 451;
    const String videoIdone = 'MnExgQ81fhU';
    const double startSecondsone = 414;
    const String videoIdtwo = 'MGO4_8YRKro';
    const double startSecondstwo = 355;
    const String videoIdthree = 'zqllxbPWKNI';
    const double startSecondsthree = 1731;
    const String videoIdfour = '40a1AAbq_LE';
    const double startSecondsfour = 120;
    const String videoIdfive = 'nzDJdZLPeGE';
    const double startSecondsfive = 36;

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
                      word: """horror""",
                      // alsoEnglishWord: "also: horror",
                      britshText: """IpaUK: /ˈhɒrə(r)/""",
                      americanText: """IpaUS: /ˈhɔːrər/""",
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
کوردی: ترس، لەرز، موچڕک، ددانەچۆقێ، تۆقان، بێزاری، قین‌لێ‌بوون، بێزلێ‌هاتنەوە، ترسناکی،	مایەی ترس و بێزاری،	مناڵی دانەکەوتوو و شەیتان، هەوهەوێن‌نەرەوە
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) هەستی شۆک یان ترسێکی زۆر"""),
                    SentencesRow(
                      englishText:
                          """The thought of being left alone filled her with horror.""",
                      kurdishText: """هەستی تەنهایی پڕ لە ترس هێشتییەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Her eyes dilated with horror at what she had done.""",
                      kurdishText:
                          """چاوەکانی گەورەبوون لە تۆقیندا کە زانی چی کردبوو.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """To my horror the bank bounced the cheque.""",
                      kurdishText: "لە بەدبەختیمدا بانکەکە چەکەکەی ڕەتکردەوە.",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """TV viewers watched in horror as events unfolded.""",
                      kurdishText:
                          """بینەرانی تەلەفیزیۆن بە تۆقینەوە سەیریان دەکرد کە ڕووداوەکان ڕوویان دەدا.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """People watched in horror as the plane crashed to the ground.""",
                      kurdishText:
                          """خەڵکی بە ترسەوە سەیریان دەکرد کە فڕۆکەکە کێشای بە زەویدا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She realized with horror that somebody had broken into her house.""",
                      kurdishText:
                          """بە تۆقینەوە زانی کە کەسێک چووبووە ماڵەکەی.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) ئەزموونێکی زۆر ناخۆش و ترسێنەر"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The UN has been slow to condemn the horrors being perpetrated by the regime.""",
                      kurdishText:
                          """نەتەوە یەکگرتووەکان هێواش بووە لە سەرکۆنەی ئەو تاوانانەی لەلایەن ڕژێمەکەوە ئەنجام دراوە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They will never recover mentally from the horrors of that day.""",
                      kurdishText:
                          """هەرگیز لە ڕووی دەروونییەوە چاک نابنەوە لە ترسناکی ئەو ڕۆژە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The country had just emerged from the horrors of civil war.""",
                      kurdishText:
                          "وڵاتەکە تازە لە ترسناکی شەڕی ناوخۆ دەرچووە.",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He had witnessed horrors committed by the enemy.""",
                      kurdishText:
                          """ئاگای لە تاوانکاری بوو کە لەلایەن دوژمن ئەنجام درا.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) سرووشتی زۆر خراپی شتێک """),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """In his dreams he relives the horror of the attack.""",
                      kurdishText:
                          """لە خەونەکانیدا قێزەونییەکانی هێرشەکە دەبینێتەوە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The full horror of the accident was beginning to become clear.""",
                      kurdishText:
                          """قێزەونی تەواوی ڕووداوەکە دەستی دەکرد بەوەی ڕوون ببێتەوە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) هەستێکی بەهێزی ترس یان ڕق لە کەسێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Most people have a horror of speaking in public.""",
                      kurdishText:
                          """زۆر کەس ترسیان هەیە لە قسەکردن لە شوێنی گشتی.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) فیلم یان کتێبی ترسناک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The horror movie had a blood-curdling scene that left everyone terrified.""",
                      kurdishText:
                          "فیلمە ترسناکەکە دیمەنێکی تۆقێنەری تێدا بوو کە ھەمووانی تاساند.",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """In the horror movie, a group of friends stumbled upon a cave inhabited by cannibals.""",
                      kurdishText:
                          "لە فیلمە ترسناکەکەدا، ژمارەیەک ھاوڕێ ڕێیان ھەڵدەکەوێتە ئەشکەوتێک کە مرۆڤخۆری تێدایە",
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