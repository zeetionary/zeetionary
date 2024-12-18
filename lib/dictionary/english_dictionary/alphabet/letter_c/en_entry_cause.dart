import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycause extends StatelessWidget {
  EnglishEntrycause({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcause(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("cause");
  }

  Future<void> speakcauses1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Unemployment is a major cause of poverty.");
  }

  Future<void> speakcauses2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The report ignores the root cause of the problem.");
  }

  Future<void> speakcauses3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Smoking is the leading cause of lung cancer.");
  }

  Future<void> speakcauses4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Drinking and driving is one of the most common causes of traffic accidents");
  }

  Future<void> speakcauses5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("It was impossible to determine the cause of death.");
  }

  Future<void> speakcauses6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There is no cause for concern.");
  }

  Future<void> speakcauses7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The food was excellent—I had no cause for complaint.");
  }

  Future<void> speakcauses8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She has long championed the cause of civil liberties.");
  }

  Future<void> speakcauses9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She has taken up the cause of animal rights.");
  }

  Future<void> speakcauses10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The different groups support a common cause.");
  }

  Future<void> speakcauses11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Do they know what caused the fire?");
  }

  Future<void> speakcauses12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Are you causing trouble again?");
  }

  Future<void> speakcauses13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Doctors say her condition is causing some concern.");
  }

  Future<void> speakcauses14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Recently there have been several deaths caused by dangerous driving.");
  }

  Future<void> speakcauses15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The drought is causing problems for many farmers.");
  }

  Future<void> speakcauses16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses1616");
  }

  Future<void> speakcauses17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses1717");
  }

  Future<void> speakcauses18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses1818");
  }

  Future<void> speakcauses19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses1919");
  }

  Future<void> speakcauses20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses2020");
  }

  Future<void> speakcauses21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses2121");
  }

  Future<void> speakcauses22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses2222");
  }

  Future<void> speakcauses23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses2323");
  }

  Future<void> speakcauses24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses2424");
  }

  Future<void> speakcauses25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses2525");
  }

  Future<void> speakcauses26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses2626");
  }

  Future<void> speakcauses27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses2727");
  }

  Future<void> speakcauses28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses2828");
  }

  Future<void> speakcauses29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses2929");
  }

  Future<void> speakcauses30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses3030");
  }

  Future<void> speakcauses31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses3131");
  }

  Future<void> speakcauses32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses3232");
  }

  Future<void> speakcauses33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses3333");
  }

  Future<void> speakcauses34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses3434");
  }

  Future<void> speakcauses35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses3535");
  }

  Future<void> speakcauses36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses3636");
  }

  Future<void> speakcauses37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses3737");
  }

  Future<void> speakcauses38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses3838");
  }

  Future<void> speakcauses39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses3939");
  }

  Future<void> speakcauses40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses4040");
  }

  Future<void> speakcauses41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakcauses4141");
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
                            EntryTitle(word: "cause"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kɔːz/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcause("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kɔːz/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcause("en-US"),
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
کوردی: ھۆ، ھۆکار، ئەگەر، سەدەم، مایە، ماک، بنەما، دۆز، کێشە، بەڵگە، ئامانج، مەبەست، (ماف) داواکاری، دادخوازی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) کەسێک یان شتێک وادەکات شتێک ڕووبدات"),
                          SentencesRow(
                            englishText:
                                "Unemployment is a major cause of poverty.",
                            kurdishText: "بێکاری ھۆکارێکی گەورەی ھەژارییە.",
                            onPressedBritish: () => speakcauses1("en-GB"),
                            onPressedAmerican: () => speakcauses1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The report ignores the root cause of the problem.",
                            kurdishText:
                                "ڕاپۆرتەکە ھۆکاری بنچینەیی کێشەکە پشتگوێ دەخات.",
                            onPressedBritish: () => speakcauses2("en-GB"),
                            onPressedAmerican: () => speakcauses2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Smoking is the leading cause of lung cancer.",
                                    kurdishText:
                                        "جگەرەکێشان ھۆکاری سەرەکیی شێرپەنجەی سییەکانە.",
                                    onPressedBritish: () =>
                                        speakcauses3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcauses3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Drinking and driving is one of the most common causes of traffic accidents",
                                    kurdishText:
                                        "خواردنەوە و شۆفێری‌کردن یەکێکە لە باوترین ھۆکارەکانی ڕووداوەکانی ھاتووچۆ.",
                                    onPressedBritish: () =>
                                        speakcauses4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcauses4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "It was impossible to determine the cause of death.",
                                    kurdishText:
                                        "ئەستەم بوو ھۆکاری مردنەکە دیاری بکرێت.",
                                    onPressedBritish: () =>
                                        speakcauses5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcauses5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ھۆکارێک کە دەبێتەھۆی ھەستێک یان ھەڵسوکەوتێک"),
                          SentencesRow(
                            englishText: "There is no cause for concern.",
                            kurdishText: "ھیچ ھۆیەک نییە بۆ نیگەرانی.",
                            onPressedBritish: () => speakcauses6("en-GB"),
                            onPressedAmerican: () => speakcauses6("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The food was excellent—I had no cause for complaint.",
                            kurdishText:
                                "خواردنەکە ناوازە بوو، ھیچ بیانووم نەبوو بۆ گازندە.",
                            onPressedBritish: () => speakcauses7("en-GB"),
                            onPressedAmerican: () => speakcauses7("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) دامەزراوەیەک یان بیرۆکەیەک کە خەڵکی پشتگیری دەکەن یان شەڕی بۆ دەکەن"),
                          SentencesRow(
                            englishText:
                                "She has long championed the cause of civil liberties.",
                            kurdishText:
                                "ماوەیەکی درێژە شەڕی کردووە بۆ دۆزی ئازادییە مەدەنییەکان.",
                            onPressedBritish: () => speakcauses8("en-GB"),
                            onPressedAmerican: () => speakcauses8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She has taken up the cause of animal rights.",
                            kurdishText:
                                "پەیوەندی کردووە بە دۆزی مافی ئاژەڵانەوە.",
                            onPressedBritish: () => speakcauses9("en-GB"),
                            onPressedAmerican: () => speakcauses9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The different groups support a common cause.",
                            kurdishText:
                                "گرووپە جیاوازەکان پشتگیری دۆزێکی ھاوبەش دەکەن.",
                            onPressedBritish: () => speakcauses10("en-GB"),
                            onPressedAmerican: () => speakcauses10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (کردار) واکردن لەوەی شتێک ڕووبدات یان کەسێک شتێک بکات"),
                          SentencesRow(
                            englishText: "Do they know what caused the fire?",
                            kurdishText: "دەزانیت چی بوو بەھۆی ئاگرەکە؟",
                            onPressedBritish: () => speakcauses11("en-GB"),
                            onPressedAmerican: () => speakcauses11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "Are you causing trouble again?",
                            kurdishText: "دووبارە کێشە دەنێیتەوە؟",
                            onPressedBritish: () => speakcauses12("en-GB"),
                            onPressedAmerican: () => speakcauses12("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "Doctors say her condition is causing some concern.",
                                    kurdishText:
                                        "پزیشکەکان دەڵێن دۆخەکەی جێگەی کەمێک نیگەرانییە.",
                                    onPressedBritish: () =>
                                        speakcauses13("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcauses13("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Recently there have been several deaths caused by dangerous driving.",
                                    kurdishText:
                                        "تازەگی ژمارەیەک گیان‌لەدەستدان بەھۆی شۆفێریکردنی مەترسیدارەوە ھەبووە.",
                                    onPressedBritish: () =>
                                        speakcauses14("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcauses14("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The drought is causing problems for many farmers.",
                                    kurdishText:
                                        "وشکە‌ساڵییەکە بووە بە کێشە بۆ ژمارەیەکی زۆر جوتیار.",
                                    onPressedBritish: () =>
                                        speakcauses15("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcauses15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                        // YoutubeEmbeddedeight(), //
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: cause (derived forms: caused, causing, causes)
1. Give rise to; cause to happen or occur, not always intentionally (= do, make, engender)
"cause a commotion"; "cause an accident";

2. Make someone or something act in a particular way or do a particular thing (= induce, stimulate, have, get, make)
"The ads caused me to buy a VCR";

- Noun: cause 
1. Events that provide the generative force that is the origin of something
"they are trying to determine the cause of the crash"
 
2. A justification for something existing or happening (= reason, grounds)
"he had no cause to complain";
 
3. A series of actions advancing a principle or tending toward a particular end (= campaign, crusade, drive, movement, effort)
"they worked in the cause of world peace";

4. Any entity that produces an effect or is responsible for events or results (= causal agent, causal agency)
 
5. (law) a comprehensive term for any proceeding in a court of law whereby an individual seeks a legal remedy (= lawsuit, suit, case, causa)
"the family brought cause against the landlord";
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

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'VaBCiio8XZs';
  final double _startSeconds = 78;

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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'nhPhhBGpzD0';
  final double _startSeconds = 48;

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

  final String _videoId = 'EiVv2Q01N9E';
  final double _startSeconds = 10;

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

  final String _videoId = 'u40o9AyxoxA';
  final double _startSeconds = 0;

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

  final String _videoId = 'UKxQTvqcpSg';
  final double _startSeconds = 62;

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

  final String _videoId = '4gZkv6MU-4Y';
  final double _startSeconds = 70;

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

  final String _videoId = 'RuUlWUMEPWg';
  final double _startSeconds = 429;

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

  final String _videoId = 'rPe4yziWiOg';
  final double _startSeconds = 404;

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

// end WORD_WEB
