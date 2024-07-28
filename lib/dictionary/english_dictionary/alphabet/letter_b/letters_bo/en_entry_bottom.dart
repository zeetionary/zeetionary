import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bottom" and for each meaning provide five real life example sentences that consist of less than 12 words. Use  Oxford Advanced Learner's Dictionary style. Provide at least 5 meanings or more for each types of speech that the word has.

// replace bottom - /ˈbɑːtəm/

enum TtsState { playing }

class EnglishEntrybottom extends StatelessWidget {
// blank divider
  EnglishEntrybottom({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbottom(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bottom");
  }

  Future<void> speakbottoms1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Footnotes are given at the bottom of each page.");
  }

  Future<void> speakbottoms2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The book I want is right at the bottom.");
  }

  Future<void> speakbottoms3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The wind blew through gaps at the top and bottom of the door.");
  }

  Future<void> speakbottoms4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He reached the bottom of the steps in no time.");
  }

  Future<void> speakbottoms5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We rode along the bottom of the valley.");
  }

  Future<void> speakbottoms6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We walked to the bottom of the hill.");
  }

  Future<void> speakbottoms7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak(" The ingredients are listed on the bottom of the box.");
  }

  Future<void> speakbottoms8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The manufacturer's name is on the bottom of the plate.");
  }

  Future<void> speakbottoms9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Line the bottom of the cage with old newspaper.");
  }

  Future<void> speakbottoms10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Allow the tea leaves to settle to the bottom of the cup.");
  }

  Future<void> speakbottoms11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I feel safe as long as I can touch the bottom.");
  }

  Future<void> speakbottoms12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The boat sank to the bottom of the sea.");
  }

  Future<void> speakbottoms13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("When the list came out, my name was near the bottom.");
  }

  Future<void> speakbottoms14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I was always bottom of the class in math.");
  }

  Future<void> speakbottoms15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She slipped and fell on her bottom.");
  }

  Future<void> speakbottoms16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She danced on the sand in a colorful bikini bottom.");
  }

  Future<void> speakbottoms17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("There was a stream at the bottom of the garden.");
  }

  Future<void> speakbottoms18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I went to the school at the bottom of our street.");
  }

  Future<void> speakbottoms19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Put your clothes in the bottom drawer.");
  }

  Future<void> speakbottoms20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The bottom shelf holds the heavy books.");
  }

  Future<void> speakbottoms21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We came bottom with 12 points.");
  }

  Future<void> speakbottoms22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They finished six points ahead of bottom club Swindon.");
  }

  Future<void> speakbottoms23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbottoms2323");
  }

  Future<void> speakbottoms24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbottoms2424");
  }

  Future<void> speakbottoms25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbottoms2525");
  }

  Future<void> speakbottoms26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbottoms2626");
  }

  Future<void> speakbottoms27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbottoms2727");
  }

  Future<void> speakbottoms28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbottoms2828");
  }

  Future<void> speakbottoms29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbottoms2929");
  }

  Future<void> speakbottoms30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbottoms3030");
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
                            EntryTitle(word: "bottom"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈbɒtəm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbottom("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈbɑːtəm/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbottom("en-US"),
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
کوردی: خوارترین بەش، بن، ژێر، خوارەوە، بنک، تەرک، بندین، تەختاو، بنکاو، بنڕەخ، قووڵایی، سەرچاوە، بنەما، ماک، بنەڕەت، چاوگ، پشتەوە، دواوە، کنگ، پاشوو، پاشڵ، سمت، کۆتایی، دوایی، دووماھی، بنی کەشتی، لاشە یان پەیکەرەی کەشتی، ئاخرین، دوایین، ھەرەخواروو، بنەڕەتی، بنچینەیی، سەرەکی
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) بەشی خوارەوەی شتێک"),
                          SentencesRow(
                            englishText:
                                "Footnotes are given at the bottom of each page.",
                            kurdishText:
                                "پەراوێز لە خوارەوەی ھەموو لاپەڕەیەک نووسراوە.",
                            onPressedBritish: () => speakbottoms1("en-GB"),
                            onPressedAmerican: () => speakbottoms1("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The book I want is right at the bottom (= of the pile).",
                            kurdishText: "ئەو کتێبەی دەمەوێت لە خوارەوەیە.",
                            onPressedBritish: () => speakbottoms2("en-GB"),
                            onPressedAmerican: () => speakbottoms2("en-US"),
                          ),
                          Column(
                            children: [
                              MyExpansionTile(
                                children: [
                                  SentencesRow(
                                    englishText:
                                        "The wind blew through gaps at the top and bottom of the door.",
                                    kurdishText:
                                        "با بە بۆشی سەرەوە و خوارەوەی دەرگاکە دەھاتە ژوورەوە.",
                                    onPressedBritish: () =>
                                        speakbottoms3("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbottoms3("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "He reached the bottom of the steps in no time.",
                                    kurdishText:
                                        "بە خێرایی گەشتە خوارەوەی قادرمەکان.",
                                    onPressedBritish: () =>
                                        speakbottoms4("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbottoms4("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We rode along the bottom of the valley.",
                                    kurdishText:
                                        "بە خوارەوەی دۆڵەکەدا لێمانخوڕی.",
                                    onPressedBritish: () =>
                                        speakbottoms5("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbottoms5("en-US"),
                                  ),
                                  const DividerSentences(),
                                  SentencesRow(
                                    englishText:
                                        "We walked to the bottom of the hill.",
                                    kurdishText:
                                        "بە ڕێکردن چووینە خوارەوەی گردەکە.",
                                    onPressedBritish: () =>
                                        speakbottoms6("en-GB"),
                                    onPressedAmerican: () =>
                                        speakbottoms6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) ئەو بەشەی شتێک کە ڕووی لە خوارەوەیە و زۆرجار نابینرێت"),
                          SentencesRow(
                            englishText:
                                " The ingredients are listed on the bottom of the box.",
                            kurdishText:
                                "ڕەچەتەکان لە ژێرەوەی سنووقەکە لیستکراون.",
                            onPressedBritish: () => speakbottoms7("en-GB"),
                            onPressedAmerican: () => speakbottoms7("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The manufacturer's name is on the bottom of the plate.",
                            kurdishText:
                                "ناوی درووستکارەکە لە ژێرەوەی دەورییەکەیە.",
                            onPressedBritish: () => speakbottoms8("en-GB"),
                            onPressedAmerican: () => speakbottoms8("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) بەشی خوارەوەی ڕووی ناوەوەی دەفرێک یان کاسەیەک"),
                          SentencesRow(
                            englishText:
                                "Line the bottom of the cage with old newspaper.",
                            kurdishText:
                                "خوارەوەی قەفەزەکە بە ڕۆژنامەی کۆن داپۆشە.",
                            onPressedBritish: () => speakbottoms9("en-GB"),
                            onPressedAmerican: () => speakbottoms9("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "Allow the tea leaves to settle to the bottom of the cup.",
                            kurdishText:
                                "بھێڵە گەڵا چاەییەکان بچنە بنی پێڵاکە.",
                            onPressedBritish: () => speakbottoms10("en-GB"),
                            onPressedAmerican: () => speakbottoms10("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) بنی دەریاچە، دەریا، حەوز، ھتد"),
                          SentencesRow(
                            englishText:
                                "I feel safe as long as I can touch the bottom.",
                            kurdishText:
                                "ھەست بە سەلامەتی دەکەم ئەگەر بتوانم ھەست بە بنی ئاوەکە بکەم (قووڵی لە باڵام زیاتر نەبێت).",
                            onPressedBritish: () => speakbottoms11("en-GB"),
                            onPressedAmerican: () => speakbottoms11("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The boat sank to the bottom of the sea.",
                            kurdishText: "بەلەمەکە نغرۆبووە بنکی دەریاکە.",
                            onPressedBritish: () => speakbottoms12("en-GB"),
                            onPressedAmerican: () => speakbottoms12("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) نزمترین ئاست لە لیستێک، چین، ھتد"),
                          SentencesRow(
                            englishText:
                                "When the list came out, my name was near the bottom.",
                            kurdishText:
                                "کە لیستەکە ھاتەوە ناوم لە نزیکی خواری خوارەوە بوو.",
                            onPressedBritish: () => speakbottoms13("en-GB"),
                            onPressedAmerican: () => speakbottoms13("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I was always bottom of the class in math.",
                            kurdishText:
                                "ھەمیشە لە خوارترینی پۆلەکە بووم لە بیرکاریدا.",
                            onPressedBritish: () => speakbottoms14("en-GB"),
                            onPressedAmerican: () => speakbottoms14("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) سمت؛ ئەو بەشەی جەستە کە لەسەری دادەنیشیت"),
                          SentencesRow(
                            englishText: "She slipped and fell on her bottom.",
                            kurdishText: "پێی ھەڵکەوت و بە سمتیدا کەوت.",
                            onPressedBritish: () => speakbottoms15("en-GB"),
                            onPressedAmerican: () => speakbottoms15("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) بەشی خوارەوەی جلێک کە لە دوو بەش پێکھاتووە"),
                          SentencesRow(
                            englishText:
                                "She danced on the sand in a colorful bikini bottom.",
                            kurdishText:
                                "لەسەر لمەکە سەمای کرد بە بەشی خوارەوەی جلەمەلێیەکی ڕەنگاوڕەنگەوە.",
                            onPressedBritish: () => speakbottoms16("en-GB"),
                            onPressedAmerican: () => speakbottoms16("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ناو) ئەو بەشەی شتێک کە دوورترینە"),
                          SentencesRow(
                            englishText:
                                "There was a stream at the bottom of the garden.",
                            kurdishText: "جۆگەیەک لەوپەڕی باخچەکەوە ھەبوو.",
                            onPressedBritish: () => speakbottoms17("en-GB"),
                            onPressedAmerican: () => speakbottoms17("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "I went to the school at the bottom of our street.",
                            kurdishText:
                                "چوومە ئەو قوتابخانەیەی کە لە کۆتایی شەقامەکەمان بوو.",
                            onPressedBritish: () => speakbottoms18("en-GB"),
                            onPressedAmerican: () => speakbottoms18("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ھاوەڵناو) لە خوارترین"),
                          SentencesRow(
                            englishText:
                                "Put your clothes in the bottom drawer.",
                            kurdishText: "جلەکانت بخە کەشەوەکەی خوارەوە.",
                            onPressedBritish: () => speakbottoms19("en-GB"),
                            onPressedAmerican: () => speakbottoms19("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "The bottom shelf holds the heavy books.",
                            kurdishText:
                                "ڕەفەی خوارەوە کتێبە قوورسەکانی تێدایە.",
                            onPressedBritish: () => speakbottoms20("en-GB"),
                            onPressedAmerican: () => speakbottoms20("en-US"),
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (ھاوەڵناو) لە کۆتایی لیستێک، پێشبڕکێیەک، ھتد"),
                          SentencesRow(
                            englishText: "We came bottom with 12 points.",
                            kurdishText: "بە ١٢ خاڵەوە لە کۆتایی بووین.",
                            onPressedBritish: () => speakbottoms21("en-GB"),
                            onPressedAmerican: () => speakbottoms21("en-US"),
                          ),
                          const DividerSentences(),
                          SentencesRow(
                            englishText:
                                "They finished six points ahead of bottom club Swindon.",
                            kurdishText:
                                "تەواوبوون بە شەش خاڵەوە لە پێش یانەی کۆتایی کە سویندن بوو.",
                            onPressedBritish: () => speakbottoms22("en-GB"),
                            onPressedAmerican: () => speakbottoms22("en-US"),
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
                        YoutubeEmbeddedeight(),
                        YoutubeEmbeddednine(),
                        YoutubeEmbeddedten(),
                        YoutubeEmbeddedeleven(),
                        YoutubeEmbeddedtwelve(),
                        YoutubeEmbeddedthirteen(),
                        YoutubeEmbeddeddfourteen(),
                        YoutubeEmbeddedfifteen(),
                        YoutubeEmbeddeddsixteen(),
                        YoutubeEmbeddeddseventeen(),
                        YoutubeEmbeddeddeighteen(),
                        YoutubeEmbeddeddnineteen(),
                        YoutubeEmbeddedtwenty(),
                        // YoutubeEmbeddedmulti(),
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
- Noun: bottom 
1. The lower side of anything (= underside, undersurface, underneath)
 
2. The lowest part of anything
"they started at the bottom of the hill"
 
3. The fleshy part of the human body that you sit on (= buttocks, nates [technical], butt [N. Amer, informal], backside, bum [Brit, informal], buns [N. Amer, informal], can [N. Amer, informal], fundament, hindquarters, hind end, posterior, rear [informal], rear end [informal], rump, stern [informal], seat, tail [N. Amer, informal], tail end, tooshie [informal], tush [N. Amer, informal], behind, derriere, bahookie [UK, dialect, informal], botty [informal], heinie [US, informal], duff [N. Amer, informal], booty [N. Amer, informal], patootie [US, informal], tushy [N. Amer, informal], derrière)
"he deserves a good kick in the bottom";

4. The second half of an inning; while the home team is at bat (= bottom of the inning)
 
5. A depression forming the ground under a body of water (= bed)
"he searched for treasure on the ocean bottom";

6. Low-lying alluvial land near a river (= bottomland)
 
7. A cargo ship (= freighter, merchantman, merchant ship)
"they did much of their overseas trade in foreign bottoms";

- Verb: bottom
1. (cabinetwork) provide with a bottom or a seat
"bottom the chairs"
 
2. Strike the ground, as with a ship's bottom
 
3. Come to understand (= penetrate, fathom)
 
4. Fall to or reach the lowest point or value
"the market bottomed at a record low"

- Adjective: bottom
1. Situated at the bottom or lowest position
"the bottom drawer"

2. The lowest rank
"bottom member of the class"
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

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'hFZFjoX2cGg';
  final double _startSeconds = 416;

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

  final String _videoId = '_wNsZEqpKUA';
  final double _startSeconds = 1101;

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

  final String _videoId = 'e09xig209cQ';
  final double _startSeconds = 30;

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

  final String _videoId = '8HEfIJlcFbs';
  final double _startSeconds = 541;

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

  final String _videoId = 'rEdl2Uetpvo';
  final double _startSeconds = 197;

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

  final String _videoId = 'HB0CZ_5sPPw';
  final double _startSeconds = 1034;

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

  final String _videoId = '3cxHwQl9pNM';
  final double _startSeconds = 475;

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
  final double _startSeconds = 323;

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

  final String _videoId = 'yjhibJ-OqxE';
  final double _startSeconds = 450;

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

  final String _videoId = 'jgkMFBDyzE8';
  final double _startSeconds = 1239;

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

  final String _videoId = 'roCX0AfBseQ';
  final double _startSeconds = 140;

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

  final String _videoId = '9TugA_z5vQE';
  final double _startSeconds = 433;

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

  final String _videoId = 'jJL0XoNBaac';
  final double _startSeconds = 123;

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

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  const YoutubeEmbeddeddfourteen({super.key});

  final String _videoId = 'thOifuHs6eY';
  final double _startSeconds = 174;

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

class YoutubeEmbeddedfifteen extends StatelessWidget {
  const YoutubeEmbeddedfifteen({super.key});

  final String _videoId = 'diAxiWkwlC0';
  final double _startSeconds = 974;

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

class YoutubeEmbeddeddsixteen extends StatelessWidget {
  const YoutubeEmbeddeddsixteen({super.key});

  final String _videoId = 'qEV9qoup2mQ';
  final double _startSeconds = 682;

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

class YoutubeEmbeddeddseventeen extends StatelessWidget {
  const YoutubeEmbeddeddseventeen({super.key});

  final String _videoId = 'N39uwTykTQk';
  final double _startSeconds = 88;

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

class YoutubeEmbeddeddeighteen extends StatelessWidget {
  const YoutubeEmbeddeddeighteen({super.key});

  final String _videoId = 'qD6bPNZRRbQ';
  final double _startSeconds = 649;

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

class YoutubeEmbeddeddnineteen extends StatelessWidget {
  const YoutubeEmbeddeddnineteen({super.key});

  final String _videoId = '-46Vyiwat_Y';
  final double _startSeconds = 239;

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

class YoutubeEmbeddedtwenty extends StatelessWidget {
  const YoutubeEmbeddedtwenty({super.key});

  final String _videoId = 'gFQNPmLKj1k';
  final double _startSeconds = 686;

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

// end bottom
