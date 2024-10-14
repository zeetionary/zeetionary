import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhook extends StatefulWidget {
  const EnglishEntryhook({super.key});

  @override
  State<EnglishEntryhook> createState() => _EnglishEntryhookState();
}

class _EnglishEntryhookState extends State<EnglishEntryhook> {
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
- Noun: hook (Derived forms: hooks)
1. A bent or curved piece of metal or other material, used for hanging things from or pulling something with
"put your coat on the hook"
 
2. A catch for locking a door
 
3. A sharp curve or crook; a shape resembling a hook (- crotchet)
 
4. Anything that serves as an enticement (- bait, come-on [informal], lure, sweetener)
 
5. A mechanical device that is curved or bent to suspend or hold or pull something (- claw)
 
6. A golf shot that curves to the left for a right-handed golfer (- draw, hooking)
"he took lessons to cure his hook";
 
7. A short swinging punch delivered from the side with the elbow bent
 
8. A basketball shot made over the head with the hand that is farther from the basket (- hook shot)

- Verb: hook (Derived forms: hooked, hooking, hooks)
1. Fasten with a hook
 
2. (handicraft) make a piece of needlework by interlocking and looping thread with a hooked needle (- crochet)
"She sat there hooking all day";
 
3. (golf) hit a ball and put a spin on it so that it travels to the left
 
4. [informal] Take by theft (- snitch [informal], thieve, cop [informal], knock off [informal], glom [N. Amer, informal], pilfer, cabbage [informal], purloin, pinch [Brit, informal], abstract, snarf [N. Amer, informal], swipe [informal], sneak [informal], filch [informal], nobble [Brit, informal], lift, whip [Brit, informal], nick [Brit, informal], snatch [informal], blag [Brit, informal])
"Someone hooked my wallet!";
 
5. (boxing) hit with a hook
"His opponent hooked him badly"
 
6. Catch with a hook
"hook a fish"
 
7. To cause (someone or oneself) to become dependent (on something, especially a narcotic drug) (- addict)
 
8. (rugby) secure with the foot
"hook the ball"
 
9. [informal] Entice and trap (- snare)
"The car salesman had hooked three potential customers";
 
10. [vulgar] Approach with an offer of sexual favours (- solicit, accost)
"he was hooked by a prostitute";
 
11. [informal] Rip off; ask an unreasonable price (- overcharge, soak [informal], surcharge, gazump [Brit, informal], fleece [informal], pluck [informal], rob, skin [informal])
""",
  );

  final String keyword = "hook";
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
    await flutterTts.speak("""hook""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Hang your towel on the hook.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The key was hanging from a hook.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Your coat’s hanging on a hook behind the door.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""A left hook to the jaw ended the match in seconds.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She mistimed a hook and was caught.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The images are used as a hook to get children interested in science.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We hooked the trailer to the back of the car.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He hooked the rope over a branch.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He hooked his foot under the stool and dragged it over.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She hooked her arm through her sister’s.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Hook the rope through your belt.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He managed to hook his fingers under the stone.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was the biggest fish I ever hooked.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They managed to hook a wealthy new client.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Try and hook the ball around the defenders.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'YkiR1KjIw7k';
    const double startSecondsend = 7;
    const String videoIdone = 'XZVHmRvfDHM';
    const double startSecondsone = 59;
    const String videoIdtwo = 'wi5Q3rlQaMI';
    const double startSecondstwo = 121;
    const String videoIdthree = '544DTGHIBM0';
    const double startSecondsthree = 452;
    const String videoIdfour = 'XnbCSboujF4';
    const double startSecondsfour = 203;
    const String videoIdfive = 'toVfvRhWbj8';
    const double startSecondsfive = 415;

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
                      word: """hook""",
                      // alsoEnglishWord: "also: hook",
                      britshText: """IpaUK: /hʊk/""",
                      americanText: """IpaUS: /hʊk/""",
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
کوردی: قولاپ، قوڵف، چنگاڵ، لارە، قەبەنگ
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) پارچە کانزا، پلاستیک، یان وایەرێکی چەماوە کە بەکاردێت بۆ هەڵواسینی شت، راوکردنی ماسی، هتد"""),
                    SentencesRow(
                      englishText: """Hang your towel on the hook.""",
                      kurdishText: """خاولییەکەت هەڵبواسە بە قولاپەکەدا.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The key was hanging from a hook.""",
                      kurdishText: """کلیلەکە بە قولاپێکەوە بوو.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Your coat’s hanging on a hook behind the door.""",
                      kurdishText:
                          """پاڵتواوەکەت هەڵواسراوە بە قولاپێکەوە لە پشتەوەی دەرگاکە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) لێدانێک توند بەوەی ئانیشکت چەماوەتەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A left hook to the jaw ended the match in seconds.""",
                      kurdishText:
                          """لێدانێکی دەستەچەپ بە چەناگەدا یارییەکەی کۆتایی پێهێنا لە چەند چرکەیەکدا.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) شێوازێکی لێدان لە تۆپ کە بچەمێتەوە وەک ئەوەی ڕاست بچێت، کە زۆرجار بە هەڵە دەکرێت لە گۆڵفدا بەڵام لە کریکیت بە ئەنقەستە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She mistimed a hook and was caught.""",
                      kurdishText:
                          """کاتی لێدانەکەی هەڵە دیاری کرد و گیردرا.""",
                      englishNote:
                          """This means she threw a punch (hook) at the wrong moment and ended up being hit by her opponent as a result.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) شتێک کە سەرنجی خەڵکی ڕادەکێشێت بۆ شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The images are used as a hook to get children interested in science.""",
                      kurdishText:
                          """وێنەکان وەک داوێک بەکاردێن بۆ داوێک بەکاردێن بۆ سەرنج ڕاکێشانی منداڵان بۆ زانست.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) بەستن یان هەڵواسین بە قولاپ یان شتێکی کە وەک قولاپە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We hooked the trailer to the back of the car.""",
                      kurdishText: """ترێلەکەمان بەست پشتی ئۆتۆمبێلەکەوە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He hooked the rope over a branch.""",
                      kurdishText: """حەبلێکمان گیر کرد لە لقێک.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) گیرکردنی شتێک، زیاتر لاقت یان باڵت، لە شتێکی دیکە بۆ ئەوەی خۆتی پێوە ببەستیت یان بیجووڵێنیت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He hooked his foot under the stool and dragged it over.""",
                      kurdishText: """لاقی ئاڵاند بە کورسییەکەدا و ڕایکێشا.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She hooked her arm through her sister’s.""",
                      kurdishText: """باڵی ئاڵاند لە باڵی خوشکەکەی.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Hook the rope through your belt.""",
                      kurdishText: """حەبلەکە بئاڵێنە لە قایشەکەت.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He managed to hook his fingers under the stone.""",
                      kurdishText: """توانی پەنجەکانی لەژێر بەردێک گیر بکات.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (کردار) گرتنی ماسی بە قولاپ"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It was the biggest fish I ever hooked.""",
                      kurdishText:
                          """ئەوە گەورەترین ماسی بوو تا ئێستا گرتبێتم.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They managed to hook a wealthy new client.""",
                      kurdishText:
                          """خوازراوی توانییان کڕیارێکی تازەی دەوڵەمەند بکەن بە داوەوە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) لێدان لە تۆپ بە شێوەیەک بەرەو یەک لا بچێت وەک ئەوەی ڕاست بچێت (زۆرجار بە هەڵە دەکرێت لە گۆڵفدا بەڵام لە وەرزشەکانی دیکە بە ئەنقەستە)"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Try and hook the ball around the defenders.""",
                      kurdishText:
                          """هەوڵ بدە تۆپەکە بە دەوری بەرگریکارەکان بچەمێنیتەوە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
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