import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhonour extends StatefulWidget {
  const EnglishEntryhonour({super.key});

  @override
  State<EnglishEntryhonour> createState() => _EnglishEntryhonourState();
}

class _EnglishEntryhonourState extends State<EnglishEntryhonour> {
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
- Verb: honour (Derived forms: honoured, honours, honouring)
Usage: Brit, Cdn (US: honor)
1. Bestow honour or rewards upon (- honor [US], reward, fete, fête)
"Today we honour our soldiers";
 
2. Show respect towards (- respect, honor [US], abide by, observe)
"honour your parents!";
 
3. Accept as pay (- honor [US])
"we honour checks and drafts";

- Noun: honour (Derived forms: honours)
Usage: Brit, Cdn (US: honor)
1. A tangible symbol signifying approval or distinction (- award, accolade, honor [US], laurels)
 
2. The state of being honoured (- honor [US], laurels)
 
3. The quality of being honourable and having a good name (- honor [US])
"a man of honour";
 
4. A woman's virtue or chastity (- honor [US], purity, pureness)
""",
  );

  final String keyword = "honour";
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
    await flutterTts.speak("""honour""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They stood in silence as a mark of honour to her.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """This biography does great honour to the poet's achievements.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The prime minister sought an agreement that would bring peace with honour.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""It was a great honour to be invited here today.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """It is a great honour to represent my country at the Olympics.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was my honour to be Helen's friend.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Proving his innocence has become a matter of honour.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He was a man of honour who always spoke the truth.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The family honour is at stake.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """He was now satisfied that the family honour had been restored.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He would always fight to defend the family honour.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She brought honour to her country as an Olympic medal-winner.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She is an honour to the profession.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She received nearly every honour bestowed upon a poet.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was buried with full military honours.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He wears his scars like badges of honour.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I took an honors class in English.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She graduated with honours in June 1970.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""No more questions, Your Honour.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""It was a simple ceremony to honour the Goddess of water.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Actors and musicians gathered to honour the memory of the late singer.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The President honoured us with a personal visit.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She has never been properly honoured in her own country.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """They were honored for their achievements over the past year.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He has been honoured for his scientific work.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I have every intention of honouring our contract.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""They have failed to honour the peace agreement.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200
    const String videoIdend = 'wi5Q3rlQaMI';
    const double startSecondsend = 15;
    const String videoIdone = 'SKMQNgJQo9Y';
    const double startSecondsone = 167;
    const String videoIdtwo = 'OEPMBSp466k';
    const double startSecondstwo = 698;
    const String videoIdthree = 'r8O_xpgb9kE';
    const double startSecondsthree = 39;
    const String videoIdfour = 'KmL0zZg0Zyo';
    const double startSecondsfour = 3;
    const String videoIdfive = 'pa_g7IRmZmU';
    const double startSecondsfive = 426;

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
                      word: """honour""",
                      // alsoEnglishWord: "also: honour",
                      britshText: """IpaUK: /ˈɒnə(r)/""",
                      americanText: """IpaUS: /ˈɑːnər/""",
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
کوردی: شانازی، ڕێز، حورمەت، سەربەرزی، ڕووسپێتی، نێوباشی، ئابڕوو، گەورەیی، ئابوور،	نامووس، حەیا، شەڕەف، ڕووسووری، داوێن‌پاکی،	مایەی شانازی
"""),
                    const DefinitionKurdish(
                        text: """١. (ناو) ڕێزی زۆر بۆ کەسێک"""),
                    SentencesRow(
                      englishText:
                          """They stood in silence as a mark of honour to her.""",
                      kurdishText:
                          """لە بێ‌دەنگیدا وەستان وەک ئاماژەی ڕێزیان بۆی.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This biography does great honour to the poet's achievements.""",
                      kurdishText:
                          """ئەم ژیاننامەیە ڕێزی زۆر دەگرێت لە دەستکەوتەکانی هۆزانڤانەکە.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The prime minister sought an agreement that would bring peace with honour.""",
                      kurdishText:
                          """سەرۆک وەزیران بە دوای ڕێکەوتنێک بوو کە ئاشتی لەگەڵ شانازی دەهێنا.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) شتێک کە شانازی دەکەیت بە کردنی بەهۆی ئەوەی خەڵکی ڕێزت پیشان دەدەن"""),
                    const AlsoEnglishckb(word: "ھەروەھا: privilege"),
                    SentencesRow(
                      englishText:
                          """It was a great honour to be invited here today.""",
                      kurdishText:
                          """شانازییەکی گەورە بوو ئەمڕۆ بانگهێشت بکرێم.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It is a great honour to represent my country at the Olympics.""",
                      kurdishText:
                          """شانازی گەورەیە نوێنەرایەتی وڵاتەکەم بکەم لە ئۆڵۆمپیاد.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It was my honour to be Helen's friend.""",
                      kurdishText: """شانازی بوو بۆم کە هاوڕێی هێلین بم.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) زانین و کردنی ئەوەی لە ڕووی ئەخلاقییەوە ڕاستە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Proving his innocence has become a matter of honour.""",
                      kurdishText:
                          """سەلماندنی بێ‌تاوانیی بووە بە بابەتی ڕێزی.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was a man of honour who always spoke the truth.""",
                      kurdishText:
                          """پیاوێکی خاوەن ڕێز بوو کە هەمیشە ڕاستیی دەگوت.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٤. (ناو) ناوبانگی باش"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The family honour is at stake.""",
                      kurdishText: """شکۆی خێزانەکە لە مەترسییە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was now satisfied that the family honour had been restored.""",
                      kurdishText:
                          """ئاسوودە بوو کە شکۆی خێزانەکە گەڕێندرابوویەوە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He would always fight to defend the family honour.""",
                      kurdishText:
                          """هەمیشە دەجەنگێت بۆ پاراستنی شکۆی خێزانەکەی.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She brought honour to her country as an Olympic medal-winner.""",
                      kurdishText:
                          """وەک براوەی مەدالیای ئۆڵۆمپیاد شکۆی هێنا بۆ وڵاتەکەی.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ناو) کەسێک یان شتێک کە جێگای شانازییە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She is an honour to the profession.""",
                      kurdishText: """جێگای شانازییە بۆ کارەکە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) خەڵات، نازناوی فەرمی، هتد کە دەدرێت بە کەسێک وەک پاداشتی شتێک کە کردوویەتی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She received nearly every honour bestowed upon a poet.""",
                      kurdishText:
                          """بە نزیکەیی هەموو شانازییەکی وەرگرت کە بە هۆزانڤانێک درابێت.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was buried with full military honours (= with a special military service as a sign of respect).""",
                      kurdishText: """بە هەموو شانازییەکی سەربازییەوە نێژرا.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He wears his scars like badges of honour (= rewards that you can see).""",
                      kurdishText: """برینەکانی وەک نیشانەی شانازی دەبینێت.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) کۆرسێکی زانکۆ کە لە ئاستێکی باڵاترە وەک لە هی ئاسایی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I took an honors class in English.""",
                      kurdishText: """کۆرسێکی باڵام لە ئینگلیزی وەرگرت.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ناو) ئەوەی لە تاقیکردنەوەیەک، قوتابخانەیەک یان زانکۆیەک دەربچیت بە نمرەیەکی بەرزەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She graduated with honours in June 1970.""",
                      kurdishText:
                          """کە حوزەیرانی ١٩٧٠ بە نمرەی باڵاوە دەرچوو.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ناو) نازناوێک کە لەگەڵ داوەرێک قسە دەکەیت یان لەگەڵ سەرۆک شارەوانییەکی ئەمریکا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """No more questions, Your Honour.""",
                      kurdishText: """پرسیاری تر نییە، گەورەم.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (کردار) پیشاندانی ڕێز بە کەسێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It was a simple ceremony to honour the Goddess of water.""",
                      kurdishText:
                          """بۆنەیەکی سادە بوو بۆ ڕێزگرتن لە خوداوەندی ئاو.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Actors and musicians gathered to honour the memory of the late singer.""",
                      kurdishText:
                          """ئەکتەران و میوزیکژەنان کۆبوونەوە بۆ ڕێزگرتن لە یادەوەری گۆرانیبێژە کۆچکردووەکە.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The President honoured us with a personal visit.""",
                      kurdishText: """سەرۆک ڕێزی لێ گرتین بە سەردانێکی کەسی.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (کردار) پێدانی ستایشی فەرمی، خەڵات، یان نازناوێک بە کەسێک بۆ شتێک کە کردوویەتی"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She has never been properly honoured in her own country.""",
                      kurdishText:
                          """هەرگیز بە گونجاوی ڕێزی لێ نەنراوە لە وڵاتەکەی.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They were honored for their achievements over the past year.""",
                      kurdishText:
                          """ڕێزیان لێ نرا بۆ بەدەستهێنانەکانیان لە یەک ساڵی ڕابردوودا.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He has been honoured for his scientific work.""",
                      kurdishText: """ڕێزی لێ‌نراوە بۆ کارە زانستییەکەی.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٢. (کردار) کردنی ئەوەی کە بەڵێنت داوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I have every intention of honouring our contract.""",
                      kurdishText:
                          """هەموو نیازێکی پابەندبوون بە ڕێکەوتنەکەمانم هەیە.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They have failed to honour the peace agreement.""",
                      kurdishText:
                          """شکستیان هێناوە لە پابەندبوون بە ڕێکەوتنە ئاشتییەکە.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
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