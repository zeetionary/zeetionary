import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycolour extends StatelessWidget {
  // blank divider
  EnglishEntrycolour({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcolour(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("colour"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours1(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("What's your favourite colour?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours2(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She always wears dark colours."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours3(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her hair is a reddish-brown colour."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours4(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The stage lights changed colour from red to blue."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours5(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Dark colours suit you best."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours6(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Do you dream in colour?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours7(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Is the film in colour or black and white?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours8(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Discrimination on the grounds of race, religion or colour was outlawed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours9(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Can we seriously believe people who claim not to see colour?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours10(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The fresh air brought colour to their cheeks."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours11(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Colour flooded her face when she thought of what had happened."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours12(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This colour runs, so wash the shirt separately."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours13(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The old town is full of colour and attractions."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours14(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These flowers certainly give the room a bit of colour."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours15(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Red and white are the team colours."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours16(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There are people of different political colours on the committee."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours17(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The children love to draw and colour."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours18(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "How long have you been colouring your hair?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours19(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He drew a monster and coloured it green."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours20(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Everyone in the room stared at Gerry, and he coloured slightly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours21(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She coloured at his remarks."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours22(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("This incident coloured her whole life."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours23(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Don't let your judgement be coloured by personal feelings."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours24(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours25(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours26(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours27(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours28(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours29(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours30(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours31(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours32(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours33(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours34(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours35(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours36(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours37(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours38(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours39(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours40(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours41(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours4100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours42(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours4200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours43(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours4300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours44(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours4400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours45(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours4500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours46(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours4600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours47(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours4700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours48(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours4800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours49(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours4900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours50(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours5000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours51(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours5100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours52(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours5200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours53(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours5300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours54(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours5400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours55(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours5500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours56(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours5600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours57(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours5700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours58(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours5800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours59(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours5900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours60(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours6000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcolours61(String languageCode) async {
    // DOPSUM: CHANGE speakcolour
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcolours6100"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "colour"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /ˈkʌlə(r)/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcolour("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /ˈkʌlər/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcolour("en-US"),
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
                          const KurdishVocabulary(text: """
کوردی: ڕەنگ،	ڕەنگی پێست،	سووری و گەشاوەیی سەروچاو، ئاڵا،	ڕواڵەت، ڕووکار،	دڵڕفێنی، ورووژان، سەرنج‌ڕاکێشی،	نژاد، ڕەگەز،	تین‌وگوڕ، کەف‌کوڵ 
"""),
                          const DefinitionKurdish(text: "١. (ناو) ڕەنگ"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "What's your favourite colour?"),
                                    ExampleSentenceKurdish(
                                        text: "ڕەنگی دڵخوازت چییە؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "colour", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours1("en-US"),
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
                                        text: "She always wears dark colours."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەمیشە ڕەنگی تاریک لەبەر دەکات؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours2("en-US"),
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
                                                    "Her hair is a reddish-brown colour."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "قژی ڕەنگێکی قاوەیی سوورباوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcolours3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcolours3("en-US"),
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
                                                    "The stage lights changed colour from red to blue."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لایتەکانی ئەم ستەیجە ڕەنگیان گۆڕی لە سوورەوە بۆ شین."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcolours4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcolours4("en-US"),
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
                                                    "Dark colours suit you best."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ڕەنگە تاریکەکانت زیاترین لێدێت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcolours5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcolours5("en-US"),
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
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) بە ھەموو ڕەنگەکانەوە نەک تەنھا ڕەش و سپی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Do you dream in colour?"),
                                    ExampleSentenceKurdish(
                                        text: "خەون بە ڕەنگینی دەبینیت؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours6("en-US"),
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
                                            "Is the film in colour or black and white?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فیلمەکە ڕەنگاوڕەنگە یان ڕەش و سپییە؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) ڕەنگی پێستی کەسێک وەک ئاماژە بە ڕەگەزی کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Discrimination on the grounds of race, religion or colour was outlawed."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جیاکاری لەسەر بنەمای ڕەگەز، ئایین، یان ڕەنگی پێست بە نایاسایی کرا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours8("en-US"),
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
                                            "Can we seriously believe people who claim not to see colour?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە جدی دەتوانین باوەڕ بەو کەسانە بکەین کە ڕەنگی پێست گرنگ نییە لایان؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) ڕەنگێکی سوور یان پەمەیی لەسەر ڕووخساری کەسێک، بەتایبەتی کە ئەوە پیشان دەدات کە تەندرووستە یان شەرمەزارە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The fresh air brought colour to their cheeks."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەوا پاکەکە گەشانەوەی دا بە گۆنایان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours10("en-US"),
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
                                            "Colour flooded her face when she thought of what had happened."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سوور ھەڵگەڕا کە زانی چی ڕوویداوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) مادەیەک کە ڕەنگ دەبەخشێت بە شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This colour runs, so wash the shirt separately."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم ڕەنگە ئەدرێتەوە، بۆیە درێسەکە بە جیا بشۆ."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) وردەکاری یان خاسیەتی سەرنجڕاکێش و بەچێژ"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The old town is full of colour and attractions."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "شارۆکەکە کۆنەکە پڕ لە دڵڕفێنەری و سەرنجڕاکێشییە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours13("en-US"),
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
                                            "These flowers certainly give the room a bit of colour."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم گوڵانە بەدڵنیاییەوە چێژێک دەدەن بە ژوورەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (ناو) ئەو ڕەنگانەی کە لەسەر ئاڵا، جل، ھتد بەکاردێن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Red and white are the team colours."),
                                    ExampleSentenceKurdish(
                                        text: "سوور و سپی ڕەنگەکانی تیمەکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours15("en-US"),
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
                                            "There are people of different political colours on the committee."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "(بەکارھێنانی خوازراوی) خەڵکی لە ڕەنگە جیاوازەکانی سیاسەتەوە لە لیژنەکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) ڕەنگکردن بە بۆیە، پێنووس، ھتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The children love to draw and colour."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "منداڵەکان حەزیان بە وێنەکێشان و ڕەنگکردن ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours17("en-US"),
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
                                            "How long have you been colouring (= dyeing) your hair?"),
                                    ExampleSentenceKurdish(
                                        text: "چەند دەبێت قژت بۆیە دەکەیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours18("en-US"),
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
                                            "He drew a monster and coloured it green."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دڕندەیەکی کێشا و ڕەنگی سەوزی کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours19("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) سوورھەڵگەڕان بەھۆی شەرمەزارییەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Everyone in the room stared at Gerry, and he coloured slightly."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ھەموان لە ژوورەکەدا لە گێرییان دەڕوانی، و کەمێک سوورھەڵگەڕا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours20("en-US"),
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
                                        text: "She coloured at his remarks."),
                                    ExampleSentenceKurdish(
                                        text: "سوورھەڵگەڕا بە لێدوانەکانی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours21("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) کاریگەری دانان لەسەر کەسێک، بەتایبەتی بە نەرێنی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This incident coloured her whole life."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم ڕووداوە کاریگەری لە تەواوی ژیانی کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours22("en-US"),
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
                                            "Don't let your judgement be coloured by personal feelings."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مەھێڵە بڕیارەکانی کاریگەر بن بە ھەستی کەسیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcolours23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcolours23("en-US"),
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
- Noun: colour (derived forms: colours)
Usage: Brit, Cdn (US: color)
1. A visual attribute of things that results from the light they emit, transmit or reflect (= color [US], coloring [US], colouring [Brit, Cdn])
"a white colour is made up of many different wavelengths of light";
 
2. Interest and variety and intensity (= color [US], vividness)
"the Puritan Period was lacking in colour";
 
3. The timbre of a musical sound (= color [US], coloration, colouration [Brit, Cdn])
"the recording fails to capture the true colour of the original music";
 
4. An outward or token appearance or form that is deliberately misleading (= semblance, gloss, color [US])
"the situation soon took on a different colour"; "he hoped his claims would have a colour of authenticity";
 
5. Any material used for its colour (= coloring material [US], colouring material [Brit, Cdn], color [US])
"she used a different colour for the trim";
 
6. (physics) the characteristic of quarks that determines their role in the strong interaction (= color [US])
"each flavour of quarks comes in three colours";
 
7. The appearance of objects (or light sources) described in terms of a person's perception of their hue and lightness (or brightness) and saturation (= color [US])

- Verb: colour (derived forms: colouring, colours, coloured)
Usage: Brit, Cdn (US: color)
1. Add colour to (= color [US], colorize [US], colorise [Brit], colourise [Brit], colourize [Brit, Cdn], color in [US], colour in [Brit, Cdn])
"The child coloured the drawings"; "Fall coloured the trees"; "The child coloured in the drawings";
 
2. Affect as in thought or feeling (= tinge, color [US], distort)
"My personal feelings colour my judgment in this case"; "The sadness coloured his life";
 
3. Modify or bias (= color [US])
"His political ideas colour his lectures";
 
4. Decorate with colours (= color [US], emblazon)
"colour the walls with paint in warm tones";
 
5. Give a deceptive explanation or excuse for (= color [US], gloss)
"colour a lie";
 
6. Change colour, often in an undesired manner (= discolor [US], discolour [Brit, Cdn], color [US])
"The shirts coloured";

- Adjective: colour 
Usage: Brit, Cdn (US: color)
1. (photography) having or capable of producing colours (= color [US])
"colour film"; "he rented a colour television"; "marvellous colour illustrations";
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
    videoId: 'ntyKOEZ4hK4',
    startSeconds: 12,
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
    videoId: 'E2_kRmS6y8A',
    startSeconds: 1356,
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
    videoId: 'dhgEpr87Yac',
    startSeconds: 206,
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
    videoId: 'mcZdTvOqmvI',
    startSeconds: 184,
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
    videoId: 'Y_N0AxCzVLg',
    startSeconds: 807,
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
    videoId: 'oiLdWXLXDeA',
    startSeconds: 977,
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
    videoId: 'HL_0OL7vZ44',
    startSeconds: 219,
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