import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjudge extends StatefulWidget {
  const EnglishEntryjudge({super.key});

  @override
  State<EnglishEntryjudge> createState() => _EnglishEntryjudgeState();
}

class _EnglishEntryjudgeState extends State<EnglishEntryjudge> {
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
- Verb: judge (Derived forms: judging, judged, judges)
1. Form a critical opinion of (- evaluate, pass judgment)
"I cannot judge some works of modern art";
 
2. Determine the result of (a competition)
"Hollywood stars to judge short films contest"
 
3. Form an estimate of (quantities or time) (- estimate, gauge, approximate, guess)
"I judge this chicken to weigh three pounds";
 
4. Officially declare a judgment on someone (- pronounce, label)
"They judged him unfit to work here";
 
5. Hear a case and sit as the judge at a trial or hearing (- adjudicate, try)

- Noun: judge (Derived forms: judges)
1. A public official authorized to decide questions brought before a court of justice (- justice, jurist)
"The judge tried both father and son in separate trials";
 
2. An authority who is able to estimate worth or quality (- evaluator)
""",
  );

  final String keyword = "judge";
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
    await flutterTts.speak("""judge""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The case comes before Judge Cooper next week.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She will appear before a judge tomorrow.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The judge sentenced him to five years in prison.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The judge ruled that the evidence was inadmissible.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The judge awarded him damages of £20 000.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The judges' decision is final.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He was invited to be a judge in a cookery competition.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was a shrewd judge of people.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The last singer was the best—not that I'm any judge.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""You are the best judge of what your body needs.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""As far as I can judge, all of them are to blame.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Judging by her last email, they are having a wonderful time.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""To judge from what he said, he was very disappointed.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You shouldn't judge her too harshly.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Schools should not be judged only on exam results.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The concert was judged to have been a great success.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He judged that the risk was too great.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Young children are unable to judge the speed of traffic.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""It's difficult to judge how long the journey will take.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I judged him to be about 50.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I think I judged the distance wrongly.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was asked to judge the essay competition.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The first team to cross the line will be judged the winner.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""What gives you the right to judge other people?""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I'm not one to judge, but that's no way to behave.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was judged guilty by the court.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/PARYfNQqv_M?t=40';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/jww_zBV7uBM?t=31';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/6qZZWAScCn8?t=249';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/_sZ14xpERV4?t=54';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/9A46t43AsfE?t=110';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/IzdrA3aKcRg?t=16';
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
                      word: """judge""",
                      // alsoEnglishWord: "also: judge",
                      britshText: """IpaUK: /dʒʌdʒ/""",
                      americanText: """IpaUS: /dʒʌdʒ/""",
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
کوردی: دادگەر، دادپرس، دۆزگەر، دادوەر، قازی،	مرۆڤی لێوەشاو و شارەزا،	نێوبژیوان، بڕیاردەر، داوەر، نێوگژیوان
"""),
// With short examples define "judge", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) کەسێک لە دادگا کە بڕیار دەدات تاوانباران چی سزایەک بدرێن"""),
                    SentencesRow(
                      englishText:
                          """The case comes before Judge Cooper next week.""",
                      kurdishText:
                          """کەیسەکە هەفتەی داهاتوو دێتە پێش دادوەر کووپەر.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She will appear before a judge tomorrow.""",
                      kurdishText: """سبەی لە پێش دادوەر ئامادە دەبێت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The judge sentenced him to five years in prison.""",
                      kurdishText:
                          """دادوەرەکە بە شەش ساڵ لە زیندان سزای دا.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The judge ruled that the evidence was inadmissible.""",
                      kurdishText:
                          """دادوەرەکە بڕیاری دا کە بەڵگەکە وەرناگیردرێت.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The judge awarded him damages of £20 000.""",
                      kurdishText:
                          """دادوەرەکە قەرەبووی ٢٠٠٠٠ پاوەندی پێدرا.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) کەسێک کە بڕیار دەدات کێ ڕکابەرییەکی بردووەتەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The judges' decision is final.""",
                      kurdishText: """بڕیاری دادوەرەکە کۆتاییە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was invited to be a judge in a cookery competition.""",
                      kurdishText:
                          """بانگکرا بۆ ئەوەی ببێت بە دادوەر لە ڕکابەری چێشتلێنان.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) کەسێک کە شارەزایی و زانیاریی پێویستی هەیە بۆ پێدانی بۆچوونی لەسەر بەها و کوالێتی کەسێک/شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He was a shrewd judge of people.""",
                      kurdishText: """شارەزایەکی وردی خەڵکی بوو.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The last singer was the best—not that I'm any judge (= I do not know much about the subject).""",
                      kurdishText:
                          """کۆتا گۆرانیبێژ باشترین بوو ـ ئەوەش نەبێت کە من شارەزا بم.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You are the best judge of what your body needs.""",
                      kurdishText:
                          """خۆت باشترین شارەزای لەوەی جەستەت چی پێویستە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) پێدانی بۆچوونت لەسەر کەسێک/شتێک بەو زانیارییەی کە هەتە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """As far as I can judge, all of them are to blame.""",
                      kurdishText:
                          """بەپێی ئەوەی دەتوانم بڕیار بدەم، هەموویان خەتاکارن.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Judging by her last email, they are having a wonderful time.""",
                      kurdishText:
                          """بە بڕیاردان بەپێی کۆتا ئیمەیڵی، کاتێکی خۆشیان هەیە.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """To judge from what he said, he was very disappointed.""",
                      kurdishText:
                          """بە بڕیاردان بەوەی کە گوتی، زۆر نائومێد بوو.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """You shouldn't judge her too harshly.""",
                      kurdishText: """نابێت زۆر بە توندی بڕیاری لێ بدەیت.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Schools should not be judged only on exam results.""",
                      kurdishText:
                          """قوتابخانەکان نابێت بڕیار بدەن تەنها بە ئەنجامی تاقیکردنەوەکان.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The concert was judged to have been a great success.""",
                      kurdishText:
                          """کۆنسێرتەکە وەک سەرکەوتنێکی گەورە بڕیاری لێدرا.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He judged that the risk was too great.""",
                      kurdishText: """بڕیاری دا کە مەترسییەکە زۆر گەورەیە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) خەمڵاندنی قەبارە، بڕ، هتد ــی شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Young children are unable to judge the speed of traffic.""",
                      kurdishText:
                          """منداڵانی گەنج ناتوانن خێرایی هاتووچۆ بزانن.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It's difficult to judge how long the journey will take.""",
                      kurdishText:
                          """سەختە بڕیار بدرێت گەشتەکە چەندی پێدەچێت.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I judged him to be about 50.""",
                      kurdishText: """وام خەمڵاند نزیکەی ٥٠ ساڵ بێت.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I think I judged the distance wrongly.""",
                      kurdishText: """پێموایە مەوداکەم بە هەڵە خەمڵاند.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) بڕیاردان لە ئەنجامی پاڵەوانێتییەک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She was asked to judge the essay competition.""",
                      kurdishText:
                          """داوای لێکرا دادوەری بکات لە ڕکابەری داڕشتنەکە.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The first team to cross the line will be judged the winner.""",
                      kurdishText:
                          """یەکەم تیم لە هێڵەکە بپەڕێتەوە بە براوە دادەنرێت.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (کردار) پێدانی بۆچوونت لەسەر شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """What gives you the right to judge other people?""",
                      kurdishText:
                          """چی مافی ئەوەت پێدەدات بڕیار لە خەڵکی دیکە بدەیت؟""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I'm not one to judge, but that's no way to behave.""",
                      kurdishText:
                          """من هی ئەوە نیم بڕیار بدەم، بەڵام ئەوە شێوازی ڕەفتارکردن نییە.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) بڕیاردان لەوەی کەسێک تاوانبار یان بێتاوانە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He was judged guilty by the court.""",
                      kurdishText: """لەلایەن دادگاوە بە تاوانبار ناسێندرا.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
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
// end judge