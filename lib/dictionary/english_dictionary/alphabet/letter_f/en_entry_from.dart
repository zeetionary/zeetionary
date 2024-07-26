import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfrom extends StatefulWidget {
  const EnglishEntryfrom({super.key});

  @override
  State<EnglishEntryfrom> createState() => _EnglishEntryfromState();
}

class _EnglishEntryfromState extends State<EnglishEntryfrom> {
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
- Preposition: from
1. A giver or sender
"a present from my uncle"
 
2. A lower limit
"prices start from £1"
 
3. Out of
"made from wood"
 
4. A reason or cause (- of)
"she nearly died from it";
 
5. Starting at
"I'll be home from 6pm"
""",
  );

  final String keyword = "from";
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
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""from""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She began to walk away from him.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Has the train from Bristol arrived?""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I'm from Italy.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The documents are from the sixteenth century.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She recited quotations from Shakespeare.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We get heat from the sun.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The idea came from an old book.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He received a letter from his friend.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The police got information from witnesses.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We're open from 8 a.m. to 7 p.m. every day.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He was blind from birth.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""We were 100 metres from the scene of the accident.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""You can see the island from here.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """From a financial point of view the project was a disaster.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The temperature varies from 30 degrees to minus 20.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Conditions vary from school to school.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The store sells everything from shoelaces to computers.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Things have gone from bad to worse.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""You need a break from routine.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Can you translate from English to Spanish?""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Is Portuguese very different from Spanish?""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I can't tell one twin from the other.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Steel is made from iron.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The party was ousted from power after eighteen years.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She saved him from drowning.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""She felt sick from tiredness.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""You can tell a lot about a person from their handwriting.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""From what I heard the company's in deep trouble.""");
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
                      word: """from""",
                      // alsoEnglishWord: "also: from",
                      britshText: """IpaUK: /frəm/, strong form  /frɒm/""",
                      americanText:
                          """IpaUS: /frəm/, strong form  /frʌm/, strong form  /frɑːm/""",
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
کوردی: لە، ژ،	لە ڕووی،	لە لایەن، لە کن، ژ ئالییێ، لەوەتای،	لەو دەمەی، ماوە بە...،	لە مەودای،	لەبەرامبەر، لە ھەمبەر،	بەھۆی لەبەر، ژبەر، بەپێی، بە ڕەچاوکردنی، بە سەرنج‌دان بەو (شتە)
"""),
// With short examples define "from", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ئامراز) بۆ گوتنی ئەوەی کەسێک/شتێک لە کوێوە دەست پێدەکات"""),
                    SentencesRow(
                      englishText: """She began to walk away from him.""",
                      kurdishText: """دەستی کرد بەوەی لێی دوور بکەوێتەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Has the train from Bristol arrived?""",
                      kurdishText: """شەمەندەفەرەکە لە بریستۆڵەوە گەشتووە؟""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ئامراز) بۆ ناوھێنانی بنەچەی کەسێک/شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I'm from Italy.""",
                      kurdishText: """خەڵکی ئیتالیام.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The documents are from the sixteenth century.""",
                      kurdishText: """بەڵگەنامەکان ھی سەدەی شازدەن.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She recited quotations from Shakespeare.""",
                      kurdishText: """دەقێکی وەرگیراوی شێکسپیری گێڕایەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We get heat from the sun.""",
                      kurdishText: """گەرمی لە خۆرەوە وەردەگرین.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The idea came from an old book.""",
                      kurdishText: """بیرۆکەکە ھی کتێبێکی کۆنە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ئامراز) بۆ گوتنی ئەوەی کێ شتێکی ناردووە یان داویەتی بە کەسێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He received a letter from his friend.""",
                      kurdishText: """نامەیەکی لە ھاوڕێکەیەوە پێگەشت.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The police got information from witnesses.""",
                      kurdishText:
                          """پۆلیس زانیارییان لە شایەتحاڵانەوە وەرگرت.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ئامراز) بۆ گوتنی ئەوەی شتێک کەی دەست پێدەکات"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We're open from 8 a.m. to 7 p.m. every day.""",
                      kurdishText:
                          """ھەموو ڕۆژێک لە ٨ ـی بەیانی تاوەکو ٧ ـی ئێوارە کراوەین.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He was blind from birth.""",
                      kurdishText: """لە منداڵییەوە نابینا بوو.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ئامراز) بۆ پیشاندانی دووری نێوان دوو شوێن"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We were 100 metres from the scene of the accident.""",
                      kurdishText:
                          """١٠٠ مەتر لە شوێنی ڕووداوەکە دوور بووین.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ئامراز) بۆ پیشاندانی شوێن یان بیرکردنەوەی کەسێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """You can see the island from here.""",
                      kurdishText: """دەتوانیت دوورگەکە لێرەوە ببینیت.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """From a financial point of view the project was a disaster.""",
                      kurdishText:
                          """لە دیدگایەکی داراییەوە پڕۆژەکە کارەسات بوو.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ئامراز) بۆ پیشاندانی مەودای شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The temperature varies from 30 degrees to minus 20.""",
                      kurdishText:
                          """پلەی گەرمی لە نێوان ٣٠ پلە بۆ ٢٠ پلەی ژێر سفر دەبێت.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Conditions vary from school to school.""",
                      kurdishText:
                          """دۆخەکە لە قوتابخانە بۆ قوتابخانە دەگۆڕێت.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The store sells everything from shoelaces to computers.""",
                      kurdishText:
                          """فرۆشگاکە ھەموو شت دەفرۆشێت لە قەیتانەوە بۆ کۆمپیوتەر.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ئامراز) بۆ پیشاندانی دۆخ یان شێوەی کەسێک/شتێک پێش گۆڕانێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Things have gone from bad to worse.""",
                      kurdishText: """شتەکان لە خراپەوە بۆ خراپتر چوونە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """You need a break from routine.""",
                      kurdishText: """پێویستت بە پشوویەکە لە کاری ڕۆژانە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Can you translate from English to Spanish?""",
                      kurdishText:
                          """دەتوانیت لە ئینگلیزییەوە بۆ ئیسپانی وەرگێڕان بکەیت؟""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (ئامراز) کە باسی جیاوازیی نێوان دوو کەس یان شت دەکەیت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Is Portuguese very different from Spanish?""",
                      kurdishText: """ئایا پورتوگالی زۆر لە ئیسپانی جیاوازە؟""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I can't tell one twin from the other.""",
                      kurdishText:
                          """ناتوانم جیاوازی نێوان دوو منداڵە دووانەکە بکەم؟""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (ئامراز) بۆ باسکردنی ئەو مادەیەی کە شتێکی لێ درووستکراوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Steel is made from iron.""",
                      kurdishText: """پۆڵا لە ئاسن درووست دەکرێت.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (ئامراز) بۆ گوتنی ئەوەی شتێک جیاکراوەتەوە یان سڕدراوەتەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The party was ousted from power after eighteen years.""",
                      kurdishText:
                          """پارتەکە لە دەسەڵات دەرکرا لە دوای ھەژدە ساڵ.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (ئامراز) بۆ گوتنی ئەوەی شتێک ڕێگری لێکرا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She saved him from drowning.""",
                      kurdishText: """لە خنکان ڕزگاری کرد.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٣. (ئامراز) بۆ پیشاندانی ھۆکاری شتێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She felt sick from tiredness.""",
                      kurdishText: """لە ماندوێتیدا ھەستی بە نەخۆشی کرد.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٤. (ئامراز) بۆ پیشاندانی ھۆکاری بڕیارێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You can tell a lot about a person from their handwriting.""",
                      kurdishText:
                          """دەتوانیت زۆر شت لەسەر کەسێک بزانیت بە دەستوخەتی.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """From what I heard the company's in deep trouble.""",
                      kurdishText:
                          """بەوەی بیستوومە کۆمپانیاکە لە کێشەی قووڵ دایە.""",
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

// 188888880002200
const String _videoIdend = 'hFZFjoX2cGg';
const double _startSecondsend = 128;
const String _videoIdone = '_Z0ZQT0FttM';
const double _startSecondsone = 726;
const String _videoIdtwo = 'gFuEoxh5hd4';
const double _startSecondstwo = 462;
const String _videoIdthree = 'wizgxRBfVTY';
const double _startSecondsthree = 172;
const String _videoIdfour = 'NCLZi2Rn_ug';
const double _startSecondsfour = 107;
const String _videoIdfive = 'HDntl7yzzVI';
const double _startSecondsfive = 38;

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