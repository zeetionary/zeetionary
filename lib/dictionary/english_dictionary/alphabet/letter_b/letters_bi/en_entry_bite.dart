import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// More sentences is NOT done

// Define the word "bite" and provide five simple and short example sentences for each meaning. Use Merriam Webster style. Provide at least 5 meanings or more.

// replace bite - /baɪt/

enum TtsState { playing }

class EnglishEntrybite extends StatelessWidget {
// blank divider
  EnglishEntrybite({super.key});
// blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakbite(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("bite"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites1(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Does your dog bite?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites2(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She bit into a ripe juicy pear."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites3(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Most European spiders don't bite."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites4(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The fish aren't biting today."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites5(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The recession is beginning to bite."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites6(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He took a bite out of the apple."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites7(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He has to wear a brace to correct his bite."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites8(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He didn't eat a bite of his dinner."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites9(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "We just have time for a bite to eat before the movie."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites10(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There was a bite mark on his arm."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites11(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Cheese will add extra bite to any pasta dish."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites12(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There's a bite in the air tonight."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites13(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The performance had no bite to it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites14(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The fishermen waited all afternoon for a bite."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites15(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbites1515"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites16(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbites1616"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites17(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbites1717"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites18(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbites1818"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites19(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbites1919"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites20(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbites2020"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites21(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbites2121"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakbites22(String languageCode) async {
    // DOPSUM: CHANGE speakbite
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakbites2222"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 16, // 2 + VIDEOS FIND: FROM_YOUTUBE_BELOW
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
                            EntryTitle(word: "bite"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /baɪt/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakbite("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /baɪt/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakbite("en-US"),
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
                  VideoIconForTab(), // 06 --- 2 + VIDEOS REPLACE:length: 16
                  VideoIconForTab(), // 07 --- FIND:
                  VideoIconForTab(), // 08
                  VideoIconForTab(), // 09
                  VideoIconForTab(), // 10
                  VideoIconForTab(), // 11
                  VideoIconForTab(), // 12
                  VideoIconForTab(), // 13
                  VideoIconForTab(), // 14
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
کوردی: قەپ، گاز، گازگرتن، گەزین، گەستن، قەپ‌گرتن، قەپاڵ، ددان لێ‌گیرکردن، چزوو، تیکە، پاروو، تەزوو، تەز، ھێز، تین، ستین، بڕشت، قەوەت، (چێشت و تام) تیژی، دۆخی

١. (کردار) قەپگرتن، گازگرتن"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Does your dog bite?"),
                              const ExampleSentenceKurdish(
                                  text: "سەگەکەت گاز دەگرێت؟"),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbites1("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbites1("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "She bit into a ripe juicy pear."),
                              const ExampleSentenceKurdish(
                                  text: "گازی لە ھەرمێیەکی ئاوداری گەییو گرت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbites2("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbites2("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٢. (کردار) گازگرتنی مێروو، مار، ھتد"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "Most European spiders don't bite."),
                              const ExampleSentenceKurdish(
                                  text: "زۆرینەی جاڵجاڵۆکەی ئەورووپی ناگەزن."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbites3("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbites3("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٣. (کردار) کە ماسییەک دەبێت بە قولابێکەوە بە قەپگرتن لە سەرەکەی"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The fish aren't biting today."),
                              const ExampleSentenceKurdish(
                                  text: "ماسییەکان ئەمڕۆ نابنە قولابەکەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbites4("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbites4("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (کردار) ھەبوونی کاریگەرییەکی ناخۆش"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The recession is beginning to bite."),
                              const ExampleSentenceKurdish(
                                  text: "قەیرانەکە دەست بە خەستبوونەوە دەکات."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbites5("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbites5("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٥. (ناو) قەپگرتن، گازگرتن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He took a bite (= bit a piece) out of the apple."),
                              const ExampleSentenceKurdish(
                                  text: "قەپێکی لە سێوەکە گرت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbites6("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbites6("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (ناو) شێوازی پێکەوەلکانی بەشی سەرەوە و خوارەوەی ددان"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He has to wear a brace to correct his bite."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دەبوو تێلێک ببەستێ بۆ ڕێێکردنەوەی ددانی."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbites7("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbites7("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (ناو) پاروویەک لە خواردن"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "He didn't eat a bite of his dinner (= he ate nothing)."),
                              const ExampleSentenceKurdish(
                                  text: "پاروویەک لە نانی ئێوارەی نەخوارد."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbites8("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbites8("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٨. (ناو) خواردنێکی کەم"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "We just have time for a bite to eat before the movie."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "کاتمان ھەیە تەنھا بۆ کەمێک خواردن ھەیە پێش فیلمەکە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbites9("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbites9("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٩. (ناو) برین بە گازی ئاژەڵ"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "There was a bite mark on his arm."),
                              const ExampleSentenceKurdish(
                                  text: "برینی گازێک لەسەر باڵی بوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbites10("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakbites10("10speakbites10en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          // const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١٠. (ناو) تامێکی بەھێزی خۆش"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "Cheese will add extra bite to any pasta dish."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "پەنیر تامێکی بەلەزەت بۆ پاستا زیاد دەکات."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbites11("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbites11("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "١١. (ناو) سەرمایەک لە ھەوادا"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "There's a bite in the air tonight."),
                              const ExampleSentenceKurdish(
                                  text: "کزەیەک ھەیە لە ھەوادا."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbites12("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbites12("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٢. (ناو) خاسیەتێک کە وا دەکات شتێک بەھێز یان کاریگەر بێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text: "The performance had no bite to it."),
                              const ExampleSentenceKurdish(
                                  text: "نمایشەکە ھیچ تایبەتییەکی نەبوو."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbites13("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbites13("en-US"),
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "١٣. (ناو) ماسییەک قەپ لە قولابێک بگرێت پێوە ببێت"),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The fishermen waited all afternoon for a bite."),
                              const ExampleSentenceKurdish(
                                  text:
                                      "ماسیگرەکە تەواوی نیوەڕۆکە چاوەڕێ بوو ماسییەک پێوە ببێت."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakbites14("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () => speakbites14("en-US"),
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
- Verb: bite (derived forms: bit, bitten, bites, biting)
1. To grip, cut off, or tear with or as if with the teeth or jaws (= seize with teeth)
"Gunny invariably tried to bite her";

2. Cause a sharp or stinging pain or discomfort (= sting, burn)
"The sun bit his face";

3. Penetrate or cut, as with a knife
"The fork bit into the surface"
 
4. Deliver a sting to (= sting, prick)
"A bee bit my arm yesterday";

- Noun: bite (derived forms: bites)
1. A wound resulting from biting by an animal or a person
 
2. A small amount of solid food; a mouthful (= morsel, bit)
"all they had left was a bite of bread";

3. A painful wound caused by the thrust of an insect's stinger into skin (= sting, insect bite)
 
4. A light informal meal (= collation, snack)
 
5. (angling) an instance of a fish taking the bait
"after fishing for an hour he still had not had a bite"
 
6. Wit having a sharp and caustic quality (= pungency)
"the bite of satire";
 
7. A strong odour or taste property (= pungency, sharpness, raciness)
"the sulphurous bite of garlic";
 
8. The act of gripping or chewing off with the teeth and jaws (= chomp)
 
9. A portion removed from the whole
"the government's weekly bite from my paycheque"
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

  static String myVideoId = "tXjHb5QmDV0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 955, // DOPSUM: CHANGE IT
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

  static String myVideoId = "DO9U_XxN-Kc";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 252, // DOPSUM: CHANGE IT
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

  static String myVideoId = "MnExgQ81fhU";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 53, // DOPSUM: CHANGE IT
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

  static String myVideoId = "dqcSk-EDrRo";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 454, // DOPSUM: CHANGE IT
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

  static String myVideoId = "X3n5Pk8fkLg";

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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  static String myVideoId = "XI9kKiyIMf0";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 604, // DOPSUM: CHANGE IT
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

  static String myVideoId = "5_uSZcXMV7s";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 118, // DOPSUM: CHANGE IT
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

  static String myVideoId = "wtPYJMwuDO8";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 408, // DOPSUM: CHANGE IT
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

  static String myVideoId = "WbRNKL2F4y4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 38, // DOPSUM: CHANGE IT
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

  static String myVideoId = "nFbEHbo7ki4";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 406, // DOPSUM: CHANGE IT
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

  static String myVideoId = "Kfhdp5U_J-E";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 536, // DOPSUM: CHANGE IT
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

  static String myVideoId = "DBxdTkddHaE";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 930, // DOPSUM: CHANGE IT
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

  static String myVideoId = "VYRWjZ8B93g";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 319, // DOPSUM: CHANGE IT
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

  static String myVideoId = "RSfJD7kjpbQ";

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      startAt: 245, // DOPSUM: CHANGE IT
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

class YoutubeEmbeddeddsixteen extends StatelessWidget {
  YoutubeEmbeddeddsixteen({super.key});

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

class YoutubeEmbeddeddseventeen extends StatelessWidget {
  YoutubeEmbeddeddseventeen({super.key});

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

// more than one video, only first autoplay

// end bite// TODO Implement this library.
