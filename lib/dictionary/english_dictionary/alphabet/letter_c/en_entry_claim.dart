import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryclaim extends StatelessWidget {
  // blank divider
  EnglishEntryclaim({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclaim(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("claim"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims1(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I don't claim to be an expert."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims2(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She's not the saint that many have claimed her to be."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims3(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Scientists are claiming a major breakthrough in the fight against cancer."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims4(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "It was claimed that some doctors were working 80 hours a week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims5(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Some critics claimed that the play was too complicated."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims6(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He claimed victory in the presidential elections before all the results were in."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims7(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Nobody has claimed responsibility for the bombing."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims8(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You might be entitled to claim compensation if you are injured at work."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims9(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You could have claimed the cost of the hotel room from your insurance."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims10(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She claimed damages from the company for the injury she had suffered."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims11(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She is entitled to claim a deduction for travel costs."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims12(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The family arrived in the UK in the 1990s and claimed political asylum."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims13(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "When King Richard III died, Henry VII claimed the English throne."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims14(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The police said that if no one claims the watch, you can keep it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims15(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A most unwelcome event claimed his attention."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims16(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has finally claimed a place on the team."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims17(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The car crash claimed three lives."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims18(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company had made false claims about its products."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims19(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The singer has denied the magazine's claim that she is leaving the band."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims20(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Claims of corruption within the police force were denied."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims21(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There are conflicting claims about the cause of the fire."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims22(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We have heard claims like this many times before."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims23(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Make sure your claims for expenses are submitted by the end of the month."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims24(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She brought a claim for damages against the company."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims25(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The court denied their claim for compensation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims26(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They had no claim on the land."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims27(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has more claim to the campaign's success than anybody."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims28(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She renounced her claim to the property."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims29(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclaims2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims30(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclaims3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims31(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclaims3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims32(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclaims3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims33(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclaims3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims34(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclaims3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims35(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclaims3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims36(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclaims3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims37(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclaims3700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims38(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclaims3800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims39(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclaims3900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims40(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclaims4000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclaims41(String languageCode) async {
    // DOPSUM: CHANGE speakclaim
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclaims4100"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "claim"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kleɪm/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclaim("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kleɪm/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclaim("en-US"),
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
کوردی: داواکاری، ئیدعا، داخوازی، وابێژی، داوا، ویستن،	ماف،	هۆ
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (کردار) وتنی ئەوەی شتێک ڕاستە ئەگەرچی نەسەلمێندراوە و خەڵکی دیکە ڕەنگە باوەڕ نەکەن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "I don't claim to be an expert."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بانگەشەی ئەوە ناکەم پسپۆڕێک بم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "claim", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims1("en-US"),
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
                                            "She's not the saint that many have claimed her to be."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەو فریشتەیەش نییە کە زۆر کەس بانگەشەی ئەوەی بۆ دەکەن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims2("en-US"),
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
                                                    "Scientists are claiming a major breakthrough in the fight against cancer."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "زاناکان بانگەشەی پەرەسەندنێکی گەورە دەکەن لە جەنگی دژ بە شێرپەنجە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclaims3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclaims3("en-US"),
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
                                                    "It was claimed that some doctors were working 80 hours a week."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بانگەشەی ئەوە دەکرا هەندێک پزیشک ٨٠ کاتژمێر لە هەفتەیەکدا کاردەکەن."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclaims4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclaims4("en-US"),
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
                                                    "Some critics claimed that the play was too complicated."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "هەندێک ڕەخنەگر بانگەشەی ئەوەیان کرد کە شانۆکە زۆر ئاڵۆز بوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclaims5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclaims5("en-US"),
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
                                  "٢. (کردار) بانگەشەکردنی ئەوەی کردووە یان بەدەستهێناوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He claimed victory in the presidential elections before all the results were in."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "سەرکەوتنی لە هەڵبژاردنی سەرۆکایەتی ڕاگەیاند پێش ئەوەی هەموو ئەنجامەکان دەربکەون."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims6("en-US"),
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
                                            "Nobody has claimed responsibility for the bombing."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کەس بەرپرسیاریەتی بۆ تەقینەوەکان ڕانەگەیاندووە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) داواکردنی پارە لە حکومەت یان کۆمپانیایەک بەهۆی ئەوەی مافی ئەوەت هەیە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "You might be entitled to claim compensation if you are injured at work."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەگەری بوونی مافی قەرەبووت هەیە ئەگەر لەسەر کار بریندار بیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims8("en-US"),
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
                                            "You could have claimed the cost of the hotel room from your insurance."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەتتوانی لە بیمەکەت داوای کرێی ژووری هوتێلەکەت بکردایە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims9("en-US"),
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
                                                    "She claimed damages from the company for the injury she had suffered."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "داوای پارەی قەرەبووی لە کۆمپانیاکە کرد بۆ ئەو برینەی تووشی بووبوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclaims10("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclaims10("en-US"),
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
                                                    "She is entitled to claim a deduction for travel costs."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "مافی ئەوەی هەیە داوای داشکان بۆ تێچووی هاتووچۆ بکات."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclaims11("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclaims11("en-US"),
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
                                  "٤. (کردار) داواکردنی شتێک چونکە پێتوایە مافی یاساییتە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The family arrived in the UK in the 1990s and claimed political asylum."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "خێزانەکە لە ١٩٩٠ـەکان هاتنە بەریتانیا و داوای مافی پەنابەرێتی سیاسییان کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims12("en-US"),
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
                                            "When King Richard III died, Henry VII claimed the English throne."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کە ڕیچاردی سێیەم مرد، هێنریی حەوتەم داوای تەختی شاهانەی ئینگلیزی کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims13("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The police said that if no one claims the watch, you can keep it."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پۆلیس گوتی ئەگەر کەس وەک خاوەنی کاتژمێرەکە دەرنەکەوت، دەتوانی بیبەیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (کردار) ڕاکێشانی سەرنجی کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "A most unwelcome event claimed his attention."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕووداوێکی بێزراو سەرنجی ڕاکێشا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims15("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٦. (کردار) کردن یان بەدەستهێنانی شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She has finally claimed a place on the team."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە کۆتاییدا شوێنێکی لە تیمەکە بەدەستهێناوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims16("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims16("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) بوون بە هۆکاری مردنی کەسێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The car crash claimed three lives."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پێکدادانی ئۆتۆمبێلەکە سێ کەسی کردە قوربانی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims17("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims17("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٨. (ناو) وتەیەک کە بانگەشەی ئەوە دەکات شتێک ڕاستە ئەگەرچی بەڵگە نییە و خەڵکی دیکە ڕەنگە باوەڕ نەکەن یان هاودەنگ نەبن"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The company had made false claims about its products."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کۆمپانیاکە بانگەشەی ناڕاستی کردووە دەربارەی بەرهەمەکانی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims18("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims18("en-US"),
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
                                            "The singer has denied the magazine's claim that she is leaving the band."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "گۆرانیبێژەکە بانگەشەی گۆڤارەکەی بەدرۆخستووەتەوە لەسەر ئەوەی کە باندەکە جێدێڵێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims19("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims19("en-US"),
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
                                                    "Claims of corruption within the police force were denied."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "بانگەشەی گەندەڵی لەناو هێزی پۆلیس نکۆڵی لێکرا."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclaims20("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclaims20("en-US"),
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
                                                    "There are conflicting claims about the cause of the fire."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لێدوانی دژبەیەک هەیە لەسەر هۆکاری ئاگرەکە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclaims21("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclaims21("en-US"),
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
                                                    "We have heard claims like this many times before."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "لێدوانی وەک ئەمەمان زۆر جارانی دیکە بیستووە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclaims22("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclaims22("en-US"),
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
                                  "٩. (ناو) داخوازی بۆ بڕێک پارە کە پێتوایە مافت هەیە بۆی، بەتایبەتی لە حکومەت، کۆمپانیایەک، هتد"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Make sure your claims for expenses are submitted by the end of the month."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دڵنیابە داخوازییەکانتان بۆ خەرجییەکان تا کۆتایی مانگ پێشکەش دەکرێن."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims23("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims23("en-US"),
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
                                            "She brought a claim for damages against the company."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "داخوازی قەرەبووی دژ بە کۆمپانیایەکە هێنایە پێشەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims24("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims24("en-US"),
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
                                                    "The court denied their claim for compensation."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "دادگا داخوازییەکەیان بۆ قەرەبوو ڕەتکردەوە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakclaims25("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakclaims25("en-US"),
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
                                  "١٠. (ناو) مافێک کە کەسێک باوەڕی وایە لە ڕووی یاساییەوە هەیەتی بەسەر شتێکەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "They had no claim on the land."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "هیچ مافێکیان بەسەر خاکەکەوە نەبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims26("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims26("en-US"),
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
                                            "She has more claim to the campaign's success than anybody (= she is responsible for it)."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "زیاتر لە هەر کەسێک مافی هەیە بەسەر سەرکەوتنی کۆمپانیاکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims27("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims27("en-US"),
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
                                            "She renounced her claim to the property."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "وازی لە مافی بەسەر زەوی‌وزارەکەوە هێنا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclaims28("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclaims28("en-US"),
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
- Verb: claim (Derived forms: claims, claimed, claiming)
1. Assert or affirm strongly; state to be true or existing
"He claimed that he killed the burglar"
 
2. Demand as being one's due or property; assert one's right or title to (= lay claim, arrogate)
"He claimed his suitcases at the airline counter"; "Mr. Smith claims special tax exemptions because he is a foreign resident";
 
3. Ask for legally or make a legal claim to, as of debts, for example
"They claimed on the maximum allowable amount"
 
4. Lay claim to; as of an idea (= take)
"She claimed credit for the whole idea";
 
5. Take as an undesirable consequence of some event or state of affairs (= take, exact)
"the accident claimed three lives";

- Noun: claim (Derived forms: claims)
1. An assertion of a right (as to money or property)
"his claim asked for damages"
 
2. An assertion that something is true or factual
"his claim that he was innocent"; "evidence contradicted the government's claims"
 
3. Demand for something as rightful or due
"they struck in support of their claim for a shorter work day"
 
4. An informal right to something (= title)
"his claim on her attentions";
 
5. An established or recognized right (= title)
"a strong legal claim to the property"; "he staked his claim";
 
6. A moral duty or demand (= call)
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
    videoId: 'https://youtu.be/wpTpc8H0XHw?t=',
    startSeconds: 208,
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
    videoId: 'https://youtu.be/JuUzU2OA9R8?t=',
    startSeconds: 7,
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
    videoId: 'https://youtu.be/2Zax1rDO_w8?t=',
    startSeconds: 120,
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
    videoId: 'https://youtu.be/Ok2RgRHycG8',
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
    videoId: 'https://youtu.be/HDntl7yzzVI?t=',
    startSeconds: 1541,
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
    videoId: 'https://youtu.be/tXjHb5QmDV0?t=',
    startSeconds: 1040,
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
    videoId: 'https://youtu.be/tsxmyL7TUJg?t=',
    startSeconds: 69,
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
    videoId: 'https://youtu.be/aAByKcPJ5NQ?t=',
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

// end WORD_WEB