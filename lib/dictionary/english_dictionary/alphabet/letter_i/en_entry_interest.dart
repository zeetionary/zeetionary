import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryinterest extends StatefulWidget {
  const EnglishEntryinterest({super.key});

  @override
  State<EnglishEntryinterest> createState() => _EnglishEntryinterestState();
}

class _EnglishEntryinterestState extends State<EnglishEntryinterest> {
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
- Noun: interest (Derived forms: interests)
1. A sense of concern with and curiosity about someone or something (- involvement)
"an interest in music";
 
2. A reason for wanting something done (- sake)
"in the interest of safety"; "in the common interest";
 
3. The power of attracting or holding one's attention (because it is unusual or exciting etc.) (- interestingness)
"they said nothing of great interest"; "primary colours can add interest to a room";
 
4. A price paid for borrowing money, or payment received for lending money; usually a percentage of the amount borrowed
"how much interest do you pay on your mortgage?"
 
5. (law) a right or legal share of something; a financial involvement with something (- stake)
"they have interests all over the world";
 
6. (usually plural) a social group whose members control some field of activity and who have common aims (- interest group)
"the iron interests stepped up production";
 
7. A diversion that occupies one's time and thoughts (usually pleasantly) (- pastime, pursuit)
"he counts reading among his interests";

- Verb: interest (Derived forms: interested, interests, interesting)
1. Excite the curiosity of; engage the interest of
 
2. Be on the mind of (- concern, occupy, worry)
 
3. Be of importance or consequence (- matter to)
"This interests me!";
""",
  );

  final String keyword = "interest";
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
    await flutterTts.speak("""interest""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Her research has generated interest around the world.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The case has attracted the interest of the public and media.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Do your parents take an interest in your friends?""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""By that time I had lost (all) interest in the idea.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""A small number of investors have shown an interest.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He showed a keen interest in music from his childhood.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They shared a common interest in horses.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""There are many places of interest near the city.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""These plants will add interest to your garden in winter.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""These documents are of great historical interest.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The area is a site of special scientific interest.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her main interests are music and tennis.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He was a man of wide interests outside his work.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My main research interest is herbal medicine.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In the end, she left the company to pursue other interests.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The money was repaid with interest.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They're paying 16% interest on the loan.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Find a bank that has very low interest charges.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The union is working to protect the interests of its members.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Tough talk doesn't always serve your interests.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I was voted in to represent the interests of my constituents.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was acting entirely in her own interests.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """These reforms were in the best interests of local government.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It is in the public interest that these facts are made known.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She has business interests in France.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Lawyers have a direct financial interest in the outcome of the debate.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I should, at this point, declare my interest.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Politics doesn't interest me.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The museum has something to interest everyone, young and old.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She has always interested herself in charity work.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""It is this aspect of the work that really interests me.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'wgM5V44eQHU';
    const double startSecondsend = 109;
    const String videoIdone = 'UzmtxCml_JQ';
    const double startSecondsone = 114;
    const String videoIdtwo = 'dhgEpr87Yac';
    const double startSecondstwo = 278;
    const String videoIdthree = 'b6zf5VkuiEQ';
    const double startSecondsthree = 271;
    const String videoIdfour = 'FgT3GCsJteA';
    const double startSecondsfour = 1140;
    const String videoIdfive = '4zAkoXyhrdI';
    const double startSecondsfive = 600;

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
                      word: """interest""",
                      // alsoEnglishWord: "also: interest",
                      britshText: """IpaUK: /ˈɪntrəst/, /ˈɪntrest/""",
                      americanText: """IpaUS: /ˈɪntrəst/, /ˈɪntrest/""",
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
کوردی: هۆگری، تامەزرۆیی، دڵ‌پێوەبوون، دڵ‌تێچوون، تاسە، دڵبەستەیی، مەیل، ویست، حەز،	ڕاکێشان، خۆشی، سەرنج‌ڕاکێشان،	بەرژەوەندی، قازانج، بەهرە، هاوە، بارەچە، مەفا، کەڵک،	بەش، پشک،	سوود، بەهرە،	گرنگایەتی، دەس‌ڕۆیشتوویی، بایەخ‌پێدان، بەهێندگرتن، بەتەنگەوەبوون
"""),
// With short examples define "interest", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئەو هەستەی کە هەتە کاتێک دەتەوێت بزانیت یان فێر ببیت لەسەر کەسێک/شتێک"""),
                    SentencesRow(
                      englishText:
                          """Her research has generated interest around the world.""",
                      kurdishText:
                          """توێژینەوەکە حەزی لە هەموو جیهاندا درووستکردووە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The case has attracted the interest of the public and media.""",
                      kurdishText:
                          """کەیسەکە سەرنجی خەڵکی و میدیای ڕاکێشاوە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Do your parents take an interest in your friends?""",
                      kurdishText: """دایبابت حەزیان لە هاوڕێکانت هەیە؟""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """By that time I had lost (all) interest in the idea.""",
                      kurdishText:
                          """تا ئەو کاتە هەموو حەزێکم بۆ بیرۆکەکە نەمابوو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A small number of investors have shown an interest.""",
                      kurdishText:
                          """ژمارەیەکی کەم لە وەبەرهێنەران خولیایان پیشان داوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He showed a keen interest in music from his childhood.""",
                      kurdishText:
                          """لە منداڵییەوە حەزێکی زۆری بۆ میوزیک پیشان دابوو.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They shared a common interest in horses.""",
                      kurdishText: """حەزێکی هاوبەشیان بۆ ئەسپ هەبوو.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) خاسیەتێک کە شتێک هەیەتی و سەرنج ڕادەکێشێت یان وەها دەکای کەسێک حەز بکات زیاتر بزانێت لەسەری"""),
                    SentencesRow(
                      englishText:
                          """There are many places of interest near the city.""",
                      kurdishText:
                          """زۆر شوێنی جێگای سەرسامی لە نزیک شارەکە هەیە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """These plants will add interest to your garden in winter.""",
                      kurdishText:
                          """ڕووەکەکان جوانی بۆ باخچەکەت زیاد دەکەن لە زستاندا.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """These documents are of great historical interest.""",
                      kurdishText:
                          """ئەم بەڵگەنامانە بە جێگای گرنگی زۆری مێژوویین.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The area is a site of special scientific interest.""",
                      kurdishText:
                          """ناوچەکە ناوچەیەکی تایبەتیی خولیای زانستییە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) کارێک یان چالاکییەک کە حەزت بە کردن یان خوێندەوەیە لەسەری"""),
                    SentencesRow(
                      englishText:
                          """Her main interests are music and tennis.""",
                      kurdishText: """خولیا سەرەکییەکانی میوزیک و تێنسن.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was a man of wide interests outside his work.""",
                      kurdishText:
                          """بەدەر لە کارەکەی پیاوێکی خاوەن خولیای زۆر بوو.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """My main research interest is herbal medicine.""",
                      kurdishText:
                          """حەزی سەرەکیی توێژینەوەم گژووگیای دەمانییە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """In the end, she left the company to pursue other interests.""",
                      kurdishText:
                          """لە کۆتاییدا، کۆمپانیاکەی جێهێشت بۆ بەژداری لە حەزی دیکە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) ئەو پارە زیادەیەی کە لەگەڵ قەرز دەیدەیت یان کە وەبەرهێنان دەکەیت"""),
                    SentencesRow(
                      englishText: """The money was repaid with interest.""",
                      kurdishText: """پارەکە لەگەڵ سوودا درایەوە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They're paying 16% interest on the loan.""",
                      kurdishText: """سووی ١٦٪ دەدەن لەگەڵ قەرزەکە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Find a bank that has very low interest charges.""",
                      kurdishText:
                          """بانکێک بدۆزەرەوە کە وەرگرتنی زۆر کەمی سووی هەیە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) ئەنجامی باش یان سوودێک بۆ کەسێک/شتێک"""),
                    SentencesRow(
                      englishText:
                          """The union is working to protect the interests of its members.""",
                      kurdishText:
                          """یەکێتییەکە هەوڵ دەدات بەرژەوەندییەکانی ئەندامەکانی بپارێزێت.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Tough talk doesn't always serve your interests.""",
                      kurdishText:
                          """قسەی توند ئەوە نییە هەمیشە سوودی بۆ بەرژەوەندییەکانت هەبێت.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I was voted in to represent the interests of my constituents.""",
                      kurdishText:
                          """هەڵبژێردرام بۆ نوێنەرایەتی بەرژەوەندیی دەنگدەرانم.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She was acting entirely in her own interests.""",
                      kurdishText:
                          """بە تەواوی لە بەرژەوەندیی خۆی کاری دەکرد.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """These reforms were in the best interests of local government.""",
                      kurdishText:
                          """ئەم چاکسازییانە تەواو لە بەرژەوەندیی حکومەتە خۆجێییەکە بوو.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It is in the public interest that these facts are made known.""",
                      kurdishText:
                          """لە بەرژەوەندیی خەڵکە کە ئەم ڕاستییانە ئاشکرا بکرێن.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) پشکێک لە بازرگانییەک یان کۆمپانیایەک"""),
                    SentencesRow(
                      englishText: """She has business interests in France.""",
                      kurdishText: """پشکی بازرگانیی هەیە لە فەرەنسا.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) پەیوەندییەک لەگەڵ شتێک کە کاریگەریی دەبێت لەسەر هەڵوێستت بۆی، بەتایبەی بەهۆی ئەوەی کە بە جۆرێک سوودی لێ ببینیت"""),
                    SentencesRow(
                      englishText:
                          """Lawyers have a direct financial interest in the outcome of the debate.""",
                      kurdishText:
                          """پارێزەران بەرژەوەندییەکی دارایی ڕاستەوخۆیان هەیە لە دەرەنجامی دیبەیتەکەدا.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I should, at this point, declare my interest.""",
                      kurdishText:
                          """لەم خاڵەدا دەبێت بەژداریی خۆم ڕابگەیەنم.""",
                      englishNote:
                          """This means that you are expressing your intention to openly share your personal stake or involvement in a particular matter. It suggests you're ready to be transparent about your connection to the topic at hand.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) ئەوەی کە حەزت ڕابکێشێت و وەهات لێ بکات کە حەزت هەبێت بۆ شتێک؛ پێدانی سەرنجی خۆت بە کارێک"""),
                    SentencesRow(
                      englishText: """Politics doesn't interest me.""",
                      kurdishText: """سیاسەت سەرنجم ڕاناکێشێت.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The museum has something to interest everyone, young and old.""",
                      kurdishText:
                          """مۆزەخانەکە شتێکی هەیە سەرنجی هەموو کەسێک ڕابکێشێت، گەورە و بچووک.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She has always interested herself in charity work.""",
                      kurdishText:
                          """هەمیشە خۆی بە کاری خێرخوازی سەرقاڵ دەکات.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It is this aspect of the work that really interests me.""",
                      kurdishText:
                          """ئەوە ئەم لایەنەی کارەکەیە کە سەرنجی ڕادەکێشێت.""",
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
// end interest