import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrykey extends StatefulWidget {
  const EnglishEntrykey({super.key});

  @override
  State<EnglishEntrykey> createState() => _EnglishEntrykeyState();
}

class _EnglishEntrykeyState extends State<EnglishEntrykey> {
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
- Noun: key (Derived forms: keys)
1. Metal device shaped in such a way that when it is inserted into the appropriate lock the lock's mechanism can be rotated
 
2. One of several labelled buttons on a typewriter, computer keyboard, or keypad, used to enter a particular character or invoke a particular function
 
3. Something crucial for explaining
"the key to development is economic integration"
 
4. Pitch of the voice
"he spoke in a low key"
 
5. Any of 24 major or minor diatonic scales that provide the tonal framework for a piece of music (- tonality)
 
6. A kilogram of a narcotic drug
"they were carrying two keys of heroin"
 
7. A winged often one-seed indehiscent fruit as of the ash, elm or maple (- samara, key fruit)
 
8. A coral reef off the southern coast of Florida (- cay, Florida key)
 
9. (basketball) a space (including the foul line) in front of the basket at each end of a basketball court; usually painted a different colour from the rest of the court (- paint)
"he hit a jump shot from the top of the key";
 
10. A list of answers to a test
"some students had stolen the key to the final exam"
 
11. A list of words or phrases that explain symbols or abbreviations
 
12. A generic term for any device whose possession entitles the holder to a means of access
"a safe-deposit box usually requires two keys to open it"
 
13. Mechanical device used to wind another device that is driven by a spring (as a clock) (- winder)
 
14. The central building block at the top of an arch or vault (- keystone, headstone)

- Adjective: key
1. Serving as an essential component (- cardinal, central, fundamental, primal)
"a key rule";

- Verb: key (Derived forms: keying, keys, keyed)
1. Classify or apply the appropriate name to, e.g. in botany or biology (- identify, discover, key out, distinguish, describe, name)
 
2. Provide with a key
"We were keyed after the locks were changed in the building"
 
3. Vandalize a car by scratching the sides with a key
"His new Mercedes was keyed last night in the parking lot"
 
4. (music) regulate the musical pitch of
 
5. Harmonize with or adjust to
"key one's actions to the voters' prevailing attitude"

- Noun: Key
1. United States lawyer and poet who wrote a poem after witnessing the British attack on Baltimore during the War of 1812; the poem was later set to music and entitled 'The Star-Spangled Banner' (1779-1843) (- Francis Scott Key)
""",
  );

  final String keyword = "key";
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
    await flutterTts.speak("""key""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He inserted the key in the lock and let himself into the house.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We'll have a duplicate key cut.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Luckily Dad has keys for my house.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You need a key to open the garage.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Persistence is the key if you want to get a job.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The key to success is preparation.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The driver of the car probably holds the key to solving the crime.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Language is the key to understanding those around you.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Press the return key to enter the information.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""You can use the arrow keys on the keyboard instead.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His hands flew over the piano keys.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Can we try it in a lower key?""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Check your answers in the key at the back of the book.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was a key figure in the campaign.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Both are key players in the peace process.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She played a key role in the dispute.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His contribution could be key.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Good communication is key to our success.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Better training for our staff has been key to improving the service.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I was busy keying data.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Key in your password.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/lYu1ysDULwA?t=90';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/VrKW58MS12g?t=644';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/khOUvmOQExc?t=225';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/oFKbvpXJ83w?t=13';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/s1IPhnjHpSk?t=266';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/q8jLyotMMVE?t=343';
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
                      word: """key""",
                      // alsoEnglishWord: "also: key",
                      britshText: """IpaUK: /kiː/""",
                      americanText: """IpaUS: /kiː/""",
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
کوردی: کلیل، کلیت،	(سەعات) قورمیش،	(کامپیوتێر) کلیل،	(ماشێن) سویچ، دەستەکلیل، کلیل، دوگمە،	(موسیقا) پەیژە، پەردە،	ڕاوێژ، ئاواز، شێواز،	پواز، هۆرە،	ڕێگاچارە، ڕێ‌چارە، چارە، کارساز،	بەردی سەرتاق، بەردی نێوەڕاست تاق، بەردی ناوتاق، بەردی سەرکەوانە adjective کلیلی، گرنگ، سەرەکی، بنەڕەتی، بنگەهی، پێویست
"""),
// With short examples define "key", please follow LX instructions
                    const DefinitionKurdish(text: """١. (ناو) کلیل"""),
                    SentencesRow(
                      englishText:
                          """He inserted the key in the lock and let himself into the house.""",
                      kurdishText:
                          """کلیلەکەی کرد بە قفڵەکەدا و چووە خانووەکەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We'll have a duplicate key cut.""",
                      kurdishText: """کلیلێکی لێکچوومان درووستکرد.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Luckily Dad has keys for my house.""",
                      kurdishText: """خۆشبەختانە بابم کیلی خانووەکەمی پێبوو.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """You need a key to open the garage.""",
                      kurdishText:
                          """پێویستیت بە کلیلێکە بۆ کردنەوەی گەراجەکە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) شتێک کە وەهات لێدەکات لە شتێک تێبگەیت یان بەدەستی بهێنیت"""),
                    const AlsoEnglishckb(word: "ھەروەھا: secret"),
                    SentencesRow(
                      englishText:
                          """Persistence is the key if you want to get a job.""",
                      kurdishText:
                          """پشوودرێژی نهێنیی بەدەستهێنانی کارەکەیە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The key to success is preparation.""",
                      kurdishText: """کلیلی سەرکەوتن ئامادەکارییە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The driver of the car probably holds the key to solving the crime.""",
                      kurdishText:
                          """شۆفێری ئۆتۆمبێلەکە بە ئەگەرێکەوە هەڵگری نهێنی تێگەشتن لە تاوانەکەیە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Language is the key to understanding those around you.""",
                      kurdishText:
                          """زمان کلیلی تێگەشتنە لە کەسانی دەورووبەرت.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) هەر یەک لەو دووگمانەی کە لەسەر کۆمپیوتەرێک، موبایلێک، هتد پەنجەی پێدا دەنێیت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Press the return key to enter the information.""",
                      kurdishText:
                          """پەنجە بنێ بە دووگمەی گەڕانەوە بۆ ناردنی زانیارییەکان.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You can use the arrow keys on the keyboard instead.""",
                      kurdishText:
                          """دەتوانیت دووگمەی تیرەکان بەکاربێنیت لە جیاتیدا.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) ئەو بەشانەی سەر پیانۆ و هەندێک ئامێری میوزیکیی دیکە کە پەنجەیان پێدا دەنێیت بۆ ژەنین"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """His hands flew over the piano keys.""",
                      kurdishText:
                          """دەستەکانی بەسەر کلیلەکانی پیانۆکەدا دەچوون.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) ژمارەیەک نۆتەی میوزیکی جیاواز کە پەیوەندیدارن بە یەکێکی دیاریکراوەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Can we try it in a lower key?""",
                      kurdishText:
                          """دەتوانین بە کلیلێکی نزمتر تاقی بکەینەوە؟""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) ژمارەیەک وەڵام بۆ ڕاهێنان و کێشە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Check your answers in the key at the back of the book.""",
                      kurdishText:
                          """سەیری وەڵامەکان لە لیستی وەڵامەکان لە کۆتایی کتێبەکە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٦. (هاوەڵناو) زۆر گرنگ"""),
                    const AlsoEnglishckb(word: "ھەروەھا: critical، vital"),
                    SentencesRow(
                      englishText: """He was a key figure in the campaign.""",
                      kurdishText: """کەسایەتییەکی سەرەکی کەمپینەکە بوو.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Both are key players in the peace process.""",
                      kurdishText:
                          """هەردووکیان ڕۆڵگێڕی سەرەکی پڕۆسەی ئاشتین.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She played a key role in the dispute.""",
                      kurdishText: """ڕۆڵێکی سەرەکی بینی لە ناکۆکییەکە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """His contribution could be key.""",
                      kurdishText: """بەژداربوونی دەکرێت زۆر گرنگ بێت.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Good communication is key to our success.""",
                      kurdishText:
                          """پەیوەندیی باش خاڵی سەرەکی سەرکەوتنمانە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Better training for our staff has been key to improving the service.""",
                      kurdishText:
                          """ڕاهێنانی باشتری ستافەکەمان زۆر گرنگ بووە بۆ باشتربوونی خزمەتگوزارییەکە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) نووسینی زانیاری لەسەر کۆمپیوتەر بە بەکارهێنانی کیبۆرد"""),
                    const AlsoEnglishckb(word: "ھەروەھا: enter"),
                    SentencesRow(
                      englishText: """I was busy keying data.""",
                      kurdishText: """سەرقاڵ بووم بە نووسینی زانیاری.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Key in your password.""",
                      kurdishText: """تێپەڕەوشەت بنووسە.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
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
// end key