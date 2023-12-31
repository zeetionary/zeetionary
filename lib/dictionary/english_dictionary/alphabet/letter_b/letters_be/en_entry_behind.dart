import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "behind" and provide five simple example sentences for each meaning. Use Merriam Webster style. Provide at least 3 meanings or more.

// replace behind - replace EnglishEntrybehind

// replace speakBehind - /bɪˈhaɪnd/

enum TtsState { playing }

class EnglishEntrybehind extends StatelessWidget {
// blank divider
  EnglishEntrybehind({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakBehind(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("behind"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBehinds1(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Stay close behind me."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBehinds2(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She glanced behind her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBehinds3(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Don't forget to lock the door behind you."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBehinds4(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He's behind the rest of the class in reading."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBehinds5(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She knew that, whatever she decided, her family was right behind her."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBehinds6(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("What's behind that happy smile?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBehinds7(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was the man behind the plan to build a new hospital."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBehinds8(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The accident is behind you now, so try to forget it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBehinds9(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She rode the bike down the road with the dog running behind."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBehinds10(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The others are a long way behind."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBehinds11(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was shot from behind as he ran away."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBehinds12(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This bag was left behind after the class."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBehinds13(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She's fallen behind with the payments."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBehinds14(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He was terribly behind in his work."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBehinds15(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The dog bit him on his behind."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBehinds16(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBehinds1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakBehinds17(String languageCode) async {
    // DOPSUM: CHANGE speakBehind
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakBehinds1717"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 19, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "behind"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /bɪˈhaɪnd/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakBehind("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /bɪˈhaɪnd/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakBehind("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 19
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  VideoIconForTab(), // 13
                  VideoIconForTab(), // 14
                  VideoIconForTab(), // 15
                  VideoIconForTab(), // 16
                  VideoIconForTab(), // 17
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
کوردی: پشتەوە، دواوە، لە پشتەوە، لە پشت، لە دواوە، لە دوای، لەپاش، درەنگ، درەنگ‌تر لە، بەشی پشتەوە، ئەوبەر، پشتیوانی، لایەنگری، داکۆکی، سمت، کنگ، کەفەڵ، ڕوونەک، پاشەڵ

١. (ئامراز) لە پشتەوە یان بەرەو پشتەوەی کەسێک یان شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Stay close behind me."),
                              const ExampleSentenceKurdish(
                                  text: "نزیک لێم و لەدوامەوە بمێنە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBehinds1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBehinds1("en-US"),
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
                                  text: "She glanced behind her."),
                              const ExampleSentenceKurdish(
                                  text: "چاوێکی لە دواوەی کرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBehinds2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBehinds2("en-US"),
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
                                      "Don't forget to lock the door behind you (= when you leave)."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بیرت نەچێت دەرگاکە لە دوای خۆت دابخەیت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBehinds3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBehinds3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ئامراز) ھەبوونی بەرەوپێشچوونی کەمتر لە کەسانی تر"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He's behind the rest of the class in reading."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "لە خوێندنەوەدا لە دوای ئەوانی تری پۆلەکەیە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBehinds4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBehinds4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ئامراز) یارمەتیدانی کەسێک یان پێدانی ڕەزامەندی"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She knew that, whatever she decided, her family was right behind her."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەیزانی ھەرچی بڕیارێک بدات خێزانەکەی لەپشتی دەبن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBehinds5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBehinds5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (ئامراز) ھۆکاری دەستپێکردن یان ڕوودانی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "What's behind that happy smile?"),
                              const ExampleSentenceKurdish(
                                  text: "چی ھۆکارە بۆ ئەم پێکەنینە دڵخۆشانە؟"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBehinds6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBehinds6("en-US"),
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
                                      "He was the man behind the plan to build a new hospital."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ئەو کەسەیە کە لە پشتەوەی پلانی درووستکردنی نەخۆشخانە تازەکەیە"),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBehinds7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBehinds7("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (ئامراز) بەکاردێت بۆ وتنی ئەوەی شتێک بەشێکە لە ڕابردووی کەسێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The accident is behind you now, so try to forget it."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ڕووداوەکە بەشێکە لە ڕابردووت ئێستا، ھەوڵ بدە لەبیری بکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBehinds8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBehinds8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٦. (ھاوەڵکار) لە پشتەوە یان بەرەو پشتەوەی کەسێک یان شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She rode the bike down the road with the dog running behind."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "بە ڕێگاکەدا پاسکیلی دەڕانی و سەگەکەش بەدوایدا ڕایدەکرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBehinds9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBehinds9("en-US"),
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
                                  text: "The others are a long way behind."),
                              const ExampleSentenceKurdish(
                                  text: "ئەوانی تر زۆر لە دواوەن."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBehinds10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBehinds10("en-US"),
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
                                      "He was shot from behind as he ran away."),
                              const ExampleSentenceKurdish(
                                  text: "لە دواوە تەقەی لێکرا کە ڕایدەکرد."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBehinds11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBehinds11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٧. (ھاوەڵکار) لەو شوێنەی کە کەسێک یان شتێکی لێیە"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "This bag was left behind after the class."),
                              const ExampleSentenceKurdish(
                                  text: "ئەم جانتا جێھێڵدرا لە دوای دەوام."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBehinds12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBehinds12("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٨. (ھاوەڵکار) درەنگ لە پێدانی پارە یان تەواوکردنی کار"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She's fallen behind with the payments."),
                              const ExampleSentenceKurdish(
                                  text: "دواکەوتووە لە پێدانی پارەکە."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBehinds13("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBehinds13("en-US"),
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
                                  text: "He was terribly behind in his work."),
                              const ExampleSentenceKurdish(
                                  text: "زۆر لە کارەکەی دواکەوتبوو."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBehinds14("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBehinds14("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٩. (سمت) سمت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The dog bit him on his behind."),
                              const ExampleSentenceKurdish(
                                  text: "سەگەکە گازی لە سمتی گرت."),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakBehinds15("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakBehinds15("en-US"),
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
- Adverb: behind
1. In, to or toward the rear
"he followed behind"; "seen from behind, the house is more imposing than it is from the front"; "the final runners were far behind"
 
2. Remaining in a place or condition that has been left or departed from
"when he died he left much unfinished work behind"; "left a large family behind"; "the children left their books behind"; "he took off with a squeal of tires and left the other cars far behind"
 
3. Showing a time that is earlier than the actual time (= slow)
"my watch is running behind";
 
4. In or into an inferior position
"fell behind in his studies"; "their business was lagging behind in the competition for customers"
 
5. In debt (= behindhand, in arrears)
"he fell behind with his mortgage payments"; "a month behind in the rent";

- Preposition: behind
1. Further back than; at the back of; at the far side of
"look behind you"; "behind the door"
 
2. In support of
"I'm behind you on this"
 
3. Coming at a later time or previous position (= following, after)
"he leaves a trail of destruction behind him";

- Noun: behind (derived forms: behinds)
1. The fleshy part of the human body that you sit on (= buttocks, nates [technical], butt [N. Amer, informal], backside, bum [Brit, informal], buns [N. Amer, informal], can [N. Amer, informal], fundament, hindquarters, hind end, posterior, rear [informal], rear end [informal], rump, stern [informal], seat, tail [N. Amer, informal], tail end, tooshie [informal], tush [N. Amer, informal], bottom, derriere, bahookie [UK, dialect, informal], botty [informal], heinie [US, informal], duff [N. Amer, informal], booty [N. Amer, informal], patootie [US, informal], tushy [N. Amer, informal], derrière)
"he deserves a good kick in the behind";

- Adjective: behind
1. Having the lower score or lagging position in a contest
"behind by two points"
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

  static String myVideoId = "hFZFjoX2cGg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 896, // DOPSUM: CHANGE IT
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

  static String myVideoId = "VrKW58MS12g";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 9, // DOPSUM: CHANGE IT
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

  static String myVideoId = "hS2x1zl4rn0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1434, // DOPSUM: CHANGE IT
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

  static String myVideoId = "Kou7ur5xt_4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 217, // DOPSUM: CHANGE IT
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

  static String myVideoId = "Cxqca4RQd_M";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 605, // DOPSUM: CHANGE IT
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

  static String myVideoId = "LAOoF2gyQaA";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 448, // DOPSUM: CHANGE IT
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

  static String myVideoId = "MnExgQ81fhU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 914, // DOPSUM: CHANGE IT
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

  static String myVideoId = "_GFkHA5EZdE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 358, // DOPSUM: CHANGE IT
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

  static String myVideoId = "sSdMX8AWurI";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 173, // DOPSUM: CHANGE IT
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

  static String myVideoId = "rsaLUIeurZ8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 438, // DOPSUM: CHANGE IT
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

  static String myVideoId = "qWAagS_MANg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 1175, // DOPSUM: CHANGE IT
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

  static String myVideoId = "h4CyhQqAPpk";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 467, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedthirteen extends StatelessWidget {
  YoutubeEmbeddedthirteen({super.key});

  static String myVideoId = "bDCJwPbdbxg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 87, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddeddfourteen extends StatelessWidget {
  YoutubeEmbeddeddfourteen({super.key});

  static String myVideoId = "RYT0BCXXQ3E";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 55, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedfifteen extends StatelessWidget {
  YoutubeEmbeddedfifteen({super.key});

  static String myVideoId = "HIfeVS32ysg";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 227, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddeddsixteen extends StatelessWidget {
  YoutubeEmbeddeddsixteen({super.key});

  static String myVideoId = "9x0el55tqIc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 3256, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddeddseventeen extends StatelessWidget {
  YoutubeEmbeddeddseventeen({super.key});

  static String myVideoId = "qbjAvIjVD7w";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 676, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddeddeighteen extends StatelessWidget {
  YoutubeEmbeddeddeighteen({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddeddnineteen extends StatelessWidget {
  YoutubeEmbeddeddnineteen({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddedtwenty extends StatelessWidget {
  YoutubeEmbeddedtwenty({super.key});

  static String myVideoId = "PUT_VIDEO_ID_PUT_VIDEO_ID_5555555";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 222222222222222, // DOPSUM: CHANGE IT
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

// morethan one video, only first autoplay

// end behind// TODO Implement this library.
