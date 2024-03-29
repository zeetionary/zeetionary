import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrycommission extends StatelessWidget {
// blank divider
  EnglishEntrycommission({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcommission(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("commission"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions1(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The commission is expected to report its findings next month."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions2(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The election commission found that neither candidate received enough votes to avoid a run-off."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions3(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The defendant will be brought to trial before a military commission."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions4(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was also a member of the commission on religious education."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions5(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government appointed an independent commission to investigate the causes of the disaster."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions6(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government has set up a joint commission to consider the problem."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions7(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You get a 10 per cent commission on everything you sell."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions8(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He earned £2 000 in commission last month."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions9(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "1 per cent commission is charged for exchanging foreign currency."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions10(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Eventually she agreed to accept the commission."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions11(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He received a commission to design the new parliament building."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions12(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He resigned his commission when he got married."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions13(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She has been commissioned to write a new national anthem."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions14(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The king commissioned portraits from foreign artists."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions15(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He has just been commissioned (as a) pilot officer."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions16(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions1600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions17(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions1700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions18(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions1800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions19(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions1900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions20(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions2000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions21(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions2100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions22(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions2200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions23(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions2300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions24(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions2400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions25(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions2500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions26(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions2600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions27(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions2700"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions28(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions2800"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions29(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions2900"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions30(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions3000"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions31(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions3100"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions32(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions3200"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions33(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions3300"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions34(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions3400"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions35(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions3500"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions36(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions3600"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcommissions37(String languageCode) async {
    // DOPSUM: CHANGE speakcommission
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcommissions3700"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "commission"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /kəˈmɪʃn/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakcommission("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /kəˈmɪʃn/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakcommission("en-US"),
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
کوردی: پێ‌سپاردن،	ئەرک، کار، پەیور، بەڵێنی، دەربەندی،	کار پێ‌سپاردن، ڕاسپاردەیی، ڕاسپێری، فەرمانبەری،	بریکاری، نوێنەرایەتی،	بەرپرسایەتی، دەسەڵات،	لیژنە، لێژنە،	دەڵاڵی، دەڵاڵانە، کارانە، دەسبایی، دەس‌بوھا، کۆمیسیۆن، کۆمسیۆن،	(گوناھـ)کردن، دەس‌تیابوون،	بڕیار، دەستوور، فەرمان،	پۆست یا پلەوپایەی سەربازی
"""),
                          const DefinitionKurdish(
                              text:
                                  "١. (ناو) گرووپێکی فەرمی لە خەڵک کە ئەرکی کۆنترۆڵی شتێک یان دۆزینەوە لەسەر شتێکیان پێدراوە، بەتایبەتی لەلایەن حکومەتەوە "),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The commission is expected to report its findings next month."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کۆمسیۆنەکە چاوەڕێ دەکرێت مانگی داھاتوو دۆزینەوەکانی ئاشکرا بکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "commission", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommissions1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommissions1("en-US"),
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
                                            "The election commission found that neither candidate received enough votes to avoid a run-off."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "کۆمسیۆنی ھەڵبژاردنەکە دۆزییەوە ھیچ یەک لە کاندیدەکان دەنگی پێویستییان بەدەستنەھێنابوو بۆ دوورکەوتنەوە لە ڕووبەڕووبوونەوەی دووەم."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommissions2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommissions2("en-US"),
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
                                                    "The defendant will be brought to trial before a military commission."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "گومانلێ‌کراوەکە ھێنرایە پێش کۆمسیۆنێکی سەربازی."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommissions3("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommissions3("en-US"),
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
                                                    "She was also a member of the commission on religious education."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "ھەروەھا ئەندانی کۆمسیۆنی پەروەردەی ئایینی بوو."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommissions4("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommissions4("en-US"),
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
                                                    "The government appointed an independent commission to investigate the causes of the disaster."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "حکومەت کۆمسیۆنێکی سەربەخۆی دیاریکرد بۆ لێکۆڵینەوە لە ھۆکاری ڕووداوەکە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommissions5("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommissions5("en-US"),
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
                                                    "The government has set up a joint commission to consider the problem."),
                                            ExampleSentenceKurdish(
                                                text:
                                                    "حکومەت کۆمسیۆنی ھاوبەشێ پێکھێناوە بۆ لێکۆڵینەوە لە کارەساتەکە."),
                                          ],
                                        ),
                                      ),
                                      const CustomSizedBoxForTTS(),
                                      Column(
                                        children: [
                                          CustomIconButtonBritish(
                                            onPressed: () =>
                                                speakcommissions6("en-GB"),
                                          ),
                                          CustomIconButtonAmerican(
                                            onPressed: () =>
                                                speakcommissions6("en-US"),
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
                                  "٢. (ناو) ڕێژەیەک پارە کە دەدرێت بە کەسێک بۆ فرۆشتنی کەلوپەل، و زیاد دەکات بەپێی ئەو ڕێژەیەی کە دەیفرۆشێت"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "You get a 10 per cent commission on everything you sell."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "١٠ لە سەدی دەڵاڵانە وەردەگریت بۆ ھەر شتێک کە دەیفرۆشیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommissions7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommissions7("en-US"),
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
                                            "He earned £2 000 in commission last month."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مانگی ڕابردوو ٢٠٠٠ پاوەندی بە دەڵاڵانە بەدەستھێنا."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommissions8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommissions8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) بڕە پارەیەک کە داوا دەکرێت لەلایەن بانکێک، ھتد بۆ خزمەتگوزارییەک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "1 per cent commission is charged for exchanging foreign currency."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "١ لە سەدی کارانە دەسەندرێت بۆ گۆڕینەوەی دراوی بیانی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakcommissions9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakcommissions9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٤. (ناو) داوایەکی فەرمی لە کەسێک بۆ دیزاینێک یان ئەنجامدانی کارێکی وەک بینایەک یان تابلۆیەک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Eventually she agreed to accept the commission."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لە کۆتاییدا ڕازی بوو بە پەسەندکردنی داواکە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcommissions10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcommissions10("en-US"),
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
                                            "He received a commission to design the new parliament building."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "داوایەکی پێگەشت بۆ دیزاینی بینا تازەکەی پەرلەمان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcommissions11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcommissions11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (ناو) پێگەی ئەفسەری لە سوپادا، زۆرجار بە پلەی ناوەند یان باڵاتر"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He resigned his commission when he got married."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "وازی لە ئەفسەرێتییەکەی ھێنا کە ھاوسەرگیری کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcommissions12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcommissions12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) بە فەرمی داواکردن لە کەسێک کە شتێک بنووسێت، درووستی بکات، یان شتێکت بۆ بکات"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She has been commissioned to write a new national anthem."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "داوای لێکراوە ئەنزیمێکی تازەی نیشتیمانی بنووسێت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcommissions13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcommissions13("en-US"),
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
                                            "The king commissioned portraits from foreign artists."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پاشا داوای پۆرترەیتی لە ھونەرمەندە بیانییەکان کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcommissions14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcommissions14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) ھەڵبژاردنی کەسێک وەک ئەفسەر"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He has just been commissioned (as a) pilot officer."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "تازەگی وەک ئەفسەرێکی فڕۆکەوان ھەڵبژێردراوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () =>
                                        speakcommissions15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakcommissions15("en-US"),
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
- Noun: commission (derived forms: commissions)
1. A special group delegated to consider some matter (= committee)
"a commission is a group that keeps minutes and loses hours";
 
2. A fee for services rendered based on a percentage of an amount received, collected or agreed to be paid (as distinguished from a salary)
"he works on commission"
 
3. The act of granting authority to undertake certain functions (= commissioning)
 
4. The state of being in good working order and ready for operation
"put the ships into commission"; "the motor was out of commission"
 
5. A group of representatives or delegates (= deputation, delegation, delegacy, mission)
 
6. A formal statement of a command or injunction to do something (= charge, direction)
"the judge's commission to the jury";
 
7. (military) an official document issued by a government and conferring on the recipient the rank of an officer in the armed forces (= military commission)
 
8. The act of committing a crime (= perpetration, committal)
 
9. A special assignment that is given to a person or group (= mission, charge)
"a confidential commission to London";

- Verb: commission (derived forms: commissions, commissioning, commissioned)
1. Put into commission; equip for service; of ships
 
2. Place an order for
 
3. Charge with a task
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
    videoId: '4uiaVXwkdCE',
    startSeconds: 299,
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
    videoId: 'Vn4SN7lmE_Q',
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'ifPPomncomY',
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

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'uYbv-maH8PM',
    startSeconds: 97,
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
    videoId: 'G0r3GksslRQ',
    startSeconds: 44,
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
    videoId: '1yqMC887haY',
    startSeconds: 123,
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
    videoId: '-1TLCOLJ0PE',
    startSeconds: 1097,
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