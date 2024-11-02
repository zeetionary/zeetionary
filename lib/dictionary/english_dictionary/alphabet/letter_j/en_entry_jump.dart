import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjump extends StatefulWidget {
  const EnglishEntryjump({super.key});

  @override
  State<EnglishEntryjump> createState() => _EnglishEntryjumpState();
}

class _EnglishEntryjumpState extends State<EnglishEntryjump> {
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
- Verb: jump (Derived forms: jumps, jumping, jumped)
1. Push upwards with the legs and feet to move upwards (and maybe forwards) with feet clear of the ground (- leap, bound, spring)
"Can you jump over the fence?";
 
2. Move suddenly, as if in surprise or alarm (- startle, start)
"She jumped when I walked into the room";
 
3. Make a sudden physical attack on
"The muggers jumped the woman in the fur coat"
 
4. Increase suddenly and significantly
"Prices jumped overnight"
 
5. Be highly noticeable (- leap out, jump out, stand out, stick out)
 
6. Enter eagerly into
"He jumped into the game"
 
7. Increase in rank or status (- rise, climb up)
"Her new novel jumped high on the bestseller list";
 
8. Descend from an elevated point (- leap, jump off)
"the parachutist didn't want to jump"; "every year, hundreds of people jump off the Golden Gate bridge";
 
9. Run off or leave the rails (- derail)
"the train jumped because a cow was standing on the tracks";
 
10. Jump from an aeroplane and descend with a parachute (- chute, parachute)
 
11. Start (a car engine whose battery is dead) by connecting it to another car's battery (- jumpstart, jump-start)
 
12. Bypass (- pass over, skip, skip over)
"He jumped a row in the text and so the sentence was incomprehensible";
 
13. Pass abruptly from one state or topic to another (- leap)
"jump to a conclusion"; "jump from one thing to another";
 
14. Go back and forth; swing back and forth between two states or conditions (- alternate)
 
15. [N. Amer, vulgar] Have sexual intercourse (- sleep together, love, make love, sleep with, have sex, know [archaic], do it [informal], be intimate, have intercourse, lie with [archaic], bed [informal], get it on [informal])

- Noun: jump (Derived forms: jumps)
1. A sudden and decisive increase (- leap)
"a jump in attendance";
 
2. An abrupt transition (- leap, saltation)
"a successful jump from college to the major leagues";
 
3. (film) an abrupt transition from one scene to another
 
4. A sudden involuntary movement (- startle, start)
"he awoke with a jump";
 
5. Descent with a parachute (- parachuting)
 
6. The act of jumping; propelling yourself off the ground (- jumping)
"he advanced in a series of jumps";
""",
  );

  final String keyword = "jump";
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
    await flutterTts.speak("""jump""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She jumped into the water to save them.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She jumped down from the chair.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The children were jumping up and down with excitement.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The pilot jumped from the burning plane.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He killed himself by jumping off a bridge.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She has jumped 2.2 metres.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She jumped up onto the table.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He jumped over the wall to get away.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Can you jump that gate?""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His horse fell as it jumped the last hurdle.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I jumped my horse over all the fences.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He jumped to his feet when they called his name.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She jumped up and ran out of the room.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He jumped out of the car and disappeared into the building.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her heart jumped when she heard the news.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He crept up behind me and made me jump.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Prices jumped by 60% last year.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Sales jumped from £2.7 billion to £3.5 billion.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Your interest rate might suddenly jump at the end of the fixed period.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Profits jumped by 15 per cent during the year.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I couldn't follow the talk because he kept jumping about from one topic to another.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The story then jumps from her childhood in New York to her first visit to London.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""You seem to have jumped several steps in the argument.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The needle jumped across the dial.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The thieves jumped him in a dark alleyway.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Somehow he survived the jump from the third floor of the building.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She managed a jump of 1.6 metres.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Cats can clear six feet with a standing jump.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The horse fell at the last jump.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """There's been no sudden jump, but a steady increase year on year.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Is he good enough to make the jump into Formula One?""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The story takes a jump back in time.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her heart gave a little jump at his smile.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/hTqtGJwsJVE?t=696';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/_wNsZEqpKUA?t=1104';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/hFZFjoX2cGg?t=697';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/9TugA_z5vQE?t=1480';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/YzohP2AhiNw';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/wirXvuRATiE?t=12';
    const double startSecondsfive = 0;

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
                      word: """jump""",
                      // alsoEnglishWord: "also: jump",
                      britshText: """IpaUK: /dʒʌmp/""",
                      americanText: """IpaUS: /dʒʌmp/""",
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
کوردی: باز، پەڕین، قەڵبەز، قەڵەمباز، ڤەگەمزین، لیتک، گومەتە،	کۆسپ، لەمپەر، بەربەست،	داچڵەکین، هەڵبەزینەوە، داتروسکان، سڵەمینەوە، ڕاچەنین، داخورپان،	هەڵچوون، چوونەسەرەوەی کت‌وپڕ، زۆربوونی لەناکاو، گۆڕانی کوت‌وپڕ
"""),
// With short examples define "jump", please follow LX instructions
                    const DefinitionKurdish(text: """١. (کردار) بازدان"""),
                    SentencesRow(
                      englishText:
                          """She jumped into the water to save them.""",
                      kurdishText: """بازی دایە ناو ئاوەکە بۆ ڕزگارکردنیان.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She jumped down from the chair.""",
                      kurdishText: """لە کورسییەکەوە بازی دایە خوارەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The children were jumping up and down with excitement.""",
                      kurdishText:
                          """منداڵەکان لە خۆشیدا هەڵبەز و دابەزیان بوو.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The pilot jumped from the burning plane (= with a parachute).""",
                      kurdishText:
                          """فڕۆکەوانەکە لە فڕۆکە سووتاوەکەوە بازی دا.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He killed himself by jumping off a bridge.""",
                      kurdishText:
                          """خۆی کوشت بە بازدانە خوارەوە لە پردێکەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She has jumped 2.2 metres.""",
                      kurdishText: """٢,٢ مەتر بازی داوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She jumped up onto the table.""",
                      kurdishText: """بازی دایە سەر مێزەکە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (کردار) بازدان بەسەر شتێک"""),
                    const AlsoEnglishckb(word: "ھەروەھا: leap"),
                    SentencesRow(
                      englishText: """He jumped over the wall to get away.""",
                      kurdishText: """بەسەر دیوارەکەدا بازی دا بۆ هەڵهاتن.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Can you jump that gate?""",
                      kurdishText: """دەتوانیت بەسەر ئەو دەرگایە باز بدەیت؟""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """His horse fell as it jumped the last hurdle.""",
                      kurdishText:
                          """ئەسپەکەی کەوت کە بازی بەسەر کۆتا بەربەست دا.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I jumped my horse over all the fences.""",
                      kurdishText:
                          """بازم بە ئەسپەکەم دا بەسەر هەموو پەرژینەکان.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (کردار) جووڵان بە خێرایی و لەناکاو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He jumped to his feet when they called his name.""",
                      kurdishText: """هەستایە سەر پێ کە ناوییان خوێندەوە.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She jumped up and ran out of the room.""",
                      kurdishText:
                          """هەستایە سەر پێ و لە ژوورەکە ڕایکردە دەرەوە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He jumped out of the car and disappeared into the building.""",
                      kurdishText:
                          """چووە دەرەوەی ئۆتۆمبێلەکە و ونبووە ناو بیناکە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) ئەنجامدانی جووڵەیەکی لەناکاو بەهۆی سوپرایز، ترس، یان جۆش‌وخرۆشی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Her heart jumped when she heard the news.""",
                      kurdishText: """دڵی داخورپا کە هەواڵەکەی بیست.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He crept up behind me and made me jump.""",
                      kurdishText: """لە پشتمەوە دەرکەوت و زیڕەی پێم کرد.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) لەناکاو بەرزبوونەوە بە ڕێژەیەکی زۆر"""),
                    const AlsoEnglishckb(word: "ھەروەھا: leap"),
                    SentencesRow(
                      englishText: """Prices jumped by 60% last year.""",
                      kurdishText:
                          """ساڵی ڕابردوو نرخەکان بە ڕێژەی ٦٠٪ بەرزبوونەوە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Sales jumped from £2.7 billion to £3.5 billion.""",
                      kurdishText:
                          """فرۆش لە ٢,٧ ملیار پاوەندەوە بۆ ٣,٥ ملیار پاوەند بەرزبوویەوە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Your interest rate might suddenly jump at the end of the fixed period.""",
                      kurdishText:
                          """ڕێژەی سووت لەوانەیە لە کۆتایی ماوە دیاریکراوەکە لەناکاو بەرزببێتەوە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Profits jumped by 15 per cent during the year.""",
                      kurdishText:
                          """قازانجەکان بە ڕێکەی ١٥ لە سەد لە ماوەی ساڵەکە بەرزبوونەوە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) لەناکاو گۆڕان لە بابەتێک بۆ یەکێکی دیکە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I couldn't follow the talk because he kept jumping about from one topic to another.""",
                      kurdishText:
                          """ئاگام لە قسەکە نەبوو بەهۆی ئەوەی لە بابەتێکەوە دەچوو بۆ یەکێکی دیکە.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The story then jumps from her childhood in New York to her first visit to London.""",
                      kurdishText:
                          """چیرۆکەکە دواتر لەناکاو لە منداڵییەوە لە نیویۆرک دەچێت بۆ یەکەم سەردانی بۆ لەندەن.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) جێهێشتنی شتێک و چوون بۆ خاڵێک یان قۆناغێکی دوورتر"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You seem to have jumped several steps in the argument.""",
                      kurdishText:
                          """وادیارە چەند هەنگاوێک لە ئارگیومێتەکە چووبیتە پێشەوە.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) گۆڕان بە لەناکاوی و بە شێوەیەکی پێشبینی نەکراو """),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The needle jumped across the dial.""",
                      kurdishText: """دەرزییەکە بە پێوەرەکەدا دەجووڵا.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (کردار) لەناکاو هێرشکردنە سەر کەسێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The thieves jumped him in a dark alleyway.""",
                      kurdishText:
                          """دزەکان هێرشیان کردە سەری لە کووچەیەکی تاریک.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """١٠. (ناو) بازدان"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Somehow he survived the jump from the third floor of the building.""",
                      kurdishText:
                          """بەجۆرێک ڕزگاری بوو لە بازدان لە سێیەم نهۆمی بیناکەوە.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She managed a jump of 1.6 metres.""",
                      kurdishText: """توانی بازێکی ١,٦ مەتری بدات.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Cats can clear six feet with a standing jump.""",
                      kurdishText:
                          """پشیلە دەتوانێت شەش مەتر ببڕێت بە بازێکی هەستانەوە.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (ناو) بەربەستێک کە وەک پەیژەیەکە و ئەسپێک یان ڕاکەرێک دەبێت بەسەریدا باز بدات لە ڕکابەرییەک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The horse fell at the last jump.""",
                      kurdishText: """ئەسپەکە لە کۆتا بەربەست کەوت.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (ناو) زیادبوونێکی لەناکاو لە بڕ، بەها، یان نرخ"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There's been no sudden jump, but a steady increase year on year.""",
                      kurdishText:
                          """هیچ زیادبوونێکی لەناکاو نەبووە، بەڵام زیادبوونێکی جێگیری ساڵ دوای ساڵ.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٣. (ناو) گۆڕانێکی گەورە یان لەناکاو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Is he good enough to make the jump into Formula One?""",
                      kurdishText:
                          """ئایا هێندە باشە کە خێرا بچێتە ناو فۆرمیولا وەن؟""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The story takes a jump back in time.""",
                      kurdishText: """چیرۆکەکە بە ڕابردوودا دەگەڕێتەوە.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٤. (ناو) جووڵەیەکی لەناکاو کە بەهۆی شۆک یان سەرسوڕمان درووست دەبێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Her heart gave a little jump at his smile.""",
                      kurdishText: """دڵی خورپەیەکی پێدا هات بە بزەکەی.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
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
// end jump