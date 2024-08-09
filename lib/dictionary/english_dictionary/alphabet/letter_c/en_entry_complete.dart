import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycomplete extends StatelessWidget {
// blank divider
  EnglishEntrycomplete({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcomplete(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("complete");
  }

  Future<void> speakcompletes1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("You will receive payment for each complete day that you work.");
  }

  Future<void> speakcompletes2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "A Chinese New Year celebration would not be complete without fireworks.");
  }

  Future<void> speakcompletes3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You've made my life complete.");
  }

  Future<void> speakcompletes4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "No trip to Moscow would be complete without a visit to Lenin's tomb.");
  }

  Future<void> speakcompletes5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Our complete range of carpets is on display in our showroom.");
  }

  Future<void> speakcompletes6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The report comes complete with diagrams and colour photographs.");
  }

  Future<void> speakcompletes7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The job is almost complete.");
  }

  Future<void> speakcompletes8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Ther ordering process is nearly complete.");
  }

  Future<void> speakcompletes9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Work on the office building will be complete at the end of the year.");
  }

  Future<void> speakcompletes10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We were in complete agreement.");
  }

  Future<void> speakcompletes11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They sat in complete silence.");
  }

  Future<void> speakcompletes12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was a complete stranger to me.");
  }

  Future<void> speakcompletes13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He is a complete fool!");
  }

  Future<void> speakcompletes14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The army remains in complete control of the country.");
  }

  Future<void> speakcompletes15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I felt a complete idiot.");
  }

  Future<void> speakcompletes16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You are talking complete and utter rubbish.");
  }

  Future<void> speakcompletes17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The whole thing has been a complete waste of time.");
  }

  Future<void> speakcompletes18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The cruise ship is really a floating village, complete with shops and cafes.");
  }

  Future<void> speakcompletes19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She's just completed a master's degree in Law.");
  }

  Future<void> speakcompletes20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The work should be completed by December.");
  }

  Future<void> speakcompletes21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She successfully completed the London Marathon in April.");
  }

  Future<void> speakcompletes22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I've fully completed my training.");
  }

  Future<void> speakcompletes23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("2 000 shoppers completed our questionnaire.");
  }

  Future<void> speakcompletes24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Has the form been correctly completed?");
  }

  Future<void> speakcompletes25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I only need one more card to complete the set.");
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
                            EntryTitle(word: "complete"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəmˈpliːt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcomplete("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəmˈpliːt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcomplete("en-US"),
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
                          const DividerDefinition(),
                          const KurdishVocabulary(text: """
کوردی: تەواو، ڕەبەق، تەخت، ئازگار،	کۆتایی‌پێھاتوو، تەواوکراو، ڕاپەڕێنراو، سەرومڕ، بێ‌کەم‌وکوڕی، گشت، ھەموو، یەکڕێ، سامەڵسا
"""),
                          const DefinitionKurdish(text: "١. (ھاوەڵناو) تەواو"),
                          SentencesRow(
                            englishText:
                                "You will receive payment for each complete day that you work.",
                            kurdishText:
                                "پارە وەردەگریت بۆ ھەر ڕۆژێک بە تەواوی کار دەکەیت.", // complete",
                            onPressedBritish: () => speakcompletes1("en-GB"),
                            onPressedAmerican: () => speakcompletes1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "A Chinese New Year celebration would not be complete without fireworks.",
                            kurdishText:
                                "ئاھەنگی ساڵی نوێی چینی تەواو نابێت بەبێ یاری ئاگرین.",
                            onPressedBritish: () => speakcompletes2("en-GB"),
                            onPressedAmerican: () => speakcompletes2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "You've made my life complete.",
                                    kurdishText: "ژیانمت کامڵ کردووە.",
                                    onPressedBritish: () =>
                                        speakcompletes3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompletes3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "No trip to Moscow would be complete without a visit to Lenin's tomb.",
                                    kurdishText:
                                        "ھیچ سەردانێک بۆ مۆسکۆ تەواو نییە بەبێ سەردانی گۆڕی لینین.",
                                    onPressedBritish: () =>
                                        speakcompletes4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompletes4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "Our complete range of carpets is on display in our showroom.",
                                    kurdishText:
                                        "تەواوی جۆرەکانی مافوورەکانمان پیشاندراون لە ژووری نمایشەکەمان.",
                                    onPressedBritish: () =>
                                        speakcompletes5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompletes5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The report comes complete with (= including) diagrams and colour photographs.",
                                    kurdishText:
                                        "ڕاپۆرتەکە بە تەواوی ھێڵکاری و وێنەی ڕەنگاوڕەنگی لەگەڵە.",
                                    onPressedBritish: () =>
                                        speakcompletes6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompletes6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ھاوەڵناو) تەواوبوو"),
                          SentencesRow(
                            englishText: "The job is almost complete.",
                            kurdishText: "کارەکە بەنزیکەیی تەواوبووە.",
                            onPressedBritish: () => speakcompletes7("en-GB"),
                            onPressedAmerican: () => speakcompletes7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Ther ordering process is nearly complete.",
                            kurdishText: "پڕۆسەی داواکردن بەنزیکەیی تەواوبووە.",
                            onPressedBritish: () => speakcompletes8("en-GB"),
                            onPressedAmerican: () => speakcompletes8("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Work on the office building will be complete at the end of the year.",
                            kurdishText:
                                "کارکردن لە ئۆفیسەکە تەواو دەبێت لە کۆتایی ساڵدا.",
                            onPressedBritish: () => speakcompletes9("en-GB"),
                            onPressedAmerican: () => speakcompletes9("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ھاوەڵناو) بەکاردێت بۆ جەختکردنەوە لە شتێک، بۆ وتنی ئەوەی تا ئەوپەڕی ئاست ڕوویداوە"),
                          SentencesRow(
                            englishText: "We were in complete agreement.",
                            kurdishText: "لە ڕێککەوتنی تەواودا بووین.",
                            onPressedBritish: () => speakcompletes10("en-GB"),
                            onPressedAmerican: () => speakcompletes10("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "They sat in complete silence.",
                            kurdishText: "لە بێ دەنگی تەواودا دانیشتبوون.",
                            onPressedBritish: () => speakcompletes11("en-GB"),
                            onPressedAmerican: () => speakcompletes11("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He was a complete stranger to me.",
                                    kurdishText: "تەواو نامۆ بوو لام.",
                                    onPressedBritish: () =>
                                        speakcompletes12("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompletes12("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "He is a complete fool!",
                                    kurdishText: "گەمژەیەکی تەواوە!",
                                    onPressedBritish: () =>
                                        speakcompletes13("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompletes13("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The army remains in complete control of the country.",
                                    kurdishText:
                                        "سوپا لە کۆنترۆڵی تەواوی وڵاتەکەدایە.",
                                    onPressedBritish: () =>
                                        speakcompletes14("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompletes14("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText: "I felt a complete idiot.",
                                    kurdishText:
                                        "ھەستم بە گەوجێتییەکی تەواو کرد.",
                                    onPressedBritish: () =>
                                        speakcompletes15("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompletes15("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "You are talking complete and utter rubbish.",
                                    kurdishText:
                                        "قسەی تەواو و سەراپا بێ‌نرخ دەکەیت.",
                                    onPressedBritish: () =>
                                        speakcompletes16("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompletes16("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "The whole thing has been a complete waste of time.",
                                    kurdishText:
                                        "ھەموو شتەکە تەواو بەفیڕۆدانی کات بووە.",
                                    onPressedBritish: () =>
                                        speakcompletes17("en-GB"),
                                    onPressedAmerican: () =>
                                        speakcompletes17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ھاوەڵناو) لەخۆگرتنی شتێک وەک بەشێک یان تایبەتمەندییەکی زیادە"),
                          SentencesRow(
                            englishText:
                                "The cruise ship is really a floating village, complete with shops and cafes.",
                            kurdishText:
                                "کەشتییە گەشتیارییەکە گوندێکی سەرئاوکەوتووە کە فرۆشگا و قاوەخانەی لێیە.",
                            onPressedBritish: () => speakcompletes18("en-GB"),
                            onPressedAmerican: () => speakcompletes18("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٥. (کردار) تەواوکردن"),
                          SentencesRow(
                            englishText:
                                "She's just completed a master's degree in Law.",
                            kurdishText:
                                "تازەگی بڕوانامەی ماستەری لە یاسادا ھێناوە/تەواوکردووە.",
                            onPressedBritish: () => speakcompletes19("en-GB"),
                            onPressedAmerican: () => speakcompletes19("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The work should be completed by December.",
                            kurdishText:
                                "کارەکە دەبێت تاوەکو کانوونی یەکەم تەواو بکرێت.",
                            onPressedBritish: () => speakcompletes20("en-GB"),
                            onPressedAmerican: () => speakcompletes20("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "She successfully completed the London Marathon in April.",
                            kurdishText:
                                "بە سەرکەوتووی ماراسۆنی لەندەنی لە نیساندا تەواو کرد.",
                            onPressedBritish: () => speakcompletes21("en-GB"),
                            onPressedAmerican: () => speakcompletes21("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText: "I've fully completed my training.",
                            kurdishText: "بە تەواوی ڕاھێنانەکەمم تەواو کردووە.",
                            onPressedBritish: () => speakcompletes22("en-GB"),
                            onPressedAmerican: () => speakcompletes22("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) نووسینی تەواوی ئەو زانیارییانەی داوات لێکراوە لەسەر فۆرمێک"),
                          SentencesRow(
                            englishText:
                                "2 000 shoppers completed our questionnaire.",
                            kurdishText:
                                "٢٠٠٠ فرۆشیار ڕاپرسییەکەمانیان تەواوکرد.",
                            onPressedBritish: () => speakcompletes23("en-GB"),
                            onPressedAmerican: () => speakcompletes23("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Has the form been correctly completed?",
                            kurdishText: "فۆرمەکە بە تەواوی پڕکراوەتەوە.",
                            onPressedBritish: () => speakcompletes24("en-GB"),
                            onPressedAmerican: () => speakcompletes24("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) تەواوکردنی شتێک بەوەی ھەموو بەشەکانی بۆ زیادبکەیت"),
                          SentencesRow(
                            englishText:
                                "I only need one more card to complete the set.",
                            kurdishText:
                                "تەنھا پێویستم بە یەک کارتی دیکەیە بۆ تەواوکردنی دەستەکە.",
                            onPressedBritish: () => speakcompletes25("en-GB"),
                            onPressedAmerican: () => speakcompletes25("en-US"),
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
- Adjective: complete
1. Having every necessary or normal part or component or step
"a complete meal"; "a complete wardrobe"; "a complete set of the Britannica"; "a complete set of china"; "a complete defeat"; "a complete accounting"
 
2. Perfect in every respect; having all necessary qualities (= consummate)
"a complete gentleman";
 
3. Highly skilled (= accomplished)
"a complete musician";
 
4. Without qualification; used informally as an (often pejorative) intensifier (= arrant, consummate, double-dyed, everlasting, gross, perfect, pure, sodding, stark, staring, thorough, thoroughgoing, utter, unadulterated, rigorous)
"a complete coward";
 
5. Having come or been brought to a conclusion (= concluded, ended, over, all over, terminated)
"the harvesting was complete";

- Verb: complete (derived forms: completing, completes, completed)
1. Come or bring to an end (= finish)
"She completed the requirements for her Master's Degree";
 
2. Bring to a whole, with all the necessary parts or elements
"A child would complete the family"
 
3. Carry out, fulfil (= dispatch, discharge)
"complete one's duties";
 
4. (football) complete a pass (= nail [informal])
 
5. Write all the required information onto a form (= fill out, fill in, make out)
"complete this questionnaire, please!";
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

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'JfqDvi8b4gg';
  final double _startSeconds = 279;

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

  final String _videoId = 'oMRGASj2v8c';
  final double _startSeconds = 54;

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

  final String _videoId = 'qzgyoAYeZRI';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'SqueozhXDv8';
  final double _startSeconds = 11;

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

  final String _videoId = 'VrKW58MS12g';
  final double _startSeconds = 1369;

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

  final String _videoId = '8bWRjajx-LE';
  final double _startSeconds = 69;

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

  final String _videoId = '_B7yY1AxOrw';
  final double _startSeconds = 263;

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