import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylate extends StatefulWidget {
  const EnglishEntrylate({super.key});

  @override
  State<EnglishEntrylate> createState() => _EnglishEntrylateState();
}

class _EnglishEntrylateState extends State<EnglishEntrylate> {
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
- Adjective: late (Derived forms: latest, later)
1. After the expected or usual time; delayed (- belated, tardy, lated [archaic])
"I'm late for the plane"; "the train is late";
 
2. Being or occurring at an advanced period of time or after a usual or expected time
"late evening"; "late 18th century"; "a late movie"; "took a late flight"; "had a late breakfast"
 
3. Of the immediate past or just previous to the present time (- recent)
"a late development"; "their late quarrel";
 
4. Having died recently
"her late husband"
 
5. (used especially of persons) of the immediate past (- former, previous)
"our late President is still very active";
 
6. At or toward an end or late period or stage of development (- later)
"the late phase of feudalism"; "a later symptom of the disease"; "later medical science could have saved the child";
 
7. (linguistics) of a later stage in the development of a language or literature; used especially of dead languages
"Late Greek"

- Adverb: late
1. Later than usual or than expected (- belatedly, tardily)
"the train arrived late"; "we awoke late"; "the children came late to school";
 
2. To an advanced time (- deep)
"talked late into the evening";
 
3. At an advanced age or stage
"she married late"; "undertook the project late in her career"
 
4. In the recent past (- recently, lately, of late, latterly, as of late)
"as late as yesterday she was fine"; "feeling better of late"; "he was in Paris as of late";
""",
  );

  final String keyword = "late";
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
    await flutterTts.speak("""late""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm sorry I'm late.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's late for work every day.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My flight was an hour late.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We apologize for the late arrival of this train.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Interest will be charged for late payment.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She married in her late twenties.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The school was built in the late 1970s.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The concert was cancelled at a very late stage.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""United sealed the win with two late goals.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Let's go home—it's getting late.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Look at the time—it's much later than I thought.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""What is the latest time I can have an appointment?""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I don't know what the time is, but it feels quite late.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She spoke of her late husband with passion.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The event was organized in memory of the late Stephen Hawking.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I got up late.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Can I stay up late tonight?""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She has to work late tomorrow.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The Friday afternoon meeting started late, as usual.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm running late for school.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It happened late last year.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He became an author late in life.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There's a good film on late.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Late that evening, there was a knock at the door.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I studied from early morning till late at night.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/p7wabPRxvII?t=1090';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/NiQ1Hdmt1kc?t=57';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/8nW4csy0DWI';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/dJxP85txY9I?t=1323';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/zI1w05Uzi5s?t=145';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/cgXTRSSX3cc';
    const double startSecondsfive = 0;
    const String videoIdsix = 'https://youtu.be/u1GZk3TWNQQ';
    const double startSecondssix = 0;

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
                      word: """late""",
                      // alsoEnglishWord: "also: late",
                      britshText: """IpaUK: /leɪt/""",
                      americanText: """IpaUS: /leɪt/""",
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
کوردی: درەنگ، دێر، گیرۆ، درەنگان، درەنگ‌وەخت،	ئەم دواییانە، لە دواییەکانی، ئاخرەکانی، ئەم ئاخرانە،	ئێستا، هەنووکە، دوایی، دواتر، پاش‌تر، پاشین، نووکە، تازە، ئێستاکانێ،	پێشوو، جاران، زوو، ڕابردوو، پێشین،	مردوو، خوالێ‌خۆشبوو، بەهەشتی، ڕەحمەتی
"""),
// With short examples define "late", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) کە درەنگ ڕوودەدات، دەگات، هتد"""),
                    SentencesRow(
                      englishText: """I'm sorry I'm late.""",
                      kurdishText: """بەداخەوەم کە درەنگ کەوتووم.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She's late for work every day.""",
                      kurdishText: """هەموو ڕۆژێک درەنگ دەکەوێت بۆ سەر کار.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """My flight was an hour late.""",
                      kurdishText: """گەشتەکەم یەک کاتژمێر دواکەوت.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We apologize for the late arrival of this train.""",
                      kurdishText:
                          """بەداخەوەین بۆ گەشتنی درەنگی شەمەندەفەرەکەمان.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Interest will be charged for late payment.""",
                      kurdishText: """سوو وەردەگیردرێت بۆ پارەدانەوەی درەنگ.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) لە ماوەی کۆتایی کاتێک، تەمەنی کەسێک، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She married in her late twenties (= when she was 28 or 29).""",
                      kurdishText:
                          """لە کۆتاییەکانی بیست ساڵیی هاوسەرگیریی کرد.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The school was built in the late 1970s.""",
                      kurdishText:
                          """قوتابخانەکە لە کۆتایی حەفتاکان درووستکرا.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The concert was cancelled at a very late stage.""",
                      kurdishText:
                          """کۆنسێرتەکە لە قۆناغێکی زۆر کۆتایی هەڵوەشێندرایەوە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """United sealed the win with two late goals.""",
                      kurdishText:
                          """یونایتید بردنەوەی مسۆگەر کرد بە دوو گۆڵی کۆتایی.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) لە کۆتایی ڕۆژدا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Let's go home—it's getting late.""",
                      kurdishText: """با بچینەوە ماڵ ـ درەنگ دەکات.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Look at the time—it's much later than I thought.""",
                      kurdishText:
                          """سەیری کات بکە ـ زۆر درەنگترە لەوەی بیرم دەکردەوە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    // const DividerDefinition(),
                    // const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    // const DividerSentences(),
                    // SentencesRow(
                    //   englishText: """What is the latest time I can have an appointment?""",
                    //   kurdishText: """کۆتا کات کەییە کە بتوانم چاوپێکەوتنێکم هەبێت؟""",
                    //   onPressedBritish: () => speaksentence12("en-GB"),
                    //   onPressedAmerican: () => speaksentence12("en-US"),
                    // ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I don't know what the time is, but it feels quite late.""",
                      kurdishText:
                          """نازانم کاتژمێر چەندە بەڵام وەها دەردەکەوێت کە درەنگ بێت.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ھاوەڵناو) کە چی دیکە لە ژیاندا نییە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She spoke of her late husband with passion.""",
                      kurdishText:
                          """بە حەزی زۆرەوە باسی هاوسەرە کۆچکردووەکەیی دەکرد.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The event was organized in memory of the late Stephen Hawking.""",
                      kurdishText:
                          """بۆنەکە بە یادی ستیفن هاوکینگی کۆچکردووەوە ڕێکخرا.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٥. (ھاوەڵکار) درەنگ"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I got up late.""",
                      kurdishText: """درەنگ هەستام.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Can I stay up late tonight?""",
                      kurdishText:
                          """دەکرێت تاوەکو درەنگانی نیوەشەو بەخەبەر بمێنمەوە؟""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She has to work late tomorrow.""",
                      kurdishText: """سبەی دەبێت تاوەکو درەنگ کار بکات.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The Friday afternoon meeting started late, as usual.""",
                      kurdishText:
                          """چاوپێکەوتنی دوانیوەڕۆی هەینی درەنگ دەستیپێکرد، وەک هەمیشە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'm running late for school.""",
                      kurdishText: """دواکەوتووم بۆ قوتابخانە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ھاوەڵکار) لە کۆتایی کاتێک، تەمەنی کەسێک، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It happened late last year.""",
                      kurdishText: """لە کۆتایی ساڵی ڕابردوو ڕوویدا.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He became an author late in life.""",
                      kurdishText: """لە کۆتایی تەمەنی بوو بە نووسەر.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ھاوەڵکار) لە نزیک کۆتایی ڕۆژدا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """There's a good film on late.""",
                      kurdishText: """کۆتایی ڕۆژەکە فیلمێکی خۆش هەیە.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Late that evening, there was a knock at the door.""",
                      kurdishText: """لە کۆتایی ئێوارەکە تەقەیەکی دەرگا هات.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ھاوەڵناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I studied from early morning till late at night.""",
                      kurdishText:
                          """لە بەیانی زوو تاوەکو درەنگانی شەو خوێندم.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
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
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdsix),
                    videoId: videoIdsix,
                    startSeconds: startSecondssix,
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
// end late