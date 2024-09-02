import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhand extends StatefulWidget {
  const EnglishEntryhand({super.key});

  @override
  State<EnglishEntryhand> createState() => _EnglishEntryhandState();
}

class _EnglishEntryhandState extends State<EnglishEntryhand> {
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
- Noun: hand (Derived forms: hands)
1. The (prehensile) extremity of the superior limb (- manus, mitt, paw)
"he had the hands of a surgeon";
 
2. A hired labourer on a farm or ranch (- hired hand, hired man)
"the hired hand fixed the railing"; "a ranch hand";
 
3. Something written by hand (- handwriting, script)
"his hand was illegible";
 
4. Ability
"he wanted to try his hand at singing"
 
5. A position given by its location to the side of an object
"objections were voiced on every hand"
 
6. The cards held in a card game by a given player at any given time (- deal)
"he kept trying to see my hand"; "I didn't hold a good hand all evening";
 
7. One of two sides of an issue
"on the one hand..., but on the other hand..."
 
8. A rotating pointer on the face of a timepiece
"the big hand counts the minutes"
 
9. A unit of length equal to 4 inches; used in measuring horses
"the horse stood 20 hands"
 
10. A member of the crew of a ship
"all hands on deck"
 
11. A card player in a game of bridge (- bridge player)
"we need a 4th hand for bridge";
 
12. A round of applause to signify approval
"give the little lady a great big hand"
 
13. Terminal part of the forelimb in certain vertebrates (e.g. apes or kangaroos)
"the kangaroo's forearms seem undeveloped but the powerful five-fingered hands are skilled at feinting and clouting"
 
14. Physical assistance (- helping hand)
"give me a hand with the chores";

- Verb: hand (Derived forms: handed, handing, hands)
1. Place into the hands or custody of (- pass, reach, pass on, turn over, give)
"hand me the spoon, please";
 
2. Guide, conduct or usher somewhere
"hand the elderly lady into the taxi"
""",
  );

  final String keyword = "hand";
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
    await flutterTts.speak("""hand""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Keep both hands on the steering wheel at all times.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She had a large diamond on the ring finger of her left hand.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He was holding a large mug of coffee in his right hand.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Put your hand up if you know the answer.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He had a painful abscess on his hand.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """For a goalkeeper, it's a great advantage to have big hands.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Wave your hands in the air!""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I am naturally left-handed, but was not allowed to write with my left hand, with the result that I became ambidextrous.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He rubbed his hands in glee as he thought of all the money he would make.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She introduced us and we shook hands.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Give me your hand while we cross the road.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He killed the snake with his bare hands.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Beth grasped the rope with both hands.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He lifted his hand to her face.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He slid his hands into his pockets.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Her hand shook as she lifted the glass to her lips.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The one-handed catch was a testament to the player's skill.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Left-handed scissors are a helpful tool for left-handed children.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The neighbours are always willing to lend a hand.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Let me give you a hand with those bags.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Early reports suggest the hand of rebel forces in the bombings.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """This appointment was an attempt to strengthen her hand in policy discussions.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The hands on the clock showed the exact time at which the explosion occurred.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The little hand points to the hour and the big hand points to the minutes.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The farmer would bring in hired hands to help him harvest the crop.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""All hands on deck!""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Mail for hand delivery is put in a separate box.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'll have to leave after this hand.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You dealt me an appalling hand in that game.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She handed the letter to me.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He handed the book to Sally.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """This decision effectively handed Burke control of the company.""");
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
                      word: """hand""",
                      // alsoEnglishWord: "also: hand",
                      britshText: """IpaUK: /hænd/""",
                      americanText: """IpaUS: /hænd/""",
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
کوردی: دەست، دەس،	پانایی دەست، لەپ یان بەری دەس،	(سەعات و هتد) میل، دەسک،	یارمەتی، کۆمەک،	کرێکار، کارکەر،	ئەندامی دەستەی کارکەرانی کەشتی، مەلەوان،	شارەزایی، مامۆستایی، وەستایی،	بەشداری، دەس‌تیابوون، دەس‌تێوەردان، خۆتێکەڵ‌کردن،	خەت، دەس‌نووس، دەس‌وخەت،	(بەتایبەت ژن‌ومێردایەتی) بەڵێنی، بڕیار، گفت، پەیمان،	دەسەڵات، کۆنتڕۆڵ، دەس‌ڕۆیشتوویی، هێز،	سەرچاوە، چاڤکانی، ژێدەر،	یەکەی پێوان، بەرامبەر بە ٤ ئینچ (١٦/١٠ سانتی‌میتر)،	لا، دەست، ئالی،	چەپڵە، دەس‌بەیەکادان،	(پەڕێن) دەست، یاریزان، کایەچی،	(دەس)لێکدانەوە، تەوقە،	چەپڵە
"""),
// With short examples define "hand", please follow LX instructions
                    const DefinitionKurdish(text: """١. (ناو) دەست"""),
                    SentencesRow(
                      englishText:
                          """Keep both hands on the steering wheel at all times.""",
                      kurdishText:
                          """هەردەم هەردوو دەستت لەسەر سووکانەکە بهێڵەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """She had a large diamond on the ring finger of her left hand.""",
                              kurdishText:
                                  """ئەڵقەیەکی ئەڵماسی گەورە لە براتووتەی دەستی چەپی بوو.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He was holding a large mug of coffee in his right hand.""",
                              kurdishText:
                                  """پیاڵەیەکی گەورە لە قاوەی لە دەستی ڕاستی گرتبوو.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Put your hand up if you know the answer.""",
                              kurdishText:
                                  """دەستت بەرز بکەرەوە ئەگەر وەڵامەکە دەزانی.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He had a painful abscess on his hand.""",
                              kurdishText: "دومەڵێکی گەورەی ھەبوو لەسەر دەستی.",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """For a goalkeeper, it's a great advantage to have big hands.""",
                              kurdishText:
                                  "بۆ گۆڵپارێزێک، ھەبوونی دەستی گەورە سوودێکی گەورەی ھەیە.",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Wave your hands in the air!""",
                              kurdishText: "دەست ڕاوەشێنە لە ھەوادا!",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I am naturally left-handed, but was not allowed to write with my left hand, with the result that I became ambidextrous.""",
                              kurdishText:
                                  "٢٠٠٠ چەقۆ دران‌بەدەستەوە لە ماوەی مۆڵەتە یەک مانگییەکە.",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He rubbed his hands in glee as he thought of all the money he would make.""",
                              kurdishText:
                                  """دەستی لە خۆشیدا بە یەکدا سووا کە بیری لەوە کردەوە چەندە پارە قازانج دەکات.""",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """She introduced us and we shook hands.""",
                              kurdishText:
                                  """بە یەکمانی ناساند و تەوقەمان کرد.""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Give me your hand (= hold my hand) while we cross the road.""",
                              kurdishText:
                                  """دەستتم بدەیە کە لە شەقامەکە دەپەڕینەوە.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He killed the snake with his bare hands (= using only his hands).""",
                              kurdishText: """مارەکەی کوشت تەنها بە دەستی.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Beth grasped the rope with both hands.""",
                              kurdishText:
                                  """بێس بە هەردوو دەستی حەبلەکەی توند گرتبوو.""",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He lifted his hand to her face.""",
                              kurdishText:
                                  """دەستی بۆ لای ڕووخساری بەرزکردەوە.""",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He slid his hands into his pockets.""",
                              kurdishText:
                                  """دەستەکانی خستە گیرافانەکانییەوە.""",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Her hand shook as she lifted the glass to her lips.""",
                              kurdishText:
                                  """دەستی دەلەرزی کە گڵاسەکەی بۆ لێوی بەرزکردەوە.""",
                              onPressedBritish: () => speaksentence16("en-GB"),
                              onPressedAmerican: () => speaksentence16("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) بەکارهێنانی دەست یان ژمارەی ئەو دەستانەی کە باسکراوە"""),
                    SentencesRow(
                      englishText:
                          """The one-handed catch was a testament to the player's skill.""",
                      kurdishText:
                          """گرتنە یەک دەستییەکە شاهیدی بوو بۆ شارەزایی یاریزانەکە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Left-handed scissors are a helpful tool for left-handed children.""",
                      kurdishText:
                          """مەقەستی دەستە چەپی ئامرازێکی باشن بۆ منداڵانی چەپلەر.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) یارمەتی لە کردنی شتێکدا"""),
                    SentencesRow(
                      englishText:
                          """The neighbours are always willing to lend a hand.""",
                      kurdishText:
                          """دراوسێیەکان هەمیشە ئامادەن یارمەتی پێشکەش بکەن.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Let me give you a hand with those bags (= help you to carry them).""",
                      kurdishText:
                          """با یارمەتییەکت بدەم لەگەڵ ئەو جانتایانەدا.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) کاری کەسێک لە دۆخێکی تایبەتدا؛ ئەو ئەرکەی کەسێک دەیبینێت"""),
                    SentencesRow(
                      englishText:
                          """Early reports suggest the hand of rebel forces in the bombings.""",
                      kurdishText:
                          """ڕاپۆرتە سەرەتاییەکان ئاماژە بە ڕۆڵی یاخیبووەکان لە بۆمبارانەکەدا پیشان دەدەن.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This appointment was an attempt to strengthen her hand in policy discussions.""",
                      kurdishText:
                          """ئەم دیاریکردنە هەوڵێک بوو بۆ بەهێزکردنی ڕۆڵی لە گەنگەشەی سیاسەتەکاندا.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٥. (ناو) میلی کاتژمێر"""),
                    SentencesRow(
                      englishText:
                          """The hands on the clock showed the exact time at which the explosion occurred.""",
                      kurdishText:
                          """میلەکانی کاتژمێرەکە ڕێک ئەو کاتەیان پیشان دەدا کە تەقینەوەکە ڕوویدا.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The little hand points to the hour and the big hand points to the minutes.""",
                      kurdishText:
                          """میلە بچووکەکە ڕووی لە کاتژمێرە و میلە گەورەکە ڕووی لە خولەکەکانە.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) کەسێک کە کاری دەست دەکات لە کێڵگەیەک یان کارگەیەک"""),
                    SentencesRow(
                      englishText:
                          """The farmer would bring in hired hands to help him harvest the crop.""",
                      kurdishText:
                          """جووتیارەکە کرێکاری بەکرێگیراو دێنێت بۆ یارمەتیدانی لە دروێنەکەدا.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٧. (ناو) دەریاوان"""),
                    SentencesRow(
                      englishText: """All hands on deck!""",
                      kurdishText:
                          """هەموو دەریاوانەکان بۆ سەر ڕووی کەشتییەکە.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (ناو) لەلایەن کەسێکەوە نەک ئامێرێک"""),
                    SentencesRow(
                      englishText:
                          """Mail for hand delivery is put in a separate box.""",
                      kurdishText:
                          """مەیڵ بۆ گواستنەوەی دەستی دەخرێتە سندووقێکی جیاواز.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ناو) قۆناغێک لە یاری؛ ئەو کاردانەی کەسێک وەری دەگرێت بۆ دەستێک یاری کارد """),
                    SentencesRow(
                      englishText: """I'll have to leave after this hand.""",
                      kurdishText: """دوای ئەم دەستەیە دەبێت بچم.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You dealt me an appalling hand in that game.""",
                      kurdishText: """لەو یارییەدا دەستێکی زۆ خراپت پێدام.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (کردار) پێدانی شتێک بە کەسێک"""),
                    SentencesRow(
                      englishText: """She handed the letter to me.""",
                      kurdishText: """نامەکەی پێمدا.""",
                      englishNote: """Also: She handed me the letter.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He handed the book to Sally.""",
                      kurdishText: """کتێبەکەی دا بە سالی.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (کردار) ڕێگەدان بە کەسێک کە شتێک ببات"""),
                    SentencesRow(
                      englishText:
                          """This decision effectively handed Burke control of the company.""",
                      kurdishText:
                          """بڕیارەکە کاریگەرانە کۆنترۆڵی کۆمپانیاکەی دا بە بێرک.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
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
const String _videoIdend = 'https://youtu.be/2GsK5feFt1U?t=';
const double _startSecondsend = 000000000000000000000000000185;
const String _videoIdone = 'https://youtu.be/xkYved-ucGg?t=';
const double _startSecondsone = 0000000000000000000000000001523;
const String _videoIdtwo = 'https://youtu.be/zmEv7vTOQGE?t=';
const double _startSecondstwo = 000000000000000000000000000354;
const String _videoIdthree = 'https://youtu.be/lrNcx2D_FZI?t=';
const double _startSecondsthree = 0000000000000000000000000002;
const String _videoIdfour = 'https://youtu.be/2TUGZ1VQDss?t=';
const double _startSecondsfour = 000000000000000000000000000273;
const String _videoIdfive = 'https://youtu.be/dfuPBC-v5NE?t=';
const double _startSecondsfive = 0000000000000000000000000001212;

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