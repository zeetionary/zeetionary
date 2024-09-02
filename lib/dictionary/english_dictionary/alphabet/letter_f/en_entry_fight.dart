import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfight extends StatefulWidget {
  const EnglishEntryfight({super.key});

  @override
  State<EnglishEntryfight> createState() => _EnglishEntryfightState();
}

class _EnglishEntryfightState extends State<EnglishEntryfight> {
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
- Verb: fight (derived forms: fights, fought, fighting)
1. Be engaged in a physical struggle, by hand or using weapons (= struggle)
"the tribesmen fought each other"; "Siblings are always fighting";
 
2. Fight against or resist strongly (= oppose, fight back, fight down, defend, dispute)
"Don't fight it!";
 
3. Make a strenuous or laboured effort (= struggle)
"He fought for breath";
 
4. Exert oneself continuously, vigorously, or obtrusively to gain an end or engage in a crusade for a certain cause or person; be an advocate for (= crusade, press, campaign, push, agitate)
"She is fighting for women's rights";

- Noun: fight (derived forms: fights)
1. The act of fighting; any contest or struggle (= fighting, combat, scrap)
"a fight broke out at the hockey game";
 
2. A hostile meeting of opposing military forces in the course of a war (= battle, conflict, engagement)
 
3. An aggressive willingness to compete (= competitiveness)
"the team was full of fight";
 
4. An intense verbal dispute
"a violent fight over the bill is expected in the Senate"
 
5. A boxing or wrestling match
"the fight was on television last night"
""",
  );

  final String keyword = "fight";
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
    await flutterTts.speak("""fight""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He fought in Vietnam.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""My grandfather fought against the Fascists in Spain.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They gathered soldiers to fight the invading army.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They fought for control of the island.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They were fighting over disputed land.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Future wars will be fought over water supplies.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My little brothers are always fighting.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He taught me how to fight with a sword.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She fought her attacker, eventually forcing him to flee.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Children will fight even over small things.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They were fighting each other over a toy.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I remember lying in bed listening to my parents fighting.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""It's a trivial matter and not worth fighting about.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Scholars have long fought over this point.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The thing we fight about most is money.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""We will continue to fight for as long as it takes.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She fought bravely, but died of the disease.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Vitamin C helps your body to fight disease.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Workers are fighting the decision to close the factory.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The fire crews had problems fighting the blaze.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She fought a long battle against cancer.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They are committed to fighting against racism.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She spent her life fighting for the poor.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We must fight hatred with love.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She'll fight like a tiger to protect her children.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We fought for years before we got the recognition we deserved.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Women fought for the right to vote.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He's still fighting for compensation after the accident.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Doctors fought for more than six hours to save his life.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She gradually fought her way to the top of the company.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We will never give up fighting for justice.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He fought tirelessly for the abolition of slavery.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We are fighting for equal rights.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She fought desperately to suppress her laughter.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She's fighting for a place in the national team.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""There are twelve parties fighting the election.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Doctors fear he may never fight again.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He fought his wife for custody of the children.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He got into a fight with a man in the bar.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""A fight broke out between rival groups of fans.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Don't get into any more fights!""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He killed a man in a fight.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He tried to pick a fight with me.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I don't know who started the fight.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The fight was broken up by a teacher.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Did you two have a fight?""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He is unbeaten in 34 fights.""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Paul and I had this terrible fight last night.""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Did you have a fight with him?""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We had a fight over money.""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He lost his fight against cancer earlier this year.""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The workers are determined to put up a fight to save their jobs.""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Are we losing the fight against illegal drugs?""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She died at the age of 43 after a brave fight against cancer.""");
  }

  Future<void> speaksentence55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She said they would continue their fight to find a cure for AIDS.""");
  }

  Future<void> speaksentence56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The fight for justice goes on.""");
  }

  Future<void> speaksentence57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The team put up a good fight but were finally beaten.""");
  }

  Future<void> speaksentence58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She now has a fight on her hands to make it through to the next round.""");
  }

  Future<void> speaksentence59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""In the fight for Lemburg, the Austrians were defeated.""");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """fight""",
                      // alsoEnglishWord: "also: fight",
                      britshText: """IpaUK: /faɪt/""",
                      americanText: """IpaUS: /faɪt/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                bottom: const TabBar(
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
کوردی: شەڕ، جەنگ،	خەبات، بەرخۆدان، ئاوقابوون، بەرەنگاری، بەگژداچوون، توانایی بەرەنگاربوونەوە، ورە، توانایی شەڕ، وزەی شەڕ، لەڕووڕاوێستان، ململانێ، مشت‌ومڕ، قڕە، کێشە، پێکادان، بەربوونەیەک، لێک‌سرەواندن، ئامبازی‌یەک‌بوون،	پێشبڕکێم	پێشبڕکێ بۆکس یان شەڕەمشت
"""),
                    const DefinitionKurdish(
                        text: """١. (کردار) شەڕکردن لە جەنگ"""),
                    SentencesRow(
                      englishText: """He fought in Vietnam.""",
                      kurdishText: """لە ڤێتنام جەنگا.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """My grandfather fought against the Fascists in Spain.""",
                      kurdishText:
                          """باپیرم دژ بە فاشیستەکان لە ئیسپانیا جەنگا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They gathered soldiers to fight the invading army.""",
                      kurdishText:
                          """سەربازیان کۆکردەوە بۆ جەنگان دژ بە سوپا داگیرکارەکە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """They fought for control of the island.""",
                      kurdishText: """بۆ کۆنترۆڵی دوورگەکە جەنگان.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """They were fighting over disputed land.""",
                      kurdishText: """لەسەر ناوچەی جێ‌ناکۆک دەجەنگان.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Future wars will be fought over water supplies.""",
                      kurdishText:
                          """جەنگەکانی دواتر دژ بە سەرچاوەی ئاو دەکرێن.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (کردار) شەڕکردنی جەستەیی لەگەڵ کەسێک"""),
                    SentencesRow(
                      englishText:
                          """My little brothers are always fighting.""",
                      kurdishText: """برا بچووکەکانم ھەمیشە شەڕیانە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He taught me how to fight with a sword.""",
                      kurdishText: """فێری کردم چۆن بە شمشێر شەڕ بکەم.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She fought her attacker, eventually forcing him to flee.""",
                      kurdishText:
                          """دژ بە ھێرشکارەکەی شەڕی کرد و لەکۆتاییدا ناچاری کرد ھەڵبێت.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Children will fight even over small things.""",
                      kurdishText:
                          """منداڵان تەنات لەسەر شتی بچووکیش شەڕ دەکەن.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They were fighting each other over a toy.""",
                      kurdishText:
                          """لەگەڵ یەکدی لەسەر یارییەکی منداڵانە شەڕیان دەکرد.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (کردار) ھەبوونی مشتومڕێک"""),
                    SentencesRow(
                      englishText:
                          """I remember lying in bed listening to my parents fighting.""",
                      kurdishText:
                          """لەبیرمە لە جێخەودا بووم گوێم لە دایبابم بوو شەڕیان دەکرد.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It's a trivial matter and not worth fighting about.""",
                      kurdishText:
                          """بابەتێکی پووچە و شایەنی شەڕکردن نییە لەسەری.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Scholars have long fought over this point.""",
                      kurdishText:
                          """پسپۆڕان لە مێژە لەسەر ئەم خاڵە مشتومڕ دەکەن.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The thing we fight about most is money.""",
                      kurdishText:
                          """ئەو شتەی زۆر مشتومڕی لەسەر دەکەین پارەیە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) ھەوڵدانی زۆر بۆ وەستاندن، مامەڵەکردن لەگەڵ، یان وەستانە دژی شتێک کە ناڕازیت پێی"""),
                    SentencesRow(
                      englishText:
                          """We will continue to fight for as long as it takes.""",
                      kurdishText:
                          """بەردەوام دەبین لە خەبات چەندە بخایەنێت.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """She fought bravely, but died of the disease.""",
                              kurdishText:
                                  """بوێرانە ھەوڵی دا، بەڵام بە نەخۆشییەکە گیانی لەدەستدا.""",
                              onPressedBritish: () => speaksentence17("en-GB"),
                              onPressedAmerican: () => speaksentence17("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Vitamin C helps your body to fight disease.""",
                              kurdishText:
                                  """ڤیتامین سی یارمەتی جەستەت دەدات دژ بە نەخۆشی.""",
                              onPressedBritish: () => speaksentence18("en-GB"),
                              onPressedAmerican: () => speaksentence18("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Workers are fighting the decision to close the factory.""",
                              kurdishText:
                                  """کرێکاران دژ بە بڕیاری داخستنی کارگەکە وەستاون.""",
                              onPressedBritish: () => speaksentence19("en-GB"),
                              onPressedAmerican: () => speaksentence19("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The fire crews had problems fighting the blaze.""",
                              kurdishText:
                                  """تیمی ئاگرکوژێنەرەوە کێشەیان ھەبوو لە وەستانەوە دژ بە ئاگرەکە.""",
                              onPressedBritish: () => speaksentence20("en-GB"),
                              onPressedAmerican: () => speaksentence20("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She fought a long battle against cancer.""",
                              kurdishText:
                                  """شەڕێکی درێژی دژ بە شێرپەنجە کرد.""",
                              onPressedBritish: () => speaksentence21("en-GB"),
                              onPressedAmerican: () => speaksentence21("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They are committed to fighting against racism.""",
                              kurdishText:
                                  """پابەندن بە شەڕکردنیان دژ بە ڕەگەزپەرستی.""",
                              onPressedBritish: () => speaksentence22("en-GB"),
                              onPressedAmerican: () => speaksentence22("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She spent her life fighting for the poor.""",
                              kurdishText:
                                  """ژیانی بەسەر برد بە ھەوڵدان بۆ ھەژاران.""",
                              onPressedBritish: () => speaksentence23("en-GB"),
                              onPressedAmerican: () => speaksentence23("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We must fight hatred with love.""",
                              kurdishText:
                                  """دەبێت بە خۆشەویستی دژی ڕق بوەستین.""",
                              onPressedBritish: () => speaksentence24("en-GB"),
                              onPressedAmerican: () => speaksentence24("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She'll fight like a tiger to protect her children.""",
                              kurdishText:
                                  """وەک پڵنگ دەجەنگێت بۆ پاراستنی منداڵەکانی.""",
                              onPressedBritish: () => speaksentence25("en-GB"),
                              onPressedAmerican: () => speaksentence25("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) ھەوڵدانی زۆر بۆ کردن یان بەدەستھێنانی شتێک"""),
                    SentencesRow(
                      englishText:
                          """We fought for years before we got the recognition we deserved.""",
                      kurdishText:
                          """چەندین ساڵ ھەوڵمان دا پێش ئەوەی ئەو ناسراوییە بەدەست بھێنین کە شایەنی بووین.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Women fought for the right to vote.""",
                              kurdishText: """ژنان جەنگان بۆ مافی دەنگدان.""",
                              onPressedBritish: () => speaksentence27("en-GB"),
                              onPressedAmerican: () => speaksentence27("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He's still fighting for compensation after the accident.""",
                              kurdishText:
                                  """ھێشتا بۆ قەرەبووکردنەوە دەجەنگێت لە دوای ڕووداوەکە.""",
                              onPressedBritish: () => speaksentence28("en-GB"),
                              onPressedAmerican: () => speaksentence28("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Doctors fought for more than six hours to save his life.""",
                              kurdishText:
                                  """پزیشکان بۆ زیاتر لە شەش کایژمێر تەقەڵایان بوو بۆ ڕزگارکردنی ژیانی.""",
                              onPressedBritish: () => speaksentence29("en-GB"),
                              onPressedAmerican: () => speaksentence29("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She gradually fought her way to the top of the company.""",
                              kurdishText:
                                  """کەم‌کەم چووە بەشی باڵای کۆمپانیاکە.""",
                              onPressedBritish: () => speaksentence30("en-GB"),
                              onPressedAmerican: () => speaksentence30("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We will never give up fighting for justice.""",
                              kurdishText:
                                  """ھەرگیز ناوەستین لە جەنگان بۆ دادپەروەری.""",
                              onPressedBritish: () => speaksentence31("en-GB"),
                              onPressedAmerican: () => speaksentence31("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He fought tirelessly for the abolition of slavery.""",
                              kurdishText:
                                  """ماندوونەناسانە دەجەنگا بۆ نەھێشتنی کۆیلایەتی.""",
                              onPressedBritish: () => speaksentence32("en-GB"),
                              onPressedAmerican: () => speaksentence32("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We are fighting for equal rights.""",
                              kurdishText: """بۆ مافی یەکسان دەجەنگین.""",
                              onPressedBritish: () => speaksentence33("en-GB"),
                              onPressedAmerican: () => speaksentence33("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She fought desperately to suppress her laughter.""",
                              kurdishText:
                                  """بێھوودە ھەوڵی دا بۆ دامرکاندنەوەی پێکەنینەکەی.""",
                              onPressedBritish: () => speaksentence34("en-GB"),
                              onPressedAmerican: () => speaksentence34("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (کردار) بەژداری لە ڕکابەرییەک"""),
                    SentencesRow(
                      englishText:
                          """She's fighting for a place in the national team.""",
                      kurdishText:
                          """ڕکابەری بۆ جێگایەک لە تیمی نیشتیمانی دەکات.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There are twelve parties fighting the election.""",
                      kurdishText:
                          """دوازدە پارت ڕکابەری لە ھەڵبژاردنەکە دەکەن.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (کردار) بەژداری لە یاری مشتەکۆڵە"""),
                    SentencesRow(
                      englishText: """Doctors fear he may never fight again.""",
                      kurdishText:
                          """پزیشکان لەوە دەترسن کە ھەرگیز نەتوانێت شەڕ بکات.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) ھەوڵدان بۆ بەدەستھێنانی ئەوەی کە دەتەوێت لە دادگا"""),
                    SentencesRow(
                      englishText:
                          """He fought his wife for custody of the children.""",
                      kurdishText:
                          """دژ بە ژنەکەی چووە دادگا بۆ چاودێریی منداڵەکانی.""",
                      onPressedBritish: () => speaksentence38("en-GB"),
                      onPressedAmerican: () => speaksentence38("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (ناو) شەڕکردن لەگەڵ کەسێک/شتێک"""),
                    SentencesRow(
                      englishText:
                          """He got into a fight with a man in the bar.""",
                      kurdishText:
                          """لە باڕەکە تووشی شەڕ بوویەوە لەگەڵ پیاوێک.""",
                      onPressedBritish: () => speaksentence39("en-GB"),
                      onPressedAmerican: () => speaksentence39("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A fight broke out between rival groups of fans.""",
                      kurdishText:
                          """شەڕێک لە نێوان گرووپە ھەوادارە دژبەرەکاندا ڕوویدا.""",
                      onPressedBritish: () => speaksentence40("en-GB"),
                      onPressedAmerican: () => speaksentence40("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Don't get into any more fights!""",
                              kurdishText: """تێوە مەگلێ لە ھیچ شەڕێکی دیکە!""",
                              onPressedBritish: () => speaksentence41("en-GB"),
                              onPressedAmerican: () => speaksentence41("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """He killed a man in a fight.""",
                              kurdishText: """لە شەڕێکدا پیاوێکی کوشت.""",
                              onPressedBritish: () => speaksentence42("en-GB"),
                              onPressedAmerican: () => speaksentence42("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He tried to pick a fight with me.""",
                              kurdishText:
                                  """ھەوڵی دا شەڕێکم لەگەڵ دەست پێبکات.""",
                              onPressedBritish: () => speaksentence43("en-GB"),
                              onPressedAmerican: () => speaksentence43("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I don't know who started the fight.""",
                              kurdishText: """نازانم کێ شەڕەکەی دەست پێکرد.""",
                              onPressedBritish: () => speaksentence44("en-GB"),
                              onPressedAmerican: () => speaksentence44("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The fight was broken up by a teacher.""",
                              kurdishText:
                                  """شەڕەکە لەلایەن مامۆستایەکە کۆتایی پێھێندرا.""",
                              onPressedBritish: () => speaksentence45("en-GB"),
                              onPressedAmerican: () => speaksentence45("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Did you two have a fight?""",
                              kurdishText: """ئەو دووەتان شەڕتان کرد؟""",
                              onPressedBritish: () => speaksentence46("en-GB"),
                              onPressedAmerican: () => speaksentence46("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (ناو) یاری نێوان دوو کەس لە مشتەکۆڵەدا"""),
                    SentencesRow(
                      englishText: """He is unbeaten in 34 fights.""",
                      kurdishText: """لە ٣٤ یاریدا شکستی نەھێناوە.""",
                      onPressedBritish: () => speaksentence47("en-GB"),
                      onPressedAmerican: () => speaksentence47("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (ناو) مشتومڕ لەسەر شتێک"""),
                    SentencesRow(
                      englishText:
                          """Paul and I had this terrible fight last night.""",
                      kurdishText:
                          """من و پاوڵ دوێنی شەو مشتومڕێکی توندمان ھەبوو.""",
                      onPressedBritish: () => speaksentence48("en-GB"),
                      onPressedAmerican: () => speaksentence48("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Did you have a fight with him?""",
                      kurdishText: """مشتومڕت کرد لەگەڵی؟""",
                      onPressedBritish: () => speaksentence49("en-GB"),
                      onPressedAmerican: () => speaksentence49("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We had a fight over money.""",
                      kurdishText: """مناقەشەمان کرد لەسەر پارە.""",
                      onPressedBritish: () => speaksentence50("en-GB"),
                      onPressedAmerican: () => speaksentence50("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (ناو) لەناوبردن، ڕێگرتن، یان بەدەستھێننای شتێک"""),
                    SentencesRow(
                      englishText:
                          """He lost his fight against cancer earlier this year.""",
                      kurdishText:
                          """سەرەتای ئەمساڵ شەڕی دژ بە شێرپەنجەی دۆڕاند.""",
                      onPressedBritish: () => speaksentence51("en-GB"),
                      onPressedAmerican: () => speaksentence51("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """The workers are determined to put up a fight (= to fight hard) to save their jobs.""",
                              kurdishText:
                                  """کرێکاران سوورن لەسەر جەنگان بۆ پاراستنی کارەکانیان.""",
                              onPressedBritish: () => speaksentence52("en-GB"),
                              onPressedAmerican: () => speaksentence52("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Are we losing the fight against illegal drugs?""",
                              kurdishText:
                                  """ئایا جەنگی دژ بە مادەی ھۆشبەر دەدۆڕێنین؟""",
                              onPressedBritish: () => speaksentence53("en-GB"),
                              onPressedAmerican: () => speaksentence53("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She died at the age of 43 after a brave fight against cancer.""",
                              kurdishText:
                                  """لە تەمەنی ٤٣ ساڵی مرد لە دوای جەنگێکی بوێرانە دژ بە شێرپەنجە.""",
                              onPressedBritish: () => speaksentence54("en-GB"),
                              onPressedAmerican: () => speaksentence54("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She said they would continue their fight to find a cure for AIDS.""",
                              kurdishText:
                                  """گوتی بەردەوامی بە ھەوڵەکانیان دەدەن بۆ دۆزینەوەی چارەسەرێک بۆ ئایدز.""",
                              onPressedBritish: () => speaksentence55("en-GB"),
                              onPressedAmerican: () => speaksentence55("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """The fight for justice goes on.""",
                              kurdishText:
                                  """ھەوڵدان بۆ دادپەروەری بەردەوامە.""",
                              onPressedBritish: () => speaksentence56("en-GB"),
                              onPressedAmerican: () => speaksentence56("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٣. (ناو) ڕکابەریەک، بەتایبەتی وەرزشی"""),
                    SentencesRow(
                      englishText:
                          """The team put up a good fight (= they played well) but were finally beaten.""",
                      kurdishText:
                          """تیمەکە باش جەنگان بەڵام لە کۆتاییدا دۆران.""",
                      onPressedBritish: () => speaksentence57("en-GB"),
                      onPressedAmerican: () => speaksentence57("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She now has a fight on her hands (= will have to play very well) to make it through to the next round.""",
                      kurdishText:
                          """ئێستا ڕکابەرییەکی لە پێشە بۆ چوونە قۆناغی داھاتوو.""",
                      onPressedBritish: () => speaksentence58("en-GB"),
                      onPressedAmerican: () => speaksentence58("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٤. (ناو) ڕووبەڕووبوونەوەیەکی جەنگ"""),
                    SentencesRow(
                      englishText:
                          """In the fight for Lemburg, the Austrians were defeated.""",
                      kurdishText: """لە شەڕی لێمبورگ، نەمساییەکان شکان.""",
                      onPressedBritish: () => speaksentence59("en-GB"),
                      onPressedAmerican: () => speaksentence59("en-US"),
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
                  YoutubeEmbeddedone(),
                  YoutubeEmbeddedtwo(),
                  YoutubeEmbeddedthree(),
                  YoutubeEmbeddedfour(),
                  YoutubeEmbeddedfive(),
                  // YoutubeEmbeddedsix(),
                  // YoutubeEmbeddedseven(),
                  // YoutubeEmbeddedeight(),
                  // YoutubeEmbeddednine(),
                  // YoutubeEmbeddedten(),
                  // YoutubeEmbeddedeleven(),
                  // YoutubeEmbeddedtwelve(),
                  // YoutubeEmbeddedthirteen(),
                  // YoutubeEmbeddeddfourteen(),
                  // YoutubeEmbeddedfifteen(),
                  // YoutubeEmbeddeddsixteen(),
                  // YoutubeEmbeddeddseventeen(),
                  // YoutubeEmbeddeddeighteen(),
                  // YoutubeEmbeddeddnineteen(),
                  // YoutubeEmbeddedtwenty(),
                  // YoutubeEmbeddedmulti(),
                  YoutubeEmbeddedend(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const String _videoIdend = '_wNsZEqpKUA';
const double _startSecondsend = 750;
const String _videoIdone = 'gFuEoxh5hd4';
const double _startSecondsone = 340;
const String _videoIdtwo = 'wizgxRBfVTY';
const double _startSecondstwo = 38;
const String _videoIdthree = 'VkIgQ_cgDGw';
const double _startSecondsthree = 53;
const String _videoIdfour = 'HDntl7yzzVI';
const double _startSecondsfour = 715;
const String _videoIdfive = 'DO9U_XxN-Kc';
const double _startSecondsfive = 299;

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdend,
      startSeconds: _startSecondsend,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdend,
        startSeconds: _startSecondsend,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdone,
      startSeconds: _startSecondsone,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdone,
        startSeconds: _startSecondsone,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdtwo,
      startSeconds: _startSecondstwo,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdtwo,
        startSeconds: _startSecondstwo,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdthree,
      startSeconds: _startSecondsthree,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdthree,
        startSeconds: _startSecondsthree,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfour,
      startSeconds: _startSecondsfour,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfour,
        startSeconds: _startSecondsfour,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfive,
      startSeconds: _startSecondsfive,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfive,
        startSeconds: _startSecondsfive,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB