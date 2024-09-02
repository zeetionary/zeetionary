import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryforce extends StatefulWidget {
  const EnglishEntryforce({super.key});

  @override
  State<EnglishEntryforce> createState() => _EnglishEntryforceState();
}

class _EnglishEntryforceState extends State<EnglishEntryforce> {
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
- Noun: force (derived forms: forces)
1. A powerful effect or influence
"the force of his eloquence easily persuaded them"
 
2. (physics) the influence that produces a change in a physical quantity
"force equals mass times acceleration"
 
3. Physical energy or intensity (= forcefulness, strength)
"he hit with all the force he could muster";
 
4. Group of people willing to obey orders (= personnel)
"a public force is necessary to give security to the rights of citizens";
 
5. (military) a unit that is part of some military service (= military unit, military force, military group)
"he sent Caesar a force of six thousand men";
 
6. An act of aggression (as one against a person who resists) (= violence)
"he may accomplish by craft in the long run what he cannot do by force and violence in the short one";
 
7. One possessing or exercising power or influence or authority (= power)
"may the force be with you"; "the forces of evil";

8. A group of people having the power of effective action
"he joined forces with a band of adventurers"
 
9. (of a law) having legal validity (= effect)
"the law is still in force";
 
10. (baseball) a putout of a base runner who is required to run; the putout is accomplished by holding the ball while touching the base to which the runner must advance before the runner reaches that base (= force out, force-out, force play)
"the shortstop got the runner at second on a force";

- Verb: force (derived forms: forcing, forced, forces)
1. To cause to do through pressure or necessity, by physical, moral or intellectual means (= coerce, hale [archaic], squeeze, pressure)
"She forced him to take a job in the city";
 
2. Urge or force (a person) to an action; constrain or motivate (= impel)
 
3. Move with force (= push)
 
4. Impose urgently, importunately, or inexorably (= thrust)
"She forced her diet fads on him";
 
5. Force to fit into (or through) a tight space (= wedge, squeeze, squash, sardine [informal])
"I forced myself into the corner";
 
6. Force into or from an action or state, either physically or metaphorically (= drive, ram)
 
7. Do forcibly; exert force
"Don't force it!"
 
8. Take by force (= storm)
"force the fort";
""",
  );

  final String keyword = "force";
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
    await flutterTts.speak("""force""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The release of the hostages could not be achieved without the use of force.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""If persuasion doesn't work, they use force.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The government has relied on brute force to respond to public discontent.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The rioters were taken away by force.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The empire was held together by military force.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The regulations allow the use of force if necessary.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Police were accused of using excessive force.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The shopping centre took the full force of the blast.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""You have to apply some force to move the lever.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He staggered backwards from the force of the blow.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The force of the explosion hurled bodies into the air.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The waves were breaking against the rocks with great force.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He controlled himself by sheer force of will.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She spoke with force and deliberation.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I felt the full force of her criticism.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Suddenly it came home to me with tremendous force that this was my last chance.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Ron is the driving force behind the project.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's a force to be reckoned with.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The expansion of higher education should be a powerful force for change.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He was finally defeated by forces beyond his control.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Social media has become a major force in political campaigns.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""These guidelines do not have the force of law.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The culprits must expect to face the full force of the law.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She has attracted a force of passionate young individuals who are committed to the organization.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Rebel forces now control most of the capital.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Government forces captured the rebel positions.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He called on the local population to rise up against the occupying forces.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Daisy intends to join the forces when she leaves school this summer.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The government is negotiating cuts to nuclear forces.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He joined the force twenty years ago.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The moon exerts a force on the earth.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Because of the increased mass, more force is needed to accelerate the object.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The forces of expansion are balanced by forces of contraction.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The President was forced into resigning.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I was forced to take a taxi because the last bus had left.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She forced herself to be polite to them.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was forced into exile with his family.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Ill health forced him into early retirement.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Residents were forced out of their homes.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He didn't force me—I wanted to go.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He has been forced to admit that he lied.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She forced her way through the crowd of reporters.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Someone had tried to force (an) entry.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The door had been forced open.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We had to force the lock.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He was in a position where he had to force a decision.""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Building a new road here will force house prices down.""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She managed to force a smile.""");
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
                      word: """force""",
                      // alsoEnglishWord: "also: force",
                      britshText: """IpaUK: /fɔːs/""",
                      americanText: """IpaUS: /fɔːrs/""",
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
کوردی: زۆر، زەبر، توندوتیژی، زەبروزەنگ، جەور، زۆرەملی، سەنگی، نھێم، ھێز، ستین، قەوەت، شیان، تابشت،	دەسەڵات (قانوونی)،	کردەوەی جەستەیی توندوتیژانە،	توندی،	(فیزیک) ھێز،	(سەربازی) ھێز، ھێزەکان، کردەوەی سەربازی،	(لێداون یان بەڵگەھێنانەوە) تۆکمەیی، بڕایی، پێز، ھێز،	ھێزی سروشتی،	پۆلیس، ھێزی پۆلیس،	ھۆکاری دیاری‌کەر، ھۆکاری کاریگەر،	گروپ، دەستە، کۆمەڵە،	کارتێ‌کردن، شوێن‌دانان، کاریگەری، گرنگایەتی، باندۆر،	پێوەری بەھێزی با، ھێزەکان، ھێزە چەکدارەکان، سەربازەکان و چەک‌وچۆڵ
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ھێز کە بەکاردێت بۆ بەدەستخستنی شتێک"""),
                    SentencesRow(
                      englishText:
                          """The release of the hostages could not be achieved without the use of force.""",
                      kurdishText:
                          """ئازادکردنی بارمتەکان نەدەکرا بەبێ بەکارھێنانی ھێز.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """If persuasion doesn't work, they use force.""",
                      kurdishText:
                          """ئەگەر ڕازیکردن سەرنەگرێت، ھێز بەکاردێنن.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """The government has relied on brute force to respond to public discontent.""",
                              kurdishText:
                                  """حکومەت پشتی بە ھێزی دڕندانە بەستووە بۆ وەڵامدانەوەی ناڕەزایی.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The rioters were taken away by force.""",
                              kurdishText:
                                  """ئاژاوەگێڕان بە ھێز دوورخرانەوە.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The empire was held together by military force.""",
                              kurdishText:
                                  """ئیمپراتۆریەتییەکە بە ھێزی سەربازی بە یەکەوە ھێڵدرایەوە.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The regulations allow the use of force if necessary.""",
                              kurdishText:
                                  """ڕێساکان ڕێگا بە بەکارھێنانی ھێز دەدەن ئەگەر پێویست بێت.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Police were accused of using excessive force.""",
                              kurdishText:
                                  """پۆلیس تۆمەتبار کرا بە بەکارھێنانی ھێزی لەڕادەبەدەر.""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ھێزی جەستەیی، بەتایبەتی کە باسی لێدان دەکات"""),
                    SentencesRow(
                      englishText:
                          """The shopping centre took the full force of the blast.""",
                      kurdishText:
                          """سەنتەری بازاڕکردنەکە ھێزی تەواوی تەقینەوەکەی بەرکەوت.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """You have to apply some force to move the lever.""",
                              kurdishText:
                                  """دەبێت ھەندێک ھێز بەکاربھێنیت بۆ جووڵاندنی دەسکەکە.""",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He staggered backwards from the force of the blow.""",
                              kurdishText:
                                  """بەرەو دواوە تلی دا بە ھێزی لێدانەکە.""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The force of the explosion hurled bodies into the air.""",
                              kurdishText:
                                  """ھێزی تەقینەوەکە جەستەی بە حەوادا فڕێدا.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The waves were breaking against the rocks with great force.""",
                              kurdishText:
                                  """شەپۆلەکان بە ھێزی زۆرەوە دەکێشن بە بەردەکاندا.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) کاریگەریی بەھێزی شتێک"""),
                    SentencesRow(
                      englishText:
                          """He controlled himself by sheer force of will.""",
                      kurdishText: """بە ویستی ئێجگار زۆری خۆی کۆنترۆڵ کرد.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She spoke with force and deliberation.""",
                      kurdishText: """بە کاریگەری و وریایی قسەی کرد.""",
                      englishNote:
                          """This means she spoke powerfully and with careful thought, emphasizing her words with purpose and intention.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I felt the full force of her criticism.""",
                      kurdishText:
                          """ھەستم بە کاریگەریی تەواوی ڕەخنەکەی کرد.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Suddenly it came home to me with tremendous force that this was my last chance.""",
                      kurdishText:
                          """لەناکاو بە کاریگەریی ئێجگار زۆرەوە ھەستم کرد کە ئەمە کۆتا ھەلم بوو.""",
                      englishNote:
                          """This means that I suddenly and powerfully realized that this was my final opportunity.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) کەسێک یان شتێک کە ھێزی زۆری ھەیە"""),
                    SentencesRow(
                      englishText:
                          """Ron is the driving force (= the person who has the most influence) behind the project.""",
                      kurdishText: """ڕۆن ھێزی پشتەوەی پڕۆژەکەیە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She's a force to be reckoned with (= a person who has a lot of power and influence and should therefore be treated seriously).""",
                      kurdishText: """کەسێکە کە دەبێتە حسابی بۆ بکرێت.""",
                      kurdishNote: """یان واتا 'کەسێکە ناکرێت پشتگوێ بخرێت.'""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The expansion of higher education should be a powerful force for change.""",
                      kurdishText:
                          """فراوانبوونی خوێندنی باڵا دەبێت ھێزێکی بەھێز بێت بۆ گۆڕانکاری.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was finally defeated by forces beyond his control.""",
                      kurdishText:
                          """لە کۆتاییدا بەزێندرا لەلایەن ئەو ھێزانەی بەدەر لە توانای خۆی بوون.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Social media has become a major force in political campaigns.""",
                      kurdishText:
                          """تۆڕە کۆمەڵایەتییەکان بوونە بە ھێزێکی گرنگی کەمپینی سیاسی.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٥. (ناو) دەسەڵاتی شتێک"""),
                    SentencesRow(
                      englishText:
                          """These guidelines do not have the force of law.""",
                      kurdishText: """ئەم ڕێنماییانە دەسەڵاتی یاسایان نییە.""",
                      kurdishNote: """واتا وەک یاسا مامەڵەیان لەگەڵ ناکرێت""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The culprits must expect to face the full force of the law.""",
                      kurdishText:
                          """بکەرەکان دەبێت پێشبینی ئەوە بکەن ڕووبەڕووی دەسەڵاتی تەواوی یاسا ببنەوە.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) ژمارەیەک کەس کە بۆ مەبەستێکی دیاریکراو ڕێکخراون"""),
                    SentencesRow(
                      englishText:
                          """She has attracted a force of passionate young individuals who are committed to the organization.""",
                      kurdishText:
                          """گرووپێک لە کەسانی گەنجی بەپەرۆشی درووست کردووە کە لە خەمی دامەزراوەکەن.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ناو) ژمارەیەک ھێزی چەکداری ڕاھێندراو و ڕێکخراو"""),
                    SentencesRow(
                      englishText:
                          """Rebel forces now control most of the capital.""",
                      kurdishText:
                          """ھێزە یاخییەکان ئێستا زۆرینەی پایتەختیان بەدەستەوەیە.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Government forces captured the rebel positions.""",
                      kurdishText:
                          """ھێزەکانی حکومەت پێگەکانی یاخیبووەکانیان گرت.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He called on the local population to rise up against the occupying forces.""",
                      kurdishText:
                          """داوای لە خەڵکە خۆجێییەکە کرد دژ بە ھێزە داگیرکەرەکان ڕاپەڕن.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ناو) سوپا، ھێزی ئاسمانی، و ھێزی دەریایی"""),
                    SentencesRow(
                      englishText:
                          """Daisy intends to join the forces when she leaves school this summer.""",
                      kurdishText:
                          """دەیزی نیازی ھەیە پەیوەندی بە سوپاوە بکات کە ئەم ھاوینە قوتابخانە جێدەھێڵێت.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ناو) چەک و سەرباز کە سوپایەک پێی وایە دەکرێت بەکاربێن"""),
                    SentencesRow(
                      englishText:
                          """The government is negotiating cuts to nuclear forces.""",
                      kurdishText:
                          """حکومەت دانوستانی کەمکردنەی چەکی توانای ئەتۆمی دەکات.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """١٠. (ناو) ھێزی پۆلیس"""),
                    SentencesRow(
                      englishText: """He joined the force twenty years ago.""",
                      kurdishText: """بیست ساڵ پێش ئێستا بوو بە پۆلیس.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (ناو) ھێزێک کە وا دەکات شتێک بە ئاراستەیەک بجووڵێت"""),
                    SentencesRow(
                      englishText: """The moon exerts a force on the earth.""",
                      kurdishText: """مانگ ھێز دەخاتە سەر زەوی.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Because of the increased mass, more force is needed to accelerate the object.""",
                      kurdishText:
                          """بەھۆی بارستایی زیادبوو، ھێزی زیاتر پێویستە بۆ خێراکردنی شتەکە.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The forces of expansion are balanced by forces of contraction.""",
                      kurdishText: """ھێزی کشان ھاوسەنگ دەبێت بە ھێزی گر.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٢. (کردار) زۆرکردن لە کەسێک بۆ کردنی شتێک"""),
                    SentencesRow(
                      englishText:
                          """The President was forced into resigning.""",
                      kurdishText: """سەرۆک ناچار بە دەستلەکارکێشانەوە کرا.""",
                      englishNote:
                          """Also: The President was forced to resign.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """I was forced to take a taxi because the last bus had left.""",
                              kurdishText:
                                  """ناچار بووم تەکسی بگرم چونکە کۆتا پاس ڕۆشتبوو.""",
                              onPressedBritish: () => speaksentence35("en-GB"),
                              onPressedAmerican: () => speaksentence35("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She forced herself to be polite to them.""",
                              kurdishText:
                                  """زۆری لە خۆی کرد بەڕێز بێت لەگەڵیان.""",
                              onPressedBritish: () => speaksentence36("en-GB"),
                              onPressedAmerican: () => speaksentence36("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He was forced into exile with his family.""",
                              kurdishText: """لەگەڵ خێزانەکەی شاربەدەر کران.""",
                              onPressedBritish: () => speaksentence37("en-GB"),
                              onPressedAmerican: () => speaksentence37("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Ill health forced him into early retirement.""",
                              kurdishText:
                                  """تەندرووستی لاواز ناچاری کرد بە خانەنشینی پێشوەختە.""",
                              onPressedBritish: () => speaksentence38("en-GB"),
                              onPressedAmerican: () => speaksentence38("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Residents were forced out of their homes.""",
                              kurdishText:
                                  """دانیشتووان لە ماڵەکانیان دەرکران.""",
                              onPressedBritish: () => speaksentence39("en-GB"),
                              onPressedAmerican: () => speaksentence39("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He didn't force me—I wanted to go.""",
                              kurdishText: """زۆری لێم نەکرد ـ دەمویست بچم.""",
                              onPressedBritish: () => speaksentence40("en-GB"),
                              onPressedAmerican: () => speaksentence40("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He has been forced to admit that he lied.""",
                              kurdishText:
                                  """ناچار کرا دان بنێت بەوەی کە درۆی کرد.""",
                              onPressedBritish: () => speaksentence41("en-GB"),
                              onPressedAmerican: () => speaksentence41("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٣. (کردار) بەکارھێنانی جەستەیی بۆ جووڵاندنی شتێک بە ئاراستەیەک"""),
                    SentencesRow(
                      englishText:
                          """She forced her way through the crowd of reporters.""",
                      kurdishText:
                          """بە ناو کۆمەڵی زۆر لە پەیامنێران ڕێگای خۆی کردەوە.""",
                      onPressedBritish: () => speaksentence42("en-GB"),
                      onPressedAmerican: () => speaksentence42("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Someone had tried to force (an) entry (= to enter the building using force).""",
                      kurdishText: """کەسێک ھەوڵی دابوو بە زۆر بێتە ژوورەوە.""",
                      onPressedBritish: () => speaksentence43("en-GB"),
                      onPressedAmerican: () => speaksentence43("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The door had been forced open.""",
                      kurdishText: """دەرگاکە بە ھێز کرابوویەوە.""",
                      onPressedBritish: () => speaksentence44("en-GB"),
                      onPressedAmerican: () => speaksentence44("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We had to force the lock.""",
                      kurdishText: """'پێویست بوو قوفڵەکە بشکێنین.'""",
                      englishNote:
                          """This means that we had to apply physical strength or effort to open the lock, as it was not opening easily or normally.""",
                      onPressedBritish: () => speaksentence45("en-GB"),
                      onPressedAmerican: () => speaksentence45("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٤. (کردار) واکردنی ئەوەی شتێک ڕووبدات، بە تایبەتی پێش ئەوەی کەسانی دیکە ئامادە بن"""),
                    SentencesRow(
                      englishText:
                          """He was in a position where he had to force a decision.""",
                      kurdishText:
                          """لە دۆخێکدا بوو کە پێویست بوو بڕیارێک بسەپێنێت.""",
                      onPressedBritish: () => speaksentence46("en-GB"),
                      onPressedAmerican: () => speaksentence46("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Building a new road here will force house prices down.""",
                      kurdishText:
                          """بنیاتنانی ڕێگایەکی تازە لێرە نرخی خانوو دادەبەزێنێت.""",
                      onPressedBritish: () => speaksentence47("en-GB"),
                      onPressedAmerican: () => speaksentence47("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٥. (کردار) زۆرکردن لە خۆت بەوەی پێبکەنیت، ھتد نەک ئەوەی بە سرووشتی بیکەیت"""),
                    SentencesRow(
                      englishText: """She managed to force a smile.""",
                      kurdishText: """توانی بزەیەک بە زۆر بکات.""",
                      onPressedBritish: () => speaksentence48("en-GB"),
                      onPressedAmerican: () => speaksentence48("en-US"),
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

const String _videoIdend = 'hFZFjoX2cGg';
const double _startSecondsend = 73;
const String _videoIdone = 'G-Wn48geCJ8';
const double _startSecondsone = 133;
const String _videoIdtwo = 'j1BfO7VlIw4';
const double _startSecondstwo = 620;
const String _videoIdthree = 'DEFD9TSHg_A';
const double _startSecondsthree = 87;
const String _videoIdfour = 'zqllxbPWKNI';
const double _startSecondsfour = 577;
const String _videoIdfive = 'QLq6GEiHqR8';
const double _startSecondsfive = 673;

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