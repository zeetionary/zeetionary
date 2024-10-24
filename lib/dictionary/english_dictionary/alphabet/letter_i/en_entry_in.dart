import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryin extends StatefulWidget {
  const EnglishEntryin({super.key});

  @override
  State<EnglishEntryin> createState() => _EnglishEntryinState();
}

class _EnglishEntryinState extends State<EnglishEntryin> {
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
- Adverb: in
1. To or toward the inside of (- inwards, inward)
"smash in the door"; "come in";

- Preposition: in
1. Located in; surrounded by
"we're in the car"; "a town in Wales"
 
2. Part of; a member of (- on)
"she's in the shortlist"; "only one in four passed";
 
3. At or after a particular a period of time
"come back in a week"; "in March"
 
4. Internal to, not outside; located in the bounds of (- within, inside)
"in the house";
 
5. Using or involving, having as an attribute
"covered in water"; "painted in blue"
 
6. Pertaining or relating to; on the subject of; involved with
"the maid helped in cleaning the house"
 
7. By virtue of; by means of
"In doing that, they are also taking away the choice"
 
8. Involved with or working for
"he's in the software business"

- Noun: in (Derived forms: ins)
1. A unit of length equal to one twelfth of a foot (- inch)

- Adjective: in
1. Holding office
"the in party"
 
2. Directed or bound inward
"took the in bus"; "the in basket"
 
3. [informal] Currently fashionable
"large shoulder pads are in"; "the in thing to do"
""",
  );

  final String keyword = "in";
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
    await flutterTts.speak("""in""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The kids were playing in the street.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I read about it in the paper.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's in that drawer.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was lying in bed.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Leave the key in the lock.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Soak it in cold water.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He dipped his brush in the paint.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She got in her car and drove off.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There are 31 days in May.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I recognize his father in him.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm getting forgetful in my old age.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They got married in March.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I take a shower in the morning every day.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It will be ready in a week's time.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She learnt to drive in three weeks.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I haven't seen him in years.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's the first letter I've had in ten days.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was all in black.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was sitting alone in the darkness.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We went out in the rain.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Put it in writing.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She wrote in pencil.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Say it in English.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He spoke in a loud voice.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The daffodils were in full bloom.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I must put my affairs in order.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm in love!""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He has acted in many plays.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's in computers.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He is in the army.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They sat in rows.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Roll it up in a ball.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""People flocked in their thousands to see her.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was not lacking in courage.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""In all the commotion I forgot to tell him the news.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In attempting to save the child from drowning, she nearly lost her own life.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We're losing a very good engineer in Jen.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She opened the door and went in.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The kids were playing by the river and one of them fell in.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I can't drink coffee with milk in.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We were locked in.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Nobody was in when we called.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I didn't hear you come in.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The bus is due in at six.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Applications must be in by April 30.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Is the tide coming in or going out?""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Several new councillors got in at the last election.""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Purple is the in colour this spring.""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Short skirts are in again.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'hTqtGJwsJVE';
    const double startSecondsend = 1692;
    const String videoIdone = 'XZVHmRvfDHM';
    const double startSecondsone = 47;
    const String videoIdtwo = 'L94M4xQcPYk';
    const double startSecondstwo = 29;
    const String videoIdthree = '8bWRjajx-LE';
    const double startSecondsthree = 78;
    const String videoIdfour = 'wizgxRBfVTY';
    const double startSecondsfour = 11;
    const String videoIdfive = 'G4BxOhJOmUw';
    const double startSecondsfive = 237;

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
                      word: """in""",
                      // alsoEnglishWord: "also: in",
                      britshText: """IpaUK: /ɪn/""",
                      americanText: """IpaUS: /ɪn/""",
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
کوردی: لە، لەنێو، پیا، پێدا، تێ، تیا، تێدا، تێوە، لە نێوەوەی، لە ژوورەوەی، (ل) هوندر، بەدرێژایی، لە ماوەی، بە، لە،	لەبارەی، لەمەڕ،	بە بەرگی، بە جلی،	لەسەر کاری، لە کاری،	وەکوو
"""),
// With short examples define "in", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ناو) لە خاڵێکی ناوچەیەک یان شوێنێک"""),
                    SentencesRow(
                      englishText: """The kids were playing in the street.""",
                      kurdishText: """منداڵەکان لە شەقامەکە یارییان دەکرد.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I read about it in the paper.""",
                      kurdishText: """لە ڕۆژنامەکە لەسەریم خوێندەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It's in that drawer.""",
                      kurdishText: """لە چەکمەجەکەیە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ئامراز) لە شێوەی شتێکدا"""),
                    SentencesRow(
                      englishText: """She was lying in bed.""",
                      kurdishText: """لە جێ‌خەودا کەوتبوو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Leave the key in the lock.""",
                      kurdishText: """کلیلەکە لە قوفڵەکە جێبهێڵە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Soak it in cold water.""",
                      kurdishText: """لە ئاوی سارد بیخووسێنە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ئامراز) بۆ ناو شتێک"""),
                    SentencesRow(
                      englishText: """He dipped his brush in the paint.""",
                      kurdishText: """فڵچەکەیی کرد بە بۆیەکەدا.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She got in her car and drove off.""",
                      kurdishText: """چووە ئۆتۆمبێلەکەیی و ڕۆشت.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ئامراز) کە بەشێک یان تەواوی ک/شت پێکدەهێنێت"""),
                    SentencesRow(
                      englishText: """There are 31 days in May.""",
                      kurdishText: """٣١ ڕۆژ هەیە لە ئایاردا.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I recognize his father in him (= his character is similar to his father's).""",
                      kurdishText: """باوکی دەبینمەوە تێیدا.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ئامراز) لە ماوەی کاتێکدا"""),
                    SentencesRow(
                      englishText: """I'm getting forgetful in my old age.""",
                      kurdishText:
                          """لەم ساڵانەی دواییدا خەریکە کەم‌ھۆش دەبم.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """They got married in March.""",
                      kurdishText: """لە ئازاردا هاوسەرگیرییان کرد.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I take a shower in the morning every day.""",
                      kurdishText: """هەموو ڕۆژێک لە بەیانیدا مەلەیەک دەکەم.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (ئامراز) لە دوای ماوەیەکی دیاریکراو"""),
                    SentencesRow(
                      englishText:
                          """It will be ready in a week's time (= one week from now).""",
                      kurdishText: """لە ماوەی هەفتەیەکدا ئامادە دەبم.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She learnt to drive in three weeks (= after three weeks she could drive).""",
                      kurdishText: """لە سێ هەفتەدا فێری شۆفێری بوو.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ئامراز) بۆ ماوەیەکی دیاریکراو"""),
                    SentencesRow(
                      englishText: """I haven't seen him in years.""",
                      kurdishText: """چەندین ساڵ دەبێت نەمدیوە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It's the first letter I've had in ten days.""",
                      kurdishText:
                          """ئەوە یەکەم نامەیە پێمدەگات لە دە ڕۆژدا.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (ئامراز) بە لەبەرکردنی شتێکەوە"""),
                    SentencesRow(
                      englishText: """She was all in black.""",
                      kurdishText: """بە تەواوی جلی ڕەشی پۆشیبوو.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ئامراز) بۆ باسکردنی شتێک کە لە هەموو لایەکتە"""),
                    SentencesRow(
                      englishText: """He was sitting alone in the darkness.""",
                      kurdishText: """بە تەنها لە تاریکییەکەدا دانیشتبوو.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We went out in the rain.""",
                      kurdishText: """لە بارانەکەدا چووینە دەرەوە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (ئامراز) بۆ پیشاندانی ئەو زمان، مادە، هتد ــەی بەکارهاتووە"""),
                    SentencesRow(
                      englishText: """Put it in writing.""",
                      kurdishText: """بە نووسین بیڵێ.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She wrote in pencil.""",
                      kurdishText: """بە پێنووسی دار نووسی.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Say it in English.""",
                      kurdishText: """بە ئینگلیزی بیڵێ.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He spoke in a loud voice.""",
                      kurdishText: """بە دەنگی بەرز قسەی کرد.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (ئامراز) بۆ پیشاندانی دۆخی شتێک"""),
                    SentencesRow(
                      englishText: """The daffodils were in full bloom.""",
                      kurdishText: """نێرگزەکان لە چرۆی تەواودا بوون.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I must put my affairs in order.""",
                      kurdishText: """دەبێت کارەکانم بخەمە ڕیزبەندی.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'm in love!""",
                      kurdishText: """لە خۆشەویستیدام!""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٢. (ئامراز) بەژداربوو لە شتێکدا"""),
                    SentencesRow(
                      englishText: """He has acted in many plays.""",
                      kurdishText: """لە زۆر شانۆدا بەژداری کردووە.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٣. (ئامراز) بۆ پیشاندانی کار و پیشەی کەسێک"""),
                    SentencesRow(
                      englishText: """She's in computers.""",
                      kurdishText: """کاری کۆمپیوتەر دەکات.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He is in the army.""",
                      kurdishText: """لە سوپادایە.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٤. (ئامراز) بۆ پیشاندانی شێوە، جۆر، ڕێکخستن، یان بڕی شتێک"""),
                    SentencesRow(
                      englishText: """They sat in rows.""",
                      kurdishText: """بە ڕیز دانیشتن.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Roll it up in a ball.""",
                      kurdishText: """بە تۆپەڵ لوولی بدە.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """People flocked in their thousands to see her.""",
                      kurdishText: """خەڵکی بە هەزاران هاتن بۆ بینینی.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٥. (ئامراز) بۆ پیشاندانی ئەو کوالێتییە یان شتە کە بڕیارێک دەدرێت لەسەری"""),
                    SentencesRow(
                      englishText: """She was not lacking in courage.""",
                      kurdishText: """کەم نەبوو لە بوێری.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٦. (ئامراز) لە کاتی کردنی شتێک"""),
                    SentencesRow(
                      englishText:
                          """In all the commotion I forgot to tell him the news.""",
                      kurdishText:
                          """لە هەموو جەنجاڵییەکەدا بیرم چوو هەواڵەکەی پێ بڵێم.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """In attempting to save the child from drowning, she nearly lost her own life.""",
                      kurdishText:
                          """لە هەوڵدان بۆ ڕزگارکردنی منداڵەکە لە خنکان خەریک بوو ژیانی خودی خۆی لەدەست بدات.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٧. (ئامراز) بۆ ناساندنی ناوی کەسێک کە کوالێتییەکی دیاریکراوی هەیە"""),
                    SentencesRow(
                      englishText:
                          """We're losing a very good engineer in Jen.""",
                      kurdishText:
                          """ئەندازیارێکی زۆر باش لەدەست دەدەین بە چوونی جەین.""",
                      englishNote:
                          """This means that Jen, who is a highly skilled engineer, is either leaving the company or team, and as a result, they are losing her valuable expertise and contribution. The sentence implies that her departure is a significant loss for the group.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٨. (هاوەڵکار) بۆ ناو شتێک"""),
                    SentencesRow(
                      englishText: """She opened the door and went in.""",
                      kurdishText: """دەرگاکەی کردەوە و چووە ناوەوە.""",
                      onPressedBritish: () => speaksentence38("en-GB"),
                      onPressedAmerican: () => speaksentence38("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The kids were playing by the river and one of them fell in.""",
                      kurdishText:
                          """منداڵەکان لە نزیک ڕووبارەکە یارییان دەکرد و یەکێکیان کەوتە ناو.""",
                      onPressedBritish: () => speaksentence39("en-GB"),
                      onPressedAmerican: () => speaksentence39("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٩. (هاوەڵکار) لەناو شتێک، مادەیەک، یان شوێنێک"""),
                    SentencesRow(
                      englishText: """I can't drink coffee with milk in.""",
                      kurdishText: """ناتوانم قاوە بخۆمەوە شیری تێدا بێت.""",
                      onPressedBritish: () => speaksentence40("en-GB"),
                      onPressedAmerican: () => speaksentence40("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We were locked in.""",
                      kurdishText: """لەناوەوە گیرمان خوارد.""",
                      onPressedBritish: () => speaksentence41("en-GB"),
                      onPressedAmerican: () => speaksentence41("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢٠. (هاوەڵکار) لە ماڵەوە یان لە شوێنی کار"""),
                    SentencesRow(
                      englishText: """Nobody was in when we called.""",
                      kurdishText:
                          """کەس لە ژوورەوە نەبوو کە پەیوەندیمان کرد.""",
                      onPressedBritish: () => speaksentence42("en-GB"),
                      onPressedAmerican: () => speaksentence42("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I didn't hear you come in.""",
                      kurdishText: """گوێم لێت نەبوو بیتە ژوورەوە.""",
                      onPressedBritish: () => speaksentence43("en-GB"),
                      onPressedAmerican: () => speaksentence43("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢١. (هاوەڵکار) لەو شوێنەی لە پاس، شەمەندەفەر، هتد دادەبەزیت یان سەردەکەویت"""),
                    SentencesRow(
                      englishText:
                          """The bus is due in (= it should arrive) at six.""",
                      kurdishText: """پاسەکە لە شەش دەگات.""",
                      onPressedBritish: () => speaksentence44("en-GB"),
                      onPressedAmerican: () => speaksentence44("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٢٢. (هاوەڵکار) وەرگرتن"""),
                    SentencesRow(
                      englishText: """Applications must be in by April 30.""",
                      kurdishText:
                          """داخوازینامەکان دەبێت تاوەکو ٣٠ نیسان بگەن.""",
                      onPressedBritish: () => speaksentence45("en-GB"),
                      onPressedAmerican: () => speaksentence45("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢٣. (هاوەڵکار) شەپۆل بەرەو وشكانی"""),
                    SentencesRow(
                      englishText: """Is the tide coming in or going out?""",
                      kurdishText: """شەپۆلەکە دێت یان دەچێت؟""",
                      onPressedBritish: () => speaksentence46("en-GB"),
                      onPressedAmerican: () => speaksentence46("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢٤. (هاوەڵکار) هەڵبژێردراو"""),
                    SentencesRow(
                      englishText:
                          """Several new councillors got in at the last election.""",
                      kurdishText:
                          """ژمارەیەک ئەندامی ئەنجوومەن لە هەڵبژاردنی پێشووتردا هەڵبژێردران.""",
                      onPressedBritish: () => speaksentence47("en-GB"),
                      onPressedAmerican: () => speaksentence47("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢٥. (هاوەڵناو) بەناوبانگ و مۆدە"""),
                    SentencesRow(
                      englishText: """Purple is the in colour this spring.""",
                      kurdishText: """مۆر ڕەنگی باوە ئەم بەهارە.""",
                      onPressedBritish: () => speaksentence48("en-GB"),
                      onPressedAmerican: () => speaksentence48("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Short skirts are in again.""",
                      kurdishText: """تەنوورەی کورت دووبارە باون.""",
                      onPressedBritish: () => speaksentence49("en-GB"),
                      onPressedAmerican: () => speaksentence49("en-US"),
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