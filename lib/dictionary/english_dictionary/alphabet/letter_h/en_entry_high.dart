import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhigh extends StatefulWidget {
  const EnglishEntryhigh({super.key});

  @override
  State<EnglishEntryhigh> createState() => _EnglishEntryhighState();
}

class _EnglishEntryhighState extends State<EnglishEntryhigh> {
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
- Adjective: high (Derived forms: highest, higher)
1. (literal meaning) being at or having a relatively great or specific elevation or upward extension (sometimes used in combinations like 'knee-high')
"a high mountain"; "high ceilings"; "high buildings"; "a high forehead"; "a high incline"; "a foot high"
 
2. Greater than normal in quantity or amount
"a high temperature"; "a high price"; "the high point of his career"; "high risks"; "has high hopes"; "the river is high"; "he has a high opinion of himself"
 
3. Standing above others in quality or position (- eminent, prominent)
"people in high places"; "the high priest";
 
4. Used of sounds and voices; high in pitch or frequency (- high-pitched)
 
5. Happy and excited and energetic (- in high spirits)
 
6. (used of the smell of meat) smelling spoiled or tainted (- gamey, gamy)
 
7. [informal] Slightly and pleasantly intoxicated from alcohol or a drug (especially marijuana) (- mellow [informal])

- Adverb: high 
1. At a great altitude (- high up)
"he climbed high on the ladder";
 
2. In or to a high position, amount, or degree
"prices have gone up far too high"
 
3. In a rich and lavish manner (- lavishly, richly, extravagantly, luxuriously)
"he lives high";
 
4. Far up toward the source
"he lives high up the river"

- Noun: high (Derived forms: highs)
1. A lofty level, position or degree
"summer temperatures reached an all-time high"
 
2. An air mass of higher than normal pressure
"the east coast benefits from a Bermuda high"
 
3. A state of sustained elation
"I'm on a permanent high these days"
 
4. [informal] A state of altered consciousness induced by alcohol or narcotics
"they took drugs to get a high on"
 
5. A high place (- heights)
"they stood on high and observed the countryside";
 
6. [N. Amer, informal] A public secondary school usually including grades 9 through 12 (- senior high school [N. Amer], senior high [N. Amer], highschool, high school)
"he goes to the neighbourhood high";
 
7. A forward gear with a gear ratio that gives the greatest vehicle velocity for a given engine speed (- high gear)
""",
  );

  final String keyword = "high";
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
    await flutterTts.speak("""high""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""What's the highest mountain in the US?""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The house has a high wall all the way round it.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He has a round face with a high forehead.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""How high is Everest?""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's only a low wall—about a metre high.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The grass was waist-high.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The rooms had high ceilings.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They were flying at high altitude.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Demand is high at this time of year.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A high proportion of our staff are female.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A high degree of accuracy is needed.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The cost in terms of human life was high.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The tree blew over in the high winds.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The tree blew over in the high winds.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We had high hopes for the business.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Unemployment remained high for several years.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Oranges are high in vitamin C.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She has held high office under three prime ministers.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The case was referred to a higher court.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""My highest card is ten.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """At the moment, the euro is high against the dollar, which makes for a good exchange rate.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The high dollar is still a major problem for importers.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""The river was very high and threatening to flood.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He was known as a man of high ideals in his community.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""She is held in very high regard by her colleagues.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You seem to have a high opinion of yourself!""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She has a high voice.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""That note is definitely too high for me.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We love going to the beach in high summer.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""This meat is rather high - I'm going to throw it out.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was high on drugs.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""An eagle soared high overhead.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I can't jump any higher.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""His desk was piled high with papers.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A plane flew high above.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Prices are expected to rise even higher this year.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They buy shares low and sell them high.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She never rose very high in the company.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's aiming high in her exams.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Exports are currently at record highs.""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Profits reached an all-time high last year.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Oil prices hit a high of £70 a barrel yesterday.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """A high over southern Europe is bringing fine, sunny weather to all parts.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Highs today will be in the region of 25°C.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The high lasted all night.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He was on a real high after winning the competition.""");
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
                      word: """high""",
                      // alsoEnglishWord: "also: high",
                      britshText: """IpaUK: /haɪ/""",
                      americanText: """IpaUS: /haɪ/""",
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
کوردی: بڵیند، بەرز، بلند، کەڵ،	بە بڵیندایی، بە بەرزایی،	گرنگ، سەرەوە، گەورە، پایەبەرز، بەرز، باڵا،	ھەرەباش، باش‌ترین،	(دەنگ) تیژ، زیقە،	لەبان، گران، لەسەرێ، باڵا،	توند، سەخت،	(وەخت) نێوەڕاست، گەرمە، چلە،	(گێڕ) سووک، سەرەوە،	مەست، کەیل، نەشە،	(گۆشت) بۆ(ن)گرتوو، بۆگەن، ماوە،	بەھێز، بەقەوەت، بەتین،	(دەم‌وچاو) سوورەوەبوو،	لەڕادەبەدەر، بێ‌ئەندازە، زۆر،	بەرز،	(پرتە) زووزوو، توند، خێرا،	بەرزایی، بڵیندایی، جێگای بەرز، بەرزان، گڤاندە،	نافەرمی ورووژان، ھەژان،	مەستی، سەرخۆشی، نەشەیی،	بەھەشت، ئاسمان،	(کەش‌ناسی) سووڕدانەوە، ئەنتی‌سایکلۆن،	گێڕی سووک یان سەرەوە
"""),
                    const DefinitionKurdish(
                        text:
                            """١. (ھاوەڵناو) بەرز؛ کە مەودای زۆری ھەیە لە سەرەوە بۆ خوارەوە"""),
                    SentencesRow(
                      englishText: """What's the highest mountain in the US?""",
                      kurdishText: """کامە بەرزترین چیایە لە ئەمریکا؟""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """The house has a high wall all the way round it.""",
                      kurdishText:
                          """خانووەکە دیوارێکی بەرزی ھەیە بە تەواوی دەورووبەریدا.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """He has a round face with a high forehead.""",
                      kurdishText:
                          """ڕووخسارێکی خڕی ھەیە بە تەوێڵێکی بەرزەوە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) بۆ باسکردن لە بەرزی شتێک"""),
                    SentencesRow(
                      englishText: """How high is Everest?""",
                      kurdishText: """ئێڤرست چەند بەرزە؟""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """It's only a low wall—about a metre high.""",
                      kurdishText: """دیوارێکی نزمە، نزیکەی یەک مەتر بەرزە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    SentencesRow(
                      englishText: """The grass was waist-high.""",
                      kurdishText: """گیایەکە تا ناوقەد بەرز بوو.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) لە ئاستێک کە بەرزتر لە زەوی یان ئاستی ڕووی دەریایە"""),
                    SentencesRow(
                      englishText: """The rooms had high ceilings.""",
                      kurdishText: """ژووڕەکان بنبانی بەرزیان ھەیە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """They were flying at high altitude.""",
                      kurdishText: """لە بەرزیی بڵنددا دەفڕین.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) زیاتر یان باشتر لە ئاسایی لە چەندێتی، کوالێتی، قەبارە، یان پلە"""),
                    SentencesRow(
                      englishText: """Demand is high at this time of year.""",
                      kurdishText: """خواست بەرزە لەم کاتەی ساڵدا.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """A high proportion of our staff are female.""",
                      kurdishText: """ڕێژەیەکی بەرزی ستافەکەمان ژنانن.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    SentencesRow(
                      englishText: """A high degree of accuracy is needed.""",
                      kurdishText: """ئاستێکی بەرزی درووستی پێویستە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """The cost in terms of human life was high.""",
                      kurdishText: """تێچوو لە ڕووی ژیانی مرۆڤەوە بەرز بوو.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    SentencesRow(
                      englishText: """The tree blew over in the high winds.""",
                      kurdishText: """دارەکە تێکشکا لە بای بەھێزدا.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    SentencesRow(
                      englishText: """The tree blew over in the high winds.""",
                      kurdishText: """دارەکە کەوت لە بایە بەھێزەکاندا.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """We had high hopes for the business (= we believed it would be successful).""",
                      kurdishText: """ھیوای زۆرمان ھەبوو بۆ بازرگانییەکە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """Unemployment remained high for several years.""",
                      kurdishText: """بێکاری بە بەرزی مایەوە بۆ چەندین ساڵ.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ھاوەڵناو) کە ڕێژەیەکی زۆر لە مادەیەکی دیاریکراو لەخۆ دەگرێت"""),
                    SentencesRow(
                      englishText: """Oranges are high in vitamin C.""",
                      kurdishText: """پرتەقاڵ ڤیتامین C زۆری تێدایە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ھاوەڵناو) لە سەرەوە لە پلەو پێگە یان گرنگی"""),
                    SentencesRow(
                      englishText:
                          """She has held high office under three prime ministers.""",
                      kurdishText:
                          """پلەی بەرزی ھەبووە لە سەردەمی سێ سەرۆک وەزیراندا.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """The case was referred to a higher court.""",
                      kurdishText: """کەیسەکە بۆ دادگایەکی باڵاتر نێردرا.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ھاوەڵناو) بە بەھای بەرز"""),
                    SentencesRow(
                      englishText: """My highest card is ten.""",
                      kurdishText: """گەورەترین کاردم دەیە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """At the moment, the euro is high against the dollar, which makes for a good exchange rate.""",
                      kurdishText:
                          """لە ئێستادا یۆرۆ بەرزە دژ بە دۆلار، کە باشە بۆ ئاڵووگۆڕ.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """The high dollar is still a major problem for importers.""",
                      kurdishText:
                          """دۆلاری بەرز ھێشتا کێشەی گەورەیە بۆ ھەناردەکاران.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (ھاوەڵناو) کە ئاوێک بەرزە واتا زۆر دێتە سەر وشکانی"""),
                    SentencesRow(
                      englishText:
                          """The river was very high and threatening to flood.""",
                      kurdishText:
                          """ڕووبارەکە زۆر بەرز بوو و مەترسی لافاوی ھەبوو.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (ھاوەڵناو) کە لە ڕووی ئەخلاقییەوە باشە"""),
                    SentencesRow(
                      englishText:
                          """He was known as a man of high ideals in his community.""",
                      kurdishText:
                          """لە کۆمەڵگاکەیدا وەک پیاوێکی خاوەن ھەڵس‌وکەوتی بەرز ناسرابوو.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٠. (ھاوەڵناو) ھەبوونی ڕێزی زۆر بۆ کەسێک"""),
                    SentencesRow(
                      englishText:
                          """She is held in very high regard by her colleagues.""",
                      kurdishText:
                          """بە ڕێزی زۆرەوە لەلایەن ھاوکارەکانی سەیر دەکرێت.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """You seem to have a high opinion of yourself!""",
                      kurdishText:
                          """وەھا دەردەکەویت کە بۆچوونی بەرزت لەسەر خۆت ھەبێت!""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (ھاوەڵناو) دەنگی بەرز"""),
                    SentencesRow(
                      englishText: """She has a high voice.""",
                      kurdishText: """دەنگێکی بەرزی ھەیە.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """That note is definitely too high for me.""",
                      kurdishText: """نۆتەکە بە دڵنیاییەوە بەرزە بۆ من.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (ھاوەڵناو) بۆ باسکردنی ناوەڕاست یان جوانترین بەشی کاتێک"""),
                    SentencesRow(
                      englishText:
                          """We love going to the beach in high summer.""",
                      kurdishText:
                          """حەزمان لێیە بچینە کەنار دەریان لە ناوەڕاستی ھاویندا.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٣. (ھاوەڵناو) کە خواردن خراپ ببێت و بۆنی ناخۆش درووست بکات"""),
                    SentencesRow(
                      englishText:
                          """This meat is rather high - I'm going to throw it out.""",
                      kurdishText: """گۆشتەکە کەمێک خراپە ـ فڕێی دەدەم.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """١٤. (ھاوەڵناو) سەرخۆش"""),
                    SentencesRow(
                      englishText: """He was high on drugs.""",
                      kurdishText: """سەرخۆش بوو بە مادەی ھۆشبەر.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٥. (ھاوەڵکار) بەرەو بەرزی"""),
                    SentencesRow(
                      englishText: """An eagle soared high overhead.""",
                      kurdishText: """داڵێک لە بەرزایی سەرەوەوە دەسووڕایەوە.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    SentencesRow(
                      englishText: """I can't jump any higher.""",
                      kurdishText: """ناتوانم چیتر بەرزتر باز بدەم.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    SentencesRow(
                      englishText: """His desk was piled high with papers.""",
                      kurdishText:
                          """دێسکەکەی بە چەند چین لە کاغەز کەڵەکە کرابوو.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    SentencesRow(
                      englishText: """A plane flew high above.""",
                      kurdishText: """فڕۆکەیەک بەرز لە سەرەوەوە فڕی.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٦. (ھاوەڵکار) لە بڕ، ڕێژە، یان بەھایەکی بەرزدا"""),
                    SentencesRow(
                      englishText:
                          """Prices are expected to rise even higher this year.""",
                      kurdishText:
                          """نرخ پێشبینی دەکرێت ھێشتا زیاتر ببێت بۆ ئەمساڵ.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """They buy shares low and sell them high.""",
                      kurdishText: """پشک بە نزمی دەکڕن و بە بەرزی دەیفرۆشن.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٧. (ھاوەڵکار) بوون لە پێگەیەکی گرنگدا"""),
                    SentencesRow(
                      englishText:
                          """She never rose very high in the company.""",
                      kurdishText: """ھەرگیز زۆر بەرز نەبوو لە کۆمپانیاکەدا.""",
                      onPressedBritish: () => speaksentence38("en-GB"),
                      onPressedAmerican: () => speaksentence38("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """She's aiming high (= hoping to be very successful) in her exams.""",
                      kurdishText: """ئامانجی بەرزی ھەیە لە تاقیکردنەوەکانی.""",
                      onPressedBritish: () => speaksentence39("en-GB"),
                      onPressedAmerican: () => speaksentence39("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٨. (ناو) بەرزترین ئاست یان ژمارە"""),
                    SentencesRow(
                      englishText: """Exports are currently at record highs.""",
                      kurdishText:
                          """ھەناردە لە ئێستادا لە ڕیکۆردی بەرزترینە.""",
                      onPressedBritish: () => speaksentence40("en-GB"),
                      onPressedAmerican: () => speaksentence40("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """Profits reached an all-time high last year.""",
                      kurdishText:
                          """ساڵی ڕابردوو قازانج گەشتە ئەوپەڕی بەرزی.""",
                      onPressedBritish: () => speaksentence41("en-GB"),
                      onPressedAmerican: () => speaksentence41("en-US"),
                    ),
                    SentencesRow(
                      englishText:
                          """Oil prices hit a high of £70 a barrel yesterday.""",
                      kurdishText:
                          """نرخی نەوت گەشت بە بەرزی ٧٠ پاوەند بۆ بەرمیلێک دوێنێ.""",
                      onPressedBritish: () => speaksentence42("en-GB"),
                      onPressedAmerican: () => speaksentence42("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٩. (ناو) لە ناوچەیەکی پەستانی بەرزی ھەوا"""),
                    const AlsoEnglishckb(word: "ھەروەھا: anticyclone"),
                    SentencesRow(
                      englishText:
                          """A high over southern Europe is bringing fine, sunny weather to all parts.""",
                      kurdishText:
                          """دژە زریانێک لە باشووری ئەورووپا کەشی خۆشی خۆرەتاو دێنێت بۆ ھەموو ناوچەکان.""",
                      onPressedBritish: () => speaksentence43("en-GB"),
                      onPressedAmerican: () => speaksentence43("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢٠. (ناو) بەرزترین پلەی گەرمی لە ماوەی ڕۆژێک، ھەفتەیەک، ھتد ــی دیاریکراو"""),
                    SentencesRow(
                      englishText:
                          """Highs today will be in the region of 25°C.""",
                      kurdishText:
                          """پلەی گەرمی بەرز ئەمڕۆ نزیکەی ٢٥ پلەی سیلیزی دەبێت.""",
                      onPressedBritish: () => speaksentence44("en-GB"),
                      onPressedAmerican: () => speaksentence44("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢١. (ناو) ھەست و خۆشی زۆر کە کەسێک دەیبێت لە کاتی بەکارھێنانی مادەی ھۆشبەر"""),
                    SentencesRow(
                      englishText: """The high lasted all night.""",
                      kurdishText: """مەستییەکە تەواوی شەوەکەی خایاند.""",
                      onPressedBritish: () => speaksentence45("en-GB"),
                      onPressedAmerican: () => speaksentence45("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢٢. (ناو) ھەستی خۆشی زۆر کە کەسێک دەیبێت کاتێک شتێکی خۆش دەکات یان سەرکەوتوو دەبێت"""),
                    SentencesRow(
                      englishText:
                          """He was on a real high after winning the competition.""",
                      kurdishText:
                          """لە دوای بردنەوەی ڕکابەرییەکە لە شاگەشکەیی بوو.""",
                      onPressedBritish: () => speaksentence46("en-GB"),
                      onPressedAmerican: () => speaksentence46("en-US"),
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

const String _videoIdend = 'e09xig209cQ';
const double _startSecondsend = 0;
const String _videoIdone = 'j1BfO7VlIw4';
const double _startSecondsone = 629;
const String _videoIdtwo = 'qWAagS_MANg';
const double _startSecondstwo = 141;
const String _videoIdthree = 'DEFD9TSHg_A';
const double _startSecondsthree = 45;
const String _videoIdfour = 's3B-qp3U5G0';
const double _startSecondsfour = 732;
const String _videoIdfive = '544DTGHIBM0';
const double _startSecondsfive = 906;

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