import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "blast" and provide five simple and short example sentences for each meaning. Use Merriam Webster style. Provide at least 5 meanings or more.

// replace blast - /blɑːst/

enum TtsState { playing }

class EnglishEntryblast extends StatelessWidget {
// blank divider
  EnglishEntryblast({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakblast(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("blast"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts1(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "27 schoolchildren were injured in the blast."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts2(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The blast ripped through the building."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts3(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A blast of hot air hit us as we stepped off the plane."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts4(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The driver opened the door letting out a blast of Taylor Swift."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts5(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The administration was blasted for failing to create jobs."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts6(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("We had a blast at the party."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts7(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They sent out email blasts and posted information on all their websites."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts8(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They had to blast a tunnel through the mountain."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts9(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "All the windows were blasted inwards with the force of the explosion."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts10(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Music suddenly blasted out from the speakers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts11(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The movie was blasted by all the critics."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts12(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He blasted the policeman right between the eyes."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts13(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Police blasted the demonstrators with water cannons."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts14(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Their whole crop had been blasted by a late frost."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts15(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Oh blast! The car won't start."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts16(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblasts1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts17(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblasts1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts18(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblasts1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts19(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblasts1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts20(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblasts2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts21(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblasts2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakblasts22(String languageCode) async {
    // DOPSUM: CHANGE speakblast
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakblasts2222"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 14, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "blast"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /blɑːst/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakblast("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /blæst/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakblast("en-US"),
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
                  VideoIconForTab(), // 01
                  VideoIconForTab(), // 02
                  VideoIconForTab(), // 03
                  VideoIconForTab(), // 04
                  VideoIconForTab(), // 05
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 14
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
                  // VideoIconForTab(), // 16
                  // VideoIconForTab(), // 17
                  // VideoIconForTab(), // 18
                  // VideoIconForTab(), // 19
                  // VideoIconForTab(), // 20
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
کوردی: ھەڵکردن، تەوژمی با یان ھەوا، تەوژمی ھەڵم، ھاتنی با، توندەبا، ھەڵکردنی بای توند و ناکاو، فوو، با، تەقینەوە، پەقین، شەپۆل یان بای تەقینەوە، دەنگی بەرز و ناخۆش، دەنگی بۆڕی یان شەیپوور، ڕەخنەی توند، پیاھەڵشاخان، وزە، خێرایی، تف، ئەھ

١. (ناو) تەقینەوە یان جوڵەیەکی بەھێزی ھەوا بەھۆی تەقینەوەوە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "27 schoolchildren were injured in the blast."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "٢٧ منداڵی قوتابخانە برینداربوون لە تەقینەوەکە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakblasts1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakblasts1("en-US"),
                              ),
                            ],
                          ),
                          // const DividerDefinition(),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The blast ripped through the building."),
                              const ExampleSentenceKurdish(
                                  text: "تەقینەوەکە بیناکەی ھەژاند."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakblasts2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakblasts2("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (ناو) جوڵەیەکی بەھێزی لەناکاوی ھەوا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "A blast of hot air hit us as we stepped off the plane."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "گڕەیەکی ھەوای گەرم لێمانی دا کە لە فڕۆکەکە دابەزین."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakblasts3("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakblasts3("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (ناو) دەنگێکی بەھێز، بەتایبەتی یەکێک کە درووست دەبێت لەلایەن ئامێرێکی میوزیکی، فیکەیەک، یان ھۆرنی ئۆتۆمبێل"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The driver opened the door letting out a blast of Taylor Swift."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "شۆفێرەکە دەرگاکەی کردەوە و دەنگی بەرزی تایلەر سویفت بە بەرزی ھات."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakblasts4("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakblasts4("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٤. (ناو) ڕەخنەی توند"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The administration was blasted for failing to create jobs."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کابینەکە ڕەخنەی توندی لێ گیرا بۆ شکستھێنان لە ڕەخساندنی ھەلی کار."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakblasts5("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakblasts5("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: "٥. (ناو) جەوێکی خۆش"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "We had a blast at the party."),
                              const ExampleSentenceKurdish(
                                  text: "جەوێکی خۆشمان  ھەبوو لە ئاھەنگەکە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakblasts6("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakblasts6("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) زانیارییەک یان ڕیکلامێک کە دەنێردرێت بۆ ژمارەیەکی زۆری خەڵکی لە یەک کاتدا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They sent out email blasts and posted information on all their websites."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئیمەیڵیان بە کۆمەڵ نارد و زانیارییان لەسەر تەواوی وێبسایتەکەیان پۆستکرد."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakblasts7("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakblasts7("en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) وێرانکردن یان پارچەپارچەکردنی شتیک بە تەقەمەنی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They had to blast a tunnel through the mountain."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەبوو تونێلێک لێ بدەن (بە بەکارھێنانی تەقەمەنی) بە چیاکەدا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakblasts8("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakblasts8("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "All the windows were blasted inwards with the force of the explosion."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تەواوی پەنجەرەکان شکێبران بە ناوەوەدا بە ھێزی تەقینەوەکە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakblasts9("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakblasts9("en-US"),
                              ),
                            ],
                          ),
                          // const DividerDefinition(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (کردار) درووستکردنی دەنگێکی بەھێز"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Music suddenly blasted out from the speakers."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لەناکاو میوزیک لە بڵندگۆیەکانەوە دەستیان پێکرد."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakblasts10("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakblasts10("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (کردار) ڕەخنەگرتن بە توندی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The movie was blasted by all the critics."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "فیلمەکە لەلایەن ھەموو ڕەخنەگرانەوە ڕەخنەی توندی لێ گیرا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakblasts11("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakblasts11("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٠. (کردار) لێدان لە کەسێک بەھێزێکی زۆرەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He blasted (= shot) the policeman right between the eyes."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە پۆلیسەکەی دا ڕێک لە نێوانی چاوانی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakblasts12("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakblasts12("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١١. (کردار) وەشاندنی شتێک (بۆ نموونە ھەوا یان ئاو) لە خەڵکی یان شتێک"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Police blasted the demonstrators with water cannons."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پۆلیس لە خۆپیشاندەرانی دا بە دەزگای ئاوپرژاندن."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakblasts13("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakblasts13("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٢. (کردار) لەناوبردنی شتێکی وەک ڕووەک بە نەخۆشی یان سەرما و گەرمان"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Their whole crop had been blasted by a late frost."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تەواوی دەغڵەکەیان وێرانبووە بەھۆی سەرمایەکی درەنگوەختە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakblasts14("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakblasts14("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (سەرسوڕمان) خەڵکی ھەندێک جار ئەم وشە دەڵێن کە تووڕەن بەدەست شتێکەوە"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Oh blast! The car won't start."),
                              const ExampleSentenceKurdish(
                                  text: "ئەھ تف! ئۆتۆمبێلەکە ئیش ناکات."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakblasts15("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakblasts15("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(),
                    YoutubeEmbeddedtwo(),
                    YoutubeEmbeddedthree(),
                    YoutubeEmbeddedfour(),
                    YoutubeEmbeddedfive(),
                    YoutubeEmbeddedsix(), // FIND: VideoIconForTab
                    YoutubeEmbeddedseven(),
                    YoutubeEmbeddedeight(),
                    YoutubeEmbeddednine(),
                    YoutubeEmbeddedten(),
                    YoutubeEmbeddedeleven(),
                    YoutubeEmbeddedtwelve(),
                    // YoutubeEmbeddedthirteen(),
                    // YoutubeEmbeddeddfourteen(),
                    // YoutubeEmbeddedfifteen(),
                    // YoutubeEmbeddeddsixteen(),
                    // YoutubeEmbeddeddseventeen(),
                    // YoutubeEmbeddeddeighteen(),
                    // YoutubeEmbeddeddnineteen(),
                    // YoutubeEmbeddedtwenty(),
                    // YoutubeEmbeddedmulti(),
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

class EnglishMeaning extends StatelessWidget {
  const EnglishMeaning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DividerDefinition(),
          EnglishMeaningConst(
            text: """
- Noun: blast (derived forms: blasts) 
1. A strong current of air (= gust, blow)
"the tree was bent almost double by the blast";
 
2. A sudden very loud noise (= bang, clap, eruption, bam)
 
3. An explosion (as of dynamite)
 
4. [informal] A highly pleasurable or exciting experience (= good time, ball [informal], craic [Ireland], crack [Ireland])
"celebrating after the game was a blast";
 
5. [informal] Intense adverse criticism (= fire, attack, flak [informal], flack, stick [Brit, informal])
"he published an unexpected blast on my work";

- Verb: blast (derived forms: blasts, blasted, blasting)
1. Make a strident sound (= blare)
"She tended to blast when speaking into a microphone";
 
2. Hit with great force (= smash, nail, boom)
"He blasted a 3-run homer";
 
3. Use explosives on (= shell)
"The enemy has been blasting us all day";
 
4. Blow a strong draft or wind
"the air conditioning was blasting cold air at us"
 
5. Create by using explosives (= shell)
"blast a passage through the mountain";
 
6. Make with or as if with an explosion
"blast a tunnel through the Alps"
 
7. Fire a shot; release (= shoot)
"the gunman blasted away";
 
8. [informal] Criticize harshly or violently (= savage, pillory, crucify)
"The press blasted the new President";
 
9. Shatter as if by explosion (= knock down)
 
10. Shrivel, wither or mature imperfectly

- Interjection: blast
1. Exclamation of annoyance (= bother [Brit], botheration, bummer [informal], curses, dang [N. Amer, informal], damn, damnation, dammit [informal], damn it [informal], darn [informal], dash [Brit, informal], durn [US, dialect], drat [informal], hang [informal], tarnation [N. Amer, informal], shoot [N. Amer, informal])
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  static String myVideoId = "_GFkHA5EZdE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 304, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  static String myVideoId = "qWAagS_MANg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 617, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  static String myVideoId = "zqllxbPWKNI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 778, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  static String myVideoId = "ZDIvj1GvH64";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 651, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  static String myVideoId = "SrDEtSlqJC4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1708, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  static String myVideoId = "W2hRTTTpmr8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 420, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  static String myVideoId = "raSeaAeryWE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1409, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  static String myVideoId = "iEKLFS-aKcw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 170, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  static String myVideoId = "qD6bPNZRRbQ";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 146, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  static String myVideoId = "s4-gMgdsnHQ";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 885, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  static String myVideoId = "gzF7aHxk4Y4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1691, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  static String myVideoId = "p1Zb90MFf20";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 2985, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// more than one video, only first autoplay

// end blast// TODO Implement this library.
