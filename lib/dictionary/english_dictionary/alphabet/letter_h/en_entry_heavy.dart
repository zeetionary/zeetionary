import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryheavy extends StatefulWidget {
  const EnglishEntryheavy({super.key});

  @override
  State<EnglishEntryheavy> createState() => _EnglishEntryheavyState();
}

class _EnglishEntryheavyState extends State<EnglishEntryheavy> {
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
- Adjective: heavy (Derived forms: heavier, heaviest)
1. Of comparatively great physical weight or density
"a heavy load"; "lead is a heavy metal"; "heavy mahogany furniture"
 
2. Unusually great in degree, quantity or number
"heavy taxes"; "a heavy fine"; "heavy casualties"; "heavy losses"; "heavy rain"; "heavy traffic"
 
3. Of the military or industry; using (or being) the heaviest and most powerful armaments or weapons or equipment
"heavy artillery"; "heavy infantry"; "a heavy cruiser"; "heavy guns"; "heavy industry involves large-scale production of basic products (such as steel) used by other industries"
 
4. Marked by great psychological weight; weighted down especially with sadness, troubles or weariness
"a heavy heart"; "a heavy schedule"; "heavy news"; "a heavy silence"; "heavy eyelids"
 
5. Of great intensity, power or force
"a heavy blow"; "the fighting was heavy"; "heavy seas"
 
6. (physics, chemistry) being or containing an isotope with greater than average atomic mass or weight
"heavy hydrogen"; "heavy water"
 
7. Usually describes a large person who is fat but has a large frame to carry it (- fleshy, thickset, heavyset)
 
8. (used of soil) compact and fine-grained (- clayey, cloggy)
"the clayey soil was heavy and easily saturated"; "the cloggy soil was heavy and easily saturated";
 
9. Darkened by clouds (- lowering[2], sullen, threatening, lowery, loury, louring)
"a heavy sky";
 
10. (of an actor or role) being or playing the villain
"Iago is the heavy role in 'Othello'"
 
11. Permitting little if any light to pass through because of denseness of matter (- dense, impenetrable)
"heavy fog";
 
12. Of relatively large extent and density
"a heavy line"
 
13. Made of fabric having considerable thickness
"a heavy coat"
 
14. Prodigious (- big)
"heavy investor";
 
15. Full and loud and deep (- sonorous)
"heavy sounds";
 
16. Given to excessive indulgence of bodily appetites especially for intoxicating liquors (- intemperate, hard)
"a heavy drinker";
 
17. Of great gravity or crucial import; requiring serious thought (- grave, grievous, weighty)
"heavy matters of state";
 
18. Slow and laborious because of weight (- lumbering, ponderous)
"the heavy tread of tired troops";
 
19. Large and powerful; especially designed for heavy loads or rough work
"a heavy truck"; "heavy machinery"
 
20. Dense or inadequately leavened and hence likely to cause distress in the alimentary canal
"a heavy pudding"
 
21. Sharply inclined
"a heavy grade"
 
22. Full of; bearing great weight (- weighed down)
"trees heavy with fruit";
 
23. Requiring or showing effort (- labored [US], laboured [Brit, Cdn])
"heavy breathing";
 
24. Characterized by effort to the point of exhaustion; especially physical effort (- arduous, backbreaking, grueling [US], gruelling [Brit, Cdn], hard, laborious, operose, punishing, toilsome, killing [informal])
"heavy work"; "heavy going";
 
25. Lacking lightness or liveliness (- leaden)
"heavy humour";
 
26. (of sleep) deep and complete (- profound, sound, wakeless)
"a heavy sleep";
 
27. In an advanced stage of pregnancy (- big, enceinte [archaic], expectant, gravid [technical], great, large, with child)
"was heavy with child";

- Noun: heavy (Derived forms: heavies)
1. An actor who plays villainous roles
 
2. A serious (or tragic) role in a play
 
3. [informal] A large and strong and heavyset man (- bull, bruiser, strapper, Samson)

- Adverb: heavy
1. Slowly as if burdened by much weight (- heavily)
"time hung heavy on their hands";
""",
  );

  final String keyword = "heavy";
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
    await flutterTts.speak("""heavy""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My brother is much heavier than me.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He tried to push the heavy door open.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""How heavy is it?""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Many young people today are too heavy.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The bottles of wine made the bag even heavier.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""There was heavy fighting in the capital last night.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The British suffered heavy losses in the battle.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The penalty for speeding can be a heavy fine.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He was known as a heavy drinker among his friends.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was tall and strong, with heavy features.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The heavy curtains kept the room dark during the day.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The air was heavy with the scent of flowers.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His voice was heavy with sarcasm.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was heavy with child.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Heavy lorries transport goods across long distances.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She'd had a heavy day.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""A gardener comes in to do the heavy work for me.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The heavy blow to the car caused extensive damage.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Avoid heavy foods that are difficult to digest.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The heavy infantry advanced to the front lines with armored suits.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """After running up the stairs, she was experiencing heavy breathing.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Older cars are heavy on gas.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Don't go so heavy on the garlic.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We found the play very heavy.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The discussion got a little heavy.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""This whole coastline is battered by heavy seas.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's very heavy—I think there'll be a storm.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He lunged at the minister, but was soon pulled to the ground by a couple of heavies.""");
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
                      word: """heavy""",
                      // alsoEnglishWord: "also: heavy",
                      britshText: """IpaUK: /ˈhevi/""",
                      americanText: """IpaUS: /ˈhevi/""",
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
کوردی: قورس، گران،	سەخت، چەتوون،	خەمبار، مات، کز، دڵتەنگ،	پڕکار، دەس‌نەپەرژاو، خەریک،	ناخۆش، وەڕسکەر، ماندووکەر،	(ھەوا) ناخۆش، بۆق، بۆگەن،	قورس، درەنگ‌ھەرس،	زۆر، یەکجار، زەعف،	توند، ڕەق،	(ھەور) تاریک و ھەوری، لێڵ،	چڕ، خەست،	سەختگر، توندگر،	خەواڵوو، چاوبەخەو،	(دەریا) شەپۆلاوی، ئاڵۆز،	بەڕشت،	بێزاوی،	مەترسی‌دار،	ھەڕەشاوی، ھەڕەشەیی‌یانە،	ئەستوور، قورس‌تر لە ئاسایی،	زگپڕ، ئاوس، دووگیان،	(لەشکری) چەک‌قورس،	ھەڵنەھاتوو
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) قورس؛ ھەبوونی کێشی زۆر"""),
                    SentencesRow(
                      englishText: """My brother is much heavier than me.""",
                      kurdishText: """براکەم زۆر قورسترە لە من.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    SentencesRow(
                      englishText: "He tried to push the heavy door open.",
                      kurdishText: """ھەوڵی دا دەرگا قورسەکە بکاتەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """How heavy is it (= how much does it weigh)?""",
                      kurdishText: """چەند قورسە؟""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    SentencesRow(
                      englishText: """Many young people today are too heavy.""",
                      kurdishText:
                          """زۆر کەسی گەنج ئێستا زۆر قورسن (= قەڵەون).""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """The bottles of wine made the bag even heavier.""",
                      kurdishText:
                          """بوتڵە شەرابەکان وایان کرد کە جانتاکە قورستر بێت.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ھاوەڵناو) زیاتر یان خراپتر لە کاتی ئاسایی لە بڕ، ئاست، ھتد"""),
                    SentencesRow(
                      englishText:
                          """There was heavy fighting in the capital last night.""",
                      kurdishText:
                          """شەوی ڕابردوو شەڕی سەخت ھەبوو لە پایتەخت.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """The British suffered heavy losses in the battle.""",
                      kurdishText:
                          """بەریتانییەکان زیانی سەختیان پێگەشت لە شەڕەکەدا.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """The penalty for speeding can be a heavy fine.""",
                      kurdishText:
                          """سزای تیژڕەوی دەکرێت بژێرەیەکی سەخت بێت.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) کردنی ئەو شتەی باسکراوە بە ئاستێکی زیاتر"""),
                    SentencesRow(
                      englishText:
                          """He was known as a heavy drinker among his friends.""",
                      kurdishText:
                          """لەناو ھاوڕێکانی وەک ئارەقخۆرێکی سەخت ناسراو بوو.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ھاوەڵناو) گەورە و سەخت"""),
                    SentencesRow(
                      englishText:
                          """He was tall and strong, with heavy features.""",
                      kurdishText: """درێژ و بەھێز بوو بە خاسیەتی پتەوەوە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٥. (ھاوەڵناو) ئەستوور"""),
                    SentencesRow(
                      englishText:
                          """The heavy curtains kept the room dark during the day.""",
                      kurdishText:
                          """پەردە ئەستوورەکان ژوورەکەیان بە تاریکی ھێشتەوە لە ڕۆژدا.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ھاوەڵناو) پڕ لە شتێک؛ ئەوەی شتێکت تێدا بێت"""),
                    SentencesRow(
                      englishText:
                          """The air was heavy with the scent of flowers.""",
                      kurdishText: """ھەواکە پڕ لە بۆنی گوڵ بوو.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    SentencesRow(
                      englishText: """His voice was heavy with sarcasm.""",
                      kurdishText: """دەنگی پڕ لە گاڵتە بوو.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    SentencesRow(
                      englishText: """She was heavy with child (= pregnant).""",
                      kurdishText: """دووگیان بوو.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ھاوەڵناو) گەورە و بەھێز"""),
                    SentencesRow(
                      englishText:
                          """Heavy lorries transport goods across long distances.""",
                      kurdishText:
                          """لۆری گەورە کەلووپەل بە مەودای دووردا دەگوازنەوە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ھاوەڵناو) سەرقاڵ؛ کە کاری زۆر لەخۆدەگرێت"""),
                    SentencesRow(
                      englishText: """She'd had a heavy day.""",
                      kurdishText: """ڕۆژێکی سەرقاڵی ھەبووە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ھاوەڵناو) کاری سەخت کە پێویستی بە ھیزی زۆر ھەیە"""),
                    SentencesRow(
                      englishText:
                          """A gardener comes in to do the heavy work for me.""",
                      kurdishText:
                          """باخەوانێک دێت بۆ کردنی کارە سەختەکە بۆم.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (ھاوەڵناو) کە بە ھێزی زۆرەوە دەکەوێت یان بەر شتێک دەکەوێت"""),
                    SentencesRow(
                      englishText:
                          """The heavy blow to the car caused extensive damage.""",
                      kurdishText:
                          """بەرکەوتنی بەھێز بە ئۆتۆمبێلەکە بوو بە ھۆکاری زیانی زۆر.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (ھاوەڵناو) زۆری لە ڕێژەدا"""),
                    SentencesRow(
                      englishText:
                          """Avoid heavy foods that are difficult to digest.""",
                      kurdishText:
                          """دوور بە لە خواردنی قورس کە سەختن بۆ ھەرس.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٢. (ھاوەڵناو) سەرباز کە چەکی قورسی پێیە"""),
                    SentencesRow(
                      englishText:
                          """The heavy infantry advanced to the front lines with armored suits.""",
                      kurdishText:
                          """ھێزە پیادە پڕچەکەکان بە جلی قەڵغاندار بەرەو ھێڵەکانی پێشەوە پێشڕەوییان کرد.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٣. (ھاوەڵناو) دەنگی بەرز و گڕ"""),
                    SentencesRow(
                      englishText:
                          """After running up the stairs, she was experiencing heavy breathing.""",
                      kurdishText:
                          """دوای ئەوەی بە پلەکانەکاندا ڕای کردە سەرەوە، تووشی ھەناسەدانی قووڵ بوو.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٤. (ھاوەڵناو) کە ڕێژەیەکی زۆر لە شتێک بەکاردێنێت"""),
                    SentencesRow(
                      englishText: """Older cars are heavy on gas.""",
                      kurdishText:
                          """ئۆتۆمبێلە کۆنەکان زیاتر گاز سەرف دەکەن.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    SentencesRow(
                      englishText: """Don't go so heavy on the garlic.""",
                      kurdishText: """ھێندە زۆرخۆری سیر مەبە.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٥. (ھاوەڵناو) کە سەختە بۆ تێگەشتن یان چێژ لێ بینین"""),
                    SentencesRow(
                      englishText: """We found the play very heavy.""",
                      kurdishText: """شانۆکە زۆر ئاڵۆز بوو.""",
                      englishNote:
                          """This means that the play was difficult to enjoy or understand, possibly because it was serious, slow, or emotionally intense.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    SentencesRow(
                      englishText: """The discussion got a little heavy.""",
                      kurdishText: """مشتومڕەکە کەمێک توند بوو.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٦. (ھاوەڵناو) مەترسیدار بەھۆی شەپۆلی گەورە"""),
                    SentencesRow(
                      englishText:
                          """This whole coastline is battered by heavy seas.""",
                      kurdishText:
                          """تەواوی کەنارەکە بەر شەپۆلی توند دەکەوێت.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٧. (ھاوەڵناو) گەرم و بەبێ ھەوای پاک"""),
                    SentencesRow(
                      englishText:
                          """It's very heavy—I think there'll be a storm.""",
                      kurdishText: """زۆر بۆقە ـ پێموایە زریانێک دەبێت.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٨. (ناو) پیاوێکی بەھێز کە کاری پاراستنی کەسێک یان شوێنێکە"""),
                    SentencesRow(
                      englishText:
                          """He lunged at the minister, but was soon pulled to the ground by a couple of heavies.""",
                      kurdishText:
                          """خۆی بۆ وەزیرەکە فڕێدا، بەڵام ھەرزوو خرایە سەر زەوی لەلایەن ژمارەیەک پیاوی زەبەلاحەوە.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
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

const String _videoIdend = 'HDntl7yzzVI';
const double _startSecondsend = 489;
const String _videoIdone = 'HsT3iI6dT5U';
const double _startSecondsone = 487;
const String _videoIdtwo = 'h4CyhQqAPpk';
const double _startSecondstwo = 803;
const String _videoIdthree = 'DesEUpFgGrQ';
const double _startSecondsthree = 177;
const String _videoIdfour = 'o9zCgPtsups';
const double _startSecondsfour = 436;
const String _videoIdfive = 'xreA0vkHMBY';
const double _startSecondsfive = 2760;

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