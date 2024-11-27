import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylast extends StatefulWidget {
  const EnglishEntrylast({super.key});

  @override
  State<EnglishEntrylast> createState() => _EnglishEntrylastState();
}

class _EnglishEntrylastState extends State<EnglishEntrylast> {
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
- Adjective: last
1. Coming after all others in time, space, degree or being the only one remaining
"the last time I saw Paris"; "the last day of the month"; "had the last word"; "waited until the last minute"; "he raised his voice in a last supreme call"; "the last game of the season"; "down to his last nickel"
 
2. Immediately past
"last Thursday"; "the last chapter we read"
 
3. Occurring at or forming an end or termination (- concluding, final, terminal)
"the last days of the dinosaurs";
 
4. Most unlikely or unsuitable
"the last person we would have suspected"; "the last man they would have chosen for the job"
 
5. Occurring at the time of death
"his last words"; "the last rites"
 
6. Conclusive in a process or progression (- final, net)
"a last resort";
 
7. Highest in extent or degree
"to the last measure of human endurance"; "whether they were accomplices in the last degree or a lesser one was...to be determined individually"
 
8. Not to be altered or undone (- final)
"the arbiter will have the last say";
 
9. At the bottom of the rank or of least importance (- last-place, lowest)
"in last place"; "last prize";

- Verb: last (Derived forms: lasts, lasting, lasted)
1. Persist for a specified period of time (- endure)
"The bad weather lasted for three days";
 
2. Continue to live and avoid dying (- survive, live, live on, go, endure, hold up, hold out)
"how long can a person last without food and water?";

- Adverb: last
1. Most recently
"I saw him last in London"
 
2. Introducing the last item or a series (- lastly, in conclusion, finally)
"last, I'll discuss family values";

- Noun: last (Derived forms: lasts)
1. The temporal end; the concluding time (- stopping point, finale, finis, finish, conclusion, close)
"the last of each round was signaled by a bell";
 
2. The last or lowest in an ordering or series
"he was the last to leave"; "he finished an inglorious last"
 
3. A person's dying act; the final thing a person can do
"he breathed his last"
 
4. The time at which life ends; continuing until dead (- death)
"a struggle to the last";
 
5. A unit of weight equal to 4,000 pounds
 
6. The final stage or concluding parts of an event or occurrence (- end)
"I had to miss the last of the movie";
 
7. Holding device shaped like a human foot that is used to fashion or repair shoes (- shoemaker's last, cobbler's last)
 
8. [Brit, archaic] A unit of capacity for grain equal to 80 bushels
""",
  );

  final String keyword = "last";
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
    await flutterTts.speak("""last""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We caught the last bus home.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's the last house on the left.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was last to arrive.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her last words were for her children.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The critics all hated her last book.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This last point is crucial.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The last time I saw him was in May.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Last summer we went to Greece for a month.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This is our last bottle of water.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He knew this was his last hope of winning.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I wouldn’t marry you if you were the last person on earth!""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The teacher gave her one last chance to prove she could behave.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He's the last person I'd trust with a secret.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The last thing she needed was more work.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He came last in the race.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They arrived last of all.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""When did you see him last?""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They last won the cup in 2006.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Sorry I'm late—am I the last?""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They were the last to arrive.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""These are the last of our apples.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We finished the last of the milk at breakfast.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""That was the last I heard of him.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He would be the last to be trusted.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Each game lasts about an hour.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""How long does the play last?""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Nothing lasts forever.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The meeting only lasted for a few minutes.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This weather won't last.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Our product looks better and lasts longer.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""These shoes should last you till next year.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She won't last long in that job.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Can you last out until I can get help?""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He was injured early on and didn't last the match.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Doctors say that she probably won't last out the night.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Will the coffee last out till next week?""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We’ve got enough food to last us (for) three days.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/hux-dPe6m20?t=93';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/5rPjbOFWXug?t=52';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/qL6Qgxz_oog?t=175';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/MkFL0laLpLE?t=82';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/Uyq66PLCvvY?t=46';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/1p8N6MlPDvo?t=21';
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
                      word: """last""",
                      // alsoEnglishWord: "also: last",
                      britshText: """IpaUK: /lɑːst/""",
                      americanText: """IpaUS: /lɑːst/""",
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
کوردی: دوا، دوایین، دوایی، ئاخر، پاش‌ترین، هەرەدوا، دواترین، دوایەمین، دوامین،	خوارترین، نزم‌ترین،	ڕابردوو، بووری، پێشوو، جاران، بەری، پێش،	پاشماوە، ئەوەی کەوا ماوەتەوە، ماوە،	دوایین جار، دواجار، پاش‌جار،	لە ئاخردا، ئاخر سەر، لە کۆتایی‌دا،	دوایین کەس،	دوایین شت، دوا شت
"""),
// With short examples define "last", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کە لە کۆتایی هەموو شتێکی دیکە ڕوودەدات"""),
                    SentencesRow(
                      englishText: """We caught the last bus home.""",
                      kurdishText: """فریای کۆتا پاس بۆ ماڵەوە کەوتین.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It's the last house on the left.""",
                      kurdishText: """کۆتا ماڵ لای چەپەوە بوو.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She was last to arrive.""",
                      kurdishText: """کۆتا کەس بوو بگات.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Her last words were for her children.""",
                      kurdishText: """کۆتا قسەکانی بۆ منداڵەکانی بوو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٢. (ھاوەڵناو) تازەترین"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The critics all hated her last book.""",
                      kurdishText:
                          """ڕەخنەگران هەموو ڕقیان لە کۆتا کتێبی بوو.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """This last point is crucial.""",
                      kurdishText: """ئەم خاڵەی کۆتایی زۆر گرنگە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The last time I saw him was in May.""",
                      kurdishText: """کۆتا جار کە بینیم لە ئایار بوو.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Last summer we went to Greece for a month.""",
                      kurdishText: """هاوینی ڕابردوو چووینە یۆنان بۆ مانگێک.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵناو) کۆتا دانە"""),
                    const AlsoEnglishckb(word: "ھەروەھا: final"),
                    SentencesRow(
                      englishText: """This is our last bottle of water.""",
                      kurdishText: """ئەمە کۆتا بوتڵە ئاومانە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He knew this was his last hope of winning.""",
                      kurdishText: """دەیزانی ئەمە کۆتا شانسی بردنەوەیە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I wouldn’t marry you if you were the last person on earth!""",
                      kurdishText:
                          """هاوسەرگیریت لەگەڵ ناکەم ئەگەر کۆتا کەس بیت لەسەر زەوی!""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The teacher gave her one last chance to prove she could behave.""",
                      kurdishText:
                          """مامۆستاکە کۆتا شانسی پێدا کە پیشانی بدات باش ڕەفتار دەکات.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) بۆ گوتن یان پیشاندانی ئەوەی ک/شت کەمترین ئەگەری هەیە یان کەمترین گونجاوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He's the last person I'd trust with a secret.""",
                      kurdishText: """کۆتا کەسە متمانەی پێ بکەم بۆ نهێنییەک.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The last thing she needed was more work.""",
                      kurdishText: """کۆتا شت کە پێویستی بوو کاری زیاتر بوو.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ھاوەڵکار) لە دوای هەموو کەس یان شتی دیکە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He came last in the race.""",
                      kurdishText: """کۆتایی بوو لە پێشبڕکێیەکە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """They arrived last of all.""",
                      kurdishText: """لە کۆتایی هەموان هات.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٦. (ھاوەڵکار) تازەترین"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """When did you see him last?""",
                      kurdishText: """کەی کۆتا جار بینیتت؟""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """They last won the cup in 2006.""",
                      kurdishText: """کۆتا جار جامەکەیان لە ٢٠٠٦ بردەوە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) ک/شت کە کۆتا جار دەگات یان ڕوودەدات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Sorry I'm late—am I the last?""",
                      kurdishText: """ببوورە دواکەوتووم ـ کۆتا کەسم؟""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """They were the last to arrive.""",
                      kurdishText: """کۆتا بوون بگەن.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ناو) کۆتا بەش یان شتێک کە لە شتێک دەمێنێتەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """These are the last of our apples.""",
                      kurdishText: """ئەمانە کۆتای سێوەکانمان.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We finished the last of the milk at breakfast.""",
                      kurdishText:
                          """کۆتایی شیرەکەمان لە نانی بەیانیدا تەواو کرد.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٩. (ناو) تازەترین"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """That was the last I heard of him.""",
                      kurdishText: """ئەوە کۆتا جار بوو هەواڵیم بیست.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (ناو) کە کەمترین ئەگەری هەیە """),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He would be the last to be trusted.""",
                      kurdishText: """کۆتا کەس دەبێت متمانەی پێ بکردرێت.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (کردار) بەردەوام بوون بۆ ماوەیەکی دیاریکراو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Each game lasts about an hour.""",
                      kurdishText:
                          """هەر یارییەک بۆ نزیکەی یەک کاتژمێر بەردەوام دەبێت.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """How long does the play last?""",
                      kurdishText: """شانۆکە چەند دەخایەنێت؟""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Nothing lasts forever.""",
                      kurdishText: """هیچ بۆ هەمیشە بەردەوام نابێت.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The meeting only lasted for a few minutes.""",
                      kurdishText:
                          """چاوپێکەوتنەکە تەنها چەند خولەکێکی خایاند.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (کردار) ئەوەی بەردەوام بێت لە بوون یان کارکردن بەباشی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """This weather won't last.""",
                      kurdishText: """ئەم کەشووهەوایە وەها نامێنێتەوە.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Our product looks better and lasts longer.""",
                      kurdishText:
                          """بەرهەمەکەمان باشتر دیارە و زیاتر دەخایەنێت.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """These shoes should last you till next year.""",
                      kurdishText:
                          """ئەم پێڵاوانە تاوەکو ساڵی داهاتوو بەرگەت دەگرێت.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٣. (کردار) ئەوەی لە شتێک ڕزگارت بێت یان لە هەمان دۆخ بمێنیتەوە سەرەڕای سەختی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She won't last long in that job.""",
                      kurdishText: """زۆر لەو کارە نامێنێتەوە.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Can you last out until I can get help?""",
                      kurdishText:
                          """دەتوانیت بەرگە بگریت تاوەکو یارمەتیم پێ بگات؟""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was injured early on and didn't last the match.""",
                      kurdishText:
                          """زوو بریندار بوو و بەرگەی یارییەکەی نەگرت.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Doctors say that she probably won't last out the night.""",
                      kurdishText: """پزیشکەکان دەڵێن ئەمشەو تەواو ناکات.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٤. (کردار) کە بەس بێت بۆ کەسێک بۆ بەکارهێنان، بە تایبەتی بۆ ماوەیەکی دیاریکراو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Will the coffee last out till next week?""",
                      kurdishText:
                          """قاوەکە بەشی تاوەکو هەفتەی داهاتوو دەکات؟""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We’ve got enough food to last us (for) three days.""",
                      kurdishText:
                          """هێندە خواردنمان هەیە کە بەرگەی سێ ڕۆژمان بگرێت.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
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
// end last