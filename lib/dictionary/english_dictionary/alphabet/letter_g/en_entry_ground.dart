import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryground extends StatefulWidget {
  const EnglishEntryground({super.key});

  @override
  State<EnglishEntryground> createState() => _EnglishEntrygroundState();
}

class _EnglishEntrygroundState extends State<EnglishEntryground> {
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
- Noun: ground (derived forms: grounds)
1. The solid part of the earth's surface (= land, dry land, earth, solid ground, terra firma)
"he dropped the logs on the ground"; "the plane turned away from the sea and moved back over solid ground";
 
2. Reason or cause (= reason, occasion)
"the grounds for their declaration";
 
3. The loose soft material that makes up a large part of the land surface (= earth)
"they dug into the ground outside the church";
 
4. A relation that provides the foundation for something (= footing, basis)
 
5. A position to be won or defended in battle (or as if in battle)
"they gained ground step by step"; "they fought to regain the lost ground"
 
6. The part of a scene (or picture) that lies behind objects in the foreground (= background, backdrop)
"he posed her against a ground of rolling hills";
 
7. Material in the top layer of the surface of the earth in which plants can grow (especially with reference to its quality or use) (= land, soil)
"the ground had never been ploughed";
 
8. A relatively homogeneous percept extending back of the figure on which attention is focused
 
9. (electricity) a connection between an electrical device and a large conducting body, such as the earth (which is taken to be at zero voltage) (= earth [Brit])
 
10. (art) the surface (as a wall or canvas) prepared to take the paint for a painting
 
11. The first or preliminary coat of paint or size applied to a surface (= flat coat, primer, priming, primer coat, priming coat, undercoat)

- Verb: ground (derived forms: grounding, grounds, grounded)
1. Fix firmly and stably (= anchor)
"ground the lamppost in concrete";
 
2. Confine or restrict to the ground
"After the accident, they grounded the plane and the pilot"
 
3. Place or put on the ground
 
4. Instruct someone in the fundamentals of a subject
 
5. Bring to the ground (= strand, run aground)
"the storm grounded the ship";
 
6. Hit or reach the ground (= run aground)
 
7. (football) throw to the ground in order to stop play and avoid being tackled behind the line of scrimmage
 
8. (baseball) a hit that travels along the playing field.
"he grounded to the second baseman"
 
9. Cover with a primer; apply a primer to (= prime, undercoat)
 
10. Connect to a ground
"ground the electrical connections for safety reasons"
 
12. Use as a basis for; found on (= establish, base, found)
""",
  );

  final String keyword = "ground";
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
    await flutterTts.speak("""ground""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I found her lying on the ground.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He fell to the ground, crying out in pain.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The helicopter hovered a couple of hundred metres above the ground.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The library has four levels below ground and seven above.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He sat down on the ground.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her eyes searched the ground.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The helicopter burst into flames when it hit the ground.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The plane was so overloaded it couldn't leave the ground.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The tunnel goes deep under the ground.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Thunder shook the ground.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was buried three metres below ground.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The rope barely reached the ground below.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Ground forces were deployed in the area.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He called for more troops on the ground.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We found a patch of open ground in the middle of the woods.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The atmosphere inside the ground was electric.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The boats headed to the fishing grounds at dawn.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Prepare the ground before you plant anything.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The car got stuck in the muddy ground.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""You can sow the seeds directly into the ground.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The house has extensive grounds.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She lived in the grounds of the castle.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He managed to cover a lot of ground in a short talk.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We had to go over the same ground in class the next day.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""You're on dangerous ground if you criticize his family.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Legal scholars say the president is on shaky ground.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I apologize if I'm going over old ground.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You have no grounds for complaint.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""What were his grounds for wanting a divorce?""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """There are reasonable grounds to believe that a crime has been committed.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The case was dismissed on the ground that there was insufficient evidence.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Employers cannot discriminate on grounds of age.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The fishing boat had been grounded off the coast of Cornwall.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """All planes out of Heathrow have been grounded by the strikes.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You're grounded for a week!""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He bought a bag of ground coffee from the store.""");
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
                      word: """ground""",
                      // alsoEnglishWord: "also: ground",
                      britshText: """IpaUK: /ɡraʊnd/""",
                      americanText: """IpaUS: /ɡraʊnd/""",
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
کوردی: زەوی، زەمین،	خاک، گڵ،	عەرز، سەرعەرز، وشکانی، ڕووی عەرز،	مەودا،	ناوچە، دەڤەر،	بنکی دەریا، تەرکی زەریا،	بنەڕەت، بنچینە، بناخە،	تەخت، تەختایی، زەمینە،	پارچە زەویێ بۆ مەبەستێکی تایبەتی،	بوار، مەڵبەند، پانتایی، ئاقار،	ڕەوش، بارودۆخ،	بابەت، مژار،	ھۆ، مایە، سۆنگە، پاساو، بەڵگە،	جێگا، ڤار، جێ، شوێن،	خڵتە، بن، نیشتوو، تڵتە، پەگر،	خاک، زەمین، مەیدان، گۆڕەپان، ھۆیەکان، بەڵگەگان،	حەوشە، باخچە، باغچە، دەوروبەر (خاک و باخانە)ی خانووبەرە،	خڵتە یان تڵپەی قاوە، بنی قاوە،	وایەری زەمین
"""),
                    const DefinitionKurdish(text: """١. (ناو) ڕووی زەوی"""),
                    SentencesRow(
                      englishText: """I found her lying on the ground.""",
                      kurdishText: """دۆزیمەوە کە لەسەر زەوییەکە کەوت بوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """He fell to the ground, crying out in pain.""",
                              kurdishText:
                                  """کەوتە سەر زەوییەکە و لە ئازاردا دەیقیژاند.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The helicopter hovered a couple of hundred metres above the ground.""",
                              kurdishText:
                                  """ھەلیکۆپتەرەکە چەند سەد مەترێک لە سەروو ڕووی زەوییەوە دەسووڕایەوە.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The library has four levels below ground and seven above.""",
                              kurdishText:
                                  """کتێبخانەکە چوار نھۆمی لە خوار زەوییەوە ھەیە و حەوتیش لە سەرەوە.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """He sat down on the ground.""",
                              kurdishText: """لەسەر زەوییەکە دانیشت.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Her eyes searched the ground.""",
                              kurdishText:
                                  """چاوەکانی بە زەوییەکەدا دەگەڕان.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The helicopter burst into flames when it hit the ground.""",
                              kurdishText:
                                  """ھەلیکۆپتەرەکە کەوتە ناو بڵێسە ئاگر کە کەوت بە زەویدا.""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The plane was so overloaded it couldn't leave the ground.""",
                              kurdishText:
                                  """فڕۆکەکە ھێندە کەلووپەلی تێدا بوو نەیدەتوانی لە زەوی بەرزببێتەوە.""",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The tunnel goes deep under the ground.""",
                              kurdishText:
                                  """تونێلەکە قووڵ بە ژێر زەویدا دەچێت.""",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Thunder shook the ground.""",
                              kurdishText: """چەخماخە زەوییەکەی لەراندەوە.""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """It was buried three metres below ground.""",
                              kurdishText:
                                  """سێ مەتر لە ژێر زەوییەوە شاردرابوویەوە.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The rope barely reached the ground below.""",
                              kurdishText:
                                  """حەبلەکە بە ئاستەنگ گەشتە زەوییەکەی خوارەوە.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) بۆ باسکردنی ئەو چالاکییانەی کە لەسەر زەوی ڕوودەدەن نەک لە ئاسمان یان ناو ئاو"""),
                    SentencesRow(
                      englishText:
                          """Ground forces were deployed in the area.""",
                      kurdishText:
                          """ھێزە زەمینییەکان لە ناوچەکە بڵاوکرانەوە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He called for more troops on the ground.""",
                      kurdishText: """داوای ھێزی زیاتری لەسەر زەوی کرد.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) زەوی یان دەشتێکی کراوە"""),
                    SentencesRow(
                      englishText:
                          """We found a patch of open ground in the middle of the woods.""",
                      kurdishText:
                          """پارچەیەک زەوی کراوەمان بینییەوە لە دارستانەکە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) زەوییەک کە بۆ مەبەستێکی دیاریکراو، چالاکییەک، یان وەرزشێک بەکاردێت"""),
                    SentencesRow(
                      englishText:
                          """The atmosphere inside the ground was electric.""",
                      kurdishText:
                          """کەشوھەوای ناو یاریگاکە پڕ لە وزە و جۆش و خرۆش بوو.""",
                      englishNote:
                          """This means the feeling or mood inside the stadium (or venue) was highly charged, full of energy, excitement, and anticipation. People were likely very enthusiastic and emotionally engaged, creating a vibrant and thrilling environment.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) ناوچەیەکی فراوان کە بۆ مەبەستێکی دیاریکراو بەکاردێت"""),
                    SentencesRow(
                      englishText:
                          """The boats headed to the fishing grounds at dawn.""",
                      kurdishText:
                          """بەلەمەکان لە بەرەبەیاندا کەوتنە ڕێ بۆ ناوچەی ماسیگرتنەکە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (ناو) خۆڵی سەر ڕووی زەوی"""),
                    SentencesRow(
                      englishText:
                          """Prepare the ground before you plant anything.""",
                      kurdishText:
                          """خاکەکە ئامادە بکە پێش ئەوەی ھیچ بچێنیت.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The car got stuck in the muddy ground.""",
                      kurdishText:
                          """ئۆتۆمبێلەکە لەسەر زەوییە قوڕاوییەکە گیری کرد.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You can sow the seeds directly into the ground.""",
                      kurdishText:
                          """دەتوانیت تۆوەکە ڕاستەوخۆ لە زەوییەکە بچێنیت.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ناو) زەوی یان باخچەی دەوری بینایەکی گەورە"""),
                    SentencesRow(
                      englishText: """The house has extensive grounds.""",
                      kurdishText: """خانووەکە زەوی فراوانی ھەیە.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She lived in the grounds of the castle.""",
                      kurdishText: """لە دەورووبەری قەڵاکە دەژیا.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (ناو) بوارێکی زانیاری، حەز، یان بیرۆکە"""),
                    SentencesRow(
                      englishText:
                          """He managed to cover a lot of ground in a short talk.""",
                      kurdishText: """توانی باسی زۆر بوار لە کورتە قسەیەکدا.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """We had to go over the same ground (= talk about the same things again) in class the next day.""",
                              kurdishText:
                                  """ڕۆژی دواتر دەبوو باسی ھەمان شت بکەین لە پۆلدا.""",
                              onPressedBritish: () => speaksentence24("en-GB"),
                              onPressedAmerican: () => speaksentence24("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """You're on dangerous ground (= likely to offend or upset somebody) if you criticize his family.""",
                              kurdishText:
                                  """ئەگەر ڕەخنە لە خێزانەکەی بگریت، خۆت دەخەیتە بارودۆخێکی مەترسیدارەوە..""",
                              onPressedBritish: () => speaksentence25("en-GB"),
                              onPressedAmerican: () => speaksentence25("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Legal scholars say the president is on shaky ground.""",
                              kurdishText:
                                  """پسپۆڕە لۆکاڵییەکان دەڵێن سەرۆک لە دۆخێکی لەرزۆکە.""",
                              englishNote:
                                  "This means the president's position or situation is unstable, uncertain, or vulnerable, often due to legal or political issues. Legal scholars suggest that the president may be in a precarious or weak position that could lead to challenges or difficulties.",
                              onPressedBritish: () => speaksentence26("en-GB"),
                              onPressedAmerican: () => speaksentence26("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I apologize if I'm going over old ground.""",
                              kurdishText:
                                  """داوای لێبووردن دەکەم ئەگەر باسی شتی باسکراو دەکەم.""",
                              englishNote:
                                  """This means the speaker is sorry if they are repeating information or discussing topics that have already been covered before. They are acknowledging that their current discussion might be revisiting previous points or issues.""",
                              onPressedBritish: () => speaksentence27("en-GB"),
                              onPressedAmerican: () => speaksentence27("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ناو) ھۆکاری سرووست یان باش بۆ گوتن، کردن، یان باوەڕکردن بە شتێک"""),
                    SentencesRow(
                      englishText: """You have no grounds for complaint.""",
                      kurdishText: """ھیچ ھۆکارت بۆ ناڕەزایی نییە.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """What were his grounds for wanting a divorce?""",
                              kurdishText:
                                  """ھۆکارەکانی چی بوو بۆ ویستنی جیابوونەوە؟""",
                              onPressedBritish: () => speaksentence29("en-GB"),
                              onPressedAmerican: () => speaksentence29("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """There are reasonable grounds to believe that a crime has been committed.""",
                              kurdishText:
                                  """ھۆکارەکانی گونجاو ھەیە بۆ باوەڕبوون بەوەی تاوانەکە ئەنجام دراوە.""",
                              onPressedBritish: () => speaksentence30("en-GB"),
                              onPressedAmerican: () => speaksentence30("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The case was dismissed on the ground that there was insufficient evidence.""",
                              kurdishText:
                                  """کەیسەکە وەلانرا بە ھۆکاری ئەوەی بەڵگەی ناپێویست ھەبوو.""",
                              onPressedBritish: () => speaksentence31("en-GB"),
                              onPressedAmerican: () => speaksentence31("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Employers cannot discriminate on grounds of age.""",
                              kurdishText:
                                  """خاوەنکاران ناتوانن جیاکاری بکەن لەسەر بنەمای تەمەن.""",
                              onPressedBritish: () => speaksentence32("en-GB"),
                              onPressedAmerican: () => speaksentence32("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (کردار) کە بەلەم یان شتێک لە ئاوێکی کەم‌قووڵ بەر خاکەکە دەکەوێت و ناتوانێت بجووڵێت"""),
                    SentencesRow(
                      englishText:
                          """The fishing boat had been grounded off the coast of Cornwall.""",
                      kurdishText:
                          """بەلەمە ماسیگرییەکە لە نزیک کەناراوی کۆرنوۆڵ چەقیبوو.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (کردار) ڕێگریکردن لە فڕینی شتێک"""),
                    SentencesRow(
                      englishText:
                          """All planes out of Heathrow have been grounded by the strikes.""",
                      kurdishText:
                          """ھەموو فڕۆکەکان لە ھێسرۆوە ڕاگیراون بەھۆی مانگرتنەوە.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (کردار) سزادانی منداڵێک بەوەی نەھێڵیت بچێتە دەرەوە"""),
                    SentencesRow(
                      englishText: """You're grounded for a week!""",
                      kurdishText: """بۆ ھەفتەیەک لە ماڵەوە ڕادەگیرێیت.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٣. (ھاوەڵناو) کە وردکراوە"""),
                    SentencesRow(
                      englishText:
                          """He bought a bag of ground coffee from the store.""",
                      kurdishText: """کیسەیەک قاوەی ھاڕاوی لە فرۆشگاکە کڕی.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
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

const String _videoIdend = 'FHJ3CMWnVxY';
const double _startSecondsend = 176;
const String _videoIdone = 'gFuEoxh5hd4';
const double _startSecondsone = 494;
const String _videoIdtwo = '_wNsZEqpKUA';
const double _startSecondstwo = 1123;
const String _videoIdthree = 'K12WhrZfxxw';
const double _startSecondsthree = 156;
const String _videoIdfour = 'D9od6OlaPgc';
const double _startSecondsfour = 487;
const String _videoIdfive = 'SOeAThye5rQ';
const double _startSecondsfive = 59;

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