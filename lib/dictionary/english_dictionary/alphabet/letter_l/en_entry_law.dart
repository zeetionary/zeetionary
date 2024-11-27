import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrylaw extends StatefulWidget {
  const EnglishEntrylaw({super.key});

  @override
  State<EnglishEntrylaw> createState() => _EnglishEntrylawState();
}

class _EnglishEntrylawState extends State<EnglishEntrylaw> {
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
- Noun: law (Derived forms: laws)
1. The collection of rules imposed by authority (- jurisprudence)
"civilization presupposes respect for the law";
 
2. Legal document setting forth rules governing a particular kind of activity
"there is a law against kidnapping"
 
3. A rule or body of rules of conduct inherent in human nature and essential to or binding upon human society (- natural law)
 
4. A generalization that describes recurring facts or events in nature (- law of nature)
"the laws of thermodynamics";
 
5. The branch of philosophy concerned with the law and the principles that lead courts to make the decisions they do (- jurisprudence, legal philosophy)
 
6. The learned profession that is mastered by graduate study in a law school and that is responsible for the judicial system (- practice of law)
"he studied law at Yale";
 
7. The force of policemen and officers (- police, police force, constabulary, polis [UK, dialect, informal], fuzz [informal], the fuzz [informal], boys in blue [informal], Bill [Brit, informal], Old Bill [Brit, informal])
"the law came looking for him";
""",
  );

  final String keyword = "law";
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
    await flutterTts.speak("""law""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Police don't have the resources to enforce the law against dumping waste.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There ought to be a law against it!""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The suspects were in clear violation of immigration laws.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The government has introduced some tough new laws on food hygiene.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The country has very strict gun laws.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He campaigned for laws against child labour.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Judges interpret this law in different ways.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Congress amended the law in 1998.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """If they entered the building they would be breaking the law.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The reforms have recently become law.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""State law prohibits gambling in public places.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""In Sweden it is against the law to hit a child.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """British schools are required by law to publish their exam results.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Do not think you are above the law.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They acted in accordance with the law of the country.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The constitution guarantees equality before the law for all.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""A presidential veto prevented the bill from becoming law.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""As the law stands, you can get married at sixteen.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""It's the job of the police to enforce the law.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """According to copyright law, the author is the owner of the material.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Jane is studying law.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""What made you go into law?""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Jim is always getting into trouble with the law.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She was well known for her brushes with the law.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The usual laws of supply and demand do not seem to apply in this case.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Do you remember anything about Ohm's Law?""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The first law of kung fu is to defend yourself.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He frequently behaved as though moral laws did not exist.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/AtiMqeDmo1M';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/EVmLV7swH2k?t=86';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/5ttoICpH0Vc?t=96';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/chy8n7aqE_U?t=8';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/kh62SjGdI0s?t=72';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/zdb-WyRwaGU?t=115';
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
                      word: """law""",
                      // alsoEnglishWord: "also: law",
                      britshText: """IpaUK: /lɔː/""",
                      americanText: """IpaUS: /lɔː/""",
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
کوردی: 
"""),
// With short examples define "law", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) یاسایەک کە تاوان، ڕێکەوتن، هتد ــی دیاریکراوە"""),
                    SentencesRow(
                      englishText:
                          """Police don't have the resources to enforce the law against dumping waste.""",
                      kurdishText:
                          """پۆلیس توانایان نییە یاسا دژ بە فڕێدانی پاشەڕۆ جێبەجێ بکەن.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """There ought to be a law against it!""",
                              kurdishText: """دەبێت یاسایەک هەبێت لە دژی!""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The suspects were in clear violation of immigration laws.""",
                              kurdishText:
                                  """گومانلێکراوەکان تەواو پێشێلکاری یاساکانی پەنابەری بوون.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The government has introduced some tough new laws on food hygiene.""",
                              kurdishText:
                                  """حکومەت ژمارەیەک یاسای توندی تازەی دژ بە پاکوخاوێنی خۆراک ڕاگەیاندووە.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The country has very strict gun laws.""",
                              kurdishText:
                                  """وڵاتەکە یاسای زۆر توندی چەکی هەیە.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """He campaigned for laws against child labour.""",
                              kurdishText:
                                  """تێکۆشا بۆ یاسا دژ بە کاری منداڵان.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Judges interpret this law in different ways.""",
                              kurdishText:
                                  """دادوەران بە شێوەی جیاواز لەم یاسایە تێدەگەن.""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Congress amended the law in 1998.""",
                              kurdishText:
                                  """کۆنگرێس ساڵی ١٩٩٨ گۆڕانکاریی لە یاساکە کرد.""",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) سیستەمی یاسایی وڵاتێک کە هەموان دەبێت پابەندی بن"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """If they entered the building they would be breaking the law.""",
                      kurdishText:
                          """ئەگەر بچووبانە ژوورەوە یاسایان دەشکاند.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """The reforms have recently become law.""",
                              kurdishText:
                                  """چاکسازییەکان تازەگی بوونە بە یاسا.""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """State law prohibits gambling in public places.""",
                              kurdishText:
                                  """یاسای وڵات قومار لە شوێنە گشتییەکان قەدەغە دەکات.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """In Sweden it is against the law to hit a child.""",
                              kurdishText:
                                  """لە سوید دژ بە یاسایە لە منداڵ بدەیت.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """British schools are required by law to publish their exam results.""",
                              kurdishText:
                                  """قوتابخانەکانی بەریتانیا بەپێی یاسا ناچارن ئەنجامی تاقیکردنەوەکانیان بڵاوبکەنەوە.""",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Do not think you are above the law (= that you cannot be punished by the law).""",
                              kurdishText:
                                  """وەها مەفکرە کە لە سەروو یاساوەیت.""",
                              onPressedBritish: () => speaksentence14("en-GB"),
                              onPressedAmerican: () => speaksentence14("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They acted in accordance with the law of the country.""",
                              kurdishText:
                                  """بەپێی یاسای وڵاتەکە هەنگاویان نا.""",
                              onPressedBritish: () => speaksentence15("en-GB"),
                              onPressedAmerican: () => speaksentence15("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The constitution guarantees equality before the law for all.""",
                              kurdishText:
                                  """دەستوور گەرەنتی یەکسانی لە پێش یاسا بۆ هەموان دەکات.""",
                              onPressedBritish: () => speaksentence16("en-GB"),
                              onPressedAmerican: () => speaksentence16("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """A presidential veto prevented the bill from becoming law.""",
                              kurdishText:
                                  """ڤیتۆیەکی سەرۆکایەتی ڕێگری کرد پڕۆژەکە ببێت بە یاسا.""",
                              onPressedBritish: () => speaksentence17("en-GB"),
                              onPressedAmerican: () => speaksentence17("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """As the law stands, you can get married at sixteen.""",
                              kurdishText:
                                  """بەپێی یاسای ئێستا، دەکرێت لە شازدە ساڵی هاوسەرگیری بکەیت.""",
                              onPressedBritish: () => speaksentence18("en-GB"),
                              onPressedAmerican: () => speaksentence18("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text: """ژممر. (ناو) پننسە"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """It's the job of the police to enforce the law.""",
                              kurdishText:
                                  """ئەوە کاری پۆلیسە یاسا بچەسپێنن.""",
                              onPressedBritish: () => speaksentence19("en-GB"),
                              onPressedAmerican: () => speaksentence19("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) لقێکی دیاریکراوی یاسا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """According to copyright law, the author is the owner of the material.""",
                      kurdishText:
                          """بەپێی یاسای مافی لەبەرگرتنەوە، نووسەرەکە خاوەنی بەرهەمەکەیە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) خوێندنی یاسا وەک بابەتێک لە زانکۆ؛ کاری پارێزەری"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Jane is studying law.""",
                      kurdishText: """جەین یاسا دەخوێنێت.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """What made you go into law?""",
                      kurdishText: """چی وای لێکردیت ببیت بە پارێزەر؟""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) پۆلیس و سیستەمی دادوەری"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Jim is always getting into trouble with the law.""",
                      kurdishText: """جیم هەمیشە دەکەوێتە کێشەوە لەگەڵ یاسا.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She was well known for her brushes with the law.""",
                      kurdishText: """باش ناسرابوو بۆ شکاندنی یاسا.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) ئەوەی کە شتێک هەمیشە بە هەمان شێوە ڕوودەدات لە چالاکییەک یان سرووشتدا"""),
                    const AlsoEnglishckb(word: "ھەروەھا: principle"),
                    SentencesRow(
                      englishText:
                          """The usual laws of supply and demand do not seem to apply in this case.""",
                      kurdishText:
                          """بنچینە هەمیشەییەکانی دابینکردن و خواست وەها دەرناکەوێت لەم کەیسەدا بگونجێت.""",
                      englishNote:
                          """This means the typical economic principle, where prices change based on availability and desire for goods, does not work as expected in this situation.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ناو) یاسایەکی زانستی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Do you remember anything about Ohm's Law?""",
                      kurdishText: """هیچت لەبیرە لەسەر یاسای ئۆم؟""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ناو) یەکێک لەو یاسایانەی کە دامەزراوەیەک یان چالاکییەک کۆنترۆڵ دەکات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The first law of kung fu is to defend yourself.""",
                      kurdishText:
                          """یەکەم یاسای کۆنفۆ ئەوەیە کە بەرگری لە خۆت بکەیت.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ناو) یاسایەک بۆ ڕەفتاری باش یان ئەوەی چۆن ڕەفتار بکەیت لە شوێن یا دۆخێکی دیاریکراودا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He frequently behaved as though moral laws did not exist.""",
                      kurdishText:
                          """زووزوو بە شێوەیەک ڕەفتاری دەکرد وەک ئەوەی ڕێسای ئەخلاقی بوونی نەبێت.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
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
// end law