import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycarry extends StatelessWidget {
  // blank divider
  EnglishEntrycarry({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcarry(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("carry"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys1(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was carrying a large bag."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys2(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The plane was carrying 122 passengers and five crew."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys3(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She carried her baby in her arms."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys4(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("These books are too heavy for me to carry."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys5(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Police in many countries carry guns."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys6(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I never carry much money on me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys7(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The veins carry blood to the heart."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys8(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Canals were built to carry water from the Snake River to Milner Dam in 1905."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys9(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Ticks can carry a nasty disease which affects humans."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys10(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He will carry the memory of the accident with him for ever."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys11(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("A road bridge has to carry a lot of traffic."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys12(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He is carrying the department."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys13(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She carries a full load of classes while also serving as department head."); // DOPSUM: CHANGE TEXT
  }

    Future<void> speakcarrys14(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Each bike carries a ten-year guarantee."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys15(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Crimes of violence carry heavy penalties."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys16(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The charge carries a maximum sentence of ten years."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys17(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The ball carried 50 metres into the crowd."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys18(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The sound of the explosion carried for miles."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys19(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The war was carried into enemy territory."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys20(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her abilities carried her to the top of her profession."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys21(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The resolution was carried by 340 votes to 210."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys22(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("His moving speech was enough to carry the audience."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys23(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She nodded in agreement, and he saw he had carried his point."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys24(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Cigarettes carry a health warning."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys25(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This morning's newspapers all carry the same story on their front page."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys26(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We do carry green tea, but we don't have any (in stock) right now."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys27(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She was carrying twins."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys28(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She carries herself with the poise of a model."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys29(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We did a carry of equipment from the camp."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys30(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Each state makes its own laws concerning the carry of weapons."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys31(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys3131"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys32(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys3232"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys33(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys3333"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys34(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys3434"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys35(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys3535"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys36(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys3636"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys37(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys3737"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys38(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys3838"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys39(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys3939"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys40(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys4040"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys41(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys4141"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys42(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys4242"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys43(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys4343"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys44(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys4444"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys45(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys4545"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys46(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys4646"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys47(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys4747"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys48(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys4848"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys49(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys4949"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcarrys50(String languageCode) async {
    // DOPSUM: CHANGE speakcarry
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcarrys5050"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 14, top: 4, right: 14, bottom: 4),
          // EdgeInsets.zero,
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
                            EntryTitle(word: "carry"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkæri/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcarry("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkæri/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcarry("en-US"),
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
                    const EnglishMeaning(), // DOPSUM: ENGLISH MEANING IS BELOW
                    SingleChildScrollView(
                      // DOPSUM: KURDISH MEANING
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١. (کردار) هەڵگرتن"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He was carrying a large bag."),
                                    ExampleSentenceKurdish(
                                        text: "تورەگەیەکی گەورەی هەڵگرتبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // Define the word "carry", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcarrys1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcarrys1("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "The plane was carrying 122 passengers and five crew."),
                          ExampleSentenceKurdish(
                          text: "فڕۆکەکە ١٢٢ گەشتیار و پێنج ئەندامی تاقمەکەی هەڵگرتبوو."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys2("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys2("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          Column(
                          children: [
                          MyExpansionTile(
                          children: [
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "She carried her baby in her arms."),
                          ExampleSentenceKurdish(
                          text: "منداڵەکەیی لە باوەشیدا هەڵگرتبوو."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys3("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerSentences(),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "These books are too heavy for me to carry."),
                          ExampleSentenceKurdish(
                          text: "ئەم کتێبانە زۆر قوورسن بۆم کە هەڵیان بگرم."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys4("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢. (کردار) بردنی شتێک لەگەڵ خۆتدا بۆ هەموو شوێنێک"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "Police in many countries carry guns."),
                          ExampleSentenceKurdish(
                          text: "پۆلیس لە زۆر وڵاتدا چەک هەڵدەگرن."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys5("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerSentences(),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "I never carry much money on me."),
                          ExampleSentenceKurdish(
                          text: "هەرگیز پارەی زۆر لەگەڵ خۆم هەڵناگرم."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys6("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٣. (کردار) هەبوونی ئاو، کارەبا، هتد تێیدا و گواستنەوەی"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "The veins carry blood to the heart."),
                          ExampleSentenceKurdish(
                          text: "خوێنهێنەرەکان خوێن دەبەن بۆ دڵ."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys7("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys7("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerSentences(),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "Canals were built to carry water from the Snake River to Milner Dam in 1905."),
                          ExampleSentenceKurdish(
                          text: "لە ساڵی ١٩٠٥ نۆکەند درووستکرا بۆ گواستنەوەی ئاو لە ڕووباری سنەیکەوە بۆ بەنداوی میلنەر."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys8("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys8("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٤. (کردار) کەسێک کە نەخۆشییەکی گرتووە و توانای گواستنەوەی هەیە"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "Ticks can carry a nasty disease which affects humans."),
                          ExampleSentenceKurdish(
                          text: "گەنە دەکرێت نەخۆشی پیس هەڵبگرن کە دەشێت مرۆڤ تووش بکات."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys9("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys9("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٥. (کردار) هەبوونی توانای بیرکەوتنەوەی شتێک"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "He will carry the memory of the accident with him (= will remember the accident) for ever."),
                          ExampleSentenceKurdish(
                          text: "یادەوەری ڕووداوەکە بۆ هەمیشە لە مێشکیدا هەڵدەگرێت."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys10("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys10("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٦. (کردار) هەڵگرتنی کێشی شتێک"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "A road bridge has to carry a lot of traffic."),
                          ExampleSentenceKurdish(
                          text: "پردی ڕێگایەک دەبێت بەرگەی هاتووچۆی زۆر بگرێت."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys11("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys11("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٧. (کردار) هەڵگرتنی بەرپرسیاریەتی بۆ شتێک"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "He is carrying the department (= it is only working because of his efforts)."),
                          ExampleSentenceKurdish(
                          text: "بەرپرسی بەشەکەیە."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys12("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys12("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerSentences(),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "She carries a full load of classes while also serving as department head."),
                          ExampleSentenceKurdish(
                          text: "یەک دونیا وانەی هەیە لەکاتێکدا سەرۆک بەشیشە."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys13("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys13("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٨. (کردار) هەبوونی خاسیەتێک یان تایبەتمەندییەک"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "Each bike carries a ten-year guarantee."),
                          ExampleSentenceKurdish(
                          text: "هەر پاسکیلێک ١٠ ساڵ زەمانی لەگەڵە."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys14("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys14("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٩. (کردار) هەبوونی شت لە ئەنجامدا"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "Crimes of violence carry heavy penalties."),
                          ExampleSentenceKurdish(
                          text: "تاوانی توندوتیژی سزای توندی لەسەرە."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys15("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys15("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerSentences(),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "The charge carries a maximum sentence of ten years."),
                          ExampleSentenceKurdish(
                          text: "تاوانەکە سزای زیندانی ئەوپەڕی بۆ ١٠ ساڵی لەسەرە ."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys16("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys16("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٠. (کردار) بڕینی مەودایەک لە دوای فڕێدان"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "The ball carried 50 metres into the crowd."),
                          ExampleSentenceKurdish(
                          text: "تۆپەکە ٥٠ مەتر چووە ناو جەماوەرەکە."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys17("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys17("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١١. (کردار) چوونی دەنگێک بۆ مەودایەک"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "The sound of the explosion carried for miles."),
                          ExampleSentenceKurdish(
                          text: "دەنگی تەقینەوەکە بۆ چەندین میل چوو."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys18("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys18("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٢. (کردار) بردنی کەسێک یان شتێک بۆ خاڵێکی دیاریکراو، یان بە ئاراستەیەکی دیاریکراودا"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "The war was carried into enemy territory."),
                          ExampleSentenceKurdish(
                          text: "جەنگەکە بردرایە ناوچەی دووژمن."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys19("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys19("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerSentences(),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "Her abilities carried her to the top of her profession."),
                          ExampleSentenceKurdish(
                          text: "تواناکانی گەیاندییە لوتکەی کارەکەی."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys20("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys20("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٣. (کردار) پەسەندکردنی شتێک بە هەبوونی خەڵکی زیاتر دەنگی پێبدەن وەک لەوەی دژی بن"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "The resolution was carried by 340 votes to 210."),
                          ExampleSentenceKurdish(
                          text: "نەخشە ڕێگاکە بە دەنگی ٣٤٠ د بە ٢١٠ پەسەندکرا."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys21("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys21("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٤. (کردار) بردنەوەی پشتگیری یان هاوسۆزی کەسێک"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "His moving speech was enough to carry the audience."),
                          ExampleSentenceKurdish(
                          text: "وتارەکەی بەس بوو بۆ بردنەوەی گوێگران."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys22("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys22("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerSentences(),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "She nodded in agreement, and he saw he had carried his point."),
                          ExampleSentenceKurdish(
                          text: "بە ڕازیبوونەوە سەری لەقاند، و کوڕەکە بینی کە پەیامەکەی گەیاند."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys23("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys23("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٥. (کردار) هەبوونی پەیامێک یان زانیارییەک لکاو پێوە"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "Cigarettes carry a health warning."),
                          ExampleSentenceKurdish(
                          text: "جگەرە هۆژدارییەکی تەندرووستی پێوەیە."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys24("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys24("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٦. (کردار) بڵاوکردنەوەی هەواڵێک"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "This morning's newspapers all carry the same story on their front page."),
                          ExampleSentenceKurdish(
                          text: "ڕۆژنامەکانی ئەم بەیانییە هەموو هەمان هەواڵیان بڵاوکردووە."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys25("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys25("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٧. (کردار) هەبوونی شتێک بۆ فرۆشتن لە فرۆشگایەکدا"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "We do carry green tea, but we don't have any (in stock) right now."),
                          ExampleSentenceKurdish(
                          text: "چای سەوز دەفرۆشین، بەڵام هیچمان لەبەردەستدا نییە لە ئێستادا."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys26("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys26("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٨. (کردار) دووگیانبوون بە منداڵ"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "She was carrying twins."),
                          ExampleSentenceKurdish(
                          text: "بە دووانە دووگیانە."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys27("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys27("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٩. (کردار) جوڵاندنی جەستەت بە شێوەیەکی دیاریکراو"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "She carries herself with the poise of a model."),
                          ExampleSentenceKurdish(
                          text: "بە لەشولاری مۆدێلێکەوە خۆی دەجوڵێنێت."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys28("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys28("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢٠. (ناو) هەڵگرتنی شتێک"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "We did a carry of equipment from the camp."),
                          ExampleSentenceKurdish(
                          text: "کەرەستەکانمان لە کامپەکەوە هەڵگرت."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys29("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys29("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٢١. (ناو) هەڵگرتنی چەک لە شوێنی گشتیدا"),
                          Row(
                          children: [
                          const Expanded(
                          child: Column(
                          children: [
                          ExampleSentenceEnglish(
                          text:
                          "Each state makes its own laws concerning the carry of weapons."),
                          ExampleSentenceKurdish(
                          text: "هەر ویلایەتێک یاسای خۆی دەردەکات  سەبارەت بە هەڵگرتنی چەک."),
                          ],
                          ),
                          ),
                          const CustomSizedBoxForTTS(),
                          Column(
                          children: [
                          CustomIconButtonBritish(
                          onPressed: () => speakcarrys30("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                          onPressed: () => speakcarrys30("en-US"),
                          ),
                          ],
                          ),
                          ],
                          ),
                        ],
                      ),
                    ),
                    YouTubeScroller(
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

// DOPSUM: ENGLISH MEANING

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
    // Extract text from EnglishMeaningConst and store it in textToSpeak
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

    // Update the state to reflect that TTS is in progress
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
- Verb: carry (Derived forms: carried, carries, carrying)
1. Move while supporting, either in a vehicle or in one's hands or on one's body (= transport)
"carry the suitcases to the car"; "This train is carrying nuclear waste"; "These pipes carry waste water into the river"; "You must carry your camping gear";
 
2. Have with oneself; have on one's person (= pack, take)
"I always carry money";

3. Serve as the medium for transmission, allow movement of (= impart, conduct, transmit, convey, channel)
"Sound carries well over water"; "The airwaves carry the sound";
 
4. Serve as a means for expressing something (= convey, express)
"The painting of Mary carries motherly love"; "His voice carried a lot of anger";
 
5. Bear or be able to bear the weight, pressure,or responsibility of
"His efforts carried the entire project"; "How many credits is this student carrying?"; "We carry a very large mortgage"
 
6. Support or hold in a certain manner (= hold, bear)
"He carried himself upright";

7. Have within (= hold, bear, contain)
"The jar carries wine";
 
8. Extend to a certain degree
"carry too far"; "She carries her ideas to the extreme"
 
9. Continue in location (= extend)
"The civil war carried into the neighbouring province";
 
10. Be necessarily associated with or result in or involve
"This crime carries a penalty of five years in prison"
 
11. Win in an election
"The senator carried his home state"
 
12. Include, as on a list
"How many people are carried on the payroll?"
 
13. Behave in a certain manner (= behave, acquit, bear, deport, conduct, comport)
"She carried herself well";
 
14. Have on hand (= stock, stockpile)
"Do you carry kerosene heaters?";
 
15. Include as the content; broadcast or publicize (= run)
"This paper carries a restaurant review"; "All major networks carried the press conference";
 
16. (sport) run with the ball, in basketball bouncing the ball or in soccer or hockey making small kicks (= dribble)
"Carry the ball";

17. Pass on a communication
"The news was carried to every village in the province"
 
18. Have as an inherent or characteristic feature or have as a consequence
"This new washer carries a two year guarantee"; "The loan carries a high interest rate"; "this undertaking carries many dangers"; "She carries her mother's genes"; "These bonds carry warrants"; "The restaurant carries an unusual name"
 
19. Be conveyed over a certain distance
"Her voice carries very well in this big opera house"
 
20. Keep up with financial support
"The Federal Government carried the province for many years"
 
21. Have or possess something abstract
"I carry her image in my mind's eye"; "I will carry the secret to my grave"; "I carry these thoughts in the back of my head"; "I carry a lot of life insurance"
 
22. Be equipped with (a mast or sail)
"This boat can only carry a small sail"
 
23. Win approval or support for (= persuade, sway)
"Carry all before one";
 
24. Compensate for a weaker partner or member by one's own performance
"I resent having to carry her all the time"
 
25. Take further or advance
"carry a cause"
 
26. Have on the surface or on the skin
"carry scars"
 
27. Capture after a fight
"The troops carried the town after a brief fight"
 
28. Transfer (entries) from one account book to another (= post)
 
29. Transfer (a number, cipher, or remainder) to the next column or unit's place before or after, in addition or multiplication
"put down 5 and carry 2"
 
30. Pursue a line of scent or be a bearer
"the dog was taught to fetch and carry"
 
31. (farming) bear (a crop)
"this land does not carry olives"
 
32. Propel or give impetus to
 
33. Drink alcohol without showing ill effects (= hold)
"he had drunk more than he could carry";
 
34. Be able to feed
"This land will carry ten cows to the acre"
 
35. Have a certain range
"This rifle carries for 3,000 feet"
 
36. (golf) cover a certain distance or advance beyond
"The drive carried to the green"
 
37. Secure the passage or adoption (of bills and motions)
"The motion carried easily"
 
38. Be successful in
"She lost the game but carried the match"
 
39. Sing or play against other voices or parts
"He cannot carry a tune"
 
40. Be pregnant with (= have a bun in the oven, bear, gestate, expect)
"I am carrying his child";

- Noun: carry (Derived forms: carries)
1. The act of carrying something
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Using the EnglishButtonTTS class
          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/HTV-U059FGQ?t=',
    startSeconds: 50,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/6usVX6BJYEk?t=',
    startSeconds: 62,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/KPDCsBlOrMM?t=',
    startSeconds: 256,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/ZBNELGfLekE',
    // startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/fitA1_rh8Z8?t=',
    startSeconds: 140,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/p0T95uHCaI4?t=',
    // startSeconds: 222222222222222,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/Vwq-k3ejpHM?t=',
    startSeconds: 11,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/y4Kd8acAago?t=',
    startSeconds: 248,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

// end WORD_WEB