import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjust extends StatefulWidget {
  const EnglishEntryjust({super.key});

  @override
  State<EnglishEntryjust> createState() => _EnglishEntryjustState();
}

class _EnglishEntryjustState extends State<EnglishEntryjust> {
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
- Adverb: just
1. And nothing more (- merely, simply, only, but)
"just a scratch";
 
2. Indicating exactness or preciseness (- precisely, exactly, properly)
"he was doing just what she had told him to do"; "it was just as he said--the jewel was gone"; "it has just enough salt";
 
3. Only a moment ago (- just now)
"he has just arrived"; "the sun just now came out";
 
4. (used for emphasis) absolutely (- simply)
"I just can't take it anymore"; "he was just grand as Romeo";
 
5. Only a very short time before (- barely, hardly, scarcely, scarce)
 
6. Possibly (indicating a slight chance of something being true)
"it might just happen"
 
7. Exactly at this moment or the moment described
"we've just finished painting the walls, so don't touch them"
 
8. By a little (- barely)
"I only just caught the bus"; "he finished the marathon in just under 3 hours"; "the batter just missed being hit";

- Adjective: just (Derived forms: juster, justest)
1. Used especially of what is legally or ethically right or proper or fitting
"a just and lasting peace"; "a kind and just man"; "a just reward"; "his just inheritance"
 
2. Fair to all parties as dictated by reason and conscience (- equitable)
"just treatment of all citizens";
 
3. Free from favouritism or self-interest or bias or deception; conforming with established standards or rules (- fair)
"a just referee";
 
4. Of moral excellence (- good, upright)
"a just cause";
""",
  );

  final String keyword = "just";
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
    await flutterTts.speak("""just""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There is just one method that might work.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I decided to learn Japanese just for fun.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I waited an hour just to see you.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was just an ordinary day.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I just want to help.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I just think you should wait a bit.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We'll just have to hope for the best.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm just saying there are risks involved.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm just glad you're OK.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""That's just plain stupid.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This essay is just not good enough.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I didn't mean to upset you. It's just that I had to tell somebody.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You've just missed her.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I only just caught the train.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Inflation fell to just over 4 per cent.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The painting sold for just under £6 million.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I got here just after nine.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They must have got there just before I did.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He visited Guatemala just prior to his death.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I've just heard the news.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""When you arrived, he had only just left.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She has just been telling us about her trip to Rome.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I just saw him a moment ago.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was just here.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Just last week it was snowing and now it's 25 degrees.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm just finishing my book.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I was just beginning to enjoy myself when we had to leave.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm just off.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This jacket is just my size.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""With him, everything always has to be just right.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """This gadget is just the thing for getting those nails out.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Just my luck. My phone needs recharging.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You're just in time.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She looks just like her mother.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's just what I wanted!""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's just as I thought.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's just on six.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The clock struck six just as I arrived.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's just as smart as her sister.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You can get there just as cheaply by plane.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The water's just about to boil.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I was just going to tell you when you interrupted.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The food was just wonderful!""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The trip was just amazing!""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I can just imagine his reaction.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Just listen to what I'm saying, will you!""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Could you just help me with this box, please?""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I've just got a few things to do first.""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Try asking Mike—he might just know the answer.""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I think it was a just decision.""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Of course we all strive for a just and humane society.""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The law must be seen to be just.""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""People trust the just to make fair decisions.""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I think she got her just deserts.""");
  }

  Future<void> speaksentence55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They're campaigning for a just settlement.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/_Z0ZQT0FttM?t=1403';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/zI1w05Uzi5s?t=81';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/CpyoNaR2vfs?t=317';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/jtoq3S48Pgk?t=508';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/ecEoMQnmklI?t=199';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/nHW6Mu_2tZ0?t=3';
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
                      word: """just""",
                      // alsoEnglishWord: "also: just",
                      britshText: """IpaUK: /dʒʌst/""",
                      americanText: """IpaUS: /dʒʌst/""",
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
کوردی: دادپەروەر، دادگەر، بەداد، دادمەند، دادگەرانە، لانەگرانە، بێ‌لایەنانە، دادپەروەرانە، دادمەندانە، ڕەوا، بەرحەق، بە حەق، جێی خۆی، شیاو، بەجێ، پڕبەپێست، ژیرانە، لۆژیکی، ئاقڵانە، دروست، ڕاست،	دروست، هەر ئێستا، لەم کاتەدا، تازە، ئێستا، نووکە،	کەمێ، بڕێ، کەمێ لەوە پێش، بڕێ لەوە پێش، دەسبەجێ، لەڕێوە،	تەنیا، فەقەت، تەنێ،	بە سەختی، بە زەحمەت،	بە زۆر، نزیک بە، نزیکەی، لە دەوروبەری، بەلای نزیکی‌یەوە،	بە ڕاستی، بەڕاست
"""),
// With short examples define "just", please follow LX instructions
                    const DefinitionKurdish(text: """١. (ھاوەڵکار) تەنها"""),
                    SentencesRow(
                      englishText:
                          """There is just one method that might work.""",
                      kurdishText: """تەنها یەک هەیە ئەگەری هەبێت کار بکات.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I decided to learn Japanese just for fun.""",
                      kurdishText: """بڕیارمدا فێری ژاپۆنی بم تەنها بۆ خۆشی.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I waited an hour just to see you.""",
                      kurdishText: """یەک کاتژمێر وەستام تەنها بۆ بینینت.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵکار) بە سادەیی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It was just an ordinary day.""",
                      kurdishText: """تەنها ڕۆژێکی ئاسایی بوو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """I just want to help.""",
                              kurdishText: """تەنها دەمەوێت یارمەتی بدەم.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I just think you should wait a bit.""",
                              kurdishText:
                                  """تەنها پێموایە دەبێت کەمێک چاوەڕێ بیت.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We'll just have to hope for the best.""",
                              kurdishText:
                                  """تەنها دەبێت هیوای باشترین بخوازین.""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I'm just saying there are risks involved.""",
                              kurdishText: """تەنها دەڵێم مەترسیی لەگەڵە.""",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """I'm just glad you're OK.""",
                              kurdishText: """تەنها دڵخۆشم کە باشیت.""",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """That's just plain stupid.""",
                              kurdishText: """ئەوە تەنها گەمژەییە.""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """This essay is just not good enough.""",
                              kurdishText:
                                  """داڕشتنەکە هەر ئەوەیە زۆر باش نییە.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ھاوەڵناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I didn't mean to upset you. It's just that I had to tell somebody.""",
                              kurdishText:
                                  """نەمدەویست بێزارت بکەم. تەنها ئەوە بوو دەبوو بە کەسێکم گوتبا.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ھاوەڵکار) بە ڕێژەیەکی کەم"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """You've just missed her.""",
                      kurdishText: """تەنها کەمێک بیرت کردووە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I only just caught the train.""",
                      kurdishText:
                          """تەنها بە ئاستەنگ گەشتم بە شەمەندەفەرەکە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Inflation fell to just over 4 per cent.""",
                      kurdishText: """هەڵاوسان کەوتە خوار تەنها چوار لە سەد.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The painting sold for just under £6 million.""",
                      kurdishText:
                          """تابلۆکە فرۆشرا بۆ تەنها کەمێک لە شەش ملیۆن پاوەند.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I got here just after nine.""",
                      kurdishText: """تەنها کەمێک دوای نۆ گەشتم.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They must have got there just before I did.""",
                      kurdishText: """دەبێت پێش تەنها کەمێک پێش ئێمە گەشتبن.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He visited Guatemala just prior to his death.""",
                      kurdishText: """گەشتە گواتیمالا تەنها کەمێک پێش مەرگی.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵکار) بەکاردێت بۆ گوتنی ئەوەی تۆ/کەسێک شتێکت کرد یان شتێک ڕوویدا تەنها پێش ماوەیەکی کەم"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I've just heard the news.""",
                      kurdishText: """تازە هەواڵەکەم بیستووە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """When you arrived, he had only just left.""",
                      kurdishText: """کە تۆ گەشتیت، ئەو تازە چووبوو.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She has just been telling us about her trip to Rome.""",
                      kurdishText:
                          """تەنها تازە پێمانی گووتبوو لەسەر گەشتەکەی بۆ ڕۆما.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I just saw him a moment ago.""",
                      kurdishText: """تەنها ساتێک پێش ئێستا دیم.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She was just here.""",
                      kurdishText: """کەمێک پێش ئێستا لێرە بوو.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Just last week it was snowing and now it's 25 degrees.""",
                      kurdishText:
                          """تەنها هەفتەی پێشوو بوو کە بەفر بارین بوو و ئێستا ٢٥ پلەیە.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ھاوەڵکار) ئێستا؛ لەم/لەو کاتەدا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'm just finishing my book.""",
                      kurdishText: """ئێستا کتێبەکەم تەواو دەکەم.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I was just beginning to enjoy myself when we had to leave.""",
                      kurdishText:
                          """تەنها تازە خەریک بوو چێژ ببینم کە پێویست بوو بچین.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'm just off (= I am leaving now).""",
                      kurdishText: """ئێستا دەچم.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٦. (ھاوەڵکار) ڕێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """This jacket is just my size.""",
                      kurdishText: """ئەم چاکەتەکە ڕێک هی قەبارەی منە.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """With him, everything always has to be just right.""",
                      kurdishText:
                          """لەگەڵ ئەو، هەموو شت هەمیشە دەبێت ڕێک بن.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This gadget is just the thing for getting those nails out.""",
                      kurdishText:
                          """کەرەستەکە ڕێک ئەو شتەیەک بۆ دەرهێنانی ئەو بزمارانە.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Just my luck (= the sort of bad luck I usually have). My phone needs recharging.""",
                      kurdishText:
                          """ڕێک لە بەختی من. موبایلەکەم پێویستی بە شەحن کردنەوەیە.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """You're just in time.""",
                      kurdishText: """ڕێک لە کاتی خۆییت.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She looks just like her mother.""",
                      kurdishText: """ڕێک لە دایکی دەچێت.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It's just what I wanted!""",
                      kurdishText: """ڕێک ئەوەیە کە دەمویست!""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It's just as I thought.""",
                      kurdishText: """ڕێک ئەوەیە بیرم لێدەکردەوە.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It's just on six (= exactly six o'clock).""",
                      kurdishText: """ڕێک کاتژمێر شەشە.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ھاوەڵکار) ڕێک لە هەمان کاتی ..."""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The clock struck six just as I arrived.""",
                      kurdishText: """کاتژمێرەکە بوو بە شەش ڕێک کە گەشتم.""",
                      onPressedBritish: () => speaksentence38("en-GB"),
                      onPressedAmerican: () => speaksentence38("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ھاوەڵکار) کەمتر نا لە شتێک؛ ڕێک وەک شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She's just as smart as her sister.""",
                      kurdishText: """ڕێک وەک خوشکەکەی زیرەکە.""",
                      onPressedBritish: () => speaksentence39("en-GB"),
                      onPressedAmerican: () => speaksentence39("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You can get there just as cheaply by plane.""",
                      kurdishText:
                          """دەتوانیت بگەیت بە ئەوێ هەر بە هەمان هەرزانی بە فڕۆکە.""",
                      onPressedBritish: () => speaksentence40("en-GB"),
                      onPressedAmerican: () => speaksentence40("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ھاوەڵکار) کردنی شتێک تەنها دوای کەمێک لە ئێستاوە یان کاتێکی ڕابردوو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The water's just about to boil.""",
                      kurdishText: """ئاوەکە ها خەریکە بکوڵێت.""",
                      onPressedBritish: () => speaksentence41("en-GB"),
                      onPressedAmerican: () => speaksentence41("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I was just going to tell you when you interrupted.""",
                      kurdishText: """ها خەریک بوو پێتی بڵێم کە پچڕاندمت.""",
                      onPressedBritish: () => speaksentence42("en-GB"),
                      onPressedAmerican: () => speaksentence42("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (ھاوەڵکار) بەڕاستی؛ بە تەواوی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The food was just wonderful!""",
                      kurdishText: """خواردنەکە تەواو خۆش بوو!""",
                      onPressedBritish: () => speaksentence43("en-GB"),
                      onPressedAmerican: () => speaksentence43("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The trip was just amazing!""",
                      kurdishText: """گەشتەکە تەواو ناوازە بوو.""",
                      onPressedBritish: () => speaksentence44("en-GB"),
                      onPressedAmerican: () => speaksentence44("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I can just imagine his reaction.""",
                      kurdishText: """ڕێک دەتوانم وێنای کاردانەوەی بکەم.""",
                      onPressedBritish: () => speaksentence45("en-GB"),
                      onPressedAmerican: () => speaksentence45("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (ھاوەڵکار) بەکاردێت بۆ بەدەستهێنانی سەرنجی کەسێک، پێدانی مۆڵەت، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Just listen to what I'm saying, will you!""",
                      kurdishText: """تەنها گوێبگرە لەوەی دەیڵێم، باشە!.""",
                      onPressedBritish: () => speaksentence46("en-GB"),
                      onPressedAmerican: () => speaksentence46("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (ھاوەڵکار) بۆ ئەنجامدانی داوایەکی بەڕێزانە، هێنانەوەی بیانوویەک، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Could you just help me with this box, please?""",
                      kurdishText:
                          """دەتوانیت هەر ئەوەندە لەگەڵ ئەم سندووقە یارمەتیم بدەیت؟""",
                      onPressedBritish: () => speaksentence47("en-GB"),
                      onPressedAmerican: () => speaksentence47("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I've just got a few things to do first.""",
                      kurdishText: """تەنها چەند شتێکم هەیە سەرەتا بیکەم.""",
                      onPressedBritish: () => speaksentence48("en-GB"),
                      onPressedAmerican: () => speaksentence48("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٣. (ھاوەڵکار) بۆ پیشاندانی ئەگەرێکی کەمی ئەوەی شتێک ڕاستە یان ڕوودەدات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Try asking Mike—he might just know the answer.""",
                      kurdishText:
                          """هەوڵ بدە لە مایک بپرسە ـ ئەو ئەگەرێکی هەیە وەڵامەکە بزانێت.""",
                      onPressedBritish: () => speaksentence49("en-GB"),
                      onPressedAmerican: () => speaksentence49("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٤. (ھاوەڵناو) کە زۆرینەی خەڵکی لە ڕووی ئەخلاقییەوە بە دادپەروەری و گونجاوی دەزانن"""),
                    const AlsoEnglishckb(word: "ھەروەھا: fair"),
                    SentencesRow(
                      englishText: """I think it was a just decision.""",
                      kurdishText: """پێموایە بڕیارێکی دادگەرانە بوو.""",
                      onPressedBritish: () => speaksentence50("en-GB"),
                      onPressedAmerican: () => speaksentence50("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Of course we all strive for a just and humane society.""",
                      kurdishText:
                          """بەدڵنیاییەوە هەموومان هەوڵ دەدەین بۆ کۆمەڵگەیەکی دادگەر و مرۆڤانە.""",
                      onPressedBritish: () => speaksentence51("en-GB"),
                      onPressedAmerican: () => speaksentence51("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The law must be seen to be just.""",
                      kurdishText: """یاسا دەبێت وەک دادگەر ببیندرێت.""",
                      onPressedBritish: () => speaksentence52("en-GB"),
                      onPressedAmerican: () => speaksentence52("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٥. (ھاوەڵناو) ئەو کەسانەی دادپەروەرن"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """People trust the just to make fair decisions.""",
                      kurdishText:
                          """خەڵکی باوەڕیان بە دادگەران هەیە بڕیاری دادپەروەرانە بدەن.""",
                      onPressedBritish: () => speaksentence53("en-GB"),
                      onPressedAmerican: () => speaksentence53("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٦. (ھاوەڵناو) گونجاو لە دۆخێکی دیاریکراو"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I think she got her just deserts (= what she deserved).""",
                      kurdishText: """پێم وایە ئەو سزای شیاوی خۆی وەرگرت.""",
                      onPressedBritish: () => speaksentence54("en-GB"),
                      onPressedAmerican: () => speaksentence54("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They're campaigning for a just settlement.""",
                      kurdishText: """هەوڵ بۆ چارەسەرێکی گونجاو دەدەن.""",
                      onPressedBritish: () => speaksentence55("en-GB"),
                      onPressedAmerican: () => speaksentence55("en-US"),
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
// end just