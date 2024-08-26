import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfront extends StatefulWidget {
  const EnglishEntryfront({super.key});

  @override
  State<EnglishEntryfront> createState() => _EnglishEntryfrontState();
}

class _EnglishEntryfrontState extends State<EnglishEntryfront> {
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
- Noun: front (derived forms: fronts)
1. The side that is forward or prominent (- front end, forepart)
 
2. The line along which opposing armies face each other (- battlefront, front line)
 
3. The outward appearance of a person
"he put up a bold front"
 
4. The side that is seen or that goes first
 
5. A person used as a cover for some questionable activity (- front man, figurehead, nominal head, straw man, strawman)
 
6. A sphere of activity involving effort
"the Japanese were active last week on the diplomatic front"; "they advertise on many different fronts"
 
7. (meteorology) the atmospheric phenomenon created at the boundary between two different air masses
 
8. The immediate proximity of someone or something (- presence)
"he was well behaved in front of company";
 
9. The part of something that is nearest to the normal viewer
"he walked to the front of the stage"
 
10. A group of people with a common ideology who try together to achieve certain general goals (- movement, social movement)
"he led the national liberation front";

- Adjective: front
1. Relating to or located in the front
"the front lines"; "the front porch"

- Verb: front (derived forms: fronted, fronting, fronts)
1. Be oriented in a certain direction, often with respect to another reference point; be opposite to (= look, face)
"The house fronts north";
 
2. Confront bodily (= breast)
"front the storm";
 
3. Lead or be the spokesperson for
""",
  );

  final String keyword = "front";
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
    await flutterTts.speak("""front""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The front of the building was covered with ivy.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The front of the car was badly damaged.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The book has a picture of Rome on the front.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The jacket zips up the front.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Check the position of the pockets on the jacket front.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I turned round to face the front.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Keep your eyes to the front and walk straight ahead.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There's a garden at the front of the house.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The singer came to the front of the stage.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The teacher made me move my seat to the front of the classroom.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She always sits at the front.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Put your fare into the box at the front of the bus.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I prefer to travel in the front.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Write your name in the front of the book.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The dining room is to the front of the house.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was lying on her front.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I spilled coffee down my front.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The west front of the cathedral is beautifully decorated.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Couples walked hand in hand along the front.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""More British troops have been sent to the front.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Reports from the battle fronts became briefer and vaguer.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Even young teenagers were sent to the front.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Things are looking unsettled on the economic front.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Progress has been made on all fronts.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Things should get a little easier on the work front soon.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It's not always easy to put on a brave front for the family.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Rudeness is just a front for her shyness.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Without that false front, I wouldn't be able to face the world.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The travel company is just a front for drug trafficking.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We had seats in the front row.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""One of his front teeth is missing.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The cathedral fronts the city's main square.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The line of houses fronted straight onto the road.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""A portion of the old wall is fronted with glass.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The kitchen has oak cabinets fronted with glass.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He fronts a multinational company.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The band is fronted by former art student, Jim Oliver.""");
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
                      word: """front""",
                      // alsoEnglishWord: "also: front",
                      britshText: """IpaUK: /frʌnt/""",
                      americanText: """IpaUS: /frʌnt/""",
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
کوردی: پێش، پێشەوە، بەردەم، بەرەوە، بەریان، بەشی پێشەوە، بەر، سەرەتا، دەسپێک،	ڕوو، ئاست،	لەپ، بەر (دەست)،	ڕێزی پێشەوە، ڕیزی ھەوەڵ،	(خانووبەرە) ڕووکار، لا، بەر(ێکی خانووبەرە)،	(ڕۆژنامە) لاپەڕەی یەکەم،	پێشەوەی جل‌وبەرگ،	لێوار یان گوێی دەریا یان دەریاچە، گوێ‌چەم، دەم ڕووبار، کەنار، ڕۆخ،	ڕێگای کەناری یان دەم‌ئاو،	شەقامی کەناری یان دەم‌ئاو،	بەرە، ئەنی، ئەنی شەڕ، بەرەی شەڕ، پێشانی، ھێڵی پێشەوەی بەرە،	بەرەی ھەوا،	(ماشێن) کورسی یان سەندەڵی پێشەوە،	مەڵبەند، بوار، ئاقار، بواری چالاکی،	ڕواڵەت، ڕووی دەرەوە،	پێشەوە، بەری، سەرەتا، دەسپێک،	(دیمەن) ڕووناک، ڕۆشن،	(دەنگ‌ناسی) پێشەوە، پێشوو
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئەو بەشەی شتێک کە ڕووی لە پێشە؛ ئەو بەشەی کە یەکەمجار دەیبینی"""),
                    SentencesRow(
                      englishText:
                          """The front of the building was covered with ivy.""",
                      kurdishText:
                          """بەشی پێشەوەی بیناکە بە لاولاو داپۆشرابوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The front of the car was badly damaged.""",
                      kurdishText: """پێشەوەی ئۆتۆمبێلەکە خراپ زیانی پێگەشت.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """The book has a picture of Rome on the front.""",
                              kurdishText:
                                  """کتێبەکە وێنەیەکی ڕۆمای لە پێشەوە ھەبوو.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """The jacket zips up the front.""",
                              kurdishText:
                                  """چاکەتەکە لە پێشەوە زنجیر دەدرێت.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Check the position of the pockets on the jacket front.""",
                              kurdishText:
                                  """سەیری شوێنی گیرفانەکان بکە لە پێشەوەی چاکەتەکە.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ئەو شوێنەی کە دەکەوێتە پێش کەسێک/شتێک"""),
                    SentencesRow(
                      englishText: """I turned round to face the front.""",
                      kurdishText: """سووڕامەوە بۆ ڕووکردن لە پێشەوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Keep your eyes to the front and walk straight ahead.""",
                      kurdishText:
                          """چاوت لەسەر پێشەوە ڕابگرە و ڕێک بۆ پێشەوە بچۆ.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There's a garden at the front of the house.""",
                      kurdishText: """باخچەیەک لە پێشەوەی خانووەکەیە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) ئەو بەشەی کە دەکەوێتە پێشەوەی گشت"""),
                    SentencesRow(
                      englishText:
                          """The singer came to the front of the stage.""",
                      kurdishText: """گۆرانیبێژەکە ھاتە پێشەوەی ستەیجەکە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """The teacher made me move my seat to the front of the classroom.""",
                              kurdishText:
                                  """مامۆستاکە ناچاری کردم جێگاکەم بگۆڕم بۆ پێشەوەی پۆلەکە.""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """She always sits at the front.""",
                              kurdishText: """ھەمیشە لە پێشەوە دادەنیشێت.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Put your fare into the box at the front of the bus.""",
                              kurdishText:
                                  """کرێیەکەت بخە ناو سندووقەکە لە پێشەوەی پاسەکە.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I prefer to travel in the front (= sit next to the driver in a car).""",
                              kurdishText: """پێم باشترە لە پێشەوە دابنیشم.""",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Write your name in the front of the book (= the first few pages).""",
                              kurdishText:
                                  """ناوت لە پێشەوەی کتێبەکە بنووسە.""",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The dining room is to the front of the house.""",
                              kurdishText:
                                  """ژووری نانخوادن لە پێشەوەی خانووەکەیە.""",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) بەشی پێشەوەی جەستە"""),
                    SentencesRow(
                      englishText: """She was lying on her front.""",
                      kurdishText: """لەسەر دەم پاڵکەوت بوو.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I spilled coffee down my front.""",
                      kurdishText: """قاوەم ڕژاند بە سەر سنگمدا.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) لایەکی بینایەکی گەورە"""),
                    SentencesRow(
                      englishText:
                          """The west front of the cathedral is beautifully decorated.""",
                      kurdishText:
                          """لای ڕۆژئاوای کڵێساکە بە جوانی ڕازێندراوەتەوە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) ڕێگا یان ناوچەیەک لە قەراغی دەریاچەیەک، دەریایەک، یان ڕووبارێک"""),
                    SentencesRow(
                      englishText:
                          """Couples walked hand in hand along the front.""",
                      kurdishText:
                          """دڵداران دەست لە دەست بە درێژایی قەراغەکە ڕێیان دەکرد.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) شوێنێک کە جەنگ تێیدا ڕوودەدات لە جەنگدا"""),
                    SentencesRow(
                      englishText:
                          """More British troops have been sent to the front.""",
                      kurdishText:
                          """ھێزی زیاتری بەریتانی نێردراون بۆ بەرەی پێشەوە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Reports from the battle fronts became briefer and vaguer.""",
                      kurdishText:
                          """ڕاپۆرتی بەرەکانی جەنگ کورتتر و ناڕوونتر بوون.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Even young teenagers were sent to the front.""",
                      kurdishText:
                          """تەنانەت ھەرزەکارانی گەنجیش نێردران بۆ بەرەکانی پێشەوە.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (ناو) ناوچەیەکی دیاریکراو لە چالاکی"""),
                    SentencesRow(
                      englishText:
                          """Things are looking unsettled on the economic front.""",
                      kurdishText: """شتەکان ناجێگیرن لە لایەنی ئابوورییەوە.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Progress has been made on all fronts.""",
                      kurdishText: """بەرەوپێشچوون لە ھەموو لایەکەوە کراوە.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Things should get a little easier on the work front soon.""",
                      kurdishText:
                          """بەزوویی شتەکان کەمێک ئاسانتر دەبن لە لایەنی کارەوە.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ناو) ڕەفتارێک کە وەک ئەوە دەرناکەوێت کە ھەیە، و ئەنجام دەدرێت بۆ شاردنەوەی بۆچوون یان ھەستی ڕاستەقینە"""),
                    SentencesRow(
                      englishText:
                          """It's not always easy to put on a brave front for the family.""",
                      kurdishText:
                          """ھەمیشە ئاسان نییە ڕواڵەتێکی بوێرانە پیشان بدەیت بە خێزان  .""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Rudeness is just a front for her shyness.""",
                      kurdishText:
                          """ڕووداری تەنھا شاردنەوەی شەرمنییەکەیەتی.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Without that false front, I wouldn't be able to face the world.""",
                      kurdishText:
                          """بەبێ ئەو ڕووکەشە فریودەرە، ناتوانم ڕووبەڕووی جیھان ببمەوە.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (ناو) شتێک یان کەسێک کە بەکاردێت بۆ شاردنەوەی چالاکییەکی نایاسایی یان نھێنی"""),
                    SentencesRow(
                      englishText:
                          """The travel company is just a front for drug trafficking.""",
                      kurdishText:
                          """کۆمپانیا گەشتیارییەکە تەنھا فریودانە بۆ بازرگانیی مادەی ھۆشبەر.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (ھاوەڵناو) لە پێشەوەی شتێک"""),
                    SentencesRow(
                      englishText: """We had seats in the front row.""",
                      kurdishText: """جێگامان لە ڕیزی پێشەوە ھەبوو.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """One of his front teeth is missing.""",
                      kurdishText: """یەکیک لە ددانەکانی پێشەوەی نەماوە.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٢. (کردار) ڕووکردن لە شتێک"""),
                    SentencesRow(
                      englishText:
                          """The cathedral fronts the city's main square.""",
                      kurdishText:
                          """کڵێساکە ڕووی لە گۆڕەپانی سەرەکیی شارەکەیە.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The line of houses fronted straight onto the road.""",
                      kurdishText:
                          """ڕیزە خانوو ڕوویان ڕێک لەسەر ڕێگاکە بوو.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٣. (کردار) کە پێشەوەی بە شتێک داپۆشرا بێت"""),
                    SentencesRow(
                      englishText:
                          """A portion of the old wall is fronted with glass.""",
                      kurdishText:
                          """بەشێکی دیوارە کۆنەکە بە شووشە داپۆشراوە.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The kitchen has oak cabinets fronted with glass.""",
                      kurdishText:
                          """چێشتخانەکە دۆڵابی داربەڕووی ھەیە کە ڕووی پێشەوەیان شووشەیە.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٤. (کردار) سەرکردایەتی کردنی دامەزراوە یان گرووپێک"""),
                    SentencesRow(
                      englishText: """He fronts a multinational company.""",
                      kurdishText:
                          """نوێنەرایەتی کۆمپانیایەکی فرەنەتەوەیی دەکات.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The band is fronted by former art student, Jim Oliver.""",
                      kurdishText:
                          """باندەکە لە لایەن کۆنە قوتابی ھونەر جیم ئۆلیڤەرەوە ڕابەرایەتی دەکرێت.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
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
const double _startSecondsend = 155;
const String _videoIdone = 'IuWQGpswvyY';
const double _startSecondsone = 97;
const String _videoIdtwo = '_4WxoTeaMZM';
const double _startSecondstwo = 66;
const String _videoIdthree = 'Pto9L7kjuSM';
const double _startSecondsthree = 92;
const String _videoIdfour = 'bYG1aBU9cI4';
const double _startSecondsfour = 38;
const String _videoIdfive = 'FHJ3CMWnVxY';
const double _startSecondsfive = 201;

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