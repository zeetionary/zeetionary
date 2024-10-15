import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryissue extends StatefulWidget {
  const EnglishEntryissue({super.key});

  @override
  State<EnglishEntryissue> createState() => _EnglishEntryissueState();
}

class _EnglishEntryissueState extends State<EnglishEntryissue> {
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
- Verb: issue (Derived forms: issuing, issues, issued)
1. Prepare and issue for public distribution or sale (- publish, bring out, put out, release)
"issue a magazine or newspaper";
 
2. Circulate, distribute or equip with (- supply)
"issue a new uniform to the children";
 
3. Bring out an official document (such as a warrant)
 
4. Come out of (- emerge, come out, come forth, go forth, egress)
"Water issued from the hole in the wall";
 
5. Fill in and give as payment (- write out, make out, cut)
"issue a check";

- Noun: issue (Derived forms: issues)
1. An important question that is in dispute and must be settled
"the issue could be settled by requiring public education for everyone"; "politicians never discuss the real issues"
 
2. One of a series published periodically (- number)
"she found an old issue of the magazine in her dentist's waiting room";
 
3. Some situation or event that is thought about (- topic, subject, matter)
"he kept drifting off the issue";
 
4. The act of providing an item for general use or for official purposes (usually in quantity) (- issuing, issuance)
"a new issue of stamps"; "the last issue of penicillin was over a month ago";
 
5. (military) supplies (as food, clothing or ammunition) issued by the government (- military issue, government issue)
 
6. The income or profit arising from such transactions as the sale of land or other property (- return, take, takings, proceeds, yield, payoff)
"the average issue was about 5%";
 
7. A phenomenon that follows and is caused by some previous phenomenon (- consequence, effect, outcome, result, event, upshot)
"his decision had depressing issues for business";
 
8. The immediate descendants of a person (- offspring, progeny)
"he died without issue";
 
9. The becoming visible (- emergence, egress)
"not a day's difference between the issue of the andrenas and the opening of the willow catkins";
 
10. An opening that permits escape or release (- exit, outlet, way out)
"the canyon had only one issue";
 
11. The act of issuing printed materials (- publication)
""",
  );

  final String keyword = "issue";
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
    await flutterTts.speak("""issue""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""This is a big issue; we need more time to think about it.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They discussed a number of important environmental issues.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They are talking about issues relating to the safety of children online.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The union plans to raise the issue of overtime.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You're just avoiding the issue.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Don't confuse the issue.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""If you have any issues, please call this number.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The community is working together to address social issues.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""All technical issues have now been resolved.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Miller decided to tackle the issue head on.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Money is not an issue.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I'm not bothered about the cost—you're the one who's making it an issue.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The article appeared in issue 25.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The company is planning a new share issue.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I bought a set of the tickets on the date of issue.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The issue of a joint statement addressed global concerns.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They issued a joint statement denying the charges.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """A warning was issued yesterday by the government, asking people to stay in their homes.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The president has the authority to issue orders to the military.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The new guidelines have been issued to all doctors.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The authorities refused to issue him a visa.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Work permits were issued to only 5% of those who applied for them.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Some of the police were issued with rifles.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A warrant has been issued for his arrest.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Arrest warrants were issued against 16 of the protesters.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We issue a monthly newsletter.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = '3cxHwQl9pNM';
    const double startSecondsend = 518;
    const String videoIdone = 'j1BfO7VlIw4';
    const double startSecondsone = 1414;
    const String videoIdtwo = 'DPZzrlFCD_I';
    const double startSecondstwo = 196;
    const String videoIdthree = 'eyMKA4d35dg';
    const double startSecondsthree = 16;
    const String videoIdfour = 'nITZooG6ij8';
    const double startSecondsfour = 33;
    const String videoIdfive = 'MPS2fwRMFgM';
    const double startSecondsfive = 103;

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
                      word: """issue""",
                      // alsoEnglishWord: "also: issue",
                      britshText: """IpaUK: /ˈɪʃuː/""",
                      americanText: """IpaUS: /ˈɪʃuː/""",
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
کوردی: 	دەرکردن، دانەدەرێ، دەرچواندن، دەرچوون، پەژراندن، دەرخستن، هاتنەدەر، هەڵقوڵین،	بڵاوکردنەوە، پەخش، چاپ، وەشان،	(کۆین) لێدان،	(ڕۆژنامە) ژمارە، دانە،	پرس، مژار، دۆز، پرسگرێک،	داهات،	بەرهەم، ئەنجام، پێئاژۆ، ئاکام،	دوواوان، ڕێژگە، دەم،	دەروو، دەرەتان، ڕێگا،	مناڵ، بەرە، فرزەند،	ڕەگەز، نژاد
"""),
// With short examples define "issue", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) بابەتێکی گرنگ کە خەڵکی باسی دەکەن یان مشتومڕی لەسەر دەکەن"""),
                    SentencesRow(
                      englishText:
                          """This is a big issue; we need more time to think about it.""",
                      kurdishText:
                          """ئەمە بابەتێکی گەورەیە؛ پێویستیمان بە کاتی زیاتر بیری لێ بکەینەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They discussed a number of important environmental issues.""",
                      kurdishText:
                          """باسیان لە ژمارەیەک لە بابەتی ژینگەیی گرنگ کرد.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They are talking about issues relating to the safety of children online.""",
                      kurdishText:
                          """باس لەو بابەتانە دەکەن کە پەیوەندیدارن بە سەلامەتی منداڵان لەسەر ئینتەرنێت.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The union plans to raise the issue of overtime.""",
                      kurdishText:
                          """سەندیکاکە پلانی هەیە بابەتی کاری زیادە بورووژێنێت.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """You're just avoiding the issue.""",
                      kurdishText:
                          """تەنها ئەوەیە خۆت لە بابەتەکە دەدزیتەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Don't confuse the issue.""",
                      kurdishText: """بابەتەکە تێکەڵ مەکە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) کێشەیەک یان نیگەرانییەک کە کەسێک لەگەڵ شتێک هەیەتی"""),
                    SentencesRow(
                      englishText:
                          """If you have any issues, please call this number.""",
                      kurdishText:
                          """ئەگەر هەر کێشەیەکت هەیە تکایە پەیوەندی بەم ژمارەیەوە بکە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The community is working together to address social issues.""",
                      kurdishText:
                          """کۆمەڵگەکە پێکەوە کار دەکەن بۆ چارەسەر کردنی کێشە کۆمەڵایەتییەکان.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """All technical issues have now been resolved.""",
                      kurdishText:
                          """هەموو کێشە تەکنیکییەکان ئێستا چارەسەر کراون.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Miller decided to tackle the issue head on.""",
                      kurdishText:
                          """میڵەر بڕیاری دا کێشەکە ڕاستەوخۆ چارەسەر بکات.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Money is not an issue.""",
                      kurdishText: """پارە کێشە نییە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I'm not bothered about the cost—you're the one who's making it an issue.""",
                      kurdishText:
                          """کێشەم لەسەر نرخەکە نییە ـ ئەوە تۆیت دەیکەیت بە کێشە.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) یەکێک لەو چاپانەی گۆڤارێک یان ڕۆژنامەیەک کە بڵاودەبێتەوە"""),
                    SentencesRow(
                      englishText: """The article appeared in issue 25.""",
                      kurdishText: """وتارەکە لە وەشانی ٢٥ ـدا بڵاوکرایەوە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) ژمارە یان کۆمەڵە شتێک کە پێکەوە بەردەست دەبن"""),
                    SentencesRow(
                      englishText:
                          """The company is planning a new share issue.""",
                      kurdishText:
                          """کۆمپانیاکە پلانی هەیە کۆمەڵێکی تازە لە پشک بڵاوبکاتەوە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) ئەوەی شتێک بڵاوبکەیتەوە یان بەردەستی بخەیت بۆ خەڵکی بۆ ئەوەی بیکڕن یان بەکاری بهێنن"""),
                    SentencesRow(
                      englishText:
                          """I bought a set of the tickets on the date of issue.""",
                      kurdishText:
                          """ژمارەیەک لە بلیتەکانم کڕی لە ڕۆژی بڵاوبوونەوە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) ئەوەی کە بە فەرمی شتێک بۆ خەڵکی بڵاوبکەیتەوە"""),
                    SentencesRow(
                      englishText:
                          """The issue of a joint statement addressed global concerns.""",
                      kurdishText:
                          """بڵاوکردنەوەی بڵاونامەیەکی هاوبەش باسی لە نیگەرانییە جیهانییەکان دەکرد.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (کردار) بە فەرمی بڵاوکردنەوەی شتێک"""),
                    SentencesRow(
                      englishText:
                          """They issued a joint statement denying the charges.""",
                      kurdishText:
                          """بڵاونامەیەکی هاوبەشیان دەکرد کە نکۆڵییان لە تۆمەتەکان کرد.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A warning was issued yesterday by the government, asking people to stay in their homes.""",
                      kurdishText:
                          """ئاگادارییەک دوێنێ لەلایەن حکومەتەوە دەرکرا کە داوای لە خەڵکی دەکرد لە ماڵەوە بمێننەوە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The president has the authority to issue orders to the military.""",
                      kurdishText:
                          """سەرۆک دەسەڵاتی هەیە فەرمان بۆ سوپا دەربکات.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The new guidelines have been issued to all doctors.""",
                      kurdishText:
                          """ڕێنماییە تازەکان دراون بە هەموو پزیشکان.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (کردار) پێدانی شتێک بە کەسێک"""),
                    SentencesRow(
                      englishText:
                          """The authorities refused to issue him a visa.""",
                      kurdishText: """بەرپرسان ڕەتیان کردەوە ڤیزای پێبدەن.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Work permits were issued to only 5% of those who applied for them.""",
                      kurdishText:
                          """مۆڵەتی کار تەنها بە ٥٪ ــی ئەو کەسانە دەدرێت کە داوایان کردووە.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Some of the police were issued with rifles.""",
                      kurdishText: """هەندێک پۆلیس تفەنگیان پێدرا.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (کردار) دەستپێکردنی پڕۆسەیەکی یاسایی دژ بە کەسێک"""),
                    SentencesRow(
                      englishText:
                          """A warrant has been issued for his arrest.""",
                      kurdishText: """فەرمانی گرتنی دەرکرا.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Arrest warrants were issued against 16 of the protesters.""",
                      kurdishText:
                          """فەرمانی گرتن بۆ ١٦ لە خۆپیشاندەران دەرکرا.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (کردار) بەرهەمهێنانی شتێکی وەک گۆڤار، وتار، هتد"""),
                    SentencesRow(
                      englishText: """We issue a monthly newsletter.""",
                      kurdishText: """هەواڵ‌نامەیەکی مانگانە بڵاودەکەینەوە.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
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
// end issue
