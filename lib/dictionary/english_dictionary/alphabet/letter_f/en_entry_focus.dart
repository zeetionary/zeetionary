import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfocus extends StatefulWidget {
  const EnglishEntryfocus({super.key});

  @override
  State<EnglishEntryfocus> createState() => _EnglishEntryfocusState();
}

class _EnglishEntryfocusState extends State<EnglishEntryfocus> {
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
- Noun: focus (derived forms: foci, focuses)
1. The concentration of attention or energy on something (= focusing, focussing, focal point, direction, centering [US], centring [Brit, Cdn])
"the focus of activity shifted to molecular biology";
 
2. Special emphasis attached to something (= stress)
"the focus was more on accuracy than on speed";
 
3. Maximum clarity or distinctness of an image rendered by an optical system
"in focus"; "out of focus"
 
4. Maximum clarity or distinctness of an idea
"the controversy brought clearly into focus an important difference of opinion"
 
5. A central point or locus of an infection in an organism (= focal point, nidus)
"the focus of infection";
 
6. A point of convergence of light (or other radiation) or a point from which it diverges (= focal point)
 
7. A fixed reference point on the concave side of a conic section
 
8. (computing) the active element in a user interface, typically where user input will appear on screen
"when you click a text box, it gets the input focus"

- Verb: focus (derived forms: focused, focusing, focuses, focussed, focussing, focusses)
1. Hold attention and exert mental effort on something (= concentrate, center [US], centre [Brit, Cdn], pore, rivet, pore over)
"Please focus on your studies and not on your hobbies";
 
2. Cause to converge on or toward a central point
"Focus the light on this image"
 
3. [Brit] Bring into focus or alignment; to converge or cause to converge; of ideas or emotions (= concenter [US], concentre [Brit, Cdn], focalize, focalise [Brit])
 
4. Become focussed or come into focus (= focalize, focalise [Brit])
"The light focused";
 
5. Put (an image) into focus (= focalize, focalise [Brit], sharpen)
"Please focus the image; we cannot enjoy the movie";
""",
  );

  final String keyword = "focus";
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
    await flutterTts.speak("""focus""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The discussion focused on three main issues.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Each exercise focuses on a different grammar point.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """He had artistic interests but his teachers encouraged him to focus elsewhere.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The visit helped to focus world attention on the plight of the refugees.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """All eyes are focused on the presidential elections at the moment.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""We need to decide where to focus our efforts.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Children with ADHD find it difficult to focus.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """You might choose to focus on a particular aspect of the nineteenth century.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """Much recent concern has been focused upon sea level rises.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The exhibition is focused primarily upon architecture.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Schools should not focus exclusively on exam results.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""My own research is focused on classical traditions.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""This should help focus your attention.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""It took a few moments for her eyes to focus in the dark.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""In this scene, the camera focuses on the actor's face.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""He focused his blue eyes on her.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I quickly focused the camera on the children.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""I quickly focused the camera on the children.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""It was the main focus of attention at the meeting.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The primary focus of the book is practical teaching techniques.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""His comments provided a focus for debate.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""We shall maintain our focus on the needs of the customer.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """The incident brought the problem of violence in schools into sharp focus.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """He began to shift his focus towards writing for the theatre.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""The article does not seem to have any clear focus.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("""Some parts of the photograph are out of focus.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        """When I got glasses, suddenly the whole world came into focus.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""The binoculars were not in focus.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Her eyes lost focus and she fainted.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""His photographs are badly out of focus.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Suddenly her face snaps into focus.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("""Try to get their faces in focus.""");
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
                      word: """focus""",
                      // alsoEnglishWord: "also: focus",
                      britshText: """IpaUK: /ˈfəʊkəs/""",
                      americanText: """IpaUS: /ˈfəʊkəs/""",
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
کوردی: تیشکۆ، ناوەند، خڕگە،	میزان‌کردن یان ڕێکخستنی مەودا،	ناوەندی چالاکی، جێی سەرنج، چەق، مایەی سەرنج، ناوەندی سەرنج‌پێدان
"""),
// With short examples define "focus", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (کردار) تیشک یان سەرنج خستنە سەر شتێک، دۆخێک، بابەتێک، یان کەسێک"""),
                    SentencesRow(
                      englishText:
                          """The discussion focused on three main issues.""",
                      kurdishText: """باسەکە سەرنجی لەسەر سێ خاڵ بوو.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Each exercise focuses on a different grammar point.""",
                      kurdishText:
                          """ھەر ڕاھێنانێک سەرنج دەخاتە سەر خاڵێکی دیاریکراوی ڕێزمان.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """He had artistic interests but his teachers encouraged him to focus elsewhere.""",
                              kurdishText:
                                  """حەزی ھونەری ھەبوو بەڵام مامۆستاکانی ھانیان دا سەرنج لەسەر شتی دیکە دابنێت.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The visit helped to focus world attention on the plight of the refugees.""",
                              kurdishText:
                                  """سەردانەکە یارمەتیدەر بوو کە سەرنجی جیھان بخاتە سەر دۆخی سەختی پەنابەران.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """All eyes are focused on the presidential elections at the moment.""",
                              kurdishText:
                                  """ھەموو چاوەکان لەسەر ھەڵبژاردنی سەرۆکایەتین.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """We need to decide where to focus our efforts.""",
                              kurdishText:
                                  """دەبێت بڕیار بدەین ھەوڵەکانمان بۆچی تەرخان بکەین.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Children with ADHD find it difficult to focus.""",
                              kurdishText:
                                  """منداڵانی تووشبوو بە ADHD بە سەختی دەزانن سەرنج بدەن.""",
                              onPressedBritish: () => speaksentence7("en-GB"),
                              onPressedAmerican: () => speaksentence7("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """You might choose to focus on a particular aspect of the nineteenth century.""",
                              kurdishText:
                                  """دەتوانیت وەھا بکەیت سەرنج بخەیتە سەر لایەنێکی دیاریکراوی سەدەی نۆزدە.""",
                              onPressedBritish: () => speaksentence8("en-GB"),
                              onPressedAmerican: () => speaksentence8("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Much recent concern has been focused upon sea level rises.""",
                              kurdishText:
                                  """زۆر نیگەرانی ئەم ماوەیە لەسەر بەرزبوونەوەی ئاستی دەریا بووە.""",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The exhibition is focused primarily upon architecture.""",
                              kurdishText:
                                  """پێشانگاکە بە شێوەیەکی سەرەکی پشتی بە ئەندازیاری بەستووە.""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Schools should not focus exclusively on exam results.""",
                              kurdishText:
                                  """قوتابخانەکان نابێت بە تەنھایی سەرنج بخەنە سەر ئەنجامی تاقیکردنەوەکان.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """My own research is focused on classical traditions.""",
                              kurdishText:
                                  """لێکۆڵینەوەکەی خۆم سەرنجی لەسەر نەریتە کلاسیکییەکانە.""",
                              onPressedBritish: () => speaksentence12("en-GB"),
                              onPressedAmerican: () => speaksentence12("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """This should help focus your attention.""",
                              kurdishText:
                                  """ئەمە دەبێت یارمەتیدەر بێت بۆ ئاراستەکردنی سەرنجت.""",
                              onPressedBritish: () => speaksentence13("en-GB"),
                              onPressedAmerican: () => speaksentence13("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) ڕاھاتن یان گۆڕان بۆ ئەوەی بینین ئاسایی بێت"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It took a few moments for her eyes to focus in the dark.""",
                      kurdishText:
                          """چەند ساتێکی کەمی پێچوو بۆ چاوەکانی ڕابێت بە تاریکییەکە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """In this scene, the camera focuses on the actor's face.""",
                      kurdishText:
                          """لەم دیمەنەدا کامێراکە دەچێتە سەر ڕووخساری ئەکتەرەکە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """He focused his blue eyes on her.""",
                      kurdishText: """چاوە شینەکانی خستە سەر کچەکە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I quickly focused the camera on the children.""",
                      kurdishText: """زوو کامێراکەم خستە سەر منداڵەکان.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I quickly focused the camera on the children.""",
                      kurdishText: """ئەو کاتە چاوم لەسەر شتی دیکە بوو.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (ناو) ئەو شتەی خەڵکی زۆرترین حەزیان بۆی ھەیە؛ ئەوەی سەرنجی تابەتی بدەیت بە شتێک و وەھا بکەیت خەڵکی حەزی لێ بکەن"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """It was the main focus of attention at the meeting.""",
                      kurdishText:
                          """ئەوە بابەتی جێی سەرنج بوو لە چاوپێکەوتنەکە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The primary focus of the book is practical teaching techniques.""",
                      kurdishText:
                          """بابەتی سەرەکیی کتێبەکە تەکنیکەکانی فێرکردنی کردارییە.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """His comments provided a focus for debate.""",
                      kurdishText:
                          """لێدوانەکانی بابەتێکیان دابەدەستەوە بۆ باسکردن.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We shall maintain our focus on the needs of the customer.""",
                      kurdishText:
                          """دەبێت سەرنجمان بھێڵینەوە لەسەر پێویستییەکانی کڕیار.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The incident brought the problem of violence in schools into sharp focus.""",
                      kurdishText:
                          """ڕووداوەکە کێشەی توندوتیژی لە قوتابخانەکان ھێنایە بەر سەرنجی توند.""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He began to shift his focus towards writing for the theatre.""",
                      kurdishText:
                          """دەستی کرد بە پێدانی سەرنجی بە نووسین بۆ شانۆ.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The article does not seem to have any clear focus.""",
                      kurdishText:
                          """وتارەکە وەھا دیار نییە کە ھیچ سەرنجێکی ڕوونی ھەبێت.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) خاڵێک یان مەودایەک کە لێیەوە دەورووبەری شتێک بە ڕوونی دیارە بە چاو یان لێنز"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Some parts of the photograph are out of focus (= blurred rather than clearly seen).""",
                      kurdishText: """ھەندێک بەشی وێنەکە لەبەرچاو نین.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """When I got glasses, suddenly the whole world came into focus.""",
                      kurdishText:
                          """کە چاویلکەم بەکارھێنا، لەناکاو ھەموو دونیا ڕوون بوویەوە.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The binoculars were not in focus (= were not showing things clearly).""",
                      kurdishText: """دووربینەکە ڕوون نەبوو.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Her eyes lost focus and she fainted.""",
                      kurdishText: """چاوەکانی تیژی لەدەست دا و بوورایەوە.""",
                      englishNote:
                          "This means her vision became blurry or unfocused, leading to her fainting.",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """His photographs are badly out of focus.""",
                      kurdishText: """وێنەکانی زۆر ناڕوونن.""",
                      englishNote:
                          """This means that his photographs are not sharp or clear, indicating that they were not properly focused when taken.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Suddenly her face snaps into focus.""",
                      kurdishText: """لەناکاو ڕووخساری ڕوون دەبێتەوە.""",
                      englishNote:
                          """This means that suddenly and sharply, her face becomes clear and distinct, as if the viewer or observer can now see it clearly and in detail.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Try to get their faces in focus.""",
                      kurdishText:
                          """ھەوڵ بدە ڕووخساریان بە ڕوونی پیشان بدەیت.""",
                      englishNote:
                          """This means to adjust the camera or lens settings so that the faces in the photograph become clear and sharp, ensuring they are in focus for the best possible image quality.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
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
const double _startSecondsend = 329;
const String _videoIdone = 'L7APBWkgw50';
const double _startSecondsone = 15;
const String _videoIdtwo = 'yKXs6mJBUbA';
const double _startSecondstwo = 427;
const String _videoIdthree = 'GLIMSRZ80zE';
const double _startSecondsthree = 722;
const String _videoIdfour = 'II-OP6vdMs8';
const double _startSecondsfour = 64;
const String _videoIdfive = 'sV-OCJGsVp4';
const double _startSecondsfive = 12;

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