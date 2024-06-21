import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrychange extends StatelessWidget {
  // blank divider
  EnglishEntrychange({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakchange(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("change");
  }

  Future<void> speakchanges1(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Rick hasn't changed. He looks exactly the same as he did at school.");
  }

  Future<void> speakchanges2(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The company failed to adapt to changing circumstances.");
  }

  Future<void> speakchanges3(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Things have changed dramatically since then.");
  }

  Future<void> speakchanges4(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Her life changed completely when she won the lottery.");
  }

  Future<void> speakchanges5(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My attitude to life has changed with age.");
  }

  Future<void> speakchanges6(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The internet has changed the way people work.");
  }

  Future<void> speakchanges7(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That experience changed my life.");
  }

  Future<void> speakchanges8(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Fame hasn't really changed him.");
  }

  Future<void> speakchanges9(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It can be hard to get people to change their habits.");
  }

  Future<void> speakchanges10(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Wait for the traffic lights to change.");
  }

  Future<void> speakchanges11(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The lights changed from red to green.");
  }

  Future<void> speakchanges12(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Caracas changed from a small town into a busy city.");
  }

  Future<void> speakchanges13(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Leaves change colour in autumn.");
  }

  Future<void> speakchanges14(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The wind has changed direction.");
  }

  Future<void> speakchanges15(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I want to change my doctor.");
  }

  Future<void> speakchanges16(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I didn't change my name when I got married.");
  }

  Future<void> speakchanges17(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("That back tyre needs changing.");
  }

  Future<void> speakchanges18(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We change our car every two years.");
  }

  Future<void> speakchanges19(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("At half-time the teams change ends.");
  }

  Future<void> speakchanges20(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can I change seats with you?");
  }

  Future<void> speakchanges21(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I need to change some euros.");
  }

  Future<void> speakchanges22(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can you change a £20 note?");
  }

  Future<void> speakchanges23(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This shirt I bought's too small—I'll have to change it for a bigger one.");
  }

  Future<void> speakchanges24(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Of course we'll change it for a larger size, Madam.");
  }

  Future<void> speakchanges25(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I stopped in Moscow only to change planes.");
  }

  Future<void> speakchanges26(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I went into the bedroom to change.");
  }

  Future<void> speakchanges27(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She changed into her swimsuit.");
  }

  Future<void> speakchanges28(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchanges2800");
  }

  Future<void> speakchanges29(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I didn't have time to change clothes before the party.");
  }

  Future<void> speakchanges30(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The baby needs changing.");
  }

  Future<void> speakchanges31(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Could you help me change the bed?");
  }

  Future<void> speakchanges32(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We're hoping for a change in the weather.");
  }

  Future<void> speakchanges33(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There was no change in the patient's condition overnight.");
  }

  Future<void> speakchanges34(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I need to make some major changes in my life.");
  }

  Future<void> speakchanges35(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We need to inform you of significant changes to the tax system.");
  }

  Future<void> speakchanges36(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Let's get away for the weekend. A change of scene will do you good.");
  }

  Future<void> speakchanges37(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There will be a crew change when we land at Dubai.");
  }

  Future<void> speakchanges38(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He made a rapid gear change as he approached the bend.");
  }

  Future<void> speakchanges39(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I made a couple of minor changes to my opening paragraph.");
  }

  Future<void> speakchanges40(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("It makes a change to read some good news for once.");
  }

  Future<void> speakchanges41(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It made a pleasant change not having to work.");
  }

  Future<void> speakchanges42(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Don't forget your change!");
  }

  Future<void> speakchanges43(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The ticket machine doesn't give change.");
  }

  Future<void> speakchanges44(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I have two dollars in change.");
  }

  Future<void> speakchanges45(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I keep a change of shoes in the car.");
  }

  Future<void> speakchanges46(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The journey involved three changes.");
  }

  Future<void> speakchanges47(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchanges4700");
  }

  Future<void> speakchanges48(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchanges4800");
  }

  Future<void> speakchanges49(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchanges4900");
  }

  Future<void> speakchanges50(String languageCode) async {
    // DOPSUM: CHANGE speakchange
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakchanges5000");
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
                            EntryTitle(word: "change"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /tʃeɪndʒ/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakchange("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /tʃeɪndʒ/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakchange("en-US"),
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
کوردی: گۆڕان، ھەڵگەڕان، گۆھارتن، گۆڕین، گۆڕینەوە، بازاڕی ئاڵ‌وگۆڕ، جۆربەجۆری، جۆراوجۆری، فرەجۆری، پووڵەوردە، قەرەپووڵ، پاشماوەی پووڵ، باقی پووڵ، دەستی زیادی، گۆڕاو، گۆھارتی
"""),
                          const DefinitionKurdish(text: "١. (کردار) گۆڕان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Rick hasn't changed. He looks exactly the same as he did at school."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕیک ھیچ نەگۆڕاوە. ڕێک وەک ئەو کاتەیە کە لە قوتابخانە بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "change", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges1("en-US"),
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
                                            "The company failed to adapt to changing circumstances."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کۆمپانیاکە شکستی ھێنا لە خۆگونجاندن لەگەڵ دۆخە گۆڕاوەکان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges2("en-US"),
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
                                                    "Things have changed dramatically since then."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "شتەکان لەو کاتەوە زۆر گۆڕاون."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchanges3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchanges3("en-US"),
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
                                                    "Her life changed completely when she won the lottery."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ژیانی تەواو گۆڕا کە تیروپشکەکەی بردەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchanges4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchanges4("en-US"),
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
                                                    "My attitude to life has changed with age."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "تێڕوانینم بۆ ژیان لەگەڵ تەمەندا گۆڕاوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchanges5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchanges5("en-US"),
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
                              text: "٢. (کردار) گۆڕینی شتێک یان کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The internet has changed the way people work."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئینتەرنێت شێوەی کارکردنی خەڵکی گۆڕیوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges6("en-US"),
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
                                            "That experience changed my life."),
                                    ExampleSentenceKurdish(
                                        text: "ئەو ئەزموونە ژیانمی گۆڕی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges7("en-US"),
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
                                                    "Fame hasn't really changed him."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ناوبانگ لە ڕاستیدا نەیگۆڕیوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchanges8("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchanges8("en-US"),
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
                                                    "It can be hard to get people to change their habits."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دەکرێت قورس بێت خووەکانی خەڵکی بگۆڕیت."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchanges9("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchanges9("en-US"),
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
                                  "٣. (کردار) گۆان لە دۆخ یان شێوەیەکەوە بۆ جۆرێکی دیکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Wait for the traffic lights to change."),
                                    ExampleSentenceKurdish(
                                        text: "بوەستە ترافیک لایتەکان بگۆڕێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges10("en-US"),
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
                                            "The lights changed from red to green."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لایتەکان لە سوورەوە بۆ سەوز گۆڕان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges11("en-US"),
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
                                                    "Caracas changed from a small town into a busy city."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "کاراکاس لە شارۆچکەیەکی بچووکەوە بوو بە شارێکی قەرەباڵغ."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchanges12("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchanges12("en-US"),
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
                                  "٤. (کردار) وەستان لە ھەبوونی دۆخ، ئاراستە، یان پێگە و ھەبوونی یەکێکی دیکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Leaves change colour in autumn."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گەڵاکان لە پاییزدا ڕەنگیان دەگۆڕن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges13("en-US"),
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
                                            "The wind has changed direction."),
                                    ExampleSentenceKurdish(
                                        text: "بایەکە ئاراستەی گۆڕی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) گۆڕینی شتێک، کەسێک، خزمەتگوزارییەک بە یەکێکی جیاوازتر یان تازەتر"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I want to change my doctor."),
                                    ExampleSentenceKurdish(
                                      text: "دەمەوێت پزیشکەکەم بگۆڕم.",
                                      note:
                                          "لە ئەمریکا زۆرکەس پزیشکی تایبەتی خۆی ھەیە کە ماوە ماوە سەردانی دەکات بۆ پشکنین",
                                    ),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges15("en-US"),
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
                                            "I didn't change my name when I got married."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ناومم نەگۆڕی کە ھاوسەرگیریم کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges16("en-US"),
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
                                                    "That back tyre needs changing."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ئەو تایەی دواوە پێویستی بە گۆڕینە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchanges17("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchanges17("en-US"),
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
                                                    "We change our car every two years."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھەر دوو ساڵ جارێک ئۆتۆمبێلەکەمان دەگۆڕین."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchanges18("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchanges18("en-US"),
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
                          const DefinitionKurdish(text: "٦. (کردار) گۆڕینەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "At half-time the teams change ends."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە نیوەی کاتدا تیمەکان سەریان گۆڕی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges19("en-US"),
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
                                        text: "Can I change seats with you?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەتوانم جێگاکەم لەگەڵت بگۆڕمەوە؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges20("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges20("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) گۆڕینەوەی پارە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I need to change some euros."),
                                    ExampleSentenceKurdish(
                                        text: "دەبێت ھەندێک یۆرۆ بگۆڕمەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges21("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges21("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) وردکردنەوەی پارە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Can you change a £20 note?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەتوانیت ٢٠ پاوەندییەک وردبکەیتەوە؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges22("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges22("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٩. (کردار) گۆڕینەوەی شتێک بە شتێکی دیکە، بەتایبەتی بەھۆی ئەوەی کە خراپە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This shirt I bought's too small—I'll have to change it for a bigger one."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەم فانیلە کە کڕیومە زۆر بچووکە، دەبێت بیگۆڕمەوە بە یەکێکی گەورەتر."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges23("en-US"),
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
                                            "Of course we'll change it for a larger size, Madam."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بەدڵنیاییەوە دەیگۆڕینەوە بە یەکێکی گەورەتر، خاتوون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges24("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) چوون لە پاسێک، شەمەندەفەرێک، ھتد بۆ یەکێکی دیکە بۆ بەردەوامیدان بە گەشتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I stopped in Moscow only to change planes."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە مۆسکۆ وەستام تەنھا بۆ گۆڕینی فڕۆکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges25("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges25("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١١. (کردار) لەبەرکردنی جلێکی دیکە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I went into the bedroom to change."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چووم بۆ ژووری نووستنەکە بۆ خۆگۆڕین."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges26("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges26("en-US"),
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
                                        text: "She changed into her swimsuit."),
                                    ExampleSentenceKurdish(
                                        text: "جلەمەلەکەیی لەبەرکرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges27("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges27("en-US"),
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
                                            "I didn't have time to change clothes before the party."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێویستی نەکرد جل بگۆڕم پێش ئاھەنگەکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges29("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges29("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٢. (کردار) گۆڕینی جل یان دایبی منداڵ"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "The baby needs changing."),
                                    ExampleSentenceKurdish(
                                        text: "منداڵەکە پێویستی بە گۆڕینە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges30("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges30("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (کردار) دانانی پێخەف و شتی دیکەی تازە لەسەر جێگای نووستن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Could you help me change the bed?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەتوانی یارمەتیم بدەیت لە پاککردنەوەی جێخەوەکە؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges31("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges31("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "١٤. (ناو) گۆڕان"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "We're hoping for a change in the weather."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە ھیوای گۆڕانێکین لە کەشوھەوادا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges32("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges32("en-US"),
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
                                            "There was no change in the patient's condition overnight."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە درێژایی شەو ھیچ گۆڕانێک لە دۆخی نەخۆشەکە نەبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges33("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges33("en-US"),
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
                                                    "I need to make some major changes in my life."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "پێویستە ھەندێک گۆڕانکاری گەورە بکەم لە ژیانمدا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchanges34("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchanges34("en-US"),
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
                                                    "We need to inform you of significant changes to the tax system."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دەبێت ئاگادارت بکەینەوە لە گۆڕانی گەورە لە سیستەمی باجدان."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchanges35("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchanges35("en-US"),
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
                                  "١٥. (ناو) پڕۆسەی شوێنگرتنەوەی شتێک بە شتێکی تازە یان جیاواز"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Let's get away for the weekend. A change of scene (= time in a different place) will do you good."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "با دووربکەوینەوە بۆ کۆتایی ھەفتە. گۆڕانێکی دەورووبەر باش دەبێت بۆت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges36("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges36("en-US"),
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
                                                    "There will be a crew change when we land at Dubai."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "گۆڕانێک لە تیمەکە دەبێت کە لە دووبەی دەنیشینەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchanges37("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchanges37("en-US"),
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
                                                    "He made a rapid gear change as he approached the bend."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بە خێرایی گێڕی گۆڕی کە گەشتە پێچەکە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchanges38("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchanges38("en-US"),
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
                                                    "I made a couple of minor changes to my opening paragraph."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھەندێک گۆڕانکاری بچووکم لە پەرەگرافی یەکەمم ئەنجامدا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakchanges39("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakchanges39("en-US"),
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
                                  "١٦. (ناو) جیاوازبوونی دۆخێک، شوێنێک، یان ئەزموونێک و ئەمە وابکات خۆش یان سەرنجڕاکێش بێت بێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "It makes a change to read some good news for once."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گۆڕانێک دەبێت کە ھەواڵێکی باش بۆ جارێک بخوێنمەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges40("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges40("en-US"),
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
                                            "It made a pleasant change not having to work."),
                                    ExampleSentenceKurdish(
                                        text: "کەسێکی خۆش بوو کە کار نەبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges41("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges41("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٧. (ناو) ئەو پارەیەی وەریدەگریتەوە کاتێک پارەی زیادت داوە بۆ شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "Don't forget your change!"),
                                    ExampleSentenceKurdish(
                                        text: "باقییەکەتت بیرنەچێت!"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges42("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges42("en-US"),
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
                                            "The ticket machine doesn't give change."),
                                    ExampleSentenceKurdish(
                                        text: "ئامێری بلیتەکە باقی ناداتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges43("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges43("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٨. (ناو) پارەی سکە نەک کاغەز"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I have two dollars in change (= coins that together are worth two dollars)."),
                                    ExampleSentenceKurdish(
                                        text: "دوو دۆلارم بە سکە ھەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges44("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges44("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٩. (ناو) دەستەیەک لە شتێکی زیادە، بۆ نموونە جلی زیادە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I keep a change of shoes in the car."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "جووتێک پێڵاوی زیادە لە ئۆتۆمبێلەکە دادەنێم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges45("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges45("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢٠. (ناو) گواستنەوە لە پاسێک، شەمەندەفەرێک، یان فڕۆکەیەک بۆ یەکێکی دیکە لا کاتی گەشتێکدا"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The journey involved three changes."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گەشتەکە سێ گواستنەوەی تێدا بوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakchanges46("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakchanges46("en-US"),
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
- Verb: change (derived forms: changing, changed, changes)
1. Make different; cause a transformation (= alter, modify)
"The discussion has changed my thinking about the issue";
 
2. Undergo a change; become different in essence; losing one's or its original nature
"She changed completely as she grew older"; "The weather changed last night"
 
3. Become different in some particular way (= alter, vary)
"her mood changes in accordance with the weather";
 
4. Lay aside, abandon, or leave for another (= switch, shift)
"The car changed lanes";

5. Put on different clothes
"Change before you go to the opera"
 
6. Exchange or replace with another, usually of the same kind or category (= exchange, commute, convert)
"He changed his name";
 
7. Give to, and receive from, one another (= exchange, interchange)
"Would you change places with me?";

8. Change from one vehicle or transportation line to another (= transfer)
"She changed in Chicago on her way to the East coast";
 
9. Become deeper in tone (= deepen)
"His voice began to change when he was 12 years old";
 
10. Remove or replace the coverings of
"Father had to learn how to change the baby"; "After each guest we changed the bed linens"

- Noun: change (derived forms: changes)
1. An event that occurs when something passes from one state or phase to another (= alteration, modification)
"the change was intended to increase sales"; "this storm is certainly a change for the worse";
 
2. A relational difference between states; especially between states before and after some event
"he attributed the change to their marriage"
 
3. The action of changing something
"the change of government had no impact on the economy"; "his change on abortion cost him the election"
 
4. The result of alteration or modification
"there were marked changes in the lining of the lungs"; "there had been no change in the mountains"
 
5. The balance of money received when the amount you tender is greater than the amount due
"I paid with a twenty and pocketed the change"
 
6. A thing that is different
"he inspected several changes before selecting one"
 
7. A different or fresh set of clothes
"she brought a change in her overnight bag"
 
8. Coins of small denomination regarded collectively
"he had a pocketful of change"
 
9. Money received in return for its equivalent in a larger denomination or a different currency
"he got change for a twenty and used it to pay the taxi driver"
 
10. A difference that is usually pleasant (= variety)
"it is a refreshing change to meet a woman mechanic";
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

class YoutubeEmbeddedend extends StatefulWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  State<YoutubeEmbeddedend> createState() => _YoutubeEmbeddedendState();
}

class _YoutubeEmbeddedendState extends State<YoutubeEmbeddedend> {
  late YoutubePlayerController _controller;
  final String _videoId = 'xDSFlRunlrU';
  final double _startSeconds = 12;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainerEnd(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatefulWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  State<YoutubeEmbeddedone> createState() => _YoutubeEmbeddedoneState();
}

class _YoutubeEmbeddedoneState extends State<YoutubeEmbeddedone> {
  late YoutubePlayerController _controller;
  final String _videoId = 'n-m-SmqQZTU';
  final double _startSeconds = 98;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatefulWidget {
  const YoutubeEmbeddedtwo({super.key});

  @override
  State<YoutubeEmbeddedtwo> createState() => _YoutubeEmbeddedtwoState();
}

class _YoutubeEmbeddedtwoState extends State<YoutubeEmbeddedtwo> {
  late YoutubePlayerController _controller;
  final String _videoId = '1_mp1zOHaSQ';
  final double _startSeconds = 279;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatefulWidget {
  const YoutubeEmbeddedthree({super.key});

  @override
  State<YoutubeEmbeddedthree> createState() => _YoutubeEmbeddedthreeState();
}

class _YoutubeEmbeddedthreeState extends State<YoutubeEmbeddedthree> {
  late YoutubePlayerController _controller;
  final String _videoId = 'nThPwzI2-Rs';
  final double _startSeconds = 15;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatefulWidget {
  const YoutubeEmbeddedfour({super.key});

  @override
  State<YoutubeEmbeddedfour> createState() => _YoutubeEmbeddedfourState();
}

class _YoutubeEmbeddedfourState extends State<YoutubeEmbeddedfour> {
  late YoutubePlayerController _controller;
  final String _videoId = 'orKd7GVtAB0';
  final double _startSeconds = 43;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatefulWidget {
  const YoutubeEmbeddedfive({super.key});

  @override
  State<YoutubeEmbeddedfive> createState() => _YoutubeEmbeddedfiveState();
}

class _YoutubeEmbeddedfiveState extends State<YoutubeEmbeddedfive> {
  late YoutubePlayerController _controller;
  final String _videoId = 'hS2x1zl4rn0';
  final double _startSeconds = 72;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatefulWidget {
  const YoutubeEmbeddedsix({super.key});

  @override
  State<YoutubeEmbeddedsix> createState() => _YoutubeEmbeddedsixState();
}

class _YoutubeEmbeddedsixState extends State<YoutubeEmbeddedsix> {
  late YoutubePlayerController _controller;
  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 19;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedseven extends StatefulWidget {
  const YoutubeEmbeddedseven({super.key});

  @override
  State<YoutubeEmbeddedseven> createState() => _YoutubeEmbeddedsevenState();
}

class _YoutubeEmbeddedsevenState extends State<YoutubeEmbeddedseven> {
  late YoutubePlayerController _controller;
  final String _videoId = 'pFEB0chiuJA';
  final double _startSeconds = 501;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

// end WORD_WEB
