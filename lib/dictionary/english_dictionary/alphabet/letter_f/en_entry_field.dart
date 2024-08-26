import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfield extends StatefulWidget {
  const EnglishEntryfield({super.key});

  @override
  State<EnglishEntryfield> createState() => _EnglishEntryfieldState();
}

class _EnglishEntryfieldState extends State<EnglishEntryfield> {
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
- Noun: field (derived forms: fields)
1. A piece of land cleared of trees and usually enclosed
"he planted a field of wheat"
 
2. A region where a battle is being (or has been) fought (= battlefield, battleground, field of battle, field of honor [US])
"they made a tour of Civil War fields of battle";
 
3. Somewhere (away from a studio or office or library or laboratory) where practical work is done or data is collected
"anthropologists do much of their work in the field"
 
4. A branch of knowledge (= discipline, subject, subject area, subject field, field of study, study, bailiwick)
"in what subject field is his doctorate?";
 
5. The space around a radiating body within which its electromagnetic oscillations can exert force on another similar body not in contact with it (= field of force, force field)
 
6. A particular kind of commercial enterprise (= field of operation, line of business)
"they are outstanding in their field";
 
7. A particular environment or walk of life (= sphere, domain, area, orbit, arena)
"his social field is limited";
 
8. A piece of land prepared for playing a game (= playing field, athletic field, playing area, pitch [Brit])
"the home crowd cheered when Princeton took the field";
 
9. Extensive tract of level open land (= plain, champaign, flatland)
"he longed for the fields of his youth";
 
10. (mathematics) a set of elements such that addition and multiplication are commutative and associative and multiplication is distributive over addition and there are two elements 0 and 1
"the set of all rational numbers is a field"
 
11. (military) a region in which active military operations are in progress (= field of operations, theater [US], theater of operations [US], theatre, theatre of operations)
"the army was in the field awaiting action";
 
12. (horse racing) all of the horses in a particular horse race
 
13. All the competitors in a particular contest or sporting event
 
14. A geographic region (land or sea) under which something valuable is found
"the diamond fields of South Africa"
 
15. (computing) a set of one or more adjacent characters comprising a unit of information
 
16. The area that is visible (as through an optical instrument) (= field of view)
 
17. A place where planes take off and land (= airfield, landing field, flying field)

- Verb: field (derived forms: fields, fielding, fielded)
1. Catch or pick up (balls) in baseball or cricket
 
2. (sport) play as a fielder
 
3. Answer adequately or successfully
"The lawyer fielded all questions from the press"
 
4. Select (a team or individual player) for a game
"The Buckeyes fielded a young new quarterback for the Rose Bowl"
""",
  );

  final String keyword = "field";
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
    await flutterTts.speak("""field""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We had to walk across a ploughed field.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We camped in a field near the village.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""People were working in the fields.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We saw golden fields of wheat.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The pilot guided the plane to a landing field.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Prisoners were sent to work in the gas fields in the north.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Every player on the field did their best today.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """There was huge excitement as the teams came onto the field.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The strong field includes three world record holders.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He died on the field of battle.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Child development is such an interesting field.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Genetic science has developed dramatically since I entered the field 40 years ago.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""All of them are experts in their chosen field.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He was awarded a Nobel Prize for his work in this field.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I enjoy meeting people in other fields of business.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""This discovery has opened up a whole new field of study.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I work in the field of computer science.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Her findings were based on extensive field and laboratory work.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In 2016, the first field trials of the vaccine were carried out.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """In a series of field experiments, we investigated the effect on the frog population.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Google leads the field in computer software.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Weak electric fields are emitted by all living organisms.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Each of the main parties fielded more than 300 candidates.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He won the toss and chose to field first.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He fielded the ball expertly.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The BBC had to field more than 300 phone calls after last night's programme.""");
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
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """field""",
                      // alsoEnglishWord: "also: field",
                      britshText: """IpaUK: /fiːld/""",
                      americanText: """IpaUS: /fiːld/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                automaticallyImplyLeading: false,
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
کوردی: کێڵگە، مەزرا، مووچە، ھێگا، لەوەڕگە، یورت، جێ‌لەوەڕ، چایەر،	مەیدان، گۆڕەپان، مەڵبەند، بوار، پانتایی، زەمینە، ڕاخستە، وار،	ناوە، ناوچە، ئارا، دەڤەر،	جێگا، جێ، شوێن،	مەودا،	یاریگە، دەشت، مەیدان (وەرزش)،	تیمە بەشداری‌کردووەکان، پێشبڕکێ‌دەرەکان،	شەڕگە، مەیدان یا گۆڕەپانی شەڕ، ناوچەی کرداری شەڕی،	بوار، زەمینە، وار،	بواری خوێندن،	ھەتەر، بڕ،	کاری کرداری،	مەیدانی کار،	بواری یان مەیدانی مەگناتیسی،	دەستەی ڕاو،	بابەت یان چالاکی تایبەتی
"""),
// With short examples define "field", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) پارچە زەوییەک لە دەشت‌ودەر کە بەکاردێت بۆ کاری کشتوکاڵ و ڕاگرتنی ئاژەڵ، و زۆرجار بە پەرژین دەوردراوە"""),
                    SentencesRow(
                      englishText:
                          """We had to walk across a ploughed field.""",
                      kurdishText: """دەبوو بە کێڵگەیەکی کێڵدراودا ڕێ بکەین.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We camped in a field near the village.""",
                      kurdishText:
                          """لە کێڵگەیەکی نزیک گوندەکە کەمپمان دانا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """People were working in the fields.""",
                      kurdishText: """خەڵکی لە کیڵگەکان کاریان دەکرد.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We saw golden fields of wheat.""",
                      kurdishText: """کێڵگەی ئاڵتوونی گەنممان بینی.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) پارچە زەوییەک کە بۆ ئەو مەبەستە بەکاردێت کە ئاماژەی پێکراوە"""),
                    SentencesRow(
                      englishText:
                          """The pilot guided the plane to a landing field.""",
                      kurdishText:
                          """فڕۆکەوانەکە فڕۆکەکەی گەیاندە شوێنی نیشتنەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ناوچەیەکی گەورە کە بەو شتەی باسکراوە داپۆشراوە؛ ناوچەیەک کە ئەو شتەی لێ بەدەست دێت کە باسکراوە"""),
                    SentencesRow(
                      englishText:
                          """Prisoners were sent to work in the gas fields in the north.""",
                      kurdishText:
                          """زیندانییەکان نێردران بۆ کارکردن لە کێڵگە گازییەکانی باکوور.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (ناو) گۆڕەپانی یاریکردن"""),
                    AlsoEnglishckblink(
                      textBeforeLink: "ھەروەھا: ",
                      linkText: "pitch",
                      textAfterLink: ".",
                      onTap: () {
                        Routemaster.of(context).push("/english-field/pitch");
                      },
                    ),
                    SentencesRow(
                      englishText:
                          """Every player on the field did their best today.""",
                      kurdishText:
                          """ھەموو یاریزانێکی گۆڕەپانەکە ئەمڕۆ باشترینی ئەنجام دا.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There was huge excitement as the teams came onto the field.""",
                      kurdishText:
                          """خرۆشاوی زۆر ھەبوو کە تیمەکان ھاتنە سەر یاریگایەکە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) لە یاری کریکیتدا ئەو تیمەیە کە تۆپەکە دەگرێتەوە"""),
                    SentencesRow(
                      englishText:
                          """The strong field includes three world record holders.""",
                      kurdishText:
                          """تیمە بەرگریکارەکە سێ پاڵەوانی پێشووتری جیھانی لەخۆدەگرێت.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٦. (ناو) مەیدانی جەنگ"""),
                    SentencesRow(
                      englishText: """He died on the field of battle.""",
                      kurdishText: """لە مەیدانی جەنگدا مرد.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ناو) بابەتێک یان چالاکییەکی دیاریکراو کە کەسێک تێیدا کار دەکات یان حەزی پێیەتی"""),
                    SentencesRow(
                      englishText:
                          """Child development is such an interesting field.""",
                      kurdishText: """گەشەی منداڵ بوارێکی سەرنجڕاکێشە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Genetic science has developed dramatically since I entered the field 40 years ago.""",
                      kurdishText:
                          """زانستی جێنەتیک بە ئاستێکی زۆر بەرەوپێشچووە لەوەتەی من چوومە بوارەکەوە پێش ٤٠ ساڵ.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """All of them are experts in their chosen field.""",
                      kurdishText: """ھەموویان شارەزای بواری خۆیانن.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was awarded a Nobel Prize for his work in this field.""",
                      kurdishText:
                          """خەڵاتی نۆبڵی پێدرا بۆ کارەکەی لە بوارەکەیدا.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I enjoy meeting people in other fields of business.""",
                      kurdishText:
                          """حەزم بە بینینی کەسانی دیکە لە بوارەکانی دیکەی بازرگانی.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This discovery has opened up a whole new field of study.""",
                      kurdishText:
                          """ئەم دۆزینەوەیە بوارێکی توێژینەوەی تەواو تازەی کردووەتەوە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I work in the field of computer science.""",
                      kurdishText: """لە بواری زانستی کۆمپیوتەر کار دەکەم.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ناو) ئەوەی خەڵکی کاری کرداری بکەن نەک لە کتێبخانە یان تاقیگە کار بکەن"""),
                    SentencesRow(
                      englishText:
                          """Her findings were based on extensive field and laboratory work.""",
                      kurdishText:
                          """دۆزینەوەکانی پشتیان بەست بە کاری مەیدانی چڕ و کاری تاقیگە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """In 2016, the first field trials of the vaccine were carried out.""",
                      kurdishText:
                          """لە ساڵی ٢٠١٦ ـدا یەکە تاقیکردنەوەی مەیدانی ڤاکسینەکە ئەنجام درا.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """In a series of field experiments, we investigated the effect on the frog population.""",
                      kurdishText:
                          """لە زنجیرەیەک تاقیکردنەوەی مەیدانیدا، لێکۆڵینەوەمان کرد لەسەر دانیشتووانی بۆق.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (ناو) تەواوی ئەو کەس و بەرھەمانەی کە لە بەشێکی دیاریکراوی بازرگانیدا ڕکابەری دەکەن"""),
                    SentencesRow(
                      englishText:
                          """Google leads the field in computer software.""",
                      kurdishText: """گووگڵ پێشڕەوی نەرمامێری کۆمپیوتەرە.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (ناو) ناوچەیەک کە ئەو ھێزەی باسکراوە کاریگەری ھەیە"""),
                    SentencesRow(
                      englishText:
                          """Weak electric fields are emitted by all living organisms.""",
                      kurdishText:
                          """بواری کارەبایی لاواز لەلایەن ھەموو گیانلەبەرە زیندووەکانەوە دەردەدرێت.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (کردار) ھەڵبژاردنی بەربژێرێک، قسەکەرێک، تیمێک، ھتد کە لە ھەڵبژاردنێک، ڕکابەرییەک، ھتد نوێنەرایەتیت بکات"""),
                    SentencesRow(
                      englishText:
                          """Each of the main parties fielded more than 300 candidates.""",
                      kurdishText:
                          """ھەر یەک لە پارتە سەرەکییەکان زیاتر لە ٣٠٠ بەربژێریان پاڵاوت.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٣. (کردار) بوون بەو تیمەی کە تۆپەکە دەگرێت و فڕێی دەدات لە دوای ئەوەی ھاوێژراوە"""),
                    SentencesRow(
                      englishText:
                          """He won the toss and chose to field first.""",
                      kurdishText:
                          """شێروخەتەکەی بردەوە و بڕیاری دا سەرەتا تۆپەکە بگرێتەوە.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٤. (کردار) گرتنەوەی تۆپەکە لە کریکیتدا و فڕێدانەوەی"""),
                    SentencesRow(
                      englishText: """He fielded the ball expertly.""",
                      kurdishText: """شارەزایانە تۆپەکەی گرتەوە.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٥. (کردار) وەرگرتنی پرسیار و مامەڵەکردن لەگەڵی"""),
                    SentencesRow(
                      englishText:
                          """The BBC had to field more than 300 phone calls after last night's programme.""",
                      kurdishText:
                          """بی‌بی‌سی دەبوو زیاتر لە ٣٠٠ پەیوەندیی تەلەفۆنی وەربگرێت لە دوای پڕۆگرامەکەی دوێنێ شەو.""",
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
const double _startSecondsend = 249;
const String _videoIdone = '8HEfIJlcFbs';
const double _startSecondsone = 401;
const String _videoIdtwo = 'tsxmyL7TUJg';
const double _startSecondstwo = 1690;
const String _videoIdthree = 'QLq6GEiHqR8';
const double _startSecondsthree = 628;
const String _videoIdfour = 'AF8d72mA41M';
const double _startSecondsfour = 305;
const String _videoIdfive = 'Cqbleas1mmo';
const double _startSecondsfive = 99;

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