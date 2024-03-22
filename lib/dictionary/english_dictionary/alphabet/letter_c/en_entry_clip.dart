import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryclip extends StatelessWidget {
  // blank divider
  EnglishEntryclip({super.key});
  // blank divider
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakclip(String languageCode) async {
    // DOPSUM: CHANGE speakclip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("clip"); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclips1(String languageCode) async {
    // DOPSUM: CHANGE speakclip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Here is a clip from her latest movie."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclips2(String languageCode) async {
    // DOPSUM: CHANGE speakclip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You will see in this clip how well she acts."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclips3(String languageCode) async {
    // DOPSUM: CHANGE speakclip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The documentary began with a clip from the President's inauguration speech."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclips4(String languageCode) async {
    // DOPSUM: CHANGE speakclip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She put a clip in her hair."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclips5(String languageCode) async {
    // DOPSUM: CHANGE speakclip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He gave the hedge a clip."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclips6(String languageCode) async {
    // DOPSUM: CHANGE speakclip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She gave him a clip round the ear for being cheeky."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclips7(String languageCode) async {
    // DOPSUM: CHANGE speakclip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He clipped the microphone (on) to his collar."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclips8(String languageCode) async {
    // DOPSUM: CHANGE speakclip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Clip the pages together."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclips9(String languageCode) async {
    // DOPSUM: CHANGE speakclip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He clipped off a piece of wire with the pliers."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclips10(String languageCode) async {
    // DOPSUM: CHANGE speakclip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The car clipped the kerb as it turned."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclips11(String languageCode) async {
    // DOPSUM: CHANGE speakclip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She clipped the ball into the net."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclips12(String languageCode) async {
    // DOPSUM: CHANGE speakclip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I clipped the picture out of the newspaper."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakclips13(String languageCode) async {
    // DOPSUM: CHANGE speakclip
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakclips1300"); // DOPSUM: CHANGE TEXT
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
                            EntryTitle(word: "clip"),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUK: /klɪp/"),
                            CustomIconButtonBritish(
                              onPressed: () => speakclip("en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const IPAofEnglish(text: "IpaUS: /klɪp/"),
                            CustomIconButtonAmerican(
                              onPressed: () => speakclip("en-US"),
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
کوردی: گیرە، گیرگە، بەست، تەوقە،	دەرزی، گوڵی سەرسنگ،	خەشاب، بڕینەوە، ھەڵپاچین، پەڕتاوتن، کورت‌کردنەوە،	بەربرینگ (ئەو بڕە خوری‌یەی کە بە جارێ بڕدراوەتەوە)،	زللە، شەپڵاخە،	مشت،	تیکە، بڕشت، بڕگە (فیلم)،	ھەنگاو یا جووڵەی توند و خێرا، ڕاتڵەکان
"""),
                          const DefinitionKurdish(
                              text: "١. (ناو) کورتە ڤیدیۆیەک لە فیلمێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "Here is a clip from her latest movie."),
                                    ExampleSentenceKurdish(
                                        text: "ئەمە کلیپێکە لە کۆتا فیلمی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(), // With short examples define "clip", please follow LX instructions
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclips1("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclips1("en-US"),
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
                                            "You will see in this clip how well she acts."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "لەم کلیپەدا دەیبینیت چەندە باش نمایش دەکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclips2("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclips2("en-US"),
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
                                            "The documentary began with a clip from the President's inauguration speech."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "فیلمە بەڵگەنامەییەکە بە کورتە ڤیدیۆیەکی وتاری دەستبەکاربوونی سەرۆک دەست پێ‌دەکات."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclips3("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclips3("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٢. (ناو) پارچە پلاستیکێکی بچووک کە بۆ ڕاگرتنی شت بەکاردێت، یان بۆ جوانکاری بە جلوبەرگەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "She put a clip in her hair."),
                                    ExampleSentenceKurdish(
                                        text: "تەوقەیەکی لە قژی بەست."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclips4("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclips4("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٣. (ناو) بڕینی شتێک بۆ کورتکردنەوەی"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text: "He gave the hedge a clip."),
                                    ExampleSentenceKurdish(
                                        text: "ھەڵپاچینێکی پەرژینەکەی کرد."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclips5("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclips5("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٤. (ناو) لێدانێکی خێرا بە دەست"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "She gave him a clip round the ear for being cheeky."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "شەپازلەیەکی کێشا بە بنگوێیدا بۆ ڕوودارییەکەی."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclips6("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclips6("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٥. (کردار) بەستنی شتێک بە شتێکی ترەوە بە "),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He clipped the microphone (on) to his collar."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "مایکرۆفۆنەکەی بەست بە یەقەیەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclips7("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclips7("en-US"),
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
                                        text: "Clip the pages together."),
                                    ExampleSentenceKurdish(
                                        text: "پەڕەکان ببەستە بە یەکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclips8("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclips8("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٦. (کردار) بڕینەوە، بۆ نموونە بە مەقەس، بۆ کورتکردنەوە یان ڕێککردنەوە"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "He clipped off a piece of wire with the pliers."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "بە پلایس پارچە وایەرێکی لێکردەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclips9("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclips9("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text: "٧. (کردار) لێدان لە قەراغ یان لای شتێک"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "The car clipped the kerb as it turned."),
                                    ExampleSentenceKurdish(
                                        text:
                                            "ئۆتۆمبێلەکە کێشای بە قەراغەکەدا کە پێچیکردەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclips10("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclips10("en-US"),
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
                                            "She clipped the ball into the net."),
                                    ExampleSentenceKurdish(
                                        text: "تۆپەکەی خستە ناو تۆڕەکەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclips11("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclips11("en-US"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const DividerDefinition(),
                          const DefinitionKurdish(
                              text:
                                  "٧. (کردار) لێکردنەوەی شتێک لە شتێکی تر بە مەقەس"),
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    ExampleSentenceEnglish(
                                        text:
                                            "I clipped the picture out of the newspaper."),
                                    ExampleSentenceKurdish(
                                        text: "وێنەکەی لە ڕۆژنامەکە لێکردەوە."),
                                  ],
                                ),
                              ),
                              const CustomSizedBoxForTTS(),
                              Column(
                                children: [
                                  CustomIconButtonBritish(
                                    onPressed: () => speakclips12("en-GB"),
                                  ),
                                  CustomIconButtonAmerican(
                                    onPressed: () => speakclips12("en-US"),
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
- Noun: clip (derived forms: clips)
1. A metal frame or container holding ammunition that feeds a repeating firearm (= cartridge holder, cartridge clip, magazine)
 
2. An instance or single occasion for some event (= time)
"he could do ten at a clip";
 
3. Any of various small fasteners used to hold loose articles together
 
4. An article of jewellery that can be clipped onto a hat or dress
 
5. The act of clipping or snipping (= clipping, snip)
 
6. A sharp slanting blow
"he gave me a clip on the ear"

- Verb: clip (derived forms: clips, clipping, clipped)
1. Cut or sever by pinching or cutting with small strokes of scissors, pruning shears, etc. (= nip, nip off, snip, snip off)
"clip off the flowers";
 
2. Run at a moderately swift pace (= trot, jog)
 
3. Attach with a clip
"clip the papers together"
 
4. Cultivate, tend, and cut back the growth of (= snip, crop, trim, lop, dress, prune, cut back)
"clip the plants in the garden";
 
5. Terminate or abbreviate before its intended or proper end or its full extent (= curtail, cut short)
"Personal freedom is clipped in many countries";
 
6. (computing) discard data outside a specific range of values, or assign out-of-range values to the nearest value in range; remove parts of an image etc. outside a given area
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
    videoId: 'k6CPzwkwZEw',
    startSeconds: 46,
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
    videoId: 'MNQueQvMA3k',
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
    videoId: 'f_KQPoTIhKg',
    startSeconds: 10,
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
    videoId: 'k7MXH55q28U',
    startSeconds: 3,
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
    videoId: '8HadWolMBdw',
    startSeconds: 11,
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
    videoId: 'nMhoJRsHD_w',
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

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: '7IphkCpqfj8',
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

class YoutubeEmbeddedseven extends StatelessWidget {
  YoutubeEmbeddedseven({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'nvO_Wr5_uTQ',
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

// end WORD_WEB