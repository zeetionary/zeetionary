import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryfix extends StatefulWidget {
  const EnglishEntryfix({super.key});

  @override
  State<EnglishEntryfix> createState() => _EnglishEntryfixState();
}

class _EnglishEntryfixState extends State<EnglishEntryfix> {
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
- Verb: fix (derived forms: fixing, fixed, fixes)
1. Restore by replacing a part or putting together what is torn or broken (= repair, mend, bushel [US], doctor [informal], furbish up, restore, touch on)
"She fixed her TV set";
 
2. Cause to be firmly attached (= fasten, secure)
"she fixed her gaze on the man";
 
3. Decide upon definitely; give a value (= specify, set, determine, define, limit)
"fix the variables";
 
4. [informal] (of food) combine or process (e.g. heat) to make ready for eating (= cook, ready, make, prepare)
"fix breakfast for the guests, please";
 
5 [informal] Take vengeance on or get even (= pay back, pay off, get)
"That'll fix him good!";
 
6. Set or place definitely
"Let's fix the date for the party!"
 
7. (cytology) kill, preserve, and harden (tissue) in order to prepare for microscopic study
 
8. Make fixed, stable or stationary (= fixate)
"let's fix the picture to the frame";
 
9. Make infertile (= sterilize, sterilise [Brit], desex, unsex, desexualize, desexualise [Brit])
"in some countries, people with genetically transmissible disabilites are fixed";
 
10. [informal] Influence an event or its outcome by illegal means
"fix a race"
 
11. Put (something somewhere) firmly (= situate, posit, deposit)
"fix your eyes on this spot";
 
12. Make ready or suitable or equip in advance for a particular purpose or for some use, event, etc (= prepare, set up, ready, gear up, set)
"I was fixing to leave town after I paid the hotel bill";
 
13. To be about to do something

- Noun: fix (derived forms: fixes)
1. [informal] The quality of being almost beyond one's ability to deal with and requiring a great effort to achieve a positive result (= difficulty, difficultness, hole [informal], jam [informal], mess [informal], muddle [informal], pickle [informal], kettle of fish [informal])
"he got into a terrible fix";
 
2. Something craved, especially an intravenous injection of a narcotic drug
"she needed a fix of chocolate"
 
3. The act of putting something in working order again (= repair, fixing, fixture, mend, mending, reparation)
 
4. An exemption granted after influence (e.g., money) is brought to bear
"collusion resulted in tax fixes for gamblers"
 
5. A determination of the place where something is (= localization, localisation [Brit], location, locating)
"he got a good fix on the target";
""",
  );

  final String keyword = "fix";
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
    await flutterTts.speak("""fix""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I've fixed the problem.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The car won't start—can you fix it?""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Businesses and government have spent billions of dollars to find and fix the bug.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We need to get the TV fixed.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Don't imagine that the law can fix everything.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The company had a bad image that needed fixing.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Has the date of the next meeting been fixed?""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Their prices are fixed until the end of the year.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""A second trial date was fixed for 7th December.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""They fixed the rent at £200 a week.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Their departure was fixed for 14 August.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'll fix a meeting.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""You have to fix visits up in advance with the museum.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Just give me a list of your friends, and I'll fix things up for them.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""We'll go tomorrow then. Will you fix it with the others?""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The handrail can be fixed directly to the wall.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Fix the bars in position with the screws provided.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We fixed the bookcase to the wall.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Many shops have video cameras fixed to their walls or ceilings for security reasons.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We can fix the ship's exact position at the time the fire broke out.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Can I fix you a drink?""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm just going to fix myself some breakfast.""");
  }

  Future<void> speaksentence23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Can I fix a drink for you?""");
  }

  Future<void> speaksentence24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'll fix my hair and then I'll be ready.""");
  }

  Future<void> speaksentence25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""I'm sure the race was fixed.""");
  }

  Future<void> speaksentence26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Don't worry—I'll fix him.""");
  }

  Future<void> speaksentence27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Luckily there is an easy fix.""");
  }

  Future<void> speaksentence28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There is no quick fix for the steel industry.""");
  }

  Future<void> speaksentence29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""There had to be a technological fix for the problem.""");
  }

  Future<void> speaksentence30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""This is nothing other than a short-term political fix.""");
  }

  Future<void> speaksentence31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""I need a fix of coffee before I can face the day.""");
  }

  Future<void> speaksentence32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We've got ourselves in a fix about this.""");
  }

  Future<void> speaksentence33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""How did you get into such a fix?""");
  }

  Future<void> speaksentence34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""They managed to get a fix on the yacht's position.""");
  }

  Future<void> speaksentence35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Investigators are no closer to getting a fix on the extent of the hacking.""");
  }

  Future<void> speaksentence36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her promotion was a fix, I'm sure!""");
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
                      word: """fix""",
                      // alsoEnglishWord: "also: fix",
                      britshText: """IpaUK: /fɪks/""",
                      americanText: """IpaUS: /fɪks/""",
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
کوردی: دابەستن، گیرکردن، چەسپاندن،	سەرێشە، گێچەڵ، تەنگ‌وچەڵەمە، گرفتاری، گۆڵمەز، دەردەسەر،	پەیداکردن یان دۆزینەوەی بارودۆخ، دیاری‌کردنی ھەل‌ومەرج (کەشتی، فڕۆکە و ھتد)، ڕەوش، ھەل‌ومەرج، بارودۆخ،	(ھەڵبژاردن) فرت‌وفێڵ، دەسکاری، گزەکاری،	کردنەڕەگ، دەرزی‌لێدان (نافەرمی، بەنگ)
"""),
                    const DefinitionKurdish(
                        text: """١. (کردار) چاککردنەوە یان باشکردنی شتێک"""),
                    SentencesRow(
                      englishText: """I've fixed the problem.""",
                      kurdishText: """کێشەکەم چارە کردووە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The car won't start—can you fix it?""",
                      kurdishText:
                          """ئۆتۆمبێلەکە ناکەوێتە کار ـ دەتوانیت چاکی بکەیتەوە؟""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """Businesses and government have spent billions of dollars to find and fix the bug.""",
                              kurdishText:
                                  """بازرگانییەکان و حکومەت ملیۆنان دۆلاریان خەرجکردووە بۆ چاەسەری کێشەکە.""",
                              onPressedBritish: () => speaksentence3("en-GB"),
                              onPressedAmerican: () => speaksentence3("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText: """We need to get the TV fixed.""",
                              kurdishText:
                                  """دەبێت تەلەفیزیۆنەکە چاک بکەینەوە.""",
                              onPressedBritish: () => speaksentence4("en-GB"),
                              onPressedAmerican: () => speaksentence4("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Don't imagine that the law can fix everything.""",
                              kurdishText:
                                  """خەیاڵی ئەوە مەکە یاسا دەتوانێت ھەموو شت چارەسەر بکات.""",
                              onPressedBritish: () => speaksentence5("en-GB"),
                              onPressedAmerican: () => speaksentence5("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """The company had a bad image that needed fixing.""",
                              kurdishText:
                                  """کۆمپانیاکە ناوبانگێکی خراپی ھەیە کە پێویستیی بە چارەسەرە.""",
                              onPressedBritish: () => speaksentence6("en-GB"),
                              onPressedAmerican: () => speaksentence6("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) بڕیاردان لە ڕێکەوت، کات، یان بڕی شتێک"""),
                    SentencesRow(
                      englishText:
                          """Has the date of the next meeting been fixed?""",
                      kurdishText: """ڕێکەوتی چاوپێکەوتنەکە بڕیاری لێدراوە؟""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Their prices are fixed until the end of the year (= will not change before then).""",
                      kurdishText: """نرخەکان تا کۆتایی ساڵ دیاری کراون.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    Column(
                      children: [
                        MyExpansionTile(
                          children: [
                            SentencesRow(
                              englishText:
                                  """A second trial date was fixed for 7th December.""",
                              kurdishText:
                                  """ڕێکەوتی دووەم دانیشتنی دادگا بۆ ٧ ـی کانوونی یەکەم دیاریکراوە.""",
                              onPressedBritish: () => speaksentence9("en-GB"),
                              onPressedAmerican: () => speaksentence9("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """They fixed the rent at £200 a week.""",
                              kurdishText:
                                  """کرێیەکەیان بە ٢٠٠ پاوەند بۆ ھەفتەیەک جێگیر کرد.""",
                              onPressedBritish: () => speaksentence10("en-GB"),
                              onPressedAmerican: () => speaksentence10("en-US"),
                            ),
                            const DividerSentences(),
                            SentencesRow(
                              englishText:
                                  """Their departure was fixed for 14 August.""",
                              kurdishText:
                                  """دەرچوون بۆ ١٤ ـی ئاب دیاریکراو.""",
                              onPressedBritish: () => speaksentence11("en-GB"),
                              onPressedAmerican: () => speaksentence11("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (کردار) ڕێکخستن بۆ شتێک"""),
                    SentencesRow(
                      englishText: """I'll fix a meeting.""",
                      kurdishText: """کۆبوونەوەیەک ڕێکدەخەم.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """You have to fix visits up in advance with the museum.""",
                      kurdishText:
                          """دەبێت پێشوەختە لەگەڵ مۆزەخانەکە سەردان ڕێک بخەیت.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Just give me a list of your friends, and I'll fix things up for them.""",
                      kurdishText:
                          """تەنھا لیستێکی ھاوڕێکانتم پێبدە و شتەکانیان بۆ ڕێکدەخەم.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We'll go tomorrow then. Will you fix it with the others?""",
                      kurdishText:
                          """کەواتە سبەی دەچین. لەگەڵ ئەوانی دیکە ڕێکی دەخەیت؟""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) دانانی شتێک لە شوێنێک بۆ ئەوەی نەجووڵێت"""),
                    SentencesRow(
                      englishText:
                          """The handrail can be fixed directly to the wall.""",
                      kurdishText:
                          """دەستگیرەکە دەکرێت ڕاستەوخۆ بلکێندرێت بە دیوارەکەوە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Fix the bars in position with the screws provided.""",
                      kurdishText:
                          """پارچەکان جێگیر بکە بەو بورغووانەی دابینکراون.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We fixed the bookcase to the wall.""",
                      kurdishText: """جێ‌کتێبەکەمان بەست بە دیوارەکەوە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Many shops have video cameras fixed to their walls or ceilings for security reasons.""",
                      kurdishText:
                          """زۆر فرۆشگا کامێرای ڤیدیۆییان ھەیە بەستراون بە دیوار و بنبانەکانەوە بۆ ھۆکاری سەلامەتی.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (کردار) دۆزینەوە یان گوتنی کات، جێگا، ھتد ـی دیاریکراوی شتێک"""),
                    SentencesRow(
                      englishText:
                          """We can fix the ship's exact position at the time the fire broke out.""",
                      kurdishText:
                          """دەتوانین شوێنی دیاریکراوی کەشتییەکە بدۆزینەوە لەو کاتەی ئاگرەکە ھەڵگیرسا.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (کردار) دابینکردنی یان ئامادەکردنی شتێک"""),
                    SentencesRow(
                      englishText: """Can I fix you a drink?""",
                      kurdishText: """دەتوانیت خواردنەوەیەک ئامادە بکەیت؟""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """I'm just going to fix myself some breakfast.""",
                      kurdishText:
                          """تەنھا ھەندێک نانی بەیانی بۆ خۆم ئامادە دەکەم.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Can I fix a drink for you?""",
                      kurdishText: """خواردنەوەیەکت بۆ ئامادە بکەم؟""",
                      onPressedBritish: () => speaksentence23("en-GB"),
                      onPressedAmerican: () => speaksentence23("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) چاککردن و دەستکاری قژ یان ڕووخسار"""),
                    SentencesRow(
                      englishText:
                          """I'll fix my hair and then I'll be ready.""",
                      kurdishText: """قژم چاک دەکەم و دواتر ئامادە دەبم.""",
                      onPressedBritish: () => speaksentence24("en-GB"),
                      onPressedAmerican: () => speaksentence24("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) دیاریکردنی ئەنجامی شتێک بەشێوەیەک کە ڕاستگۆیانە یان دادپەروەری نییە"""),
                    SentencesRow(
                      englishText: """I'm sure the race was fixed.""",
                      kurdishText: """دڵنیام پێشبڕکێیەکە ڕێکخراو بوو.""",
                      onPressedBritish: () => speaksentence25("en-GB"),
                      onPressedAmerican: () => speaksentence25("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (کردار) سزادانی کەسێک کە زیانی پێگەیاندوویت و وابکەیت چی دیکە زیانت پێ نەگەیەنن"""),
                    SentencesRow(
                      englishText: """Don't worry—I'll fix him.""",
                      kurdishText: """نیگەران مەبە ـ مامەڵەی لەگەڵ دەکەم.""",
                      onPressedBritish: () => speaksentence26("en-GB"),
                      onPressedAmerican: () => speaksentence26("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١٠. (ناو) چارەسەری شتێک، بەتایبەتی کە ئاسان یان کاتییە"""),
                    SentencesRow(
                      englishText: """Luckily there is an easy fix.""",
                      kurdishText: """خۆشبەختانە چارەسەرێکی ئاسان ھەیە.""",
                      onPressedBritish: () => speaksentence27("en-GB"),
                      onPressedAmerican: () => speaksentence27("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There is no quick fix for the steel industry.""",
                      kurdishText:
                          """ھیچ پیشەسازییەکی خێرا نییە بۆ پیشەسازی پۆڵا.""",
                      onPressedBritish: () => speaksentence28("en-GB"),
                      onPressedAmerican: () => speaksentence28("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There had to be a technological fix for the problem.""",
                      kurdishText:
                          """دەبێت چارەسەرێکی تەکنەلۆژی بۆ کێشەکە ھەبێت.""",
                      onPressedBritish: () => speaksentence29("en-GB"),
                      onPressedAmerican: () => speaksentence29("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """This is nothing other than a short-term political fix.""",
                      kurdishText:
                          """ھیچ نییە جگە لە چارەسەرێکی سیاسیی کورت خایەن.""",
                      onPressedBritish: () => speaksentence30("en-GB"),
                      onPressedAmerican: () => speaksentence30("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """١١. (ناو) بڕێک لە شتێک کە بەردەوام دەتەوێت، بەتایبەتی مادەی ھۆشبەر"""),
                    SentencesRow(
                      englishText:
                          """I need a fix of coffee before I can face the day.""",
                      kurdishText:
                          """پێویستم بە بڕێک قاوە ھەیە پێش ئەوەی ڕۆژەکە دەست پێ بکەم.""",
                      onPressedBritish: () => speaksentence31("en-GB"),
                      onPressedAmerican: () => speaksentence31("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """١٢. (ناو) دۆخێکی سەخت"""),
                    SentencesRow(
                      englishText:
                          """We've got ourselves in a fix about this.""",
                      kurdishText: """سەبارەت بەمە خۆمان خستووەتە گێچەڵەوە.""",
                      onPressedBritish: () => speaksentence32("en-GB"),
                      onPressedAmerican: () => speaksentence32("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """How did you get into such a fix?""",
                      kurdishText: """چۆن کەوتیتە سەرێشەیەکی وەھاوە.""",
                      onPressedBritish: () => speaksentence33("en-GB"),
                      onPressedAmerican: () => speaksentence33("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٣. (ناو) دۆزینەوەی شوێنی کەشتی یان فڕۆکە"""),
                    SentencesRow(
                      englishText:
                          """They managed to get a fix on the yacht's position.""",
                      kurdishText: """توانیان شوێنی یەختەکە دیاری بکەن.""",
                      onPressedBritish: () => speaksentence34("en-GB"),
                      onPressedAmerican: () => speaksentence34("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٤. (ناو) تێگەشتن لە شتێک"""),
                    SentencesRow(
                      englishText:
                          """Investigators are no closer to getting a fix on the extent of the hacking.""",
                      kurdishText:
                          """پشکنەران ھیچ نزیک نین لە تێگەشتن لە ئاستی ھاکەکە.""",
                      onPressedBritish: () => speaksentence35("en-GB"),
                      onPressedAmerican: () => speaksentence35("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """١٥. (ناو) شتێک کە ڕێکخراوە بە فێڵبازی"""),
                    SentencesRow(
                      englishText: """Her promotion was a fix, I'm sure!""",
                      kurdishText: """دڵنیام پلەبەرزکردنەوەکەی ڕێکخراو بوو!""",
                      onPressedBritish: () => speaksentence36("en-GB"),
                      onPressedAmerican: () => speaksentence36("en-US"),
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

const String _videoIdend = 'O4iGNXsqghs';
const double _startSecondsend = 398;
const String _videoIdone = 'QLq6GEiHqR8';
const double _startSecondsone = 173;
const String _videoIdtwo = 'XG8b7WhANNA';
const double _startSecondstwo = 111;
const String _videoIdthree = 'AF8d72mA41M';
const double _startSecondsthree = 1399;
const String _videoIdfour = 'VwPGtn9qJZ4';
const double _startSecondsfour = 525;
const String _videoIdfive = '5pXU5xUiSmc';
const double _startSecondsfive = 81;

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