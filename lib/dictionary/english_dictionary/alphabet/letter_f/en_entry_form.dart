import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryform extends StatefulWidget {
  const EnglishEntryform({super.key});

  @override
  State<EnglishEntryform> createState() => _EnglishEntryformState();
}

class _EnglishEntryformState extends State<EnglishEntryform> {
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
- Noun: form (derived forms: forms)
1. A category of things distinguished by some common characteristic or quality (= kind, sort, variety)
"sculpture is a form of art";
 
2. A perceptual structure (= shape, pattern)
"the composition presents problems for students of musical form";
 
3. Any spatial attributes (especially as defined by outline) (= shape, configuration, contour, conformation)
"he could barely make out their forms";
 
4. The physical body of a human being (= human body, physical body, material body, soma, build, figure, physique, anatomy, shape, bod [informal], chassis [informal], frame, flesh)
"Leonardo studied the form";
 
5. The spatial arrangement of something as distinct from its substance (= shape)
"geometry is the mathematical science of form";
 
6. (linguistics) the phonological or orthographic sound or appearance of a word that can be used to describe or identify something (= word form, signifier, descriptor)
"the inflected forms of a word can be represented by a stem and a list of inflections to be attached";
 
7. The visual appearance of something or someone (= shape, cast)
"the delicate form of his features";
 
8. A printed document with spaces in which to write
"he filled out his tax form"
 
9. (biology) a group of organisms within a species that differ in trivial ways from similar groups (= variant, strain)
"a new form of microorganisms";
 
10. An arrangement of the elements in a composition or discourse
"the essay was in the form of a dialogue"; "he first sketches the plot in outline form"
 
11. A particular mode in which something is manifested
"his resentment took the form of extreme hostility"
 
12. (physical chemistry) a distinct state of matter in a system; matter that is identical in chemical composition and physical state and separated from other material by the phase boundary (= phase)
"the reaction occurs in the liquid form of the system";
 
13. A body of students who are taught together (= class, grade [N. Amer], course)
"early morning forms are always sleepy";
 
14. An ability to perform well
"he was at the top of his form"; "the team was off form last night"
 
15. A life-size dummy used to display clothes (= mannequin, manikin, mannikin, manakin [non-standard])
 
16. A mould for setting concrete
"they built elaborate forms for pouring the foundation"

- Verb: form (derived forms: forming, forms, formed)
1. Create (as an entity) (= organize, organise [Brit])
"They formed a company"; "social groups form everywhere";
 
2. To compose or represent (= constitute, make)
"This wall forms the background of the stage setting";
 
3. Develop into a distinctive entity (= take form, take shape, spring)
"our plans began to form";
 
4. Give shape or form to (= shape)
"form the young child's character";
 
5. Make something, usually for a specific function (= shape, work, mold [N. Amer], mould [Brit, Cdn], forge)
"Form cylinders from the dough";
 
6. Establish or impress firmly in the mind (= imprint)
"We form our ideas onto our children";
 
7. Assume a form or shape
"the water formed little beads"
""",
  );

  final String keyword = "form";
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
    await flutterTts.speak("""form""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Swimming is one of the best forms of exercise.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Along with talking and singing, drawing must be the oldest form of communication.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""There are various forms of transport available.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""We need to look for an alternative form of energy.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""In its purest form, the substance is highly expensive.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Strikes are the most common form of industrial protest.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The continuous form of "stand" is "standing".""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(""""Hers" is the possessive form of "her".""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The disease can take several different forms.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We need to come to some form of agreement.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Help in the form of money will be very welcome.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Help arrived in the form of two police officers.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Most political questions involve morality in some form or other.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I'm opposed to censorship in any shape or form.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The data is stored in digital form.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I filled in/out a form on their website.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We asked them to read and sign consent forms.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Please complete the application form and return it to us.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I had to fill in several order forms.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The human form has changed little over the last 30 000 years.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They made out a shadowy form in front of them.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""In a novel, form and content are equally important.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Henry James is considered to be a master of literary form.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The form of the poem is of great significance.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """After six months' training the whole team is in superb form.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I really need to get back in form.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The horse was clearly out of form.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The player has shown disappointing form recently.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """She signalled her return to form with a convincing victory.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The whole team was on good form and deserved the win.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """On current/present form the party is heading for another election victory.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""What's the form when you apply for a research grant?""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""True to form he arrived an hour late.""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Partners of employees are invited as a matter of form.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """When I was a boy it was always considered bad form to talk about food or money.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Who's your form teacher?""");
  }

  Future<void> speaksentence37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Bend the wire so that it forms a ‘V’.""");
  }

  Future<void> speaksentence38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Rearrange the letters to form a new word.""");
  }

  Future<void> speaksentence39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Games can help children learn to form letters.""");
  }

  Future<void> speaksentence40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Do you know how to form the past tense?""");
  }

  Future<void> speaksentence41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Form the dough into balls with your hands.""");
  }

  Future<void> speaksentence42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The chain is formed from 136 links.""");
  }

  Future<void> speaksentence43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""First get students to form groups of four.""");
  }

  Future<void> speaksentence44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Queues were already forming outside the theatre.""");
  }

  Future<void> speaksentence45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The teams formed up into lines.""");
  }

  Future<void> speaksentence46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Everyone formed into a circle.""");
  }

  Future<void> speaksentence47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Flowers appeared, but fruits failed to form.""");
  }

  Future<void> speaksentence48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Storm clouds are forming on the horizon.""");
  }

  Future<void> speaksentence49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""A plan formed in my head.""");
  }

  Future<void> speaksentence50(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I formed many close friendships at college.""");
  }

  Future<void> speaksentence51(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I didn't see enough of the play to form an opinion about it.""");
  }

  Future<void> speaksentence52(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """I formed the view that the only option was to cancel the project.""");
  }

  Future<void> speaksentence53(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They hope to form the new government.""");
  }

  Future<void> speaksentence54(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He formed a band with some friends from school.""");
  }

  Future<void> speaksentence55(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I decided to form my own company.""");
  }

  Future<void> speaksentence56(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The band formed in 2017.""");
  }

  Future<void> speaksentence57(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The castle forms the focal point of the city.""");
  }

  Future<void> speaksentence58(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""This family forms the core of the film.""");
  }

  Future<void> speaksentence59(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""These drawings will form the basis of the exhibition.""");
  }

  Future<void> speaksentence60(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The trees form a natural protection from the sun's rays.""");
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
                      word: """form""",
                      // alsoEnglishWord: "also: form",
                      britshText: """IpaUK: /fɔːm/""",
                      americanText: """IpaUS: /fɔːrm/""",
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
کوردی: وشە، شێوگ، پەیڤ،	بیچم، نموود، ڕوو، شێوە، تاپۆ، ڕوخسار،	شت،	چوارچێوە، قاڵب، داڕێژگە، بۆتە، داڕێژگ،	جۆر، چەشن، ئاوا، ڕەنگ،	شێواز، شێوە، ڕێگا،	ڕواڵەت، ڕووکەش،	ڕەسم، نەریت، باو، کەڤنەشۆپ،	داب‌ودەستوور،	کردەوە، کار، کردە،	ڕێکخستن، شێوەی کار، جووڵانەوە،	ئامادەیی، سازبوون، تەیاری،	پرسیارنامە، داخوازی‌نامە،	ڕەوش، دۆخ، بارودۆخ، کاودان، دەست‌ودار،	ڕێژە، شێوگ، دەمکات،	تەخت، میز (بێ‌پشتی)،	پۆل، ساڵ،	(بریتانیا) کون، بوودڕ، کولانە، لان (ھی کەروێشک)،	دڵ‌ودەروون، ورە،	(نافەرمی، بریتانیا) پێشینە، ڕابووری
"""),
                    const DefinitionKurdish(text: """١. (ناو) جۆرێک لە شتێک"""),
                    SentencesRow(
                      englishText:
                          """Swimming is one of the best forms of exercise.""",
                      kurdishText:
                          """مەلەکردن یەکێکە لە باشترین جۆرەکانی ڕاھێنان.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Along with talking and singing, drawing must be the oldest form of communication.""",
                              kurdishText:
                                  """ھاوشانی قسەکردن و گۆرانی گوین، وێنەکێشان دەکرێت یەکێکە لە کۆنترین جۆرەکانی پەیوەندی بێت.""",
                              onPressedBritish: () => speaksentence2("en-GB"),
                              onPressedAmerican: () => speaksentence2("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """There are various forms of transport available.""",
                              kurdishText:
                                  """ژمارەیەک جۆری گواستنەوە بەردەستن.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We need to look for an alternative form of energy.""",
                              kurdishText:
                                  """دەبێت بۆ جۆرێکی جێگرەوەی وزە بگەڕێین.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """In its purest form, the substance is highly expensive.""",
                              kurdishText:
                                  """لە پوتترین جۆریدایە، مادەکە تەواو گران‌بەھایە.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Strikes are the most common form of industrial protest.""",
                              kurdishText:
                                  """مانگرتن باوترین جۆری ناڕەزایی پیشەسازییە.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerDefinition(),
                            const DefinitionKurdish(
                                text:
                                    """٢. (ناو) شێوازی نووسینی وشەیەک، بۆ نموونە جۆری کۆ یان دەمێکی کار"""),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The continuous form of "stand" is "standing".""",
                              kurdishText:
                                  """شێوەی بەردەوامی "stand" بریتییە لە "standing".""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """"Hers" is the possessive form of "her".""",
                              kurdishText:
                                  """"Hers" شێوەی خاوەندارێتیی "her" ـە.""",
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
                            """٢. (ناو) شێوەی ھەبوون، دەرکەوتن، دیاربوون، یان پیشاندانی شتێک"""),
                    SentencesRow(
                      englishText:
                          """The disease can take several different forms.""",
                      kurdishText:
                          """نەخۆشییەکە دەکرێت شیوەی جیاواز وەربگرێت.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We need to come to some form of agreement.""",
                      kurdishText: """دەبێت بگەین بە جۆرێک لە ڕێکەوتن.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Help in the form of money will be very welcome.""",
                      kurdishText:
                          """یارمەتی لە شیوەی پارەدا زۆر جێی پێشوازی دەبێت.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Help arrived in the form of two police officers.""",
                      kurdishText: """یارمەتی گەشت بە ھاتنی دوو پۆلیس.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Most political questions involve morality in some form or other.""",
                      kurdishText:
                          """زۆرینەی بابەتە سیاسییەکان ئەخلاق بە شێوەیەک لە شێوەکان لەخۆدەگرێت.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I'm opposed to censorship in any shape or form.""",
                      kurdishText:
                          """دژ بە سانسۆرم بە ھەر ڕەنگ و شێوەیەک بێت.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The data is stored in digital form.""",
                      kurdishText: """داتاکە بەشێوەی دیجیتاڵ ھەڵگیراوە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) بەڵگەنامەیەکی فەرمی کە پرسیاری تێدایە بۆ وەڵامدانەوە"""),
                    SentencesRow(
                      englishText:
                          """I filled in/out a form on their website.""",
                      kurdishText: """فۆرمێکم لەسەر وێبسایتەکەیان پڕکردەوە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We asked them to read and sign consent forms.""",
                      kurdishText:
                          """داوامان لێکردن فۆرمی ڕازیبوون بخوێننەوە و واژۆی بکەن.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Please complete the application form and return it to us.""",
                      kurdishText:
                          """تکایە فۆرمی داخوازینامەکە پڕبکەوە و بیگەڕێنەوە بۆمان.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I had to fill in several order forms.""",
                      kurdishText:
                          """دەبوو ژمارەیەک فۆرمی داواکاری پڕ بکەمەوە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) شێوەی کەسێک/شتێک؛ کەسێک/شتێک کە تەنھا شێوەکەی دەبیندرێت"""),
                    SentencesRow(
                      englishText:
                          """The human form has changed little over the last 30 000 years.""",
                      kurdishText:
                          """مرۆڤ زۆر کەم گۆڕاوە لە ٣٠٠٠٠ ساڵی ڕابردوودا.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """They made out a shadowy form in front of them.""",
                      kurdishText:
                          """شێوەیەکی سێبەرییان درووستکرد لە پێشیان.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (ناو) ڕێکخستنی بەشەکانی شتێک لە کۆی شتەکەدا، بە تایبەتی لە کارێکی ھونەری یان نووسیندا"""),
                    SentencesRow(
                      englishText:
                          """In a novel, form and content are equally important.""",
                      kurdishText:
                          """لە ڕۆماندا و فۆرم و ناوەڕۆک وەک یەک گرنگن.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Henry James is considered to be a master of literary form.""",
                      kurdishText:
                          """ھێنری جەیمس بە مامۆستای فۆرمی ئەدەبی دادەندرێت.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The form of the poem is of great significance.""",
                      kurdishText: """فۆرمی ھۆنراوە گرنگی زۆری ھەیە.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (ناو) کە شتێک چەندە تەندرووستە؛ ئەوەی شتێک تەندرووست بێت"""),
                    SentencesRow(
                      englishText:
                          """After six months' training the whole team is in superb form.""",
                      kurdishText:
                          """لە دوای شەش مانگ لە ڕاھێنان تەواوی تیمەکە لە دۆخێکی ناوازەیە.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I really need to get back in form.""",
                      kurdishText: """پێویستە شێوەی جەستەم بگەڕێنمەوە.""",
                      englishNote:
                          """This means that I need to regain my previous level of fitness, ability, or performance.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The horse was clearly out of form.""",
                      kurdishText: """ئەسپەکە بەڕوونی لە شێوەی ڕێکدا نەبوو.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (ناو) کە شتێک/کەسێک چەندە ئاستی باشە"""),
                    SentencesRow(
                      englishText:
                          """The player has shown disappointing form recently.""",
                      kurdishText:
                          """یاریزانەکە تازەگی ئاستی لاوازی پیشان داوە.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """She signalled her return to form with a convincing victory.""",
                      kurdishText:
                          """گەڕانەوەی بە ئاستی خۆی بە سەرکەوتنێکی قایلکەر پیشان دا.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The whole team was on good form and deserved the win.""",
                      kurdishText:
                          """تەواوی تیمەکە لە ئاستی باش بوون و شایستەی بردنەوەکە بوون.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """On current/present form the party is heading for another election victory.""",
                      kurdishText:
                          """بەم شێوەیەی ئێستا پارتەکە بەرەو بردنەوەیەکی دیکەی ھەڵبژاردن دەچێت.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٩. (ناو) شێوەی ئاسایی کردنی شتێک"""),
                    SentencesRow(
                      englishText:
                          """What's the form when you apply for a research grant?""",
                      kurdishText: """شێوەی داواکردنی خەرجی توێژینەوە چۆنە؟""",
                      englishNote:
                          """This means you are asking about the specific document or paperwork required when you apply for funding to support a research project.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """True to form (= as he usually does) he arrived an hour late.""",
                      kurdishText: """وەک ھەمیشە یەک کاتژمێر درەنگ گەشت.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Partners of employees are invited as a matter of form (= because that is the usual way things are done).""",
                      kurdishText:
                          """ھاوژینانی کارمەندان وەک نەریت بانگ دەکرێن (ھەمیشە وابووە).""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (ناو) ڕێگای کردنی شتەکان کە لە لایەنی کۆمەڵایەتییەوە پەسەندکراوە"""),
                    SentencesRow(
                      englishText:
                          """When I was a boy it was always considered bad form to talk about food or money.""",
                      kurdishText:
                          """کە منداڵ بووم ھەمیشە بە ڕەفتاری خراپ دادەنرا کە قسە لەسەر خواردن یان پارە بکەیت.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١١. (ناو) پۆلی قوتابخانەیەک"""),
                    SentencesRow(
                      englishText: """Who's your form teacher?""",
                      kurdishText: """کێ مامۆستای قوتابخانەکەتانە؟""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٢. (کردار) درووستکردنی شتێک بەشێوەیەکی دیاریکراو یان ئەوەی شێوەیەکی دیاریکراوی ھەبێت"""),
                    SentencesRow(
                      englishText: """Bend the wire so that it forms a ‘V’.""",
                      kurdishText:
                          """وایەرەکە بچەمێنەوە بۆ ئەوەی V درووست بکات.""",
                      onPressedBritish: () => speaksentence37("en-GB"),
                      onPressedAmerican: () => speaksentence37("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Rearrange the letters to form a new word.""",
                              kurdishText:
                                  """پیتەکان ڕێکبخەوە بۆ ئەوەی وشەیەکی تازە درووست بکەن.""",
                              onPressedBritish: () => speaksentence38("en-GB"),
                              onPressedAmerican: () => speaksentence38("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Games can help children learn to form letters.""",
                              kurdishText:
                                  """یاری دەکرێت یارمەتیی منداڵان بدات کە پیت بنووسن.""",
                              onPressedBritish: () => speaksentence39("en-GB"),
                              onPressedAmerican: () => speaksentence39("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Do you know how to form the past tense?""",
                              kurdishText:
                                  """دەزانیت چۆن ڕستەی ڕابردووی سادە درووست بکەیت.""",
                              onPressedBritish: () => speaksentence40("en-GB"),
                              onPressedAmerican: () => speaksentence40("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Form the dough into balls with your hands.""",
                              kurdishText: """ھەویرەکە بکە بە تۆپەڵ بەدەستت.""",
                              onPressedBritish: () => speaksentence41("en-GB"),
                              onPressedAmerican: () => speaksentence41("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The chain is formed from 136 links.""",
                              kurdishText:
                                  """زنجیرەکە بە ١٣٦ ئەڵقە درووست بووە.""",
                              onPressedBritish: () => speaksentence42("en-GB"),
                              onPressedAmerican: () => speaksentence42("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٣. (کردار) ڕێکخستنی شت یان خەڵکی بەشیوەیەک کە لە گرووپێک بن بە شێوەی دیاریکراوەوە؛ ئەوەی لە گرووپێکی وەھا ڕێکبخرێیت"""),
                    SentencesRow(
                      englishText:
                          """First get students to form groups of four.""",
                      kurdishText:
                          """سەرەتا خوێندکارەکان بکە بە گرووپی چوار کەسییەوە.""",
                      onPressedBritish: () => speaksentence43("en-GB"),
                      onPressedAmerican: () => speaksentence43("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Queues were already forming outside the theatre.""",
                      kurdishText:
                          """ڕیز پێشوەختە درووست دەبوون لە دەرەوەی ھۆڵی شانۆکە.""",
                      onPressedBritish: () => speaksentence44("en-GB"),
                      onPressedAmerican: () => speaksentence44("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The teams formed up into lines.""",
                      kurdishText: """تیمەکان بوونە ڕیزەوە.""",
                      onPressedBritish: () => speaksentence45("en-GB"),
                      onPressedAmerican: () => speaksentence45("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Everyone formed into a circle.""",
                      kurdishText: """ھەموان بازنەیان درووست کرد.""",
                      onPressedBritish: () => speaksentence46("en-GB"),
                      onPressedAmerican: () => speaksentence46("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٤. (کردار) ئەوەی درووست ببێت و کەم‌کەم شێوەیەکی دیاریکراو وەربگرێت"""),
                    SentencesRow(
                      englishText:
                          """Flowers appeared, but fruits failed to form.""",
                      kurdishText: """گوڵ دەرکەوتن، بەڵام میوەیان نەگرت.""",
                      onPressedBritish: () => speaksentence47("en-GB"),
                      onPressedAmerican: () => speaksentence47("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Storm clouds are forming on the horizon.""",
                      kurdishText: """ھەوری زریانی لە ئاسۆوە دەردەکەوتن.""",
                      onPressedBritish: () => speaksentence48("en-GB"),
                      onPressedAmerican: () => speaksentence48("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٥. (کردار) دەستکردن بە درووست بوون و گەشەکردن؛ ئەوەی شتێک وەھا بکات"""),
                    SentencesRow(
                      englishText: """A plan formed in my head.""",
                      kurdishText: """پلانێک لە مێشکم درووست بوو.""",
                      onPressedBritish: () => speaksentence49("en-GB"),
                      onPressedAmerican: () => speaksentence49("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I formed many close friendships at college.""",
                      kurdishText:
                          """ژمارەیەک ھاوڕێیەتی نزیکم لە کۆلێژ درووست کرد.""",
                      onPressedBritish: () => speaksentence50("en-GB"),
                      onPressedAmerican: () => speaksentence50("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I didn't see enough of the play to form an opinion about it.""",
                      kurdishText:
                          """بەشی پێویست لە شانۆکەم نەدی کە بۆچوون لەسەری درووست بکەم.""",
                      onPressedBritish: () => speaksentence51("en-GB"),
                      onPressedAmerican: () => speaksentence51("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I formed the view that the only option was to cancel the project.""",
                      kurdishText:
                          """ئەو بۆچوونەم بۆ درووست بوو کە تەنھا ھەڵبژاردە ھەڵوەشاندنەوەی پڕۆژەکە بوو.""",
                      onPressedBritish: () => speaksentence52("en-GB"),
                      onPressedAmerican: () => speaksentence52("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٦. (کردار) درووستکردنی دامەزراوەیەک، دەستەیەک، حکومەتێک، ھتد"""),
                    SentencesRow(
                      englishText: """They hope to form the new government.""",
                      kurdishText: """بەھیوان حکومەتی داھاتوو درووست بکەن.""",
                      onPressedBritish: () => speaksentence53("en-GB"),
                      onPressedAmerican: () => speaksentence53("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He formed a band with some friends from school.""",
                      kurdishText:
                          """باندێکی لەگەڵ ژمارەیەک ھاوڕێی لە قوتابخانە درووست کرد.""",
                      onPressedBritish: () => speaksentence54("en-GB"),
                      onPressedAmerican: () => speaksentence54("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """I decided to form my own company.""",
                      kurdishText: """بڕیارمدا کۆمپانیای خۆم پێکبێنم.""",
                      onPressedBritish: () => speaksentence55("en-GB"),
                      onPressedAmerican: () => speaksentence55("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The band formed in 2017.""",
                      kurdishText: """باندەکە ساڵی ٢٠١٧ درووست بوو.""",
                      onPressedBritish: () => speaksentence56("en-GB"),
                      onPressedAmerican: () => speaksentence56("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٧. (کردار) ئەوەی شتێک ئەرکێک یان شێوەیەکی ھەبێت"""),
                    SentencesRow(
                      englishText:
                          """The castle forms the focal point of the city.""",
                      kurdishText: """قەڵاکە ناوەندی شارەکەیە.""",
                      onPressedBritish: () => speaksentence57("en-GB"),
                      onPressedAmerican: () => speaksentence57("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This family forms the core of the film.""",
                      kurdishText:
                          """ئەم خێزانە بەشی سەرەکیی فیلمەکە پێکدەھێنێت.""",
                      onPressedBritish: () => speaksentence58("en-GB"),
                      onPressedAmerican: () => speaksentence58("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """These drawings will form the basis of the exhibition.""",
                      kurdishText:
                          """ئەم وێنانە بەشی سەرەکی پێشانگاکە پێکدەھێنن.""",
                      onPressedBritish: () => speaksentence59("en-GB"),
                      onPressedAmerican: () => speaksentence59("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The trees form a natural protection from the sun's rays.""",
                      kurdishText:
                          """دارەکان پاراستنی سرووشتنی لە تیشکی خۆر بەدەست دەھێنن.""",
                      onPressedBritish: () => speaksentence60("en-GB"),
                      onPressedAmerican: () => speaksentence60("en-US"),
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

const String _videoIdend = '21Z4RIOFhMA';
const double _startSecondsend = 751;
const String _videoIdone = 'khOUvmOQExc';
const double _startSecondsone = 631;
const String _videoIdtwo = 'R_fZjGm2OrM';
const double _startSecondstwo = 239;
const String _videoIdthree = '9-hmg1UHySY';
const double _startSecondsthree = 57;
const String _videoIdfour = 'Jk7NYEhai0g';
const double _startSecondsfour = 87;
const String _videoIdfive = 'LLmsekLy_yI';
const double _startSecondsfive = 121;

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