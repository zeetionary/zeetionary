import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "attack" and provide three example sentences for each meaning. Use Merriam Webster style.

// replace attack - replace EnglishEntryattack

// replace speakAttack - /əˈtæk/ - find WORD_WEB

enum TtsState { playing }

class EnglishEntryattack extends StatelessWidget {
  // blank divider
  EnglishEntryattack({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAttack(String languageCode) async {
    // DOPSUM: CHANGE speakAttack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("attack"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAttack453(String languageCode) async {
    // DOPSUM: CHANGE speakAttack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Five people were killed in the attacks that took place last night."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAttack455(String languageCode) async {
    // DOPSUM: CHANGE speakAttack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "A child is recovering in hospital after a serious attack by a stray dog."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAttack457(String languageCode) async {
    // DOPSUM: CHANGE speakAttack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Rebel forces launched an attack on civilian targets."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAttack500(String languageCode) async {
    // DOPSUM: CHANGE speakAttack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I had an attack of fever this week."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAttack503(String languageCode) async {
    // DOPSUM: CHANGE speakAttack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He suffers from attacks of anxiety."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAttack506(String languageCode) async {
    // DOPSUM: CHANGE speakAttack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Doctors have gone on the attack, accusing the government of incompetence."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAttack508(String languageCode) async {
    // DOPSUM: CHANGE speakAttack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Germany's attack has been weakened by the loss of some key players through injury."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAttack510(String languageCode) async {
    // DOPSUM: CHANGE speakAttack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "There was a sustained attack on the Arsenal goal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAttack512(String languageCode) async {
    // DOPSUM: CHANGE speakAttack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The government launched an all-out attack on poverty."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAttack515(String languageCode) async {
    // DOPSUM: CHANGE speakAttack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The roof timbers were affected by rot and insect attack."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAttack517(String languageCode) async {
    // DOPSUM: CHANGE speakAttack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Most dogs will not attack unless provoked."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAttack519(String languageCode) async {
    // DOPSUM: CHANGE speakAttack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Enemy forces attacked at night."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAttack523(String languageCode) async {
    // DOPSUM: CHANGE speakAttack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His latest work has been bitterly attacked by the critics."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAttack525(String languageCode) async {
    // DOPSUM: CHANGE speakAttack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Bacteria act on sugars to form acids which attack the tooth surface."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAttack526(String languageCode) async {
    // DOPSUM: CHANGE speakAttack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Spain attacked more in the second half and deserved a goal."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAttack528(String languageCode) async {
    // DOPSUM: CHANGE speakAttack
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Let's attack one problem at a time."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAttack(String languageCode) async {
  //   // DOPSUM: CHANGE speakAttack
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("attack"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAttack(String languageCode) async {
  //   // DOPSUM: CHANGE speakAttack
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("attack"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAttack(String languageCode) async {
  //   // DOPSUM: CHANGE speakAttack
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("attack"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAttack(String languageCode) async {
  //   // DOPSUM: CHANGE speakAttack
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("attack"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAttack(String languageCode) async {
  //   // DOPSUM: CHANGE speakAttack
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("attack"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAttack(String languageCode) async {
  //   // DOPSUM: CHANGE speakAttack
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("attack"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAttack(String languageCode) async {
  //   // DOPSUM: CHANGE speakAttack
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("attack"); // DOPSUM: CHANGE TEXT
  // }

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
                            EntryTitle(
                                word: "attack"), // DOPSUM: CHANGE WORD ENTRY
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /əˈtæk/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakAttack("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈtæk/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find WORD_WEB
                            CustomIconButtonAmerican(
                              onPressed: () => speakAttack("en-US"),
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
                  VideoIconForTab(), // 07 --- FIND: DOPSUM_WRITE_A_SENTENCE
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  // VideoIconForTab(), // 13
                  // VideoIconForTab(), // 14
                  // VideoIconForTab(), // 15
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
کوردی: ھێرش، ھەڵمەت، شاڵاو، گوژمە، نھێو، پەلامار، دەسپێک، دەس‌پێکردن، سەرەتا، دەس‌تێدان

١. (ناو) ھێرش بۆ سەر کەسێک بە بەکارھێنانی ھێز یان چەک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Five people were killed in the attacks that took place last night."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پێنچ کەس کوژران لەو ھێرشانەی دوێنێ شەو ئەنجام دران."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAttack453("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAttack453(// REPLACE: attack
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          // const DividerDefinition(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "A child is recovering in hospital after a serious attack by a stray dog."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "منداڵێک لە نەخۆشخانە چاکدەبێتەوە لە دوای ھێرشێک بۆسەری لەلایەن سەگێکی بەرەڵاوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAttack455("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAttack455(// REPLACE: attack
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) ھێرشێک بۆ سەر دووژمن لە جەنگدا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Rebel forces launched an attack on civilian targets."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھێزە یاخییەکان ھێرشێکیان ئەنجامدا بۆ سەر ئامانجی مەدەنی."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAttack457("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAttack457(// REPLACE: attack
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) نەخۆشییەک کە لەناکاو و مەوداکورتە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "I had an attack of fever this week."),
                              const ExampleSentenceKurdish(
                                  text: "ئەم ھەفتەیە ماوەیەک تام ھەبوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAttack500("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAttack500(// REPLACE: attack
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ناو) ماوەیەکی لەناکاو لە ھەبوونی ھەستێک، بۆ نموونە ترس"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "He suffers from attacks of anxiety."),
                              const ExampleSentenceKurdish(
                                  text: "ماوە ماوە تووشی خەمباری دەبێت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAttack503("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAttack503(// REPLACE: attack
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ناو) ڕەخنەی توند"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Doctors have gone on the attack, accusing the government of incompetence."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پزیشکان دەستیان بە ڕەخنە کردووە و حکومەت تۆمەتبار دەکەن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAttack506("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAttack506(// REPLACE: attack
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ناو) ئەو یاریزانانەی ئەرکیان تۆمارکردنی خاڵە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Germany's attack has been weakened by the loss of some key players through injury."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھێرشبردنی ئەڵمانیا لاوازبووە بەھۆی لەدەستدانی ژمارەیەک یاریزانی گرنگ بەھۆی پێکانەوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAttack508("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAttack508(// REPLACE: attack
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ناو) کرداری ھێرشبردنی یاریزانان"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "There was a sustained attack on the Arsenal goal."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھێرشی بەردەوام لەسەر گۆڵی ئەرسناڵ بوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAttack510("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAttack510(// REPLACE: attack
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ناو) ھەڵمەتێک دژ بە شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The government launched an all-out attack on poverty."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "حکومەت ھەڵمەتێکی فراوانی دژ بە ھەژاری ڕاگەیاند."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAttack512("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAttack512(// REPLACE: attack
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (ناو) کرداری شتێک، بۆ نموونە مێروو یان نەخۆشی کە دەبێتەھۆی زیان"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The roof timbers were affected by rot and insect attack."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دار سەقفەکان کاریگەربوون بە ڕزین و ھێرشی مێروو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAttack515("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAttack515(// REPLACE: attack
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٠. (کردار) ھێرش بە بەکارھێنانی ھێز"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Most dogs will not attack unless provoked."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زۆر سەگ ھێرش ناکەن مەگەر ئەوەی تووڕە بکرێن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAttack517("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAttack517(// REPLACE: attack
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١١. (کردار) ھێرشکردن لە جەنگدا"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Enemy forces attacked at night."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ھێزەکانی دووژمن لە شەودا ھێرشیان کرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAttack519("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAttack519(// REPLACE: attack
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٢. (کردار) ڕەخنەگرتن بە توندی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "His latest work has been bitterly attacked by the critics."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "تازەترین کاری بەتوندی لەلایەن ھەڵسەنگێنەرانەوە ڕەخنەی لێگیراوە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAttack523("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAttack523(// REPLACE: attack
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٣. (کردار) زیانگەیاندن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Bacteria act on sugars to form acids which attack the tooth surface."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بەکتریا کار لەسەر شەکر دەکەن بۆ درووستکردنی ئەسید کە زیان دەگەیەنێت بە ڕووی ددان."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAttack525("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAttack525(// REPLACE: attack
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٤. (کردار) ھێرشکردن لە یارییەکدا بە مەبەستی بەدەستھێنانی خاڵ"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Spain attacked more in the second half and deserved a goal."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئیسپانیا لە گێمی دووەمدا زیاتر ھێرشی کرد و شایەنی گۆڵێک بوون."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAttack526("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAttack526(// REPLACE: attack
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
١٥. (کردار) مامەڵەکردن لەگەڵ شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Let's attack one problem at a time."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "با مامەڵە لەگەڵ یەک کێشە بکەین لە ھەر کاتێکدا."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAttack528("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () =>
                                        speakAttack528(// REPLACE: attack
                                            "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(), // DOPSUM: DOPSUM_WRITE_A_SENTENCE
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
- Verb: attack (derived forms: attacks, attacking, attacked)
1. Launch assault on; begin hostilities or start warfare with (= assail)
"Hitler attacked Poland on September 1, 1939 and started World War II";
 
2. Aggressively challenge in speech or writing (= round, assail, lash out, snipe, assault)
"The editors of the left-leaning paper attacked the new House Speaker";
 
3. Take the initiative and go on the offensive (= aggress)
"The visiting team started to attack"; "The Serbs attacked the village at night";
 
4. Use aggressive force against (= assail, assault, set on)
 
5. Set to work upon; turn one's energies vigorously to a task
"I attacked the problem as soon as I got out of bed"
 
6. Begin to injure
"The cancer cells are attacking his liver"; "Rust is attacking the metal"

- Noun: attack (derived forms: attacks)
1. (military) an offensive against an enemy (using weapons) (= onslaught, onset, onrush)
"the attack began at dawn";
 
2. An offensive move in a sport or game
"they won the game with a 10-hit attack in the 9th inning"
 
3. Intense adverse criticism (= fire, flak [informal], flack, blast [informal], stick [Brit, informal])
"the government has come under attack"; "he published an unexpected attack on my work";
 
4. Ideas or actions intended to deal with a problem or situation (= approach, plan of attack)
"an attack on inflation"; "his plan of attack was misguided";
 
5. The act of attacking (= attempt)
"attacks on women increased last year";
 
6. A decisive manner of beginning a musical tone or phrase (= tone-beginning)
 
7. A sudden occurrence of an uncontrollable condition
"an attack of diarrhoea"
 
8. The onset of a corrosive or destructive process (as by a chemical agent)
"the film was sensitive to attack by acids"; "open to attack by the elements"
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = "HfwPL-bd_mk";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 2689, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  static String myVideoId = "-HyHZsa79LU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 511, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedtwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  static String myVideoId = "zqllxbPWKNI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 421, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  static String myVideoId = "k9jnxvtJ-34";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 151, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedfour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  static String myVideoId = "wE1azf6azWw";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 721, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedfive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  static String myVideoId = "Iyfo2N5IQB8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 54, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedsix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedseven extends StatelessWidget {
  static String myVideoId = "q4_a7bZ_G7s";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 534, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedseven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeight extends StatelessWidget {
  static String myVideoId = "tsxmyL7TUJg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1290, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddednine extends StatelessWidget {
  static String myVideoId = "-L7o6HtX8Vg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 945, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddednine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedten extends StatelessWidget {
  static String myVideoId = "QLq6GEiHqR8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1769, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedten({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedeleven extends StatelessWidget {
  static String myVideoId = "CK78QUMcZL8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 525, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedeleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

class YoutubeEmbeddedtwelve extends StatelessWidget {
  static String myVideoId = "Cqbleas1mmo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 756, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
      autoPlay: true,
      enableCaption: true,
      loop: true,
      mute: false,
    ),
  );

  YoutubeEmbeddedtwelve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeContainerDesign(controller: _controller),
    );
  }
}

// morethan one video, only first autoplay

// class YoutubeEmbeddedthirteen extends StatelessWidget {
//   static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";
//   static String myVideoIdTwo = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";
//   static String myVideoIdThree = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

//   final YoutubePlayerController _controller = YoutubePlayerController(
//     initialVideoId: myVideoId,
//     flags: const YoutubePlayerFlags(
//       autoPlay: true,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   final YoutubePlayerController _controllertwo = YoutubePlayerController(
//     initialVideoId: myVideoIdTwo,
//     flags: const YoutubePlayerFlags(
      // autoPlay: false,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   final YoutubePlayerController _controllerthree = YoutubePlayerController(
//     initialVideoId: myVideoIdThree,
//     flags: const YoutubePlayerFlags(
//       autoPlay: false,
//       enableCaption: true,
//       loop: true,
//       mute: false,
//       startAt: 222222222222222, // DOPSUM: CHANGE IT
//       // endAt: 253, // DOPSUM: CHANGE IT
//     ),
//   );

//   YoutubeEmbeddedthirteen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             YouTubeContainerDesign(controller: _controller),
//             YouTubeContainerDesign(controller: _controllertwo),
//             YouTubeContainerDesign(controller: _controllerthree),
//           ],
//         ),
//       ),
//     );
//   }
// }

// end // TODO Implement this library.