import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfollow extends StatefulWidget {
  const EnglishEntryfollow({super.key});

  @override
  State<EnglishEntryfollow> createState() => _EnglishEntryfollowState();
}

class _EnglishEntryfollowState extends State<EnglishEntryfollow> {
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
- Verb: follow (derived forms: following, follows, followed)
1. To travel behind, go after, come after
"The ducklings followed their mother around the pond"; "Please follow the guide through the museum"
 
2. Be later in time (= postdate)
"Tuesday always follows Monday";
 
3. Be a logical consequence (=fall out)
"It follows that your assertion is false";
 
4. Travel along a certain course (= travel along)
"follow the trail";
 
5. Act in accordance with someone's rules, commands, or wishes (= comply, abide by)
"Follow these simple rules";
 
6. Come after in time, as a result (= come after)
"A terrible tsunami followed the earthquake";
 
7. Behave in accordance or in agreement with (= conform to)
"Follow a pattern"; "Follow my example";
 
8. Be next
"Mary plays best, with John and Sue following"
 
9. Choose and follow; as of theories, ideas, policies, strategies or plans (= adopt, espouse)
"She followed the feminist movement";
 
10. To bring something about at a later time than
"She followed dinner with a brandy"; "He followed his lecture with a question and answer period"
 
11. Imitate in behaviour; take as a model (= take after)
"Teenagers follow their friends in everything";
 
12. (Internet) track a person or group on a social media site
"Follow her on Facebook and subscribe to her blog"
 
13. Follow, discover, or ascertain the course of development of something (= trace)
"We must follow closely the economic development in Cuba";
 
14. Follow with the eyes or the mind (= watch, observe, watch over, keep an eye on)
"She followed the men with the binoculars";
 
15. Be the successor (of) (= succeed, come after)
"Carter followed Ford";
 
16. (music) perform an accompaniment to (= play along, accompany)
"The orchestra could barely follow the frequent pitch changes of the soprano";
 
17. Keep informed (= keep up, keep abreast)
"He followed on his country's foreign policies";
 
18. To be the product or result (= come)
 
19. Accept and follow the leadership, command or guidance of
"Let's follow our great helmsman!"; "She followed a guru for years"
 
20. Adhere to or practice
"These people still follow the laws of their ancient religion"
 
21. Work in a specific place, with a specific subject, or in a specific function (= be)
"He follows a herpetologist";
 
22. Keep under surveillance (= surveil, survey)
"The police had been following him for weeks but they could not prove his involvement in the bombing";
 
23. Follow in or as if in pursuit (= pursue)
"Her bad deed followed her and haunted her dreams all her life";
 
24. Grasp the meaning
"Can you follow her argument?"; "When he lectures, I cannot follow"
 
25. Keep to (= stick to, stick with)
"follow your principles";
 
26. (social media) to subscribe to someone's updates on social media
 
27. To be subscribed to updates from another user on social media
""",
  );

  final String keyword = "follow";
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
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""follow""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Follow me please.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He followed her into the house.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Wherever she led, they followed.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """Sam walked in, with the rest of the boys following closely behind.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Follow me please. I'll show you the way.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She beckoned him to follow her.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I think we're being followed.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """As she walked home, she had the feeling she was being followed.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""I remember little of the days that followed the accident.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""A period of unrest followed the president's resignation.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I'll have soup and fish to follow.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The first two classes are followed by a break of ten minutes.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""A detailed news report will follow shortly.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""There followed a short silence.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """Give your contact details and follow this with a brief profile of yourself.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Follow your treatment with plenty of rest.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""They said they were just following orders.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He has trouble following simple instructions.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Why didn't you follow my advice?""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I encourage others to follow our example.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The Senate is expected to follow the lead of the House.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The movie follows the book faithfully.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""They followed the teachings of Buddha.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He always followed the latest fashions.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""It wasn't in his nature to follow blindly.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Follow the links to sign up for the webinar.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """Follow this road until you get to the school, then turn left.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The road follows the edge of a wood for about a mile.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""I don't see how that follows from what you've just said.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """It does not necessarily follow that sleep loss would cause these symptoms.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""If a = b and b = c it follows that a = c.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Do you follow me?""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Sorry, I don't follow.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""His lecture was complicated and difficult to follow.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The children were following every word of the story intently.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Her eyes followed him everywhere.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We've been following this story for months.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Millions of people followed the trial on TV.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""I don’t follow many celebrities on TikTok any more.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The novel follows the fortunes of a village community in Scotland.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The day followed the usual pattern.""");
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
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """follow""",
                      // alsoEnglishWord: "also: follow",
                      britshText: """IpaUK: /ˈfɒləʊ/""",
                      americanText: """IpaUS: /ˈfɑːləʊ/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                automaticallyImplyLeading: false,
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
                    const DividerDefinition(),
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
                    const DividerDefinition(),
                    const KurdishVocabulary(text: """
کوردی: 
"""),
// With short examples define "follow", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (کردار) ھاتن یان چوون بە دوای شتێکدا"""),
                    SentencesRow(
                      englishText: """Follow me please.""",
                      kurdishText: """تکایە شوێنم بکەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He followed her into the house.""",
                      kurdishText: """شوێنی کەوت بۆ خانووەکە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Wherever she led, they followed.""",
                              kurdishText:
                                  """بۆ ھەر کوێیەک چوو، شوێنی کەوتن.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Sam walked in, with the rest of the boys following closely behind.""",
                              kurdishText:
                                  """سام ھاتە ژوورەوە، و کوڕەکانی دیکە بە دوایدا ھاتن بە نزیکی.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Follow me please. I'll show you the way.""",
                              kurdishText:
                                  """تکایە شوێنم کەوە، ڕێگاکەت پیشان دەدەم.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She beckoned him to follow her.""",
                              kurdishText: """ئاماژەی پێدا شوێنی بکەوێت.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) شوێنکەوتنی کەسێک بۆ ئەوەی بزانیت چی دەکات یان بۆ کوێ دەچێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I think we're being followed.""",
                      kurdishText: """پێموایە چاودێری دەکرێین.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """As she walked home, she had the feeling she was being followed.""",
                      kurdishText:
                          """کە بەرەو ماڵەوە بە ڕێکەوت، ئەو ھەستەی ھەبوو کە چاودێری دەکرێت.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) ھاتن بە دوای شتێک/کەسێک لە ڕووی کات یان ڕیزبەندی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I remember little of the days that followed the accident.""",
                      kurdishText:
                          """کەم لەو ڕۆژانەم بیردێت کە بە دوای ڕووداوەکەدا ھاتن.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A period of unrest followed the president's resignation.""",
                      kurdishText:
                          """ماوەیەک لە نائارامی بە دوای دەستلەکارکێشانەوەی سەرۆک ھات.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """I'll have soup and fish to follow.""",
                              kurdishText: """شۆربا دەخۆم و ماسی بە دوایدا.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The first two classes are followed by a break of ten minutes.""",
                              kurdishText:
                                  """یەکەم دوو وانە پشوویەکی دە خولەکییان بە دوادا دێت.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """A detailed news report will follow shortly.""",
                              kurdishText:
                                  """ڕاپۆرتێکی وردی ھەواڵی بەم نزیکانە دێت.""",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """There followed a short silence.""",
                              kurdishText: """بێ‌دەنگی بەدوایدا ھات.""",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (کردار) کردنی شتێک لە دوای شتێکی دیکە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Give your contact details and follow this with a brief profile of yourself.""",
                      kurdishText:
                          """وردەکاریی کەسیت بدە و بەدوایدا کورتە ژیانێکی خۆت.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Follow your treatment with plenty of rest.""",
                      kurdishText: """لە دوای چارەسەرەکەت پشووی زۆر وەربگرە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) وەرگرتنی ڕاوێژ، ڕێنمایی، ھتد و کردنی ئەوەی پێت گوتراوە یان پیشان دراوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They said they were just following orders.""",
                      kurdishText: """گوتیان تەنھا شوێن فەرمان کەوتوون.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He has trouble following simple instructions.""",
                      kurdishText:
                          """کێشەی ھەبوو لە شوێنکەوتنی ڕێنمایی سادە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Why didn't you follow my advice?""",
                      kurdishText: """بۆچی پابەندی ڕاوێژم نەبوویت؟""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) پەسەندکردنی کەسێک/شتێک وەک ڕێبەر، ڕابەر، سەرمەشق"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I encourage others to follow our example.""",
                      kurdishText:
                          """ھانی ئەوانی دیکە دەدەم شوێنی ڕێگایئێمە بکەون.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The Senate is expected to follow the lead of the House.""",
                      kurdishText:
                          """ئەنجوومەنی پیران پێشبینی دەکرێت چاو لە ئەنجوومەنی نوێنەران بکات.""",
                      kurdishNote: """واتا ھەمان کار بکات""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The movie follows the book faithfully.""",
                      kurdishText: """فیلمەکە وەک خۆی شوێن کتێبەکە دەکەوێت.""",
                      kurdishNote:
                          """واتا ھیچ گۆڕانکارییەک ناکات لە ڕووداوەکان، کارەکتەرەکان، ھتد""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """They followed the teachings of Buddha.""",
                      kurdishText: """شوێن ئامۆژگارییەکانی بوودا دەکەوتن.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He always followed the latest fashions (= dressed in fashionable clothes).""",
                      kurdishText: """ھەمیشە تازەترین فاشنی لەبەر دەکرد.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It wasn't in his nature to follow blindly.""",
                      kurdishText: """لە سرووشتیدا نەبوو کوێرانە پابەند بێت.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (کردار) پەنجەنان بە بەستەری وێبسایتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Follow the links to sign up for the webinar.""",
                      kurdishText:
                          """گرتە لە بەستەرەکان بکە بۆ بەژداربوون لە سیمینارە ئینتەرنێتییەکە.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (کردار) ڕۆشتن بە ڕێگایەک، شەقامێک، ھتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Follow this road until you get to the school, then turn left.""",
                      kurdishText:
                          """بەم ڕێگایەدا بچۆ تاوەکو دەگەیتە قوتابخانەکە، دواتر بۆ چەپ پێچ بکەوە.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (کردار) ڕۆشتن بە ھەمان ئاراستە یان شان بە شانی شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The road follows the edge of a wood for about a mile.""",
                      kurdishText:
                          """ڕێگاکە بە قەراغی دارستانێک دەچێت بۆ نزیکەی یەک میل.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (کردار) بوون بە ئەنجامی پێشبینیکراوی شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I don't see how that follows from what you've just said.""",
                      kurdishText:
                          """تێ ناگەم چۆن ئەوە درووست دەبێت لەوەی ئێستا گوتت.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It does not necessarily follow that sleep loss would cause these symptoms.""",
                      kurdishText:
                          """ئەوە واتای ئەوە نییە کە کەمی خەو دەبێتە ھۆکاری ئەم نیشانانە.""",
                      englishNote:
                          """This means that it is not certain or guaranteed that losing sleep will lead to these symptoms.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """If a = b and b = c it follows that a = c.""",
                      kurdishText: """ئەگەر a = b و b = c واتا a = c.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (کردار) تێگەشتن لە ڕوونکردنەوەیەک یان واتای شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Do you follow me?""",
                      kurdishText: """لێم تێدەگەیت؟""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Sorry, I don't follow.""",
                      kurdishText: """ببوورە، لێت تێناگەم.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """His lecture was complicated and difficult to follow.""",
                      kurdishText: """وانەکەی ئاڵۆز و سەخت بوو بۆ تێگەشتن.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (کردار) سەیرکردن یان گوێگرتن لە کەسێک/شتێک بە وریایی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The children were following every word of the story intently.""",
                      kurdishText:
                          """منداڵەکان بە پەرۆشەوە گوێیان لە ھەر وشەیەکی چیرۆکەکە دەگرت.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Her eyes followed him everywhere (= she was looking at him all the time).""",
                      kurdishText:
                          """چاوەکانی بۆ ھەر شوێنێک بە دوایەوە بوون.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٣. (کردار) ھەبوونی حەزێکی چالاک بۆ شتێک و بە ئاگا بیت لەوەی چی ڕوودەدات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We've been following this story for months.""",
                      kurdishText:
                          """بۆ چەندین مانگ دەبێت چاودێری ئەم ڕووداوە دەکەین.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Millions of people followed the trial on TV.""",
                      kurdishText:
                          """ملیۆنان کەس لە تەلەفیزیۆنەوە چاودێریی دانیشتنەکەی دادگایان دەکرد.""",
                      onPressedBritish: () => speaksentence38("en-GB"),
                      onPressedAmerican: () => speaksentence38("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٤. (کردار) چاودێری کردنی چالاکیی کەسێک، دامەزراوەیەک، ھتد لە تۆڕە کۆمەڵایەتییەکان"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I don’t follow many celebrities on TikTok any more.""",
                      kurdishText:
                          """چی دیکە شوێن زۆر کەسایەتی بەناوبانگ ناکەوم لەسەر تیکتۆک.""",
                      onPressedBritish: () => speaksentence39("en-GB"),
                      onPressedAmerican: () => speaksentence39("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٥. (کردار) ئەوەی لەسەر ژیان یان بەرەوپێشچوونی کەسێک/شتێک بێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The novel follows the fortunes of a village community in Scotland.""",
                      kurdishText:
                          """ڕۆمانەکە باس لە سامانی کۆمەڵگەی گوندێک لە سکۆتلەندا دەکات.""",
                      onPressedBritish: () => speaksentence40("en-GB"),
                      onPressedAmerican: () => speaksentence40("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٦. (کردار) ڕوودان بە شیوەیەکی دیاریکراو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The day followed the usual pattern.""",
                      kurdishText: """ڕۆژەکە وەک ھەمیشە بوو.""",
                      onPressedBritish: () => speaksentence41("en-GB"),
                      onPressedAmerican: () => speaksentence41("en-US"),
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

// 188888880002200
const String _videoIdend = 'a_TSR_v07m0';
const double _startSecondsend = 617;
const String _videoIdone = 'hS2x1zl4rn0';
const double _startSecondsone = 39;
const String _videoIdtwo = 'mp_w0xZ9XFg';
const double _startSecondstwo = 24;
const String _videoIdthree = 'oEn7XBxOXSw';
const double _startSecondsthree = 138;
const String _videoIdfour = 'e09xig209cQ';
const double _startSecondsfour = 204;
const String _videoIdfive = 'iKv4oc2zbeA';
const double _startSecondsfive = 165;

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