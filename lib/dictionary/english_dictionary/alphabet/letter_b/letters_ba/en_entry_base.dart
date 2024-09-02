import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "base" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace base - replace EnglishEntrybase

// replace speakBase - /beɪs/

enum TtsState { playing }

class EnglishEntrybase extends StatelessWidget {
// blank divider
  EnglishEntrybase({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbase(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("base");
  }

  Future<void> speakbases1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They decided to base the new company in New York.");
  }

  Future<void> speakbases2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The lamp has a heavy base.");
  }

  Future<void> speakbases3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He felt a sharp pain at the base of his spine.");
  }

  Future<void> speakbases4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I spend a lot of time in Britain but Paris is still my base.");
  }

  Future<void> speakbases5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("After the attack, they returned to base.");
  }

  Future<void> speakbases6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("These policies have a broad base of support.");
  }

  Future<void> speakbases7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("This course is an opportunity to expand my knowledge base.");
  }

  Future<void> speakbases8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "All we got was base pay—we didn't reach profitability levels to award a bonus.");
  }

  Future<void> speakbases9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She used her family's history as a base for her novel.");
  }

  Future<void> speakbases10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Put some moisturizer on as a base before applying your make-up.");
  }

  Future<void> speakbases11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Sodium hydroxide (NaOH) is a strong base that is used in many industrial processes.");
  }

  Future<void> speakbases12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The base of the decimal system is 10, which uses the digits 0-9.");
  }

  Future<void> speakbases13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He acted from base motives.");
  }

  Future<void> speakbases14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBases1414");
  }

  Future<void> speakbases15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBases1515");
  }

  Future<void> speakbases16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBases1616");
  }

  Future<void> speakbases17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBases1717");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            EntryTitle(word: "base"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /beɪs/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbase("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /beɪs/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbase("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const CustomTabBar(
                tabs: [
                  UkIconForTab(),
                  KurdIconForTab(),
                  VideoIconForTab(),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const EnglishMeaning(),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const KurdishVocabulary(text: """
کوردی: بنک، بن، خوارووی، بنکە، بێخ، بنج، بنچک، ھیم، خیم، بنگە، پایە، بنەما، بنیات، بناخە، بنەڕەت، بنواشە، بنەواشە، بنکە، (کیمیا) تفت، باز، بەیس، کەرەسەی سەرەکی، مەتریاڵی بنەڕەتی، (مێعماری) ژێرکۆڵ، بن‌کۆڵ، بنک، (دار) بن، کۆلکە، (زمانەوانی) قەد، بن، ڕەگ، ڕیشە (ھی وشە یان داڕشتەیێ)، فۆڕم یان وشەی گەردان‌نەکراو، (بیرکاری) بنک، بنچینە، (بەیسبۆڵ) گۆشە، سووک، نەگریس، جێی‌شەرم، ناحەز، بێ‌شەرمانە
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (کردار) بەکارھێنانی شارێک، شارۆچکەیەک، ھتد وەک شوێنی سەرەکی شتێک"""),
                          SentencesRow(
                            englishText:
                                "They decided to base the new company in New York.",
                            kurdishText:
                                "بڕیاریاندا نیویۆرک بکەنە بنکەی سەرەکی کۆمپانیا تازەکە.",
                            onPressedBritish: () => speakbases1("en-GB"),
                            onPressedAmerican: () => speakbases1("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) نزمترین بەشی شتێک"""),
                          SentencesRow(
                            englishText: "The lamp has a heavy base.",
                            kurdishText: "گڵۆپەکە بنکێکی قوورسی ھەیە.",
                            onPressedBritish: () => speakbases2("en-GB"),
                            onPressedAmerican: () => speakbases2("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "He felt a sharp pain at the base of his spine.",
                            kurdishText:
                                "ھەستی بە ئازارێکی توند دەکرد لە بەشی خوارەوەی بڕبڕەی پشتی.",
                            onPressedBritish: () => speakbases3("en-GB"),
                            onPressedAmerican: () => speakbases3("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) شوێنی سرەکی ژیان یان کارکردن"""),
                          SentencesRow(
                            englishText:
                                "I spend a lot of time in Britain but Paris is still my base.",
                            kurdishText:
                                "کاتێکی زۆر لە پاریس بەسەر دەبەم، بەڵام ھێشتا پاریس ھەوارگەی سەرەکیمە.",
                            onPressedBritish: () => speakbases4("en-GB"),
                            onPressedAmerican: () => speakbases4("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) بنکەی سەربازی"""),
                          SentencesRow(
                            englishText:
                                "After the attack, they returned to base.",
                            kurdishText: "لە دوای ھێرشەکە گەڕانەوە بنکەکە.",
                            onPressedBritish: () => speakbases5("en-GB"),
                            onPressedAmerican: () => speakbases5("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) ئەو کەس و چالاکییانەی کەسێک لێیانەوە ھێز و پشتیوانی و پارە وەردەگرێت"""),
                          SentencesRow(
                            englishText:
                                "These policies have a broad base of support.",
                            kurdishText:
                                "ئەم سیاسەتانە بناغەیەکی فراوانی پشتیوانیان ھەیە.",
                            onPressedBritish: () => speakbases6("en-GB"),
                            onPressedAmerican: () => speakbases6("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "This course is an opportunity to expand my knowledge base.",
                            kurdishText:
                                "ئەم کۆرسە ھەلێکی بۆ فراوانکردنی بناغەی زانیاریم.",
                            onPressedBritish: () => speakbases7("en-GB"),
                            onPressedAmerican: () => speakbases7("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) ئەو مووچەیەی کە وەریدەگری پێش ئەوەی ھیچی تری بۆ زیادبکرێت بۆ (نموونە بەخشیش)"""),
                          SentencesRow(
                            englishText:
                                "All we got was base pay—we didn't reach profitability levels to award a bonus.",
                            kurdishText:
                                "ھەموو ئەوەی مووچەکەی خۆمان بوو، نەگەشتین بەو ئاستەی قازانج کە بەخشیش بدرێت.",
                            onPressedBritish: () => speakbases8("en-GB"),
                            onPressedAmerican: () => speakbases8("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) بیرۆکەیەک، زانیارییەک، یان دۆخێک کە وەک سەرچاوە بەکاردێت بۆ گەشەپێدانی شتێکی تر"""),
                          SentencesRow(
                            englishText:
                                "She used her family's history as a base for her novel.",
                            kurdishText:
                                "مێژووی خێزانەکەی وەک سەرچاوە و ئیلھام بۆ ڕۆمانەکەی بەکارھێنا.",
                            onPressedBritish: () => speakbases9("en-GB"),
                            onPressedAmerican: () => speakbases9("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ناو) یەکەم بەشی شتێک کە دواتر شتی تری بۆ زیاددەکرێت"""),
                          SentencesRow(
                            englishText:
                                "Put some moisturizer on as a base before applying your make-up.",
                            kurdishText:
                                "ھەندێک کرێمی شێدارکەرەوە بەکاربێنە وەک بناغە پێش ئەوەی مەیکەپەکەت بکەیت.",
                            onPressedBritish: () => speakbases10("en-GB"),
                            onPressedAmerican: () => speakbases10("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ناو) مادەیەکی کیمیایی کە دەتوانێت لەگەڵ ئەسید (ترشەڵۆک) یەکبگرێت بۆ درووستکردنی خوێ"""),
                          SentencesRow(
                            englishText:
                                "Sodium hydroxide (NaOH) is a strong base that is used in many industrial processes.",
                            kurdishText:
                                "ھایدرۆکسایدی سۆدیۆم تفتێکی بەھێزە کە لە زۆر پڕۆسەی پیشەسازیدا بەکاردێت.",
                            onPressedBritish: () => speakbases11("en-GB"),
                            onPressedAmerican: () => speakbases11("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (ناو) لە بیرکاریدا بریتییە لە ژمارەیەک کە سیستەمێکی ژماردن و دەربڕینی ژمارەی لەسەر بنیاتنراوە بۆ نموونە ژمارە لە سیستەمی دەیان"""),
                          SentencesRow(
                            englishText:
                                "The base of the decimal system is 10, which uses the digits 0-9.",
                            kurdishText:
                                "بنچینەی سیستەمی دەیان بریتییە لە ١٠ و ژمارەکانی ١-٩ بەکاردێنێت.",
                            onPressedBritish: () => speakbases12("en-GB"),
                            onPressedAmerican: () => speakbases12("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (ھاوەڵناو) کەسێک کە ھیچ بەھا و ئەخلاقی نییە"""),
                          SentencesRow(
                            englishText: "He acted from base motives.",
                            kurdishText:
                                "بە پاڵنەری کەسی ھەنگاوی نا (بۆ بەرژەوەندی خۆی).",
                            onPressedBritish: () => speakbases13("en-GB"),
                            onPressedAmerican: () => speakbases13("en-US"),
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    const YouTubeScroller(
                      children: [
                        YoutubeEmbeddedone(),
                        YoutubeEmbeddedtwo(),
                        YoutubeEmbeddedthree(),
                        YoutubeEmbeddedfour(),
                        YoutubeEmbeddedfive(),
                        YoutubeEmbeddedsix(),
                        YoutubeEmbeddedseven(),
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
                        YoutubeEmbeddedthirteen(),
                        // YoutubeEmbeddeddfourteen(),
                        // YoutubeEmbeddedfifteen(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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

  // Function to stop TTS
  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    // Update the state to reflect that TTS is stopped
    setState(() {
      isSpeaking = false;
    });
  }

  // Create an instance of EnglishMeaningConst with the desired text
  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: base (derived forms: basing, bases, based)
1. Use as a basis for; found on (= establish, ground, found)
"base a claim on some observation";
 
2. Situate as a centre of operations
"we will base this project in the new lab"
 
3. Use (purified cocaine) by burning it and inhaling the fumes (= free-base)

- Adjective: base (derived forms: basest, baser)
1. Serving as or forming a base (= basal)
"the painter applied a base coat followed by two finishing coats";
 
2. (used of metals) consisting of or alloyed with inferior metal
"base coins of aluminium"; "a base metal"
 
3. Not adhering to ethical or moral principles (= immoral)
"base and unpatriotic motives"; "a base, degrading way of life";
 
4. Having or showing an ignoble lack of honour or morality (= mean, meanspirited)
"that liberal obedience without which your army would be a base rabble";
 
5. Debased; not genuine
"an attempt to eliminate the base coinage"
 
6. [archaic] Of low birth or station (= baseborn, humble, lowly)
"base wretches with dirty faces";
 
7. [archaic] Illegitimate (= baseborn [archaic])

- Noun: base (derived forms: bases)
1. The bottom or lowest part
"the base of the mountain"
 
2. Lowest support of a structure (= foundation, fundament, foot, groundwork, substructure, understructure)
"it was built on a base of solid rock";
 
3. A flat bottom on which something is intended to sit
"a tub should sit on its own base"
 
4. (military) installation from which a military force initiates operations (= base of operations)
"the attack wiped out our forward bases";
 
5. A place that the runner must touch before scoring (= bag)
"he scrambled to get back to the base";
 
6. (anatomy) the part of an organ nearest its point of attachment
"the base of the skull"
 
7. A lower limit (= floor)
"the government established a wage base";
 
8. The fundamental assumptions from which something is begun, developed, calculated or explained (= basis, foundation, fundament, groundwork, cornerstone)
"the whole argument rested on a base of conjecture";
 
9. A support or foundation (= pedestal, stand)
"the base of the lamp";
 
10. A phosphoric ester of a nucleoside; the basic structural unit of nucleic acids (DNA or RNA) (= nucleotide)
 
11. Any of various water-soluble compounds capable of turning litmus blue and reacting with an acid to form a salt and water (= alkali)
"bases include oxides and hydroxides of metals and ammonia";
 
12. The bottom side of a geometric figure from which the altitude can be constructed
"the base of the triangle"
 
13. The most important or necessary part of something (= basis)
"the base of this drink is orange juice";
 
14. (numeration system) the positive integer that is equivalent to one in the next higher counting place (= radix)
"10 is the base of the decimal system";
 
15. The place where you are stationed and from which missions start and end (= home)
 
16. (linguistics) the form of a word after all affixes are removed (= root, root word, stem, theme, radical)
"thematic vowels are part of the base";
 
17. The stock of basic facilities and capital equipment needed for the functioning of a country or area (= infrastructure)
"the industrial base of Japan";
 
18. The principal ingredient of a mixture
"glycerinated gelatin is used as a base for many ointments"; "he told the painter that he wanted a yellow base with just a hint of green"; "everything she cooked seemed to have rice as the base"
 
18. (electronics) the part of a transistor that separates the emitter from the collector
 
20. (usually plural) the office that serves as the administrative centre of an enterprise (= headquarters, central office, main office, home office, home base)
"many companies have their home base in New York";
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'xvyj35Pd9C4';
  final double _startSeconds = 469;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'ieQQMxW9A6E';
  final double _startSeconds = 9473;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'MnExgQ81fhU';
  final double _startSeconds = 522;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'MGO4_8YRKro';
  final double _startSeconds = 22;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
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

  final String _videoId = 'poHTA94-BeY';
  final double _startSeconds = 275;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 235;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = '544DTGHIBM0';
  final double _startSeconds = 297;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 's3B-qp3U5G0';
  final double _startSeconds = 298;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 141;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'qq9iRMrubzg';
  final double _startSeconds = 161;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'vp-8-WXeq-E';
  final double _startSeconds = 212;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'jrje73EyKag';
  final double _startSeconds = 39;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthirteen extends StatelessWidget {
  const YoutubeEmbeddedthirteen({super.key});

  final String _videoId = 'oD9BaNAH-eE';
  final double _startSeconds = 2351;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end base// TODO Implement this library.
