import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// replace these: replace EnglishEntryallow - replace speakAllow - replace allow - /əˈlaʊ/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryallow extends StatelessWidget {
  EnglishEntryallow({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAllow(String languageCode) async {
    // DOPSUM: CHANGE speakAllow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllow3255(String languageCode) async {
    // DOPSUM: CHANGE speakAllow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "His parents won't allow him to stay out late."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllow535(String languageCode) async {
    // DOPSUM: CHANGE speakAllow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The law allowed companies to dismiss workers without any reason."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllow369(String languageCode) async {
    // DOPSUM: CHANGE speakAllow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You're allowed an hour to complete the test."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllow4721(String languageCode) async {
    // DOPSUM: CHANGE speakAllow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They weren't allowed into the country."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllow36541(String languageCode) async {
    // DOPSUM: CHANGE speakAllow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The system allows people the opportunity to browse a wide selection of books."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAllow2341(String languageCode) async {
    // DOPSUM: CHANGE speakAllow
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She was very helpful when my mother was ill—I'll allow you that."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAllow(String languageCode) async {
  //   // DOPSUM: CHANGE speakAllow
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("allow"); // DOPSUM: CHANGE TEXT
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
                                word:
                                    "allow"), // DOPSUM: CHANGE WORD ENTRY - Find /əˈlaʊ/
                            // nothing heereee
                            //   '(noun - plural: Dopsums)', // DOPSUM: CHANGE WORD TYPE
                            //   style: TextStyle(fontSize: 14),
                            // ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /əˈlaʊ/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () =>
                                  speakAllow(// DOPSUM: CHANGE THE WORD ABOVE
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /əˈlaʊ/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAllow(
                                  "en-US"), // DOPSUM: CHANGE THE WORD ABOVE
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
                  VideoIconForTab(), // FIND: 2,
                  VideoIconForTab(), // 07
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
                          const DefinitionKurdish(text: """
١. (کردار) ڕێگەدان بە ڕوودانی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "His parents won't allow him to stay out late."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "دایک و باوکی ڕێگەی پێ نادەن تا درەنگ لە دەرەوە بمێنێتەوە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAllow3255("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAllow3255(// REPLACE: allow /əˈlaʊ/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerSentences(),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The law allowed companies to dismiss workers without any reason."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "یاساکە ڕێگە بە کۆمپانیاکان کرێکاران بەبێ ھیچ ھۆکارێک دەربکەن."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAllow535("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAllow535(// REPLACE: allow /əˈlaʊ/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (کردار) ڕێگەدان بە کەسێک شتێکی ھەبێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "You're allowed an hour to complete the test."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "یەک کاتژمێر کاتت ھەیە بۆ وەڵامدانەوەی تاقیکردنەوەکە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAllow369("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAllow369(// REPLACE: allow /əˈlaʊ/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (کردار) ڕێگەدان بە کەسێک بچێتە شوێنێک یان جێی بھێڵێت"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "They weren't allowed into the country."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text: "ڕێگەیان پێنەدرا بچنە ناو وڵاتەکە."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAllow4721("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAllow4721(// REPLACE: allow /əˈlaʊ/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) گونجاندنی شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "The system allows people the opportunity to browse a wide selection of books."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "سیستەمەکە ھەلی ئەوە دەگونجێنێت کە خەڵکی لەناو ژمارەیەکی زۆر جیاوازی پەرتووکدا بگەڕێن."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAllow36541("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAllow36541(// REPLACE: allow /əˈlaʊ/
                                        "en-US"),
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) پەسەندکردن یان داننان بە شتێک"""),
                          Row(
                            children: [
                              const ExampleSentenceEnglish(
                                  text:
                                      "She was very helpful when my mother was ill—I'll allow you that."),
                              // const SizedBox(
                              //   width: 30,
                              // ),
                              const ExampleSentenceKurdish(
                                  text:
                                      "زۆر یارمەتیدەر بوو کە دایکم نەخۆش بوو، دان بەوەدا دەنێم."),
                              const CustomSizedBoxForTTS(),
                              CustomIconButtonBritish(
                                onPressed: () => speakAllow2341("en-GB"),
                              ),
                              CustomIconButtonAmerican(
                                onPressed: () =>
                                    speakAllow2341(// REPLACE: allow /əˈlaʊ/
                                        "en-US"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    YoutubeEmbeddedone(), // DOPSUM: FROM_YOUTUBE_BELOW
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
                    // YoutubeEmbeddedfourteen(),
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
          EnglishMeaningConst(
            text: """
- Verb: allow (derived forms: allowed, allowing, allows)
1. Make it possible through a specific action or lack of action for something to happen (= let, permit)
"This sealed door won't allow the water to come into the basement";
 
2. Consent to, give permission; permit (= permit, let, countenance)
"I cannot allow you to see your exam";

3. Let have; give the right to; give the opportunity or permission to (= grant, accord, allot)
"Mandela was allowed few visitors in prison";

4. Give or assign a resource to a particular person or cause (= appropriate, earmark, set aside, reserve)
"I will allow this money for your research";
 
5. Make a possibility or provide opportunity for; permit to be attainable or cause to remain (= leave, allow for, provide)
"The evidence allows only one conclusion"; "allow for mistakes";
 
6. Allow or plan for a certain possibility; concede the truth or validity of something (= take into account, bear in mind)
"I allow for this possibility";
 
7. Afford possibility (= admit)
"This short story allows of several different interpretations";
 
8. Allow the other (baseball) team to score (= give up)
"allow a run";

9. Grant as a discount or in exchange
"The camera store owner allowed me 50 dollars on my old camera"
 
10. Allow the presence of or allow (an activity) without opposing or prohibiting (= permit, tolerate)
"We don't allow dogs here";
""",
          )
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedone extends StatelessWidget {
  static String myVideoId = '6LFzk1afiD8';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 18, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'ldVDM-v5uz0';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 157, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'BLqk7uaENAY';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 1033, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'Z3WwoklJHxU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'mHEMumaE70U';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 43, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'PRYmx7Lk9F0';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 137, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'HVvYTpW5ctE';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      // startAt: 222222222222222, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'Ox7VNblx7uo';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 141, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'HMACjk5AXJg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 72, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'xVQxvthAcLU';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 308, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'IEp31mUaxfg';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 345, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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
  static String myVideoId = 'inpok4MKVLM';

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: true, enableCaption: true,
      loop: true,
      mute: false,
      startAt: 134, // DOPSUM: CHANGE IT
      // endAt: 253, // DOPSUM: CHANGE IT
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

// end


