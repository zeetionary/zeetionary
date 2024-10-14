import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhome extends StatefulWidget {
  const EnglishEntryhome({super.key});

  @override
  State<EnglishEntryhome> createState() => _EnglishEntryhomeState();
}

class _EnglishEntryhomeState extends State<EnglishEntryhome> {
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
- Noun: home (Derived forms: homes)
1. Where you live at a particular time (- place)
"deliver the package to my home"; "he doesn't have a home to go to";
 
2. Housing that someone is living in (- dwelling, domicile, abode, habitation, dwelling house, domicil [rare])
"they raise money to provide homes for the homeless";
 
3. The country, state or city where you live
"Canadian tariffs enabled United States lumber companies to raise prices at home"; "his home is New Jersey"
 
4. (baseball) base consisting of a rubber slab where the batter stands; it must be touched by a base runner in order to score (- home plate, home base, plate)
"he ruled that the runner failed to touch home";
 
5. The place where you are stationed and from which missions start and end (- base)
 
6. Place where something began and flourished
"the United States is the home of basketball"
 
7. An environment offering affection and security
"home is where the heart is"; "he grew up in a good Christian home"; "there's no place like home"
 
8. A social unit living together (- family, household, house, ménage)
"the teacher asked how many people made up his home";
 
9. An institution where people are cared for (- nursing home, rest home)
"a home for the elderly";

- Adverb: home
1. At or to or in the direction of one's home or family
"He stays home on weekends"; "after the game the children brought friends home for supper"; "I'll be home tomorrow"; "came riding home in style"; "I hope you will come home for Christmas"; "I'll take her home"; "don't forget to write home"
 
2. On or to the point aimed at
"the arrow struck home"
 
3. To the fullest extent; to the heart
"drove the nail home"; "drove his point home"; "his comments hit home"

- Adjective: home
1. (sport) used of your own ground
"a home game"
 
2. Inside the country (- interior, internal, national)
"the British Home Office has broader responsibilities than the United States Department of the Interior";
 
3. Relating to or being where one lives or where one's roots are
"my home town"

- Verb: home (Derived forms: homes, homed, homing)
1. Provide with, or send to, a home
 
2. Return home accurately from a long distance
"homing pigeons"
""",
  );

  final String keyword = "home";
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
    await flutterTts.speak("""home""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Old people prefer to stay in their own homes.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""His children were upset when he sold the family home.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""While travelling she missed the comforts of home.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She leaves home at 7 every day.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'll call you from home later.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We are not far from my home now.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He didn't leave home until he was 24.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He used to spend the summer painting at his country home.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Let's go home—I'm tired.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He'd always dreamed of owning his own home.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Buying a home can be a complicated business.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""A lot of new homes are being built on the edge of town.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The number of homes sold in January fell by 13% on the previous month.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Private home ownership is increasing faster than ever.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We bought a holiday home in France.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I often think about my friends back home.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Jane left England and made Greece her home.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Jamaica is home to over two million people.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She came from a violent home.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They wanted to give the boy a secure and loving home.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He had always wanted a real home with a wife and children.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She had never had a stable home life.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We have to provide a good home for the children.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She has lived in a home since she was six.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She had to move to a residential care home when her health deteriorated.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """My grandmother moved into an old people's home two years ago.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Volunteers clean the cats' home every day.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""This region is the home of many species of wild flower.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The tiger's home is in the jungle.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The hill is the legendary home of King Arthur.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We haven't found a home for all our books yet.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Many visit Greece, the home of democracy, to see historic sites.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Come on, it's time to go home.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""What time did you get home last night?""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She was so relieved that he had come home safely.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He could not return home until 1989.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""After a month, they went back home to America.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I like to stay home in the evenings.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He drove the ball home from 15 metres.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""We offer customers a free home delivery service.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Try calling me on my home number after six o'clock.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The course is suitable for classroom or home study.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She missed her mother's home cooking.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This computer is marketed for home use.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The newspaper gives priority to home news over international news.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Rangers were playing in front of their home crowd.""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Rangers were playing in front of their home crowd.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = '21Z4RIOFhMA';
    const double startSecondsend = 621;
    const String videoIdone = 'hFZFjoX2cGg';
    const double startSecondsone = 19;
    const String videoIdtwo = 'FHJ3CMWnVxY';
    const double startSecondstwo = 57;
    const String videoIdthree = 'hTqtGJwsJVE';
    const double startSecondsthree = 1317;
    const String videoIdfour = 'ARERGvMzhmc';
    const double startSecondsfour = 823;
    const String videoIdfive = '_4WxoTeaMZM';
    const double startSecondsfive = 36;

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
                      word: """home""",
                      // alsoEnglishWord: "also: home",
                      britshText: """IpaUK: /həʊm/""",
                      americanText: """IpaUS: /həʊm/""",
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
کوردی: ماڵ، یانە،	خێزان، ماڵبات،	نیشتمان، وڵات، زێد،	سەرچاوە، لانکە، بنەما، ژێدەر، ئاخێزگە، جێ، ژیوارگە، بوو، جێوار، ژینار، ژینگە، بنەجێ، جێی سروشتی،	(لە کایەدا) شار
"""),
                    const DefinitionKurdish(text: """١. (ناو) ماڵ"""),
                    SentencesRow(
                      englishText:
                          """Old people prefer to stay in their own homes.""",
                      kurdishText:
                          """کەسانی بەتەمەن پێیان باشترە لە ماڵەکانی خۆیان بمێننەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """His children were upset when he sold the family home.""",
                              kurdishText:
                                  """منداڵەکانی بیزار بوون کە خانووی خێزانەکەیانی فرۆشت.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """While travelling she missed the comforts of home.""",
                              kurdishText:
                                  """لە کاتی گەشتدا بیری ئاسوودەیی ماڵی دەکرد.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She leaves home at 7 every day.""",
                              kurdishText:
                                  """هەموو بەیانییەک لە ٧ ماڵەوە جێدێڵێت.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """I'll call you from home later.""",
                              kurdishText:
                                  """دواتر لە ماڵەوەوە پەیوەندیت پێوە دەکەم.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We are not far from my home now.""",
                              kurdishText: """ئێستا لە ماڵەوەم دوور نین.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He didn't leave home until he was 24.""",
                              kurdishText:
                                  """ماڵەوەی جێنەهێشت تاوەکو ٢٤ ساڵان بوو.""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He used to spend the summer painting at his country home.""",
                              kurdishText:
                                  """جاران هاوینی بەسەر دەبرد بە نیگارکێشان لە ماڵە دەشتییەکەی.""",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Let's go home—I'm tired.""",
                              kurdishText: """با بچینە ماڵەوە ـ ماندووم.""",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) خانوویەک یان فلاتێک کە وەک سامانێکی فرۆشتن بیری لێدەکەیتەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He'd always dreamed of owning his own home.""",
                      kurdishText:
                          """هەمیشە خەونی بەوەوە دیوە کە ماڵی خۆی هەبێت.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Buying a home can be a complicated business.""",
                      kurdishText:
                          """کڕینی خانوویەک دەکرێت بابەتێکی ئاڵۆز بێت.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A lot of new homes are being built on the edge of town.""",
                      kurdishText:
                          """زۆر خانووی تازە بنیات دەنرێن لە قەراغی شار.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The number of homes sold in January fell by 13% on the previous month.""",
                      kurdishText:
                          """ژمارەی ئەو خانووانەی کە لە کانوونی دووەم فرۆشران ١٣٪ دابەزی بەراورد بە مانگی ڕابردوو.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Private home ownership is increasing faster than ever.""",
                      kurdishText:
                          """خاوەندارێتی ماڵی تایبەتی زیاتر لە هەر کاتێکی دیکە زیاد دەکات.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We bought a holiday home in France.""",
                      kurdishText: """خانوویەکی پشوودانمان کڕی لە فەرەنسا.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ئەو شوێنەی کە لێی لەدایکبوویت و هەست دەکەیت بەشێکیت لێی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I often think about my friends back home.""",
                      kurdishText:
                          """زۆرجار بیر لە دۆستەکانم لە نیشتیمان دەکەم.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Jane left England and made Greece her home.""",
                      kurdishText:
                          """جەین ئیگلاندی جێهێشت و یۆنانی کرد بە هەوارگەی.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Jamaica is home to over two million people.""",
                      kurdishText:
                          """جامایکا نیشتیمانی سەروو دوو ملیۆن کەسە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) خێزانێک کە پێکەوە دەژین"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She came from a violent home.""",
                      kurdishText: """سەر بە خێزانێکی توندووتیژە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They wanted to give the boy a secure and loving home.""",
                      kurdishText:
                          """دەیانویست خێزانێکی ئارام و خۆشەویست بدەن بە کوڕەکە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He had always wanted a real home with a wife and children.""",
                      kurdishText:
                          """هەمیشە خێزانێکی ڕاستەقینەی ویستووە لەگەڵ ژن و منداڵدا.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She had never had a stable home life.""",
                      kurdishText: """هەرگیز ژیانێکی خێزانیی جێگیری نەبووە.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We have to provide a good home for the children.""",
                      kurdishText:
                          """دەبێت خێزانێکی گونجاو بدەین بە منداڵەکان.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) شوێنێک بۆ ئەو کەسانەی کە ناتوانن چاودێری خۆیان بکەن"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She has lived in a home since she was six.""",
                      kurdishText:
                          """لە خانەی بەخێوکاران ژیاوە لەوەتەی شەش ساڵان بووە.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She had to move to a residential care home when her health deteriorated.""",
                      kurdishText:
                          """پێویست بوو بچێتە خانەیەکی چاودێری نیشتەجێبوون کە تەندرووستی خراپتر بوو.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """My grandmother moved into an old people's home two years ago.""",
                      kurdishText:
                          """باوانم دوو ساڵ پێش ئێستا چوونە خانەیەکی بەساڵاچووان.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) شوێنێک کە تێیدا ئەو ئاژەڵە ماڵییانە چاودێری دەکرێن کە خاوەنیان نییە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Volunteers clean the cats' home every day.""",
                      kurdishText:
                          """خۆبەخشان هەموو ڕۆژێک لانەی پشیلەکان پاکدەکەنەوە.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ناو) شوێنی ژیانی ڕووەک یان ئاژەڵێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This region is the home of many species of wild flower.""",
                      kurdishText:
                          """هەرێمەکە شوێنی ژیانی زۆر جۆر لە گوڵی دەشتییە.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The tiger's home is in the jungle.""",
                      kurdishText: """شوێنی ژیانی بەور جەنگەڵەکانە.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The hill is the legendary home of King Arthur.""",
                      kurdishText: """گردەکە نیشتیمانی ئەفسانەیی شا ئارسەرە.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (ناو) شوێنی پاراستنی شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We haven't found a home for all our books yet.""",
                      kurdishText:
                          """هێشتا جێگایەکمان بۆ هەموو کتێبەکانمان نەدۆزیوەتەوە.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ناو) شوێنێک کە بۆ یەکەمجار شتێکی لێ دۆزراوەتەوە، درووستکراوە، یان داهێنراوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Many visit Greece, the home of democracy, to see historic sites.""",
                      kurdishText:
                          """زۆر کەس سەردانی یۆنانی لانکەی دیموکراسی دەکەن بۆ بینینی شوێنەوارە مێژووییەکان.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (هاوەڵکار) بەرەو ماڵەوە؛ لە ماڵەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Come on, it's time to go home.""",
                      kurdishText: """یەڵڵا، کاتی چوونە ماڵەوەیە.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """What time did you get home last night?""",
                      kurdishText: """شەوی ڕابردوو کەی گەشتیتە ماڵەوە؟""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She was so relieved that he had come home safely.""",
                      kurdishText:
                          """زۆر حەوایەوە کە بە سەلامەتی گەشتەوە ماڵەوە.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He could not return home until 1989.""",
                      kurdishText:
                          """نەیتوانی بگەڕێتەوە نیشتیمانی تاوەکو ١٩٨٩.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """After a month, they went back home to America.""",
                      kurdishText:
                          """دوای مانگێک، گەڕانەوە بۆ ماڵەوە لە ئەمریکا.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I like to stay home in the evenings.""",
                      kurdishText: """شەوان حەز دەکەم لە ماڵەوە بمێنمەوە.""",
                      onPressedBritish: () => speaksentence38("en-GB"),
                      onPressedAmerican: () => speaksentence38("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (هاوەڵکار) بۆ شوێنی درووست"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He drove the ball home (= scored a goal) from 15 metres.""",
                      kurdishText:
                          """لە دووری ١٥ مەترەوە تۆپەکەی خستە جێی خۆی.""",
                      onPressedBritish: () => speaksentence39("en-GB"),
                      onPressedAmerican: () => speaksentence39("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٢. (هاوەڵناو) پەیوەندیدار بە ماڵەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We offer customers a free home delivery service.""",
                      kurdishText:
                          """خزمەتگوزاری گەیاندنی بێ‌بەرامبەر پێشکەش بە کڕیارانمان دەکەین.""",
                      onPressedBritish: () => speaksentence40("en-GB"),
                      onPressedAmerican: () => speaksentence40("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Try calling me on my home number after six o'clock.""",
                      kurdishText:
                          """هەوڵ بدە پەیوەندیم پێوە بکەیت بە ژمارەی ماڵەوەم لە دوای شەش.""",
                      onPressedBritish: () => speaksentence41("en-GB"),
                      onPressedAmerican: () => speaksentence41("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The course is suitable for classroom or home study.""",
                      kurdishText:
                          """کۆرسەکە گونجاوە بۆ پۆل یان خوێندنی ماڵەوە.""",
                      onPressedBritish: () => speaksentence42("en-GB"),
                      onPressedAmerican: () => speaksentence42("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٣. (هاوەڵناو) کە لە ماڵەوە درووستکراوە یان بەکاردێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She missed her mother's home cooking.""",
                      kurdishText: """بیری خواردنی ماڵەوەی دایکیی دەکرد.""",
                      onPressedBritish: () => speaksentence43("en-GB"),
                      onPressedAmerican: () => speaksentence43("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This computer is marketed for home use.""",
                      kurdishText:
                          """کۆمپیوتەرەکە بۆ بەکارهێنانی ماڵەوە بازاڕکردنی بۆ دەکرێت.""",
                      onPressedBritish: () => speaksentence44("en-GB"),
                      onPressedAmerican: () => speaksentence44("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٤. (هاوەڵناو) پەیوەندیدار بە وڵاتی خۆت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: domestic"),
                    SentencesRow(
                      englishText:
                          """The newspaper gives priority to home news over international news.""",
                      kurdishText:
                          """ڕۆژنامەکە پێشینەیی دەدات بە هەواڵی ناوخۆیی وەک لە جیهانی.""",
                      onPressedBritish: () => speaksentence45("en-GB"),
                      onPressedAmerican: () => speaksentence45("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٥. (هاوەڵناو) پەیوەندیدار بە یاریگای تیمێک خۆی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Rangers were playing in front of their home crowd.""",
                      kurdishText:
                          """تیمی ڕێنجەرز لە پێش هەوادارانی خۆیان یارییان دەکرد.""",
                      onPressedBritish: () => speaksentence46("en-GB"),
                      onPressedAmerican: () => speaksentence46("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Rangers were playing in front of their home crowd.""",
                      kurdishText:
                          """تیمێکی سەختن بۆ بەزاندن لەسەر یاریگای خۆیان.""",
                      onPressedBritish: () => speaksentence47("en-GB"),
                      onPressedAmerican: () => speaksentence47("en-US"),
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