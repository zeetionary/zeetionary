import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryflash extends StatefulWidget {
  const EnglishEntryflash({super.key});

  @override
  State<EnglishEntryflash> createState() => _EnglishEntryflashState();
}

class _EnglishEntryflashState extends State<EnglishEntryflash> {
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
- Verb: flash (derived forms: flashing, flashed, flashes)
1. Gleam or glow intermittently (= blink, wink, twinkle, winkle)
"The lights were flashing";
 
2. Appear briefly
"The headlines flashed on the screen"
 
3. [informal] Display proudly; act ostentatiously or pretentiously (= flaunt, show off, ostentate [archaic], swank [informal], parade, showboat [N. Amer, informal])
"he flashed his new sports car";
 
4. Make known or cause to appear with great speed
"The latest intelligence is flashed to all command posts"
 
5. Run or move very quickly or hastily (= dart, dash, scoot [informal], scud, shoot, whip [informal])
"She flashed into the yard";
 
6. Expose or show briefly
"he flashed a £100 bill"
 
7. Protect by covering with a thin sheet of metal
"flash the roof"
 
8. Emit a brief burst of light
"A shooting star flashed and was gone"
 
9. [informal] Briefly expose one's naked body or genitals in public

- Noun: flash (derived forms: flashes)
1. A sudden intense burst of radiant energy
 
2. A momentary brightness
 
3. A short vivid experience (= flashing)
"a flash of emotion swept over him";
 
4. A sudden brilliant understanding
"he had a flash of intuition"
 
5. A very short time (= blink of an eye [informal], heartbeat, instant, jiffy [informal], split second, trice, twinkling [informal], wink [informal], New York minute [US, informal], jiff [informal], glimmering)
"if I had the chance I'd do it in a flash";
 
6. A gaudy outward display (= ostentation, fanfare)
 
7. A burst of light used to communicate or illuminate (= flare)
 
8. A short news announcement concerning some on-going news story (= news bulletin, newsflash, newsbreak)
 
9. A bright patch of colour used for decoration or identification
"red flashes adorned the aeroplane"; "a flash sewn on his sleeve indicated the unit he belonged to"
 
10. A lamp for providing momentary light to take a photograph (= photoflash [rare], flash lamp, flashgun, flashbulb [archaic], flash bulb [archaic], flashlight)

- Adjective: flash (derived forms: flashest, flasher)
Usage: informal
1. Tastelessly showy (= brassy [informal], cheap, flashy, garish, gaudy, gimcrack, loud, meretricious, tacky [informal], tatty [informal], tawdry, trashy)
"a flash car";
""",
  );

  final String keyword = "flash";
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
    await flutterTts.speak("""flash""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Flashes of light were followed by an explosion.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """There was a blinding flash and the whole building shuddered.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The lighthouse gives out four flashes every 15 seconds.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Below them they saw torch flashes from locals which signalled V for Victory.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'll need flash for this shot.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The tour guide asked people to turn off the flash on their cameras.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The flash didn't go off.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The bomb exploded in a flash of yellow light.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He caught the flash of anger in her eyes.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He felt a brief flash of jealousy.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Lightning flashed in the distance.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Cameras flashed as celebrities strolled up the red carpet.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The guide flashed a light into the cave.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Red lights flashed a warning at them.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Why is that driver flashing his lights at us?""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He flashed his pass at the security officer.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A look of terror flashed across his face.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The countryside flashed past the train windows.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A terrible thought flashed through my mind.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His name was flashed up on the screen.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A message was flashing on the screen.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""News of their triumph was flashed around the world.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He's very flash, isn't he?""");
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
                      word: """flash""",
                      // alsoEnglishWord: "also: flash",
                      britshText: """IpaUK: /flæʃ/""",
                      americanText: """IpaUS: /flæʃ/""",
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
کوردی: ڕووناکایی، درەوشانەوە، ڕۆشنایی، شەوق، بریسکانەوە، ورشانەوە، بریقانەوە، پڕشنگ،	پڕیشکە، بریسکە، بریقە، ترووسکە، چەخماخە،	تاو، چرکەسات،	(وێنەگری) فلەش، بروسکە، بریسکە،	چراقەوە،	نیشانە، بەرژەنگ،	(سەربازی) سەرقۆڵ، سەرشان،	خۆدەرخستن
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ڕووناکییەکی درەوشاوە بۆ ماوەیەکی کەم"""),
                    SentencesRow(
                      englishText:
                          """Flashes of light were followed by an explosion.""",
                      kurdishText:
                          """درەوشانەوەی ڕووناکی تەقینەوەی بەدوادا ھات.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There was a blinding flash and the whole building shuddered.""",
                      kurdishText:
                          """درەوشانەوەیەکی ئێجگار زۆر ھەبوو و تەواوی بیناکە لەرییەوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ناو) لێدانی ڕۆشنایی بۆ شتێک"""),
                    SentencesRow(
                      englishText:
                          """The lighthouse gives out four flashes every 15 seconds.""",
                      kurdishText:
                          """منارە ئاگادارکەرەوەکە ھەر ١٥ چرکە جارێک ڕووناکی لێدەدات.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Below them they saw torch flashes from locals which signalled V for Victory.""",
                      kurdishText:
                          """لە خوارەوەیانەوە ڕۆشنایی لایتیان دەبینی لە خەڵکە خۆجێییەکەوە کە ئاماژەی V ـیان فۆر بردنەوە لێدەدا.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) شتێک کە کەمێک درەوشانەوە درووست دەکات بۆ ماوەیەکی کەم"""),
                    SentencesRow(
                      englishText: """I'll need flash for this shot.""",
                      kurdishText: """بۆ ئەم وێنەیە پێویستم بە فلاشە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The tour guide asked people to turn off the flash on their cameras.""",
                      kurdishText:
                          """ڕێبەری گەشتەکە داوای لە خەڵکی کرد فلاشی کامێراکانیان بکوژێننەوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The flash didn't go off.""",
                      kurdishText: """فلاشەکە نەکوژایەوە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) دەرکەوتنی درەوشاوەی لەناکاوی شتێک بۆ ماوەیەکی کەم"""),
                    SentencesRow(
                      englishText:
                          """The bomb exploded in a flash of yellow light.""",
                      kurdishText:
                          """بۆمبەکە تەقییەوە بە فلاشی ڕووناکییەکی زەرد .""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) بیرۆکەیەک یان ھەستێک کە زوو دێتە مێشکت یان لەسەر ڕووخسارت دەردەکەوێت"""),
                    SentencesRow(
                      englishText:
                          """He caught the flash of anger in her eyes.""",
                      kurdishText:
                          """دەرکەوتنی تاوێک لە ڕقی لە چاوەکانیدا بینی.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He felt a brief flash of jealousy.""",
                      kurdishText: """ھەستی بە چرکەساتێک لە بەخیکی کرد.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) درەوشانەوە بەزۆری بۆ ماوەیەکی کەم"""),
                    SentencesRow(
                      englishText: """Lightning flashed in the distance.""",
                      kurdishText: """چەخماخە لە دوورەوە دەدرەوشایەوە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Cameras flashed as celebrities strolled up the red carpet.""",
                      kurdishText:
                          """کامێراکانیان فلاشیان لێدەدا کە کەسە بەناوبانگەکان بە فەرشی سووردا تێپەڕین.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The guide flashed a light into the cave.""",
                      kurdishText:
                          """ڕێبەرەکە لایتێکی ھەڵدا بۆ ناو ئەشکەوتەکە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) بەکارھێنانی ڕووناکی بۆ پێدانی ئاماژە بە کەسێک"""),
                    SentencesRow(
                      englishText: """Red lights flashed a warning at them.""",
                      kurdishText: """لایتی سوور ئاگادارکردنەوەیەکی پێدان.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Why is that driver flashing his lights at us?""",
                      kurdishText:
                          """بۆچی ئەو شۆفێرە لایتەکانی بۆمان دەچرکێنێت؟""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) پیشاندانی شتێک بە کەسێک بە خێرایی"""),
                    SentencesRow(
                      englishText:
                          """He flashed his pass at the security officer.""",
                      kurdishText: """مۆڵەتەکەی پیشانی پاسەوانەکە دا.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (کردار) جووڵان یان تێپەڕین بەخێرایی"""),
                    SentencesRow(
                      englishText:
                          """A look of terror flashed across his face.""",
                      kurdishText: """دەربڕینی تۆقین کەوتە سەر ڕووخساری.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The countryside flashed past the train windows.""",
                      kurdishText:
                          """دەشتەکە بە پەنجەرەکانی شەمەندەفەرەکە تێپەڕین.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (کردار) لەناکاو بیرکردنەوە لێی"""),
                    SentencesRow(
                      englishText:
                          """A terrible thought flashed through my mind.""",
                      kurdishText: """بیرکردنەوەیەکی ناخۆش ھات بە مێشکمدا.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (کردار) دەرکەوتن شتێک بۆ ماوەیەکی کەم، بۆ نموونە لەسەر شاشەی تەلەفیزیۆن یان کۆمپیوتەر"""),
                    SentencesRow(
                      englishText: """His name was flashed up on the screen.""",
                      kurdishText: """ناوی خرایە سەر شاشەکە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """A message was flashing on the screen.""",
                      kurdishText: """پەیامێک لەسەر شاشەکە پیشان دەدار.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (کردار) ناردنی زانیاری بە خێرایی بە تەلەفیزیۆن، ڕادیۆ، ھتد"""),
                    SentencesRow(
                      englishText:
                          """News of their triumph was flashed around the world.""",
                      kurdishText:
                          """ھەواڵی سەرکەوتنەکەیان بۆ ھەموو جیھان نێردرا.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٣. (ھاوەڵناو) کە سەرنج ڕادەکێشێت بەوەی گەورە یان گران‌بەھایە"""),
                    SentencesRow(
                      englishText: """He's very flash, isn't he?""",
                      kurdishText: """زۆر سەرنجڕاکێشە، وانییە؟""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
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

const String _videoIdend = 'DwsZggwPRKc';
const double _startSecondsend = 118;
const String _videoIdone = 'F5pgG1M_h_U';
const double _startSecondsone = 110;
const String _videoIdtwo = '7nGz7xgGJzc';
const double _startSecondstwo = 27;
const String _videoIdthree = 'oD9BaNAH-eE';
const double _startSecondsthree = 1186;
const String _videoIdfour = '8eq2vGEEbB4';
const double _startSecondsfour = 513;
const String _videoIdfive = 'Z5FoX3ju2J0';
const double _startSecondsfive = 411;

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