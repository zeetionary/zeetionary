import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfine extends StatefulWidget {
  const EnglishEntryfine({super.key});

  @override
  State<EnglishEntryfine> createState() => _EnglishEntryfineState();
}

class _EnglishEntryfineState extends State<EnglishEntryfine> {
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
- Adjective: fine (derived forms: finest, finer)
1. Being satisfactory or in satisfactory condition (= all right, o.k., OK, okay, hunky-dory [informal], cool [informal], alright, jake [N. Amer, Austral, NZ, informal])
"everything's fine"; "dinner and the movies had been fine"; "another minute I'd have been fine";
 
2. Of textures that are smooth to the touch or substances consisting of relatively small particles
"wood with a fine grain"; "fine powdery snow"; "fine rain"; "batiste is a cotton fabric with a fine weave"; "covered with a fine film of dust"
 
3. Minutely precise especially in differences in meaning
"a fine distinction"
 
4. Thin in thickness or diameter
"a fine film of oil"; "fine hairs"; "read the fine print"
 
5. Characterized by elegance, refinement or accomplishment
"fine wine"; "looking fine in her Easter suit"; "a fine gentleman"; "fine china and crystal"; "a fine violinist"; "the fine hand of a master"
 
6. (metallurgy) free from impurities; having a high or specified degree of purity
"gold 21 carats fine"

- Adverb: fine
1. An expression of agreement normally occurring at the beginning of a sentence (= very well, alright, all right, OK, all righty [non-standard], righty-ho [Brit, informal])
 
2. In a delicate manner (= finely, delicately, exquisitely)
"her fine drawn body";

- Noun: fine (derived forms: fines)
1. Money extracted as a penalty (= mulct, amercement [archaic])

- Verb: fine (derived forms: fined, fines, fining)
1. Record a fine as a penalty in a police record (= ticket)
"I was fined for parking on the wrong side of the street";
 
2. Impose a fine on (= mulct)
"he was fined for littering";
 
3. Clarify (wine and beer), e.g. by adding something to cause precipitation of unwanted impurities and sediment
""",
  );

  final String keyword = "fine";
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
    await flutterTts.speak("""fine""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I was feeling fine when I got up this morning.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""George looks fine now.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I feel absolutely fine.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""It's a particularly fine example of Saxon architecture.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She's a fine actor and an even finer dancer.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Jim has made a fine job of the garden.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""It was his finest hour as manager of the England team.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This movie features some of her finest work.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""‘I'll leave this here, OK?’ ‘Fine.’""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""If you don't agree, that's fine with him.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She has been virtually ignoring me but I'm fine with that.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Don't worry. Your speech was fine.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""You go on without me. I'll be fine.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Never mind, Jake. Everything will be just fine.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Your hair is perfectly fine the way it is.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I knew that everything would turn out fine in the end.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I hope it stays fine for the picnic.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It was a fine sunny morning.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""That summer saw weeks of fine dry weather.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""It's turned out fine again today.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She is a fine-looking woman.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The boy looks mighty fine in a uniform.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She felt the fine sand between her toes.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She has inherited her mother's fine features.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""His fine blond hair came down almost to his shoulders.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""There's no need to make such fine distinctions.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """You really need a magnifying glass to appreciate all the fine detail.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He was a fine man.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""His speech was full of fine words which meant nothing.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Keep going like that—you're doing fine.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""That arrangement suits me fine.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Things were going fine until you showed up.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I got a parking fine for parking on double yellow lines.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Under the new law, motorists face fines of up to £1 000.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Any company found to be breaking these rules will be heavily fined.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She was fined for speeding.""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""He got fined £200 for parking illegally.""");
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
                      word: """fine""",
                      // alsoEnglishWord: "also: fine",
                      britshText: """IpaUK: /faɪn/""",
                      americanText: """IpaUS: /faɪn/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
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
کوردی: باش، خاس، چاک، زۆر باش، خۆش، جوان، ڕند، چەلەنگ،	(ھەوا) خۆرکەوتوو، خۆروبان، تاووبان، نابارانی، ساو، ڕوون،	بەکەیف، بەدەماخ، لەش‌ساغ، ساغ،	ناسک،	گونجاو، باش،	ورد، ئاردەبێژ، نەرم،	باریک، ناسک، نەرم، ئاوەڕێس، موویین،	(دەرزی و ھتد) تیژ، نووک‌تیژ،	پەتی، ناتێکەڵ، پوخت، پاڵێوراو،	تەواو، بەس،	خراپ، شپرزە،	(نووسراوە و وتار) تەق‌وڕەق، جەریمە، زیانە، بژێرە
"""),
                    const DefinitionKurdish(
                        text: """١. (ھاوەڵناو) لە تەندرووستی باشدا"""),
                    SentencesRow(
                      englishText:
                          """I was feeling fine when I got up this morning.""",
                      kurdishText:
                          """کە ئەم بەیانییە ھەستام ھەستم بە باشی دەکرد.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """George looks fine now.""",
                      kurdishText: """ئێستا جۆرج ھەست بە باشی دەکات.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I feel absolutely fine.""",
                      kurdishText: """تەواو ھەست بە باشی دەکەم.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٢. (ھاوەڵناو) بە کوالێتیی باش"""),
                    SentencesRow(
                      englishText:
                          """It's a particularly fine example of Saxon architecture.""",
                      kurdishText:
                          """نموونەیەکی تەواو باشی تەلارسازیی ساکسۆنە.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She's a fine actor and an even finer dancer.""",
                      kurdishText:
                          """ئەکتەرێکی باش و تەنانەت سەماکارێکی باشتریشە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Jim has made a fine job of the garden.""",
                      kurdishText: """ژئم کارێکی باشی لە باخچەکە کردووە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It was his finest hour (= most successful period) as manager of the England team.""",
                      kurdishText:
                          """باشترین ساتی بوو وەک ڕاھێنەری تیمی ئینگلتەرە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This movie features some of her finest work.""",
                      kurdishText:
                          """فیلمەکە ھەندێک لە باشترین کارەکانی لەخۆدەگرێت.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ھاوەڵناو) بۆ گوتن بە کەسێک کە کارێک، پێشنیارێک، یان بڕیارێک ئاساییە"""),
                    SentencesRow(
                      englishText: """‘I'll leave this here, OK?’ ‘Fine.’""",
                      kurdishText: """'لێرە ئەمە جێدەھێڵم، باشە؟' 'باش'.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """If you don't agree, that's fine with him.""",
                      kurdishText: """ئەگەر ڕازی نییت، ئاساییە لای.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She has been virtually ignoring me but I'm fine with that.""",
                      kurdishText:
                          """تا ڕادەیەکی زۆر پشتگوێی خستووم، بەڵام ئاساییە لام.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ھاوەڵناو) بۆ گوتنی ئەوەی ڕەزامەندیت بە شتێک"""),
                    SentencesRow(
                      englishText: """Don't worry. Your speech was fine.""",
                      kurdishText: """نیگەران مەبە. گوتارەکەت باش بوو.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """You go on without me. I'll be fine.""",
                      kurdishText: """بەبێ من بچۆ. کێشەم نابێت.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Never mind, Jake. Everything will be just fine.""",
                      kurdishText: """گوێ مەدەیە، جەیک. ھەموو شت باش دەبێت.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Your hair is perfectly fine the way it is.""",
                      kurdishText: """قژت تەواو باشە بەو شێوەیەی ئێستا.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I knew that everything would turn out fine in the end.""",
                      kurdishText:
                          """دەمزانی ھەموو شتێک لە کۆتاییدا باش دەبیت.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (ھاوەڵناو) کەشێکی خۆش کە باراناوی نییە"""),
                    SentencesRow(
                      englishText: """I hope it stays fine for the picnic.""",
                      kurdishText:
                          """ھیوادارم کەشەکە بە خۆشی بمێنێت بۆ سەیرانەکە.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It was a fine sunny morning.""",
                      kurdishText: """بەیانییەکی خۆرەتاوی خۆش بوو.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """That summer saw weeks of fine dry weather.""",
                      kurdishText:
                          """ھاوین چەندین ھەفتە لە کەشی وشکی بێ‌بارانی لەخۆگرت.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """It's turned out fine again today.""",
                      kurdishText: """ئەمڕۆش دووبارە خۆش بووە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (ھاوەڵناو) سەرنجڕاکێش و جوان"""),
                    SentencesRow(
                      englishText: """She is a fine-looking woman.""",
                      kurdishText: """ژنێکی جوانە.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The boy looks mighty fine in a uniform.""",
                      kurdishText:
                          """کوڕەکە تەواو جوان دیارە لە جلی یەکپۆشیدا.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٧. (ھاوەڵناو) کە لە بەشی بچووک پێکھاتووە"""),
                    SentencesRow(
                      englishText:
                          """She felt the fine sand between her toes.""",
                      kurdishText:
                          """ھەستی بە تۆزە وردەکە لە نێوانی پەنجەکانی کرد.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (ھاوەڵناو) جوان و بچووک یان تەنک"""),
                    SentencesRow(
                      englishText:
                          """She has inherited her mother's fine features (= a small nose, mouth, etc.).""",
                      kurdishText: """بیچمی جوانی دایکی بۆ ماوەتەوە.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """٩. (ھاوەڵناو) زۆر تەنک"""),
                    SentencesRow(
                      englishText:
                          """His fine blond hair came down almost to his shoulders.""",
                      kurdishText:
                          """قژە تەنکە زەردەکەی تا شانەکانی ھاتبوونە خوار.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (ھاوەڵناو) کە سەختە بۆ بینین یان باسکردن"""),
                    SentencesRow(
                      englishText:
                          """There's no need to make such fine distinctions.""",
                      kurdishText:
                          """ھیچ پێویستی نییە بۆ جیاکردنەوەی وەھا بچووک.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You really need a magnifying glass to appreciate all the fine detail.""",
                      kurdishText:
                          """پێویستیمان بە زەڕەبین ھەیە بۆ بینینی ھەموو وردەکارییە بچووکەکان.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (ھاوەڵناو) کە ڕێزی زۆرت بۆی ھەیە"""),
                    SentencesRow(
                      englishText: """He was a fine man.""",
                      kurdishText: """پیاوێکی بەھەیبەت بوو.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (ھاوەڵناو) کە گرنگ دیارە بەڵام بێ‌بایەخە"""),
                    SentencesRow(
                      englishText:
                          """His speech was full of fine words which meant nothing.""",
                      kurdishText:
                          """وتارەکەی پڕ لە وشەی زل بوون کە واتای ھیچیان نەبوو.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٣. (ھاوەڵکار) بەشێوەیەک کە پەسەندکراوە یان باشە"""),
                    SentencesRow(
                      englishText:
                          """Keep going like that—you're doing fine.""",
                      kurdishText:
                          """بەو شێوەیە بەردەوام بە ـ کاری باش دەکەیت.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """That arrangement suits me fine.""",
                      kurdishText: """ڕێککەوتنەکە باش بۆم دەگونجێت.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Things were going fine until you showed up.""",
                      kurdishText: """شتەکان باش دەچوون تاوەکو تۆ دەرکەوتیت.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٤. (ناو) بڕە پارەیەک کە لە بەرامبەر شکاندنی یاسا دەدرێت"""),
                    SentencesRow(
                      englishText:
                          """I got a parking fine for parking on double yellow lines.""",
                      kurdishText:
                          """بژێرەیەکی پارکینگم وەرگرت بۆ وەستان لەسەر جووت ھێڵی زەرد.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Under the new law, motorists face fines of up to £1 000.""",
                      kurdishText:
                          """بەپێی یاسا تازەکان ماتۆڕسواران ڕووبەڕووی سزای تاوەکو ١٠٠٠ پاوەند دەبنەوە.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """١٥. (کردار) سزادان"""),
                    SentencesRow(
                      englishText:
                          """Any company found to be breaking these rules will be heavily fined.""",
                      kurdishText:
                          """ھەر کۆمپانیایەک بزانرێت کە یاساکان دەشکێنێت بە سەختی توندی دەدرێت.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She was fined for speeding.""",
                      kurdishText: """بۆ تیژڕەوی سزادرا.""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He got fined £200 for parking illegally.""",
                      kurdishText:
                          """٢٠٠ پاوەند سزادرا بۆ ڕاگرتنی نایاساییانە.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
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

const String _videoIdend = 'hS2x1zl4rn0';
const double _startSecondsend = 197;
const String _videoIdone = '47MNn4bsmSw';
const double _startSecondsone = 3151;
const String _videoIdtwo = 'NCLZi2Rn_ug';
const double _startSecondstwo = 118;
const String _videoIdthree = '_spuxXnul0U';
const double _startSecondsthree = 845;
const String _videoIdfour = 'HDntl7yzzVI';
const double _startSecondsfour = 224;
const String _videoIdfive = 'o9zCgPtsups';
const double _startSecondsfive = 766;

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