import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// replace these: replace EnglishEntryanswer - replace speakAnswer - replace answer - /ˈɑːnsə(r)/ - find Dopsum2

enum TtsState { playing }

class EnglishEntryanswer extends StatelessWidget {
  // blank divider
  EnglishEntryanswer({super.key});
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakAnswer(String languageCode) async {
    // DOPSUM: CHANGE speakAnswer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("answer"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnswer1019(String languageCode) async {
    // DOPSUM: CHANGE speakAnswer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I rang the bell, but there was no answer."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnswer1021(String languageCode) async {
    // DOPSUM: CHANGE speakAnswer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Can't you give me a definitive answer?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnswer1022(String languageCode) async {
    // DOPSUM: CHANGE speakAnswer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She had no answer to the accusations."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnswer1025(String languageCode) async {
    // DOPSUM: CHANGE speakAnswer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Write your answers on the sheet provided."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnswer1026(String languageCode) async {
    // DOPSUM: CHANGE speakAnswer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Do you know the answer to question 12?"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnswer1027(String languageCode) async {
    // DOPSUM: CHANGE speakAnswer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This may not be the answer for everyone."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnswer1029(String languageCode) async {
    // DOPSUM: CHANGE speakAnswer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The obvious answer would be to cancel the party."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnswer1032(String languageCode) async {
    // DOPSUM: CHANGE speakAnswer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I repeated the question, but she didn't answer."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnswer1034(String languageCode) async {
    // DOPSUM: CHANGE speakAnswer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("You haven't answered my question."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnswer1036(String languageCode) async {
    // DOPSUM: CHANGE speakAnswer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He refused to answer the charges against him."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakAnswer1039(String languageCode) async {
    // DOPSUM: CHANGE speakAnswer
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He was summoned before the council to answer charges of treason."); // DOPSUM: CHANGE TEXT
  }

  // Future<void> speakAnswer(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnswer
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("answer"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAnswer(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnswer
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("answer"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAnswer(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnswer
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("answer"); // DOPSUM: CHANGE TEXT
  // }

  // Future<void> speakAnswer(String languageCode) async {
  //   // DOPSUM: CHANGE speakAnswer
  //   await flutterTts.setLanguage(languageCode);
  //   await flutterTts.setPitch(1.0);
  //   await flutterTts.setSpeechRate(0.5);
  //   await flutterTts.speak("answer"); // DOPSUM: CHANGE TEXT
  // }

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
                            EntryTitle(word: "answer"), // Find /ˈɑːnsə(r)/
                            // divvviiider
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUK: /ˈɑːnsə(r)/"), // DOPSUM: WRITE IPA IN BRITISH ENGLISH
                            CustomIconButtonBritish(
                              onPressed: () => speakAnswer("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(
                                text:
                                    "IpaUS: /ˈænsər/"), // DOPSUM: WRITE IPA IN AMERICAN ENGLISH - find Dopsum2
                            CustomIconButtonAmerican(
                              onPressed: () => speakAnswer("en-US"),
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
کوردی: وەڵام، وەرام، بەرسڤ، کاردانەوە، دژکردەوە، چارەسەری، ڕێگاچارە
"""),
                          const DefinitionKurdish(
                              text:
                                  """١. (ناو) شتێک کە دەیکەیت، دەینووسیت، یان دەیڵێیت وەک وەڵام بۆ پرسیارێک یان بارودۆخێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I rang the bell, but there was no answer."),
                                    ExampleSentenceKurdish(
                                        text: "زەنگم لێدا بەڵام وەڵام نەبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnswer1019("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnswer1019(
                                        // REPLACE: answer /ˈɑːnsər/
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Can't you give me a definitive answer?"),
                                    ExampleSentenceKurdish(
                                        text:
                                            "دەتوانیت وەڵامێکی تەواوم پێ بدەیت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnswer1021("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnswer1021(
                                        // REPLACE: answer /ˈɑːnsər/
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She had no answer to the accusations."),
                                    ExampleSentenceKurdish(
                                        text: "ھیچ وەڵامی بۆ تۆمەتەکان نەبوو."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnswer1022("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnswer1022(
                                        // REPLACE: answer /ˈɑːnsər/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٢. (ناو) شتێک کە دەینووسیت یان دەیڵێیت وەک وەڵام بۆ پرسیارێک لە تاقیکردنەوەیەک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Write your answers on the sheet provided."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "وەڵامەکانت لەسەر ئەو پەڕە بنووسە کە پێت‌دراوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnswer1025("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnswer1025(
                                        // REPLACE: answer /ˈɑːnsər/
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Do you know the answer (= the right one) to question 12?"),
                                    ExampleSentenceKurdish(
                                        text: "وەڵامی پرسیاری ١٢یەم دەزانی؟"),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnswer1026("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnswer1026(
                                        // REPLACE: answer /ˈɑːnsər/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٣. (ناو) چارەسەری کێشەیەک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "This may not be the answer for everyone."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئەمە ڕەنگە چارەسەر نەبێت بۆ ھەموان."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnswer1027("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnswer1027(
                                        // REPLACE: answer /ˈɑːnsər/
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The obvious answer would be to cancel the party."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "چارەسەری ڕوون ھەڵوەشاندنەوەی ئاھەنگەکەیە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnswer1029("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnswer1029(
                                        // REPLACE: answer /ˈɑːnsər/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٤. (کردار) کردن، نووسین، یان وتنی شتێک وەک وەڵام بۆ پرسیارێک یان بارودۆخێک"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I repeated the question, but she didn't answer."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "پرسیارەکەم دووبارە کردەوە بەڵام وەڵامی نەداوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnswer1032("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnswer1032(
                                        // REPLACE: answer /ˈɑːnsər/
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "You haven't answered my question."),
                                    ExampleSentenceKurdish(
                                        text: "وەڵامی پرسیارەکەمت نەداوەتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnswer1034("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnswer1034(
                                        // REPLACE: answer /ˈɑːnsər/
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
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He refused to answer the charges against him."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ڕەتی‌کردەوە وەڵامی تۆمەتەکانی دژی بداتەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnswer1036("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnswer1036(
                                        // REPLACE: answer /ˈɑːnsər/
                                        "en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // const DividerSentences(),
                          const DividerDefinition(),
                          const DefinitionKurdish(text: """
٥. (کردار) بەرگری‌کردن لە خۆت بەرامبەر تۆمەت یان ڕەخنە"""),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He was summoned before the council to answer charges of treason."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بانگ‌کرایە پێش ئەنجوومەنەکە بۆ وەڵامدانەوەی تۆمەتی خیانەت."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakAnswer1039("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakAnswer1039(
                                        // REPLACE: answer /ˈɑːnsər/
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
                    YouTubeScroller(
                      children: [
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
- Verb: answer (derived forms: answers, answering, answered)
1. Say or write something in response (= reply, respond)
"answer the question"; "We answered that we would accept the invitation"; "She didn't want to answer";
 
2. Respond to a signal
"answer the door"; "answer the telephone"
 
3. Give the correct answer or solution to
"answer a question"; "answer the riddle"
 
4. Understand the meaning of (= resolve)
"The question concerning the meaning of life cannot be answered";
 
5. Give a defence or refutation of (a charge) or in (an argument)
"The defendant answered to all the charges of the prosecution"
 
6. Be liable or accountable
"She must answer for her actions"
 
7. Be sufficient; be adequate, either in quality or quantity (= suffice, do, serve)
"A few words would answer";
 
8. Match or correspond
"The drawing of the suspect answers to the description the victim gave"
 
9. Be satisfactory for; meet the requirements of or serve the purpose of
"This may answer her needs"
 
10. React to a stimulus or command
"The steering of my new car answers to the slightest touch"

- Noun: answer (derived forms: answers)
1. A statement (either spoken or written) that is made to reply to a question or request or criticism or accusation (= reply, response)
"I waited several days for his answer";

2. A statement that solves a problem or explains how to solve the problem (= solution, result, resolution, solvent)
"the answers were in the back of the book";

3. The speech act of replying to a question
 
4. (law) the principal pleading by the defendant in response to plaintiff's complaint; in criminal law it consists of the defendant's plea of 'guilty' or 'not guilty' (or nolo contendere); in civil law it must contain denials of all allegations in the plaintiff's complaint that the defendant hopes to controvert and it can contain affirmative defences or counterclaims
 
5. A nonverbal reaction
"his answer to any problem was to get drunk"; "their answer was to sue me"
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

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '_h97cjyraEk',
    startSeconds: 176,
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
    videoId: 'zJ5rFV5b9Xs',
    startSeconds: 6,
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
    videoId: 's2JLkXCPIW8',
    startSeconds: 51,
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
    videoId: 'UZk17HJGu8I',
    startSeconds: 273,
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
    videoId: 'md68cIq-I4g',
    startSeconds: 165,
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
    videoId: '-aq1n8MSk8c',
    startSeconds: 18,
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
    videoId: 'DPZzrlFCD_I',
    startSeconds: 14,
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

class YoutubeEmbeddedeight extends StatelessWidget {
  YoutubeEmbeddedeight({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'w98l2EFR6dE',
    startSeconds: 23,
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

class YoutubeEmbeddednine extends StatelessWidget {
  YoutubeEmbeddednine({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'XFGAQrEUaeU',
    startSeconds: 89,
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

class YoutubeEmbeddedten extends StatelessWidget {
  YoutubeEmbeddedten({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'e09xig209cQ',
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

class YoutubeEmbeddedeleven extends StatelessWidget {
  YoutubeEmbeddedeleven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '-HyHZsa79LU',
    startSeconds: 1239,
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

class YoutubeEmbeddedtwelve extends StatelessWidget {
  YoutubeEmbeddedtwelve({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'j1BfO7VlIw4',
    startSeconds: 968,
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

// end