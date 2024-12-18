import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryland extends StatefulWidget {
  const EnglishEntryland({super.key});

  @override
  State<EnglishEntryland> createState() => _EnglishEntrylandState();
}

class _EnglishEntrylandState extends State<EnglishEntryland> {
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
- Noun: land (Derived forms: lands)
1. The area of ground on which real estate is located
"he built the house on land leased from the city"
 
2. Material in the top layer of the surface of the earth in which plants can grow (especially with reference to its quality or use) (- ground, soil)
"the land had never been ploughed";
 
3. Territory over which rule or control is exercised (- domain, demesne)
"he made it the law of the land";
 
4. The solid part of the earth's surface (- dry land, earth, ground, solid ground, terra firma)
"the plane turned away from the sea and moved back over land";
 
5. The territory occupied by a nation (- country, state)
"he returned to the land of his birth";
 
6. A domain in which something is dominant (- kingdom, realm)
"a land of make-believe";
 
7. Extensive landed property (especially in the country) retained by the owner for his own use (- estate, landed estate, acres, demesne)
 
8. The people who live in a nation or country (- nation, country)
"a statement that sums up the land's mood";
 
9. A politically organized body of people under a single government (- state, nation, country, commonwealth, res publica, body politic)
"an industrialized land";
 
10. Agriculture considered as an occupation or way of life (- farming)
"there's no work on the land any more";

- Verb: land (Derived forms: landing, lands, landed)
1. Reach or come to rest (- set down)
"The bird landed on the highest branch"; "The plane landed in Istanbul";
 
2. (air travel) cause to come to the ground (- put down, bring down)
"the pilot managed to land the aeroplane safely";
 
3. Bring into a different state (- bring)
"this may land you in jail";
 
4. Bring ashore
"The drug smugglers landed the heroin on the beach of the island"
 
5. Deliver (a blow)
"He landed several blows on his opponent's head"
 
6. Arrive on shore (- set ashore, shore)
"The ship landed in Pearl Harbor";
 
7. Shoot at and force to come down (- down [informal], shoot down)
"the enemy landed several of our aircraft";

- Noun: Land (Derived forms: Lands)
1. United States inventor who incorporated Polaroid film into lenses and invented the one step photographic process (1909-1991) (- Edwin H. Land, Din Land, Edwin Herbert Land)
""",
  );

  final String keyword = "land";
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
    await flutterTts.speak("""land""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was good to be back on land.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Some animals can live both on land and in water.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We travelled by land, though flying would have been cheaper.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It's impossible to reach this beach by land because of the high cliffs.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We can organize air transport, land transport and all accommodation for your trip.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The elephant is the largest living land animal.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""In the distance the crew sighted land.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They fought both at sea and on land.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Changes in land use can have significant effects on the wildlife.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Some of the country's richest grazing lands are in these valleys.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The land was very dry and hard after the long, hot summer.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Every scrap of land is used for growing food.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The land has been cleared ready for building.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Good agricultural land is scarce.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They finally got out of the town and reached open land.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It's an attractive village in the heart of the state's agricultural lands.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Sheep and goats can live quite happily on mountainous land like this.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Land values in the area are falling.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""During the war their lands were occupied by the enemy.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Ancient tribes were forced off their ancestral lands.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The price of land is rising rapidly.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She owns 50 hectares of land in Scotland.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was granted land by the king.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They own a small plot of land.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """At the beginning of the 20th century almost a third of the population lived off the land.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Many people leave the land to find work in towns and cities.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Her family had farmed the land for generations.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He's tired of living in cities, and wants to get back to the land.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her family had always worked the land.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She longed to return to her native land.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They dreamed of travelling to foreign lands.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""America is the land of freedom and opportunity.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He journeyed to many distant lands.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The plane landed safely.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The flight is due to land at 3 o'clock.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A fly landed on his nose.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The plane slowly came down to land.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The plane was forced to land in a nearby field.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A swan landed on the water.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The pilot landed the plane safely.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He landed the damaged aircraft in a field.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We shall be landing shortly. Please fasten your seat belts.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The troops landed at dawn.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They were the first men to land on the moon.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We are due to land at Heathrow at 12.15.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They were arrested on landing at Heathrow.""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The troops were landed by helicopter.""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She fell and landed heavily on her back.""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Several men were killed when rocket shells landed in the troop camp.""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I fell and landed heavily at the bottom of the stairs.""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Why do complaints always land on my desk?""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He's just landed a starring role in a Hollywood movie.""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She's just landed herself a company directorship.""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It took me three attempts to land the fish.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/yBj9Qlpwjcs?t=1138';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/hFZFjoX2cGg?t=64';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/MnExgQ81fhU?t=365';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/rPe4yziWiOg?t=352';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/sx5kljSJOxA?t=135';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/CpyoNaR2vfs?t=118';
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
                      word: """land""",
                      // alsoEnglishWord: "also: land",
                      britshText: """IpaUK: /lænd/""",
                      americanText: """IpaUS: /lænd/""",
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
کوردی: عەرز، خاک، بووم، زەوی، زەمین، هەرد، وشکانی، بەژ،	وڵات،	مڵک، زەوی‌وزار، خاک،	لادێکان، گوندەکان (لە بەرامبەر شارەکان‌دا)،	گەل، نەتەوە،	بوار، پانتایی، زەمینە، مەڵبەند
"""),
// With short examples define "land", please follow LX instructions
                    const DefinitionKurdish(
                        text: """١. (ناو) ڕووی وشکانی سەر زەوی"""),
                    SentencesRow(
                      englishText: """It was good to be back on land.""",
                      kurdishText: """خۆشي لەسەر وشکانی دەبینەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Some animals can live both on land and in water.""",
                              kurdishText:
                                  """هەندێک ئاژەڵ دەتوانن لە هەردوو سەر وشکانی و ئاودا بژین.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (کردار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We travelled by land, though flying would have been cheaper.""",
                              kurdishText:
                                  """بە وشکانیدا گەشتمان کرد، ئەگەرچی بە ئاسمانی هەرزانتر دەبوو.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (کردار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """It's impossible to reach this beach by land because of the high cliffs.""",
                              kurdishText:
                                  """سەختە بە وشکانیدا بگەیت بەم کەناراوە بەهۆی قەدپاڵە بەرزەکان.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (کردار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We can organize air transport, land transport and all accommodation for your trip.""",
                              kurdishText:
                                  """دەتوانین گواستنەوەی ئاسمانی، گواستنەوەی وشکانی، و هەموو مانەوەیەک بۆ گەشتەکەت ڕێکبخەین.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (کردار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The elephant is the largest living land animal.""",
                              kurdishText: """فیل گەورەترین ئاژەڵی وشکانییە.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (کردار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """In the distance the crew sighted land.""",
                              kurdishText:
                                  """لە دوورەوە تاقمەکە چاویان بە وشکانی کەوت.""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (کردار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They fought both at sea and on land.""",
                              kurdishText:
                                  """لەسەر هەردوو ئاو و وشکانی جەنگان.""",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) ناوچەیەک یان پارچە زەوییەک"""),
                    const AlsoEnglishckb(word: "ھەروەھا: terrain"),
                    SentencesRow(
                      englishText:
                          """Changes in land use can have significant effects on the wildlife.""",
                      kurdishText:
                          """گۆڕان لە بەکارهێنانی زەوی دەکرێت کاریگەریی گەورەی هەبێت لەسەر ژیانی ئاژەڵی کێوی.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Some of the country's richest grazing lands are in these valleys.""",
                              kurdishText:
                                  """هەندێک لە دەوڵەمەندترین زەوییەکانی لەوەڕان لە وڵاتەکە لەم دۆڵانەن.""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (کردار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The land was very dry and hard after the long, hot summer.""",
                              kurdishText:
                                  """زەوییەکە زۆر وشک و سەخت بوو لە دوای هاوینێکی درێژی گەرم.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (کردار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Every scrap of land is used for growing food.""",
                              kurdishText:
                                  """هەر بستێکی زەوی بەکاردێت بۆ ڕوواندنی خواردن.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (کردار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The land has been cleared ready for building.""",
                              kurdishText: """زەوییەکە پاککراوەتەوە بۆ بینا.""",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (کردار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Good agricultural land is scarce.""",
                              kurdishText: """زەویی کشتووکاڵی باش کەمە.""",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (کردار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They finally got out of the town and reached open land.""",
                              kurdishText:
                                  """لە کۆتاییدا لە شارۆچکەکە دەرچوون و گەشتنە دەشتێکی کراوە.""",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (کردار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """It's an attractive village in the heart of the state's agricultural lands.""",
                              kurdishText:
                                  """گوندێکی جوانە لە ناوجەرگەی زەوییە کشتووکاڵییەکانی ویلایەتەکە.""",
                              onPressedBritish: () => speaksentence16("en-GB"),
                              onPressedAmerican: () => speaksentence16("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (کردار) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Sheep and goats can live quite happily on mountainous land like this.""",
                              kurdishText:
                                  """مەڕ و بزن دەکرێت زۆر دڵخۆشانە بژین لەسەر زەوییە چیاییەکانی لەم شێوەیە.""",
                              onPressedBritish: () => speaksentence17("en-GB"),
                              onPressedAmerican: () => speaksentence17("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ئەو پارچە زەوییەی کە کەسێک خاوەنداریی دەکات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Land values in the area are falling.""",
                      kurdishText: """بەهای زەوی لە ناوچەکە کەم دەبنەوە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """During the war their lands were occupied by the enemy.""",
                      kurdishText:
                          """لە کاتی جەنگەکە زەوییەکانیان لەلایەن دوژمنەوە داگیرکرابوون.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Ancient tribes were forced off their ancestral lands.""",
                      kurdishText:
                          """تیرە کۆنەکان لەسەر زەویی باپیرانیان دەرکران.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The price of land is rising rapidly.""",
                      kurdishText: """بەهای زەوی بە خێرایی بەرز دەبێتەوە.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She owns 50 hectares of land in Scotland.""",
                      kurdishText: """٥٠ هێکتار زەویی لە سکۆتلەندا هەیە.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He was granted land by the king.""",
                      kurdishText: """زەویی لەلایەن پاشاوە پێدرا.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """They own a small plot of land.""",
                      kurdishText: """پارچە زەوییەکی بچووکیان هەیە.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) دەشت‌ودەر و شێوازی ژیان تێیدا بە پێچەوانەی شار"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """At the beginning of the 20th century almost a third of the population lived off the land (= grew or produced their own food).""",
                      kurdishText:
                          """ل سەرەتای سەدەی ٢٠ ـدا بە نزیکەیی یەک لە سێی دانیشتووانەکە لەسەر دەشت‌ودەر دەژیان.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Many people leave the land to find work in towns and cities.""",
                      kurdishText:
                          """زۆر کەس دەشت‌دەر جێدەهێڵن بۆ دۆزینەوەی کار لە شارۆچکە و شارەکان.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Her family had farmed the land for generations.""",
                      kurdishText:
                          """خێزانەکەی بۆ چەندین نەوە لەسەر زەوییەکە جووتیارییان دەکرد.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He's tired of living in cities, and wants to get back to the land.""",
                      kurdishText:
                          """ماندووە لە ژیان لە شارەکان و دەیەوێت بگەڕێتەوە دەشت‌ودەر.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Her family had always worked the land.""",
                      kurdishText:
                          """خێزانەکەی هەمیشە لەسەر زەوییەکە ژیابوون.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) بەکاردێت بۆ باسکردن لە وڵات یان هەرێمێک کە سۆز و خەیاڵ دەردەبڕیت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She longed to return to her native land.""",
                      kurdishText:
                          """بە ئارەزوو بوو کە بگەڕێتەوە نیشتیمانی خۆی.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They dreamed of travelling to foreign lands.""",
                      kurdishText:
                          """خەونیان دەبینی بە گەشتکردن بە خاکی بیانیدا.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """America is the land of freedom and opportunity.""",
                      kurdishText: """ئەمریکا نیشتیمانی ئازادی و هەلە.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He journeyed to many distant lands.""",
                      kurdishText: """گەشتی بۆ زۆر وڵاتی دوور کرد.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٦. (کردار) نیشتنەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The plane landed safely.""",
                      kurdishText: """فڕۆکەکە بە سەلامەتی نیشتەوە.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The flight is due to land at 3 o'clock.""",
                      kurdishText: """فڕۆکەکە لە کاتژمێر ٣ دەنیشێتەوە.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """A fly landed on his nose.""",
                      kurdishText: """مێشێک لەسەر لووتی نیشتەوە.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The plane slowly came down to land.""",
                      kurdishText:
                          """فڕۆکەکە بە هێواشی هاتە خوارەوە بۆ نیشتنەوە.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The plane was forced to land in a nearby field.""",
                      kurdishText:
                          """فڕۆکەکە ناچاربوو لە کێڵگەیەکی نزیک بنیشێتەوە.""",
                      onPressedBritish: () => speaksentence38("en-GB"),
                      onPressedAmerican: () => speaksentence38("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """A swan landed on the water.""",
                      kurdishText: """سۆنەیەک لەسەر ئاوەکە نیشتەوە.""",
                      onPressedBritish: () => speaksentence39("en-GB"),
                      onPressedAmerican: () => speaksentence39("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (کردار) نیشاندنەوەی فڕۆکە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The pilot landed the plane safely.""",
                      kurdishText:
                          """فڕۆکەوانەکە فڕۆکەکەی بە سەلامەتی نیشاندەوە.""",
                      onPressedBritish: () => speaksentence40("en-GB"),
                      onPressedAmerican: () => speaksentence40("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He landed the damaged aircraft in a field.""",
                      kurdishText:
                          """فڕۆکە زیان بەرکەوتووەکەی لە کێڵگەیەک نیشاندەوە.""",
                      onPressedBritish: () => speaksentence41("en-GB"),
                      onPressedAmerican: () => speaksentence41("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) گەشتنە شوێنێک بە فڕۆکە یان بەلەم"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We shall be landing shortly. Please fasten your seat belts.""",
                      kurdishText:
                          """بە زوویی دەگەین. تکایە پشتێنەکانی سەلامەتی ببەستن.""",
                      onPressedBritish: () => speaksentence42("en-GB"),
                      onPressedAmerican: () => speaksentence42("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The troops landed at dawn.""",
                      kurdishText: """هێزەکان لە بەرەبەیاندا گەشتن.""",
                      onPressedBritish: () => speaksentence43("en-GB"),
                      onPressedAmerican: () => speaksentence43("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They were the first men to land on the moon.""",
                      kurdishText: """یەکەمین کەس بوون لەسەر مانگ بنیشنەوە.""",
                      onPressedBritish: () => speaksentence44("en-GB"),
                      onPressedAmerican: () => speaksentence44("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We are due to land at Heathrow at 12.15.""",
                      kurdishText: """لە ١٢:١٥ دەگەینە هێسرۆ.""",
                      onPressedBritish: () => speaksentence45("en-GB"),
                      onPressedAmerican: () => speaksentence45("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They were arrested on landing at Heathrow.""",
                      kurdishText: """دەستگیرکراین لەگەڵ گەشتن بە هێسرۆ.""",
                      onPressedBritish: () => speaksentence46("en-GB"),
                      onPressedAmerican: () => speaksentence46("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (کردار) دانانی ک/شت لەسەر زەوی لە فڕۆکەیەکەوە، بەلەمێکەوە، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The troops were landed by helicopter.""",
                      kurdishText: """هێزەکان بە هەلیکۆپتەر بەردرانەوە.""",
                      onPressedBritish: () => speaksentence47("en-GB"),
                      onPressedAmerican: () => speaksentence47("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (کردار) گەشتنە شوێنێک لە دوای کەوتن، بازدان، یان ئەوەی فڕێ بدرێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She fell and landed heavily on her back.""",
                      kurdishText: """کەوت و بە سەختی لەسەر پشتی نیشتەوە.""",
                      onPressedBritish: () => speaksentence48("en-GB"),
                      onPressedAmerican: () => speaksentence48("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Several men were killed when rocket shells landed in the troop camp.""",
                      kurdishText:
                          """ژمارەیەک کەس کوژران کە قەواغی ڕۆکێت لە کەمپی هێزەکان کەوتنە خوارەوە.""",
                      onPressedBritish: () => speaksentence49("en-GB"),
                      onPressedAmerican: () => speaksentence49("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I fell and landed heavily at the bottom of the stairs.""",
                      kurdishText:
                          """کەوتم و بە توندی نیشتمەوە لە خوارەوەی پلەکانەکان.""",
                      onPressedBritish: () => speaksentence50("en-GB"),
                      onPressedAmerican: () => speaksentence50("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (کردار) گەشتنە شوێنێک و ئەوەی سەختی درووست بکەیت کە پێویست بێت مامەڵەی لەگەڵ بکرێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Why do complaints always land on my desk (= why do I always have to deal with them)?""",
                      kurdishText:
                          """بۆچی نیگەرانییەکان هەمیشە دێنە سەر دێسکەکەی من؟""",
                      onPressedBritish: () => speaksentence51("en-GB"),
                      onPressedAmerican: () => speaksentence51("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (کردار) سەرکەوتن لە بەدەستخستنی کار، هتد کە خەڵکی دیکەی زۆر دەیانەوێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He's just landed a starring role in a Hollywood movie.""",
                      kurdishText:
                          """تازەگی ڕۆڵی سەرەکی لە فیلمێکی هۆڵیوود وەرگرتووە.""",
                      onPressedBritish: () => speaksentence52("en-GB"),
                      onPressedAmerican: () => speaksentence52("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She's just landed herself a company directorship.""",
                      kurdishText:
                          """تازەگی بەڕێوەبەرێتیی کۆمپانیایەکی وەرگرتووە.""",
                      onPressedBritish: () => speaksentence53("en-GB"),
                      onPressedAmerican: () => speaksentence53("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (کردار) گرتنی ماسی و هێنانە دەرەوەی لە ئاوەکە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It took me three attempts to land the fish.""",
                      kurdishText: """سێ جاری پێچوو بۆم کە ماسییەکە بگرم.""",
                      onPressedBritish: () => speaksentence54("en-GB"),
                      onPressedAmerican: () => speaksentence54("en-US"),
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
// end land