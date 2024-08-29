import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfly extends StatefulWidget {
  const EnglishEntryfly({super.key});

  @override
  State<EnglishEntryfly> createState() => _EnglishEntryflyState();
}

class _EnglishEntryflyState extends State<EnglishEntryfly> {
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
- Verb: fly (derived forms: flies, flown, flying, flew)
1. Travel through the air; be airborne (= wing)
"Man cannot fly";
 
2. Move quickly or suddenly
"He flew about the place"
 
3. (air travel) travel in an aeroplane
"she is flying to Cincinnati tonight"; "Are we driving or flying?"
 
4. Travel over (an area of land or sea) in an aircraft
"Lindbergh was the first to fly the Atlantic"
 
5. Operate an aeroplane (= aviate, pilot)
"He flew the jet over Cuba";
 
6. Transport by aeroplane
"We fly flowers from the Caribbean to North America"
 
7. Cause to fly or float
"fly a kite"
 
8. Be dispersed or disseminated
"Rumors and accusations are flying"
 
9. Change quickly from one emotional state to another
"fly into a rage"
 
10. Pass away rapidly (= fell, vanish)
"Time flies like an arrow";
 
11. Display in the air or cause to float
"fly a kite"; "All nations fly their flags in front of the U.N."
 
12. Run away quickly (= flee, take flight, cut and run [informal])
 
13. (baseball) hit a fly
 
14. Decrease rapidly and disappear (= vanish, vaporize, vaporise [Brit])
"the money flew in las Vegas";

- Noun: fly (derived forms: flies)
1. Two-winged insects characterized by active flight
 
2. Flap consisting of a piece of canvas that can be drawn back to provide entrance to a tent (= tent-fly, rainfly [N. Amer], fly sheet, tent flap)
 
3. An opening in a garment that is closed by a zipper or by buttons concealed under a fold of cloth (= fly front)
 
4. (baseball) a hit that flies up in the air (= fly ball)
 
5. Fisherman's lure consisting of a fishhook decorated to look like an insect
 
6. [UK, archaic] A horse-drawn carriage
"a fly at the door from the Kings Arms, and his step-daughter with all her little bags and boxes, getting into it"

- Adjective: fly (derived forms: flyer, flyest)
1. [Brit, informal] Not to be deceived or hoodwinked
 
2. [N. Amer] Well dressed, smart in appearance
""",
  );

  final String keyword = "fly";
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
    await flutterTts.speak("""fly""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Penguins can't fly.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A wasp had flown in through the window.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Geese fly south in the fall.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They were on a plane flying from London to New York.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Enemy planes fly overhead.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The aircraft was declared fully functional and fit to fly.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Is this the first time that you've flown?""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm flying to Hong Kong tomorrow.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I was flying home to visit my family.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We're flying KLM.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He's learning to fly.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She's trained to fly passenger planes, not military jets.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """You'll have to fly the helicopter over some dangerous territory.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Orders were given to fly the prisoners to the US.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He had flowers specially flown in for the ceremony.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Some birds fly huge distances when they migrate.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Who was the first person to fly the Atlantic?""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Only four airlines are currently allowed to fly transatlantic routes from Heathrow.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The train was flying along.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's late—I must fly.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""A large stone came flying in through the window.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Several people were hit by flying glass.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""David gave the door a kick and it flew open.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Doesn't time fly?""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Summer has just flown by.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Flags were flying at half mast on all public buildings.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A fly was buzzing against the window.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Flies rose in thick black swarms.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A fly settled on the butter.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I swatted the fly with a newspaper.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Your fly is undone!""");
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
                      word: """fly""",
                      // alsoEnglishWord: "also: fly",
                      britshText: """IpaUK: /flaɪ/""",
                      americanText: """IpaUS: /flaɪ/""",
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
کوردی: مێش، پێشکە، تۆفانە، مەگەز، مەگەس، زنجیر، دوگمە،	(بەشێ لە چادر) باڵ،	فڕین، پەڕین، بازدان، باڵ‌گرتنەوە،	پەڕە،	تەشی، زیرەک، زرینگ، مدریک
"""),
                    const DefinitionKurdish(text: """١. (کردار) فڕین بە باڵ"""),
                    SentencesRow(
                      englishText: """Penguins can't fly.""",
                      kurdishText: """پەنگوین نافڕێت.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A wasp had flown in through the window.""",
                      kurdishText:
                          """زەردەواڵەیەک لە پەنجەرەکەوە ھاتبووە ژوورەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Geese fly south in the fall.""",
                      kurdishText: """قاز لە پاییزدا بۆ باشوور دەفڕن.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (کردار) فڕینی فڕۆکە یان کەشتی ئاسمانی"""),
                    SentencesRow(
                      englishText:
                          """They were on a plane flying from London to New York.""",
                      kurdishText:
                          """لەسەر فڕۆکەیەک بوون لە لەندەنەوە بۆ نیویۆرک دەچوو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Enemy planes fly overhead.""",
                      kurdishText: """فڕۆکەکانی دوژمن لەسەرەوە دەفڕن.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The aircraft was declared fully functional and fit to fly.""",
                      kurdishText:
                          """فڕۆکەکە بە تەواو کارا و گونجاو بۆ فڕین دانرا.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) گەشتکردن لە فڕۆکە یان کەشتی ئاسمانی"""),
                    SentencesRow(
                      englishText:
                          """Is this the first time that you've flown?""",
                      kurdishText: """ئەمە یەکەمجارە دەفڕیت؟""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'm flying to Hong Kong tomorrow.""",
                      kurdishText: """سبەی بۆ ھۆنگ کۆنگ دەفڕم.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I was flying home to visit my family.""",
                      kurdishText:
                          """دەفڕیم بۆ وڵاتی خۆم بۆ سەردانکردنی خێزانەکەم.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We're flying KLM.""",
                      kurdishText: """بە (ھێڵی ئاسمانی) کەی ئێڵ ئێم دەفڕین.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) فڕاندنی فڕۆکەیەک، کەشتییەکی ئاسمانی، ھتد"""),
                    SentencesRow(
                      englishText: """He's learning to fly.""",
                      kurdishText: """فێری فڕین دەبێت.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She's trained to fly passenger planes, not military jets.""",
                      kurdishText:
                          """مەشقی لێخوڕینی فڕۆکەی گەشتیاری دەکات نەک سەربازی.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You'll have to fly the helicopter over some dangerous territory.""",
                      kurdishText:
                          """دەبێت ھەلیکۆپتەرەکە بەسەر ژمارەیەک ناوچەی ترسناک بفڕێنیت.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) گواستنەوەی کەلوپەل یان گەشتیار بە فڕۆکە"""),
                    SentencesRow(
                      englishText:
                          """Orders were given to fly the prisoners to the US.""",
                      kurdishText:
                          """بڕیار درا زیندانییەکان بگوازنەوە ئەمریکا.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He had flowers specially flown in for the ceremony.""",
                      kurdishText:
                          """داوای کردبوو گوڵی بۆ بگوازرێتەوە بە تایبەت بۆ بۆنەکە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) گەشتکردنی ماوەیەکی دیاریکراو لە حەوادا"""),
                    SentencesRow(
                      englishText:
                          """Some birds fly huge distances when they migrate.""",
                      kurdishText:
                          """ھەندێک باڵندە ماوەی درێژ دەبڕن کە کۆچ دەکەن.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Who was the first person to fly the Atlantic?""",
                      kurdishText:
                          """کێ یەکەم کەس بوو بەسەر زەریای ئەتڵەسی بفڕێت؟""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Only four airlines are currently allowed to fly transatlantic routes from Heathrow.""",
                      kurdishText:
                          """لە ئێستادا تەنھا سێ ھێلی ئاسمانی ڕێگای پێدەدرێت گەشتی زەریای ئەتڵەسی بکەن لە ھێسرەوەوە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (کردار) ڕۆشتن یان جوولان بە خێرایی"""),
                    SentencesRow(
                      englishText: """The train was flying along.""",
                      kurdishText: """شەمەندەفەرەکە بۆ پێشەوە دەچوو.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It's late—I must fly.""",
                      kurdishText: """درەنگە ـ دەبێت زوو بچم.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (کردار) جووڵان بە لەناکاو و ھێزەوە"""),
                    SentencesRow(
                      englishText:
                          """A large stone came flying in through the window.""",
                      kurdishText: """بەردێکی گەورە لە پەنجەرەکەوە ھات.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Several people were hit by flying glass.""",
                      kurdishText:
                          """ژمارەیەک کەس شووشەی دەرپەڕیویان بەرکەوت.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """David gave the door a kick and it flew open.""",
                      kurdishText:
                          """دەیڤید شەقێکی لە دەرگاکە دا و واڵا بوو.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (کردار) کە وەھا دەربکەوێت خێرا دەچێت"""),
                    SentencesRow(
                      englishText: """Doesn't time fly?""",
                      kurdishText: """کات تێناپەڕێت؟""",
                      englishNote:
                          """This means the speaker tells another person, 'Don't you think time is passing very quickly?'""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Summer has just flown by.""",
                      kurdishText: """ھاوین ھەروا زوو تێپەڕیبوو.""",
                      englishNote:
                          """This means that summer passed very quickly, almost without noticing.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (کردار) کە ئاڵایەک ھەڵدراوە"""),
                    SentencesRow(
                      englishText:
                          """Flags were flying at half mast on all public buildings.""",
                      kurdishText:
                          """ئاڵاکان بە نیوە بەرزی لەسەر ھەموو بینا گشتییەکان ھەڵدرابوون.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (ناو) مێروویەکی بچووک کە دوو باڵی ھەیە و زۆر جۆری جیاوازی ھەیە، و ھەندێکیان نەخۆشی دەگوازنەوە"""),
                    SentencesRow(
                      englishText: """A fly was buzzing against the window.""",
                      kurdishText:
                          """مێشێک گیزەی دەھات لە ئەو دیوی پەنجەرەکەوە.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Flies rose in thick black swarms.""",
                      kurdishText: """مێش بە کۆمەڵی چڕ و ڕەش دەفڕین.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """A fly settled on the butter.""",
                      kurdishText: """مێشێک لەسەر کەرەکە نیشتەوە.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I swatted the fly with a newspaper.""",
                      kurdishText: """ڕۆژنامەیەکم لە مێشەکە دا.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٢. (ناو) زنجیری پانتۆڵ"""),
                    SentencesRow(
                      englishText: """Your fly is undone!""",
                      kurdishText: """زنجیرەکەت کراوەیە!""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
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
const double _startSecondsend = 251;
const String _videoIdone = '_Z0ZQT0FttM';
const double _startSecondsone = 4444;
const String _videoIdtwo = 'xkYved-ucGg';
const double _startSecondstwo = 1355;
const String _videoIdthree = 'J_0uDvbeerg';
const double _startSecondsthree = 34;
const String _videoIdfour = 'hS2x1zl4rn0';
const double _startSecondsfour = 719;
const String _videoIdfive = 'tXjHb5QmDV0';
const double _startSecondsfive = 748;

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