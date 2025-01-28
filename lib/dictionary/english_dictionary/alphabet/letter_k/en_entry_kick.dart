import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrykick extends StatefulWidget {
  const EnglishEntrykick({super.key});

  @override
  State<EnglishEntrykick> createState() => _EnglishEntrykickState();
}

class _EnglishEntrykickState extends State<EnglishEntrykick> {
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
- Verb: kick (Derived forms: kicked, kicking, kicks)
1. (sport) drive or propel with the foot
 
2. Strike with the foot
"The boy kicked the dog"; "Kick the door down"
 
3. Kick a leg up
 
4. Spring back, as from a forceful thrust (- kick back, recoil)
"The gun kicked back into my shoulder";
 
5. [informal] Stop consuming (- give up)
"kick a habit";
 
6. (football) make a goal
"He kicked the extra point after touchdown"
 
7. [informal] Express complaints, discontent, displeasure, or unhappiness (- complain, plain [archaic], sound off, kvetch [N. Amer, informal], moan)
"She has a lot to kick about";

- Noun: kick (Derived forms: kicks)
1. The act of delivering a blow with the foot (- boot [informal], kicking)
"he gave the ball a powerful kick";
 
2. A sudden pleasurable excitement (- bang, charge, rush, flush, thrill, buzz [informal])
"he does it for kicks";

3. The backward jerk of a gun when it is fired (- recoil)
 
4. [informal] A complaint or act of complaining (- objection, gripe [informal], beef [informal], bitch [informal], squawk [informal])
 
5. The sudden stimulation provided by strong drink (or certain drugs)
"a sidecar is a smooth drink but it has a powerful kick"
 
6. A rhythmic thrusting movement of the legs as in swimming or calisthenics (- kicking)
"the kick must be synchronized with the arm movements";
""",
  );

  final String keyword = "kick";
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
    await flutterTts.speak("""kick""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Stop kicking—it hurts!""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was punched and kicked by her attackers.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The boys were kicking a ball around in the yard.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She had to kick the door open because her hands were full.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Don't kick the ball too hard.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He was sent off for deliberately kicking an Italian player.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She kicked me on the knee.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The child was dragged away, kicking and screaming.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The dancers kicked their legs in the air.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He'll kick himself when he finds out he could have had the job.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He kicked 23 points, ensuring victory for New Zealand.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He had been smoking for 15 years and wanted to kick the habit.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He barely got a kick of the ball the whole match.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""If the door won't open, give it a kick.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He aimed a kick at the dog.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She had received a painful kick on the knee.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He gets his kicks from hurting other people.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It gave the youngsters a kick to see their own play on television.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This drink has quite a kick.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/HvNdJ2RCReg?t=119';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/hS2x1zl4rn0?t=721';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/Kou7ur5xt_4?t=102';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/akuJ_eZ4jEU';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/q8jLyotMMVE?t=584';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/jtoq3S48Pgk?t=3012';
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
                      word: """kick""",
                      // alsoEnglishWord: "also: kick",
                      britshText: """IpaUK: /kɪk/""",
                      americanText: """IpaUS: /kɪk/""",
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
کوردی: لەقە، تێهەڵدان، شەق، زیچ، جووتە، شەپ، پێ‌لەقە،	(چەک و تفەنگ) گەڕانەوە، تەکان،	خۆشی، کەیف، سەرقاڵی، ڕابواردن، هێز، شیان، گیان، کاریگەری، باندۆر، چالاکی، دڵبەستەیی، هۆگری،	(تۆپێن، ڕاگبی) لێدان بە پێ، تێهەڵدان بە پێ، بە پێ لێدان،	(خواردنەوە) توندی، بەگیری،	گلەیی، گناشت، پرتەوبۆڵە
"""),
// With short examples define "kick", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (کردار) لێدان لە کەسێک/شتێک بە لاقت"""),
                    SentencesRow(
                      englishText: """Stop kicking—it hurts!""",
                      kurdishText: """وازبێنە لە شەق وەشاندن ـ ئازاری هەیە!""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She was punched and kicked by her attackers.""",
                      kurdishText: """لەلایەن هێرشکارەکانی مشت و شەقی لێدرا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The boys were kicking a ball around in the yard.""",
                      kurdishText:
                          """کوڕەکان تۆپێکیان بە حەوشەکەدا دەتەقاند.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She had to kick the door open because her hands were full.""",
                      kurdishText:
                          """پێویست بوو بە شەق دەرگاکە بکاتەوە چونکە دەستی گیرا بوو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Don't kick the ball too hard.""",
                      kurdishText: """زۆر توند لە تۆپەکە مەدە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was sent off for deliberately kicking an Italian player.""",
                      kurdishText:
                          """کرایە دەرەوە بەهۆی ئەوەی بە ئەنقەست لە یاریزانێکی ئیتالی دا.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She kicked me on the knee.""",
                      kurdishText: """لەقەیەکی کێشا بە چۆکمدا.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) جووڵاندنی لاقەکانت وەک ئەوەی لە شتێک بدەیت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The child was dragged away, kicking and screaming.""",
                      kurdishText:
                          """منداڵەکە ڕاکێشرا بەوەی کە لاقی ڕادەوەشاند و هاواری دەکرد.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The dancers kicked their legs in the air.""",
                      kurdishText:
                          """سەماکارەکان لاقیان لە حەوادا ڕادەوەشاند.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) ئەوەی لە خۆت بێزار بیت بەهۆی ئەوەی شتێکی گەمژانەت کردووە، هەلێکت لەدەستداوە، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He'll kick himself when he finds out he could have had the job.""",
                      kurdishText:
                          """بێزار دەبێت لە خۆی کە دەزانێت دەکرا کارەکەی وەرگرتبا.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) تۆمارکردنی خاڵ بە لێدان لە تۆپەکە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He kicked 23 points, ensuring victory for New Zealand.""",
                      kurdishText:
                          """٢٣ خاڵی تۆمارکرد و سەرکەوتنی مسۆگەر کرد بۆ نیوزلەندا.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) وەستان لە کردنی شتێکی زیانبەخش کە بۆ ماوەیەکی زۆرە کردووتە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He had been smoking for 15 years and wanted to kick the habit.""",
                      kurdishText:
                          """بۆ ١٥ ساڵ دەبوو جگەرەی دەکێشا و دەیویست واز لە خووەکە بهێنێت.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٦. (ناو) لێدان بە لاق"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He barely got a kick of the ball the whole match.""",
                      kurdishText:
                          """بە ئەستەم لە تۆپەکەی دا بۆ تەواوی یارییەکە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """If the door won't open, give it a kick.""",
                      kurdishText:
                          """ئەگەر دەرگاکە نەکرایەوە، لەقەیەکی پێدا بکێشە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He aimed a kick at the dog.""",
                      kurdishText: """لەقەیەکی ئاراستەی سەگەکە کرد.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She had received a painful kick on the knee.""",
                      kurdishText: """لەقەیەکی بەئازاری لە چۆکی لێدرابوو.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ناو) هەستێکی بەهێزی خۆشی و جۆش‌وخرۆشی"""),
                    const AlsoEnglishckb(word: "ھەروەھا: thrill"),
                    SentencesRow(
                      englishText:
                          """He gets his kicks from hurting other people.""",
                      kurdishText:
                          """خۆشی وەردەگرێت لە ئازاردانی کەسانی دیکە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It gave the youngsters a kick to see their own play on television.""",
                      kurdishText:
                          """جۆش‌خرۆشی دا بە گەنجەکان کە شانۆیەکەی خۆیان لەسەر تەلەفیزیۆن بینی.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ناو) کاریگەری بەهێزی مادەیەکی هۆشبەر یان خواردنەوەیەکی کحوولی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """This drink has quite a kick.""",
                      kurdishText:
                          """ئەم خواردنەوەیە کاریگەرییەکی خێرای هەیە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
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
// end kick