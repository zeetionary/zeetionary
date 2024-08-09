import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// More sentences is NOT done

// Define the word "bear" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace bear - replace EnglishEntrybear

// replace speakBear - /beə(r)/

enum TtsState { playing }

class EnglishEntrybear extends StatelessWidget {
// blank divider
  EnglishEntrybear({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbear(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("bear");
  }

  Future<void> speakbears1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("A little bear cub ran right across the road in front of us.");
  }

  Future<void> speakbears2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The pain was almost more than he could bear.");
  }

  Future<void> speakbears3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She bore it all with her usual patience.");
  }

  Future<void> speakbears4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She bore the responsibility for most of the changes.");
  }

  Future<void> speakbears5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "In the end it's consumers who bear the burden of higher prices.");
  }

  Future<void> speakbears6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The ice is too thin to bear your weight.");
  }

  Future<void> speakbears7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The document bore her signature.");
  }

  Future<void> speakbears8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He was badly wounded in the war and still bears the scars.");
  }

  Future<void> speakbears9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She bears little resemblance to her mother.");
  }

  Future<void> speakbears10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Her later work does not bear comparison with her earlier novels.");
  }

  Future<void> speakbears11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The plan won't bear close inspection.");
  }

  Future<void> speakbears12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The joke doesn't bear repeating.");
  }

  Future<void> speakbears13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He bears no resentment towards them.");
  }

  Future<void> speakbears14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He's borne a grudge against me ever since that day.");
  }

  Future<void> speakbears15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The stone plaque bearing his name was smashed to pieces.");
  }

  Future<void> speakbears16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He returned bearing a basket of vegetables.");
  }

  Future<void> speakbears17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her two sons helped bear the coffin.");
  }

  Future<void> speakbears18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He bears himself proudly, like a soldier.");
  }

  Future<void> speakbears19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She had borne him six sons.");
  }

  Future<void> speakbears20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("These trees take a long time to bear fruit.");
  }

  Future<void> speakbears21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("When you get to the fork in the road, bear right.");
  }

  Future<void> speakbears22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBears2222");
  }

  Future<void> speakbears23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBears2323");
  }

  Future<void> speakbears24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBears2424");
  }

  Future<void> speakbears25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBears2525");
  }

  Future<void> speakbears26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBears2626");
  }

  Future<void> speakbears27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBears2727");
  }

  Future<void> speakbears28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBears2828");
  }

  Future<void> speakbears29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBears2929");
  }

  Future<void> speakbears30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("speakBears3030");
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
                            EntryTitle(word: "bear"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /beə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbear("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ber/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbear("en-US"),
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
                          const DefinitionKurdish(text: """
١. (ناو) ورچ"""),
                          SentencesRow(
                            englishText:
                                "A little bear cub ran right across the road in front of us.",
                            kurdishText:
                                "بەچکە ورچێکی بچکۆلە بە ڕێگاکەدا پەڕییەوە بە ڕاکردن لە پێشمان.",
                            onPressedBritish: () => speakbears1("en-GB"),
                            onPressedAmerican: () => speakbears1("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) داننان و مامەڵەکردن بە شتێکی ناخۆش کە ڕوویداوە"""),
                          SentencesRow(
                            englishText:
                                "The pain was almost more than he could bear.",
                            kurdishText:
                                "ئازارەکە تاڕادەیەکی زۆر زیاتر لەوە بوو کە دەیتوانی بەرگەی بگرێت.",
                            onPressedBritish: () => speakbears2("en-GB"),
                            onPressedAmerican: () => speakbears2("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "She bore it all with her usual patience.",
                            kurdishText:
                                "بەرگەی ھەمووی گرت بە پشوودرێژی ھەمیشەییەوە.",
                            onPressedBritish: () => speakbears3("en-GB"),
                            onPressedAmerican: () => speakbears3("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) ھەڵگرتنی بەرپرسیاریەتی"""),
                          SentencesRow(
                            englishText:
                                "She bore the responsibility for most of the changes.",
                            kurdishText:
                                "بەرپرسیاریەتی بۆ زۆرینەی گۆڕانکارییەکان ھەڵگرت.",
                            onPressedBritish: () => speakbears4("en-GB"),
                            onPressedAmerican: () => speakbears4("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "In the end it's consumers who bear the burden of higher prices.",
                            kurdishText:
                                "لەکۆتاییدا ئەوە کڕیارانن بارگرانی بەرزبوونەوەی نرخ ھەڵدەگرن.",
                            onPressedBritish: () => speakbears5("en-GB"),
                            onPressedAmerican: () => speakbears5("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) ھەڵگرتنی کێشی کەسێک"""),
                          SentencesRow(
                            englishText:
                                "The ice is too thin to bear your weight.",
                            kurdishText:
                                "سەھۆڵەکە زۆر باریکە کە بتوانێت کە بتوانێت بەرگەت بگرێت.",
                            onPressedBritish: () => speakbears6("en-GB"),
                            onPressedAmerican: () => speakbears6("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) پیشاندان یان لەخۆگرتنی شتێک"""),
                          SentencesRow(
                            englishText: "The document bore her signature.",
                            kurdishText: "دۆکیومێنتەکە واژۆی ئەوی پێوەبوو.",
                            onPressedBritish: () => speakbears7("en-GB"),
                            onPressedAmerican: () => speakbears7("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "He was badly wounded in the war and still bears the scars.",
                            kurdishText:
                                "لە جەنگەکەدا بەخراپی برینداربوو و ھێشتا برینەکانی پێوەیە.",
                            onPressedBritish: () => speakbears8("en-GB"),
                            onPressedAmerican: () => speakbears8("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "She bears little resemblance to her mother.",
                            kurdishText: "زۆر کەم لە دایکی دەکات.",
                            onPressedBritish: () => speakbears9("en-GB"),
                            onPressedAmerican: () => speakbears9("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (کردار) نەگونجاو بۆشتێک"""),
                          SentencesRow(
                            englishText:
                                "Her later work does not bear comparison with her earlier novels (= because it is not nearly as good).",
                            kurdishText:
                                "بەرھەمی دواتری بەراورد ناکرێت بە ڕۆمانەکانی پێشووتری.",
                            onPressedBritish: () => speakbears10("en-GB"),
                            onPressedAmerican: () => speakbears10("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "The plan won't bear close inspection (= it will be found to be unacceptable when carefully examined).",
                            kurdishText:
                                "پلانەکە ناتوانێت بە پشکنینی ورددا دەربچێت.",
                            onPressedBritish: () => speakbears11("en-GB"),
                            onPressedAmerican: () => speakbears11("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "The joke doesn't bear repeating (= because it is not funny or may offend people).",
                            kurdishText:
                                "نوکتەکە بە کەڵکی دووبارەکردنەوە نایەت.",
                            onPressedBritish: () => speakbears12("en-GB"),
                            onPressedAmerican: () => speakbears12("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (کردار) ھەبوونی ھەستێکی نەرێنی"""),
                          SentencesRow(
                            englishText: "He bears no resentment towards them.",
                            kurdishText: "ھیچ ڕقێکی بەرامبەریان نییە.",
                            onPressedBritish: () => speakbears13("en-GB"),
                            onPressedAmerican: () => speakbears13("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText:
                                "He's borne a grudge against me ever since that day.",
                            kurdishText: "لەو ڕۆژەوە بوغزێکی دژم ھەیە.",
                            onPressedBritish: () => speakbears14("en-GB"),
                            onPressedAmerican: () => speakbears14("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (کردار) ھەبوونی ناوێک"""),
                          SentencesRow(
                            englishText:
                                "The stone plaque bearing his name was smashed to pieces.",
                            kurdishText:
                                "ئەو پارچەیەی کە ناوی ھەڵگرتبوو وردوخاش کرا.",
                            onPressedBritish: () => speakbears15("en-GB"),
                            onPressedAmerican: () => speakbears15("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (کردار) ھەڵگرتنی کەسێک/شتێک"""),
                          SentencesRow(
                            englishText:
                                "He returned bearing a basket of vegetables.",
                            kurdishText: "گەڕایەوە بە سەبەتەیەک سەوزەوە.",
                            onPressedBritish: () => speakbears16("en-GB"),
                            onPressedAmerican: () => speakbears16("en-US"),
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          SentencesRow(
                            englishText: "Her two sons helped bear the coffin.",
                            kurdishText: "دوو کوڕەکەی تابووتەکەیان ھەڵگرتبوو.",
                            onPressedBritish: () => speakbears17("en-GB"),
                            onPressedAmerican: () => speakbears17("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (کردار) مامەڵە و ڕەفتارکردن بەشێوەیەکی دیاریکراو"""),
                          SentencesRow(
                            englishText:
                                "He bears himself (= stands, walks, etc.) proudly, like a soldier.",
                            kurdishText:
                                "بە شانازییەوە ڕەفتار دەکات، وەک سەربازێک.",
                            onPressedBritish: () => speakbears18("en-GB"),
                            onPressedAmerican: () => speakbears18("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) منداڵبوون"""),
                          SentencesRow(
                            englishText: "She had borne him six sons.",
                            kurdishText: "شەش کوڕی پێبەخشیوە.",
                            onPressedBritish: () => speakbears19("en-GB"),
                            onPressedAmerican: () => speakbears19("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (کردار) درووستکردنی گوڵ و میوە"""),
                          SentencesRow(
                            englishText:
                                "These trees take a long time to bear fruit.",
                            kurdishText:
                                "ئەم دارانە کاتێکی زۆریان پێدەچێت تا بەر بگرن.",
                            onPressedBritish: () => speakbears20("en-GB"),
                            onPressedAmerican: () => speakbears20("en-US"),
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (کردار) ڕۆشتن یان لادان بە ئاراستەیەکدا"""),
                          SentencesRow(
                            englishText:
                                "When you get to the fork in the road, bear right.",
                            kurdishText:
                                "کە دەگەیت بە دووڕیانەکە لە ڕێگاکەدا، بە ڕاستدا بچۆ.",
                            onPressedBritish: () => speakbears21("en-GB"),
                            onPressedAmerican: () => speakbears21("en-US"),
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
                        YoutubeEmbeddeddfourteen(),
                        YoutubeEmbeddedfifteen(),
                        YoutubeEmbeddeddsixteen(),
                        YoutubeEmbeddeddseventeen(),
                        // YoutubeEmbeddeddeighteen(),
                        // YoutubeEmbeddeddnineteen(),
                        // YoutubeEmbeddedtwenty(),
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
- Verb: bear (derived forms: bearing, borne, bore, bears)
1. Have as a feature; convey
"bear a resemblance"; "bear a signature"
 
2. Cause to be born (= give birth, deliver, birth, have)
"My wife bore twins yesterday!";
 
3. Put up with something or somebody unpleasant (= digest, endure, stick out, stomach, stand, tolerate, support, brook, abide, suffer, put up)
"I cannot bear his constant criticism";

4. Move while holding up or supporting
"Bear gifts"; "bear a heavy load"; "bear news"; "bearing orders"
 
5. Bring forth (= turn out)
"The apple tree bore delicious apples this year"; "The unidentified plant bore gorgeous flowers";
 
6. Maintain (a theory, thoughts, or feelings) (= harbor [N. Amer], harbour [Brit, Cdn], hold, entertain, nurse)
"bear a grudge";
 
7. Take on as one's own the expenses or debts of another person (= take over, accept, assume)
"She agreed to bear the responsibility";

8. Have within (= hold, carry, contain)
"The canteen bears fresh water";
 
9. (investment) bring in (= yield, pay)
"interest-bearing accounts";
 
10. Have on one's person (= wear)
"bear a scar";
 
11. Behave in a certain manner (= behave, acquit, deport, conduct, comport, carry)
"he bore himself with dignity";
 
12. Have rightfully; of rights, titles, and offices (= hold)
"She bears the title of Duchess";
 
13. Support or hold in a certain manner (= hold, carry)
"She bears her head high";

14. Be pregnant with (= have a bun in the oven, carry, gestate, expect)
"She is bearing his child";
 
15. Move, proceed or be located in a specified direction
"bear left at the next junction"

- Noun: bear (derived forms: bearing, borne, bore, bears)
1. Large mammal with long shaggy coat and strong claws
"The black bear is the most common bear species in North America, but they are less likely to attack humans than grizzly bears"
 
2. An investor with a pessimistic market outlook; an investor who expects prices to fall and so sells now in order to buy later at a lower price
 
3. A large hairy or rough man
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

  final String _videoId = 'dGkbkEol9fs';
  final double _startSeconds = 811;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'yij2FpHYdwE';
  final double _startSeconds = 710;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = '0lq1JIWQSlc';
  final double _startSeconds = 164;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'yYjSYafjAjU';
  final double _startSeconds = 107;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'MJDmjFPFFJc';
  final double _startSeconds = 3308;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'yCdR82Odndw';
  final double _startSeconds = 343;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  const YoutubeEmbeddedseven({super.key});

  final String _videoId = 'J3euEMWC8tg';
  final double _startSeconds = 217;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  const YoutubeEmbeddedeight({super.key});

  final String _videoId = 'zj4zvXpQW1Y';
  final double _startSeconds = 217;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  const YoutubeEmbeddednine({super.key});

  final String _videoId = 'Vv_wzaXDbUc';
  final double _startSeconds = 786;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  const YoutubeEmbeddedten({super.key});

  final String _videoId = 'G3v31UpO17g';
  final double _startSeconds = 2602;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  const YoutubeEmbeddedeleven({super.key});

  final String _videoId = 'ISmyk5d1gkg';
  final double _startSeconds = 957;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  const YoutubeEmbeddedtwelve({super.key});

  final String _videoId = 'WUjVPIEtJd0';
  final double _startSeconds = 139;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedthirteen extends StatelessWidget {
  const YoutubeEmbeddedthirteen({super.key});

  final String _videoId = 'PZYcoWhEZxM';
  final double _startSeconds = 702;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  const YoutubeEmbeddeddfourteen({super.key});

  final String _videoId = 'oj6C9MJ89ho';
  final double _startSeconds = 1719;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddedfifteen extends StatelessWidget {
  const YoutubeEmbeddedfifteen({super.key});

  final String _videoId = 'JpbWqiUy0YM';
  final double _startSeconds = 285;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddeddsixteen extends StatelessWidget {
  const YoutubeEmbeddeddsixteen({super.key});

  final String _videoId = 'idDSfBVuKRc';
  final double _startSeconds = 620;

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

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setState) {
          return YouTubeVideosContainer(
            controller: controller,
            onReloadVideo: reloadVideo,
          );
        },
      ),
    );
  }
}

class YoutubeEmbeddeddseventeen extends StatelessWidget {
  const YoutubeEmbeddeddseventeen({super.key});

  final String _videoId = 'KNStujHAjQA';
  final double _startSeconds = 728;

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

// end bear// TODO Implement this library.
