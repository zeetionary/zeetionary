import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfull extends StatefulWidget {
  const EnglishEntryfull({super.key});

  @override
  State<EnglishEntryfull> createState() => _EnglishEntryfullState();
}

class _EnglishEntryfullState extends State<EnglishEntryfull> {
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
- Adjective: full (derived forms: fuller, fullest)
1. Containing as much or as many as is possible or normal
"a full glass"; "a sky full of stars"; "a full life"; "the auditorium was full to overflowing"
 
2. Complete in extent or degree and in every particular (- total)
"a full game";
 
3. Constituting the full quantity or extent; complete (- entire, total)
"gave full attention";
 
4. Filled to satisfaction with food or drink (- replete)
"a full stomach";
 
5. Having the normally expected amount (- good)
"gives full measure";
 
6. Being at a peak or culminating point (- broad)
"full summer";
 
7. Having ample fabric (- wide, wide-cut)
"a full skirt";
 
8. (of sound) having marked deepness and body
"full tones"; "a full voice"

- Adverb: full
1. To the greatest degree or extent; completely or entirely (- fully, to the full)
"knew full well"; "full-grown"; "full-fledged";

Noun: full (derived forms: fullerfulls)
1. The time when the Moon is fully illuminated (- full moon, full-of-the-moon, full phase of the moon)
"the moon is at the full";

- Verb: full (derived forms: fulls, fulling, fulled)
1. Beat for the purpose of cleaning and thickening
"full the cloth"
 
2. Make (a garment) fuller by pleating or gathering
 
3. Increase in phase (- wax)
""",
  );

  final String keyword = "full";
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
    await flutterTts.speak("""full""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She could only nod, because her mouth was full.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My suitcase was full of books.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There were boxes stuffed full of clothes.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Sorry, the hotel is full up tonight.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her wine glass was still fairly full.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This cup is very full so be careful with it.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I tried to get in the cinema last night but it was full.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Don't talk with your mouth full!""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The shelves were full of books.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The sky was full of brightly coloured fireworks.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The gallery was full of people.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He's always full of energy.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Life is full of coincidences.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The garage has got full of junk again.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The kitchen was absolutely full of flies!""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""No more for me, thanks—I'm full up.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You can't run on a full stomach.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The kids still weren't full, so I gave them an ice cream each.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Full details are available on request.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I still don't think we've heard the full story.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Fill in your full name and address.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""It is too early to assess the full extent of the damage.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Frank is expected to make a full recovery.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Many people don't use their computers to their full potential.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She came round the corner at full speed.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He'd had a very full life.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Her life was too full to find time for hobbies.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""We went to bed exhausted after a very full day.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He was full of his new job and everything he'd been doing.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""She is a full four inches shorter than her sister.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The moon was full, the sky clear.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He kissed her full sensual lips.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They specialize in clothes for women with a fuller figure.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She looked him full in the face.""");
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
                      word: """full""",
                      // alsoEnglishWord: "also: full",
                      britshText: """IpaUK: /fʊl/""",
                      americanText: """IpaUS: /fʊl/""",
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
کوردی: پڕ، تژی، سەرڕێژ، لێوڕێژ، قەڵاپرچن، دارماڵ، کەلالە، زەبەند،	خڕیلانە، قەڵەو، گۆشتن، خروخۆڵ،	تەواو، ڕەبەق،	دوورودرێژ، تێروتەسەل، تێروپڕ، چڕوپڕ،	گیراو، سەرقاڵ، پڕکار، دەس‌گیراو، خەریک،	تێر، نەبرسی،	تۆخ، توند، پڕڕەنگ،	(جل‌وبەرگ) ھەراو، فش،	زرینگاوە، گڕ، پڕزرینگە،	(مانگ) پڕ، (مانگی) شەوی چاردە، ھەلاب
"""),
                    const DefinitionKurdish(text: """١. (ھاوەڵناو) پڕ"""),
                    SentencesRow(
                      englishText:
                          """She could only nod, because her mouth was full.""",
                      kurdishText:
                          """تەنھا دەیتوانی سەر بلەقێنێت، چونکە دەمی پڕ بوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText: """My suitcase was full of books.""",
                              kurdishText: """جانتای جلەکەم پڕ لە کتێب بوو.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """There were boxes stuffed full of clothes.""",
                              kurdishText:
                                  """ژمارەیەک سندووق ھەبوون پڕ لە جلوبەرگ.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Sorry, the hotel is full up tonight.""",
                              kurdishText: """ببوورە، ھوتێلەکە ئەمشەو پڕە.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Her wine glass was still fairly full.""",
                              kurdishText:
                                  """گڵاسە شەرابەکەی ھێشتا بە زۆری پڕ بوو.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """This cup is very full so be careful with it.""",
                              kurdishText:
                                  """پەرداخەکە زۆر پڕە بۆیە ئاگادار بە.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """I tried to get in the cinema last night but it was full.""",
                              kurdishText:
                                  """شەوی ڕابردوو ھەوڵم دا بچمە سینەما بەڵام پڕ بوو.""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Don't talk with your mouth full!""",
                              kurdishText: """قسە مەکە کە دەمت پڕە!""",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The shelves were full of books.""",
                              kurdishText: """ڕەفەکان پڕ لە کتێب بوون.""",
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
                            """٢. (ھاوەڵناو) ھەبوونی ژمارە یان ڕێژەیەکی زۆر لە کەسێک یان شتێک"""),
                    SentencesRow(
                      englishText:
                          """The sky was full of brightly coloured fireworks.""",
                      kurdishText:
                          """ئاسمان پڕ لە یاریی ئاگرینی ڕەنگینی درەوشاوە بوو.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """The gallery was full of people.""",
                              kurdishText: """پێشانگاکە پڕ لە خەڵکی بوو.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """He's always full of energy.""",
                              kurdishText: """ھەمیشە پڕ لە وزەیە.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """Life is full of coincidences.""",
                              kurdishText: """ژیان پڕە لە ڕێکەوت.""",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The garage has got full of junk again.""",
                              kurdishText:
                                  """گەراجەکە دووبارە پڕ لە زباڵە بووە.""",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The kitchen was absolutely full of flies!""",
                              kurdishText:
                                  """جێشتخانەکە تەواو پڕ لە مێش بوو.""",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) کە بەشی تەواو خواردنت خواردووە"""),
                    SentencesRow(
                      englishText: """No more for me, thanks—I'm full up.""",
                      kurdishText: """سوپاس، ھیچی ترم ناوێت ـ تێرم خواردووە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """You can't run on a full stomach.""",
                      kurdishText: """ناتوانیت بە گەدەی پڕەوە ڕابکەیت.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The kids still weren't full, so I gave them an ice cream each.""",
                      kurdishText:
                          """منداڵەکان ھێشتا تێریان نەخواردبوو، بۆیە یەکی ئایس کرێمێکم پێیان دا.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ھاوەڵناو) کە ھەموو شتێکی ھەیە"""),
                    SentencesRow(
                      englishText: """Full details are available on request.""",
                      kurdishText:
                          """وردەکاری تەواو بەردەستە لەگەڵ داواکردندا.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I still don't think we've heard the full story.""",
                      kurdishText:
                          """ھێشتا پێم وانییە چیرۆکەکەمان بە تەواوی بیستبێت.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Fill in your full name and address.""",
                      kurdishText: """ناو و ناونیشانی تەواوت بنووسە.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It is too early to assess the full extent of the damage.""",
                      kurdishText:
                          """زۆر زووە کە ئاستی تەواوی زیانەکە بخەمڵێنین.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Frank is expected to make a full recovery.""",
                      kurdishText:
                          """چاوەڕێ دەکرێت فرانک بە تەواوی چاک ببێتەوە.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ھاوەڵناو) تا بەرزترین ئاست"""),
                    SentencesRow(
                      englishText:
                          """Many people don't use their computers to their full potential.""",
                      kurdishText:
                          """زۆر کەس کۆمپیوتەرەکانیان تا ئەوپەڕی توانستی بەکارناھێنن.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She came round the corner at full speed.""",
                      kurdishText: """لە سەر سووچەکەوە بەوپەڕی خێرایی ھات.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (ھاوەڵناو) سەرقاڵ؛ پڕ لە چالاکی"""),
                    SentencesRow(
                      englishText: """He'd had a very full life.""",
                      kurdishText: """ژیانێکی زۆر سەرقاڵی ھەبووە.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Her life was too full to find time for hobbies.""",
                      kurdishText:
                          """ژیانی زۆر جەنجاڵ بوو کە کات بۆ حەزەکانی بدۆزێتەوە.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We went to bed exhausted after a very full day.""",
                      kurdishText:
                          """بە ماندووی چووینە جێخەو لە دوای ڕۆژێکی زۆر جەنجاڵ.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ھاوەڵناو) کە زۆر بیردەکاتەوە یان قسە دەکات لەسەر کاتێکی دیاریکراو"""),
                    SentencesRow(
                      englishText:
                          """He was full of his new job and everything he'd been doing.""",
                      kurdishText:
                          """تەواو باسی کارە تازەکەی ھەموو ئەوەی دەکرد کە دەیکرد.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ھاوەڵناو) بۆ جەختکردنەوە لە بڕ یان ڕێژەیەک"""),
                    SentencesRow(
                      englishText:
                          """She is a full four inches shorter than her sister.""",
                      kurdishText: """چوار ئینجی تەواو لە خوشکەکەی کورتترە.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ھاوەڵناو) کە مانگ وەک بازنەی تەواو دەردەکەوێت"""),
                    SentencesRow(
                      englishText: """The moon was full, the sky clear.""",
                      kurdishText: """مانگ پڕ بوو و ئاسمان ساماڵ بوو.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """١٠. (ھاوەڵناو) قەڵەو"""),
                    SentencesRow(
                      englishText: """He kissed her full sensual lips.""",
                      kurdishText: """لێوە قەڵەوەکانی ماچ کرد.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They specialize in clothes for women with a fuller figure.""",
                      kurdishText:
                          """شارەزاییان ھەیە لەو جلانەی کە بۆ ژنانی بەژن قەڵەوترن.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (ھاوەڵکار) ڕاستەوخۆ"""),
                    SentencesRow(
                      englishText: """She looked him full in the face.""",
                      kurdishText: """ڕاستەوخۆ سەیری ڕووخساریی دەکرد.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
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
const double _startSecondsend = 435;
const String _videoIdone = '_Z0ZQT0FttM';
const double _startSecondsone = 894;
const String _videoIdtwo = 'dfuPBC-v5NE';
const double _startSecondstwo = 953;
const String _videoIdthree = 'hS2x1zl4rn0';
const double _startSecondsthree = 1418;
const String _videoIdfour = 'j_OyHUqIIOU';
const double _startSecondsfour = 11;
const String _videoIdfive = 'tXjHb5QmDV0';
const double _startSecondsfive = 976;

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