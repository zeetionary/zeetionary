import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryeye extends StatefulWidget {
  const EnglishEntryeye({super.key});

  @override
  State<EnglishEntryeye> createState() => _EnglishEntryeyeState();
}

class _EnglishEntryeyeState extends State<EnglishEntryeye> {
  @override
  void initState() {
    super.initState();
  }

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""eye""");
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
                      word: """eye""",
                      // alsoEnglishWord: "also: eye",
                      britshText: """IpaUK: /aɪ/""",
                      americanText: """IpaUS: /aɪ/""",
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
              const EnglishMeaning(),
              KurdishMeaning(),
              const SentencesFromDatabase(),
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

class SentencesFromDatabase extends StatefulWidget {
  const SentencesFromDatabase({super.key});

  @override
  State<SentencesFromDatabase> createState() => _SentencesFromDatabaseState();
}

class _SentencesFromDatabaseState extends State<SentencesFromDatabase> {
  final String keyword = "eye";
  late FlutterTts flutterTts;
  List<Map<String, dynamic>> filteredSentences = [];

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    fetchSentences();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          if (filteredSentences.isEmpty) {
            return const NoSentencesFromDatabase();
          } else {
            return ListView.builder(
              itemCount: filteredSentences.length,
              itemBuilder: (context, index) {
                final sentence = filteredSentences[index];
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: DatabaseUtils.instance.highlightText(
                                      sentence['english'].toString(),
                                      keyword,
                                      ref,
                                      context,
                                    ),
                                  ),
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child:
                                          DatabaseUtils.instance.highlightText(
                                        sentence['french'].toString(),
                                        keyword,
                                        ref,
                                        context,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(),
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-GB",
                                  ),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-US",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1)
                          const DividerSentences(),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The suspect has dark hair and green eyes.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Keep your eyes shut!""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""There were tears in his eyes.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I have something in my eye.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""His eyes filled with tears.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The ending was so sad it brought tears to my eyes.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Her eyes widened in disbelief.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""His eyes narrowed suspiciously.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Their eyes lit up when they saw all the presents.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """He drew the curtains to make sure no prying eyes saw what he was doing.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He held up the newspaper to shield his eyes from the sun.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Her bleary eyes showed that she hadn't slept.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Her eyes dilated with horror at what she had done.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""Her eyes flew open in surprise.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""He married a blue-eyed blonde from Sweden.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """Children were scared of the one-eyed monster in the story.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""A surgeon needs a good eye and a steady hand.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """Her skill at working with wood is coupled to a keen eye for design.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He looked at the design with the eye of an engineer.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She viewed the findings with a critical eye.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""To my eye, the windows seem out of proportion.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""To an expert eye, the painting is an obvious fake.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The eye of the needle was too small for the thick thread.""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""He couldn't help eyeing the cakes hungrily.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""I could see her eyeing my lunch.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She eyed me warily.""");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: چاو، چاڤ، چەم، دیدە، دیە،	دیتن، بینایی،	بۆچوون، نێرین، ڕوانین، بینین،	کون، سۆ، کوتەسیزە (دەرزی)،	(پەتاتە) زیپکە، گرێ،	(قازان‌قفڵی) قرتێنە،	(دەریاوانی) ئاڵقە، قەف
"""),
          const DefinitionKurdish(text: """١. (ناو) چاو"""),
          SentencesRow(
            englishText: """The suspect has dark hair and green eyes.""",
            kurdishText: """گومان‌لێکراوەکە قژی ڕەش و چاوی سەوزی ھەیە.""",
            onPressedBritish: () => speaksentence1("en-GB"),
            onPressedAmerican: () => speaksentence1("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: """Keep your eyes shut!""",
                    kurdishText: """چاوت بە داخراوی بھێڵەرەوە.""",
                    onPressedBritish: () => speaksentence2("en-GB"),
                    onPressedAmerican: () => speaksentence2("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """There were tears in his eyes.""",
                    kurdishText: """فرمێسک لە چاوەکانیدا بوو.""",
                    onPressedBritish: () => speaksentence3("en-GB"),
                    onPressedAmerican: () => speaksentence3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """I have something in my eye.""",
                    kurdishText: """شتێک لە چاوم دایە.""",
                    onPressedBritish: () => speaksentence4("en-GB"),
                    onPressedAmerican: () => speaksentence4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """His eyes filled with tears.""",
                    kurdishText: """چاوەکانی پڕ لە فرمێسک بوون.""",
                    onPressedBritish: () => speaksentence5("en-GB"),
                    onPressedAmerican: () => speaksentence5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """The ending was so sad it brought tears to my eyes.""",
                    kurdishText:
                        """کۆتاییەکەی ھێندە خەمگین بوو فرمێسکی ھێنایە چاوانم.""",
                    onPressedBritish: () => speaksentence6("en-GB"),
                    onPressedAmerican: () => speaksentence6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """Her eyes widened in disbelief.""",
                    kurdishText: """چاوەکانی لە بێ‌بڕواییدا داچەقان.""",
                    onPressedBritish: () => speaksentence7("en-GB"),
                    onPressedAmerican: () => speaksentence7("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """His eyes narrowed suspiciously.""",
                    kurdishText: """چاوەکانی بەگومانەوە زەق بوونەوە.""",
                    onPressedBritish: () => speaksentence8("en-GB"),
                    onPressedAmerican: () => speaksentence8("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """Their eyes lit up when they saw all the presents.""",
                    kurdishText:
                        """چاوەکانیان گەشایەوە کە ئەو ھەموو دیارییەیان بینی.""",
                    onPressedBritish: () => speaksentence9("en-GB"),
                    onPressedAmerican: () => speaksentence9("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """He drew the curtains to make sure no prying eyes saw what he was doing.""",
                    kurdishText:
                        """پەردەکانی داخست بۆ دڵنیایی کردنەوەی ئەوەی چاوی ھیچ خۆتێ‌ھەڵقورتێنێک نەیبینێت چی دەکرد.""",
                    onPressedBritish: () => speaksentence10("en-GB"),
                    onPressedAmerican: () => speaksentence10("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """He held up the newspaper to shield his eyes from the sun.""",
                    kurdishText:
                        """ڕۆژنامەکەی بەرزکردەوە بۆ پاراستنی چاوەکانی لە خۆرەکە.""",
                    onPressedBritish: () => speaksentence11("en-GB"),
                    onPressedAmerican: () => speaksentence11("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """Her bleary eyes showed that she hadn't slept.""",
                    kurdishText: """چاوە ماندووەکانی دەریخست کە نەخەوتبوو.""",
                    onPressedBritish: () => speaksentence12("en-GB"),
                    onPressedAmerican: () => speaksentence12("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        """Her eyes dilated with horror at what she had done.""",
                    kurdishText:
                        """چاوەکانی گەورەبوون لە تۆقیندا کە زانی چی کردبوو.""",
                    onPressedBritish: () => speaksentence13("en-GB"),
                    onPressedAmerican: () => speaksentence13("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: """Her eyes flew open in surprise.""",
                    kurdishText: """چاوەکانی لە سەرسامیدا داچەقین.""",
                    onPressedBritish: () => speaksentence14("en-GB"),
                    onPressedAmerican: () => speaksentence14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٢. (ناو) ھەبوونی ئەو جۆرە یان ڕێژە چاوەی کە باسکراوە"""),
          SentencesRow(
            englishText: """He married a blue-eyed blonde from Sweden.""",
            kurdishText: """قژ زەردێکی چاو شینی سویدی مارەکرد.""",
            onPressedBritish: () => speaksentence15("en-GB"),
            onPressedAmerican: () => speaksentence15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Children were scared of the one-eyed monster in the story.""",
            kurdishText: """منداڵان ترسا بوون لە دڕندە یەک چاوەکەی چیرۆکەکە.""",
            onPressedBritish: () => speaksentence16("en-GB"),
            onPressedAmerican: () => speaksentence16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٣. (ناو) ھەبوونی توانای بینین"""),
          SentencesRow(
            englishText: """A surgeon needs a good eye and a steady hand.""",
            kurdishText:
                """نەشتەرگەرێک پێویستیی بە چاوێکی باش و دەستێکی جێگیرە.""",
            onPressedBritish: () => speaksentence17("en-GB"),
            onPressedAmerican: () => speaksentence17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """Her skill at working with wood is coupled to a keen eye for design.""",
            kurdishText:
                """شارەزاییەکەی لە کارکردن بە دار تەواوکەرە لەگەڵ چاوێکی تیژ بۆ دیزاین.""",
            onPressedBritish: () => speaksentence18("en-GB"),
            onPressedAmerican: () => speaksentence18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: """٤. (ناو) شێوەیەکی دیاریکراوی کردنی شتێک"""),
          SentencesRow(
            englishText:
                """He looked at the design with the eye of an engineer.""",
            kurdishText: """سەیری دیزاینەکەی کرد بە چاوی ئەندازیارەوە.""",
            onPressedBritish: () => speaksentence19("en-GB"),
            onPressedAmerican: () => speaksentence19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She viewed the findings with a critical eye.""",
            kurdishText: """بەچاوی ڕەخنەگرییەوە سەیری دۆزینەوەکانی کرد.""",
            onPressedBritish: () => speaksentence20("en-GB"),
            onPressedAmerican: () => speaksentence20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """To my eye, the windows seem out of proportion.""",
            kurdishText: """لەبەر چاوی من، پەنجەرەکە ڕێک نییە.""",
            onPressedBritish: () => speaksentence21("en-GB"),
            onPressedAmerican: () => speaksentence21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                """To an expert eye, the painting is an obvious fake.""",
            kurdishText:
                """لەبەر چاوی شارەزایەک، تابلۆکە ساختەیەکی ئاشکرایە.""",
            onPressedBritish: () => speaksentence22("en-GB"),
            onPressedAmerican: () => speaksentence22("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: """٥. (ناو) کونی دەرزی"""),
          SentencesRow(
            englishText:
                """The eye of the needle was too small for the thick thread.""",
            kurdishText:
                """کونی دەرزییەکە زۆر بچووک بوو بۆ دەزووە ئەستوورەکە.""",
            onPressedBritish: () => speaksentence23("en-GB"),
            onPressedAmerican: () => speaksentence23("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  """٦. (کردار) سەیرکردنی شتێک/کەسێک بە وریایی، بەتایبەتی کە ھەست دەکەیت شتێک گوماناوییە یان شتێکت دەوێت"""),
          SentencesRow(
            englishText: """He couldn't help eyeing the cakes hungrily.""",
            kurdishText: """نەیدەتوانی چاو لە کێکەکان نەکات بە برسێتییەوە.""",
            onPressedBritish: () => speaksentence24("en-GB"),
            onPressedAmerican: () => speaksentence24("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """I could see her eyeing my lunch.""",
            kurdishText: """دەمبینی چاوی لەسەر نانی نیوەڕۆم بوو.""",
            onPressedBritish: () => speaksentence25("en-GB"),
            onPressedAmerican: () => speaksentence25("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: """She eyed me warily.""",
            kurdishText: """بە وریاییەوە لێمی دەڕوانی.""",
            onPressedBritish: () => speaksentence26("en-GB"),
            onPressedAmerican: () => speaksentence26("en-US"),
          ),
        ],
      ),
    );
  }
}

class EnglishMeaning extends StatefulWidget {
  const EnglishMeaning({super.key});

  @override
  State<EnglishMeaning> createState() => _EnglishMeaningState();
}

class _EnglishMeaningState extends State<EnglishMeaning> {
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
- Noun: eye (derived forms: eyes)
1. The organ of sight (= oculus, optic)
 
2. Good discernment (either visually or as if visually)
"she has an eye for fresh talent"; "he has an artist's eye"
 
3. Attention to what is seen
"he tried to catch her eye"
 
4. An area that is approximately central within some larger region (= center [US], centre [Brit, Cdn], middle, heart [Brit])
"they were in the eye of the storm";
 
5. A small hole or loop (as in a needle)
"the thread wouldn't go through the eye"
 
6. A reproductive bud in a potato

- Verb: eye (derived forms: eying, eyed, eyeing, eyes)
1. Look at (= eyeball [informal])
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}

const String _videoIdend = 'hS2x1zl4rn0';
const double _startSecondsend = 1025;
const String _videoIdone = 'HDntl7yzzVI';
const double _startSecondsone = 243;
const String _videoIdtwo = 'hTqtGJwsJVE';
const double _startSecondstwo = 388;
const String _videoIdthree = 'lrNcx2D_FZI';
const double _startSecondsthree = 175;
const String _videoIdfour = '2TUGZ1VQDss';
const double _startSecondsfour = 259;
const String _videoIdfive = '8wewPn7TZfs';
const double _startSecondsfive = 0;

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