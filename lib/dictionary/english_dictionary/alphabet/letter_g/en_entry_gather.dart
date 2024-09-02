import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrygather extends StatefulWidget {
  const EnglishEntrygather({super.key});

  @override
  State<EnglishEntrygather> createState() => _EnglishEntrygatherState();
}

class _EnglishEntrygatherState extends State<EnglishEntrygather> {
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
- Verb: gather (derived forms: gathered, gathers, gathering)
1. Assemble or get together (= garner, collect, pull together)
"gather some stones";
 
2. (of people) collect in one place (= meet, assemble, forgather, foregather)
"Let's gather in the dining room";
 
3. Collect in one place, esp. growing to a large number or quantity (= accumulate, cumulate, conglomerate, pile up, amass)
"Journals are gathering in my office";
 
4. Conclude from evidence
"I gather you have not done your homework"
 
5. Draw together into folds or puckers (= pucker, tuck)
 
7. Get people together (= assemble, get together)
"gather the close family members";
 
8. Draw and bring closer
"she gathered her shawl around her shoulders"
 
9. Look for (food) in nature
"Our ancestors gathered nuts in the Fall"
 
10. Increase or develop (= gain)
"the car gathers speed";

- Noun: gather (derived forms: gathers)
1. Sewing consisting of small folds or puckers made by pulling tight a thread in a line of stitching (= gathering)
 
2. The act of gathering something (= gathering)
""",
  );

  final String keyword = "gather";
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
    await flutterTts.speak("""gather""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A crowd soon gathered.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His supporters gathered in the main square.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Can you all gather round? I've got something to tell you.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The whole family gathered together at Ray's home.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They were all gathered round the TV.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""A large crowd was gathered outside the studio.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The kids were gathered together in one room.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They are all gathering for a major conference.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """People slowly gathered their belongings and left the hall.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I waited while he gathered up his papers.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She gathered her things together and got to her feet.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Detectives have spent months gathering evidence.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They lived in the forest, gathering mushrooms and berries to eat.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It was late August and the harvest had been safely gathered in.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I gather (that) you wanted to see me.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I gather from your letter that you're not enjoying your job.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""As far as I can gather, he got involved in a fight.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The truck gathered speed.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""As the weeks passed, Charlotte began to gather strength.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The storm clouds were gathering.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He gathered his cloak around him.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She gathered up her skirts and ran.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She gathered the child in her arms and held him close.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He gathered her close and kissed her.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She wore a skirt gathered (in) at the waist.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I sat down for a moment to gather my strength.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Fortunately the short delay gave him time to gather himself.""");
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
                      word: """gather""",
                      // alsoEnglishWord: "also: gather",
                      britshText: """IpaUK: /ˈɡæðə(r)/""",
                      americanText: """IpaUS: /ˈɡæðər/""",
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
// کوردی:
// """),
                    const DefinitionKurdish(
                        text: """١. (کردار) کۆبوونەوە یان کۆکردنەوە"""),
                    SentencesRow(
                      englishText: """A crowd soon gathered.""",
                      kurdishText: """جەماوەرێک زوو کۆبوونەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """His supporters gathered in the main square.""",
                              kurdishText:
                                  """پشتیوانانی لە گۆڕەپانە سەرەکییەکە کۆبوونەوە.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Can you all gather round? I've got something to tell you.""",
                              kurdishText:
                                  """دەتوانن ھەمووتان کۆببنەوە؟ شتێکم ھەیە پێتان بڵێم.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The whole family gathered together at Ray's home.""",
                              kurdishText:
                                  """تەواوی خێزانەکە پێکەوە کۆبوونەوە لە ماڵی ڕەی.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They were all gathered round the TV.""",
                              kurdishText:
                                  """ھەموویان لە دەوری تەلەفیزیۆنەکە خڕبوونەوە.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """A large crowd was gathered outside the studio.""",
                              kurdishText:
                                  """جەماوەڕێکی گەورە لە دەرەوەی ستودیۆکە کۆبوونەوە.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The kids were gathered together in one room.""",
                              kurdishText:
                                  """منداڵەکان پێکەوە لە یەک ژوور کۆبوونەوە.""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They are all gathering for a major conference.""",
                              kurdishText:
                                  """ھەموویان کۆبوونەتەوە بۆ کۆنفرانسە گرنگەکەیان.""",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) کۆکردنەوەی ئەو شتانەی کە بڵاوکراونەتەوە"""),
                    SentencesRow(
                      englishText:
                          """People slowly gathered their belongings and left the hall.""",
                      kurdishText:
                          """خەڵکی بە‌ھێواشی شتەکانیانیان کۆکردەوە و ھۆڵەکەیان جێھێشت.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I waited while he gathered up his papers.""",
                      kurdishText:
                          """چاوەڕێ بووم کە ئەو کاغەزەکانیی کۆکردەوە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She gathered her things together and got to her feet.""",
                      kurdishText: """شتەکانیی کۆکردەوە و ھەستایە سەر پێ.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) کۆکردنەوەی زانیاری لە سەرچاوەی جیاوازەوە"""),
                    SentencesRow(
                      englishText:
                          """Detectives have spent months gathering evidence.""",
                      kurdishText:
                          """لێکۆڵەران چەندین مانگیان بە کۆکردنەوەی بەڵگە بەسەر بردووە.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) کۆکردنەوەی ڕووەک، میوە، ھتد لە کردارچەیەکی فراوانەوە"""),
                    SentencesRow(
                      englishText:
                          """They lived in the forest, gathering mushrooms and berries to eat.""",
                      kurdishText:
                          """لە دارستانەکە دەژیان قارچک و توویان کۆدەکردەوە بۆ خواردن.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (کردار) کۆکردنەوەی بەرھەم دانەوێڵە """),
                    SentencesRow(
                      englishText:
                          """It was late August and the harvest had been safely gathered in.""",
                      kurdishText:
                          """کۆتایی ئاب بوو و دروێنە بە سەلامەتی کۆکرابوویەوە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) باوەڕکردن یان تێگەشتن لەوەی شتێک ڕاستە بەھۆی ئەو زانیارییەی کە ھەتە"""),
                    SentencesRow(
                      englishText: """I gather (that) you wanted to see me.""",
                      kurdishText: """وەھا تێگەشتم دەتەوێت بمبینی.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I gather from your letter that you're not enjoying your job.""",
                      kurdishText:
                          """وەھا لە نامەکەت تێدەگەم کە چێژ لە کارەکەت نابینی.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """As far as I can gather, he got involved in a fight.""",
                      kurdishText: """وەک ئەوەی تێگەشتبم لە شەڕێک تێوەگلا.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (کردار) زیادبوونی خێرایی، ھێز، ھتد"""),
                    SentencesRow(
                      englishText: """The truck gathered speed.""",
                      kurdishText: """پێڕۆیەکە خێرایی زیاد کرد.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """As the weeks passed, Charlotte began to gather strength.""",
                      kurdishText:
                          """کە ھەفتەکە تێپەڕی، شارلۆت دەستیکرد بە کۆکردنەوەی وزە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (کردار) کەم‌کەم زیادبوون لە ڕێژە یان بڕ"""),
                    SentencesRow(
                      englishText: """The storm clouds were gathering.""",
                      kurdishText: """ھەوری زریانەکان زیادیان دەکرد.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (کردار) توندکردنی جلێک لە جەستەت"""),
                    SentencesRow(
                      englishText: """He gathered his cloak around him.""",
                      kurdishText: """عەبایەکەی لە دەوری پێچایەوە.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She gathered up her skirts and ran.""",
                      kurdishText: """تەنوورەکەی کۆکردەوە و ھەڵھات.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (کردار) کۆکردنەوەی بەشەکانی جلێک بە چین چین و دوورینەوەی"""),
                    SentencesRow(
                      englishText:
                          """She wore a skirt gathered (in) at the waist.""",
                      kurdishText:
                          """تەنوورەیەکی لەبەر کردبوو کە لە کەمەر تەسک کرابوو.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (کردار) لەباوەشگرتن"""),
                    SentencesRow(
                      englishText:
                          """She gathered the child in her arms and held him close.""",
                      kurdishText:
                          """منداڵەکەی لەباوەش گرت و نزیک لە خۆی ھێشتییەوە.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He gathered her close and kissed her.""",
                      kurdishText: """کچەکەی لەباوەش گرت و ماچی کرد.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (کردار) ئامادەکردنی خۆت بۆ شتێک کە ھەوڵی دەوێت"""),
                    SentencesRow(
                      englishText:
                          """I sat down for a moment to gather my strength.""",
                      kurdishText: """بۆ کەمێک دانیشتم بۆ کۆکردنەوەی توانام.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Fortunately the short delay gave him time to gather himself.""",
                      kurdishText:
                          """خۆشبەختانە دواکەوتنە کەمەکە کاتی پێیدا کە خۆی ئامادە بکات.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
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

const String _videoIdend = 'VrKW58MS12g';
const double _startSecondsend = 696;
const String _videoIdone = 'E2_kRmS6y8A';
const double _startSecondsone = 1995;
const String _videoIdtwo = 'L81XWiDgmTk';
const double _startSecondstwo = 0;
const String _videoIdthree = 'HDntl7yzzVI';
const double _startSecondsthree = 1109;
const String _videoIdfour = '8pEcvteQo9g';
const double _startSecondsfour = 153;
const String _videoIdfive = 'gDwx55lrdFQ';
const double _startSecondsfive = 23;

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
