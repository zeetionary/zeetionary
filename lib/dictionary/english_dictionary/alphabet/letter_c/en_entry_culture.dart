import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntryculture extends StatefulWidget {
  const EnglishEntryculture({super.key});

  @override
  State<EnglishEntryculture> createState() => _EnglishEntrycultureState();
}

class _EnglishEntrycultureState extends State<EnglishEntryculture> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
                automaticallyImplyLeading: false,
                bottom: TabBar(
                  tabs: [
                    UkIconForTab(),
                    KurdIconForTab(),
                    VideoIconForTab(),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              const EnglishMeaning(),
              KurdishMeaning(),
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
  }
}

class EntryAndIPA extends StatelessWidget {
  const EntryAndIPA({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TitleOfEntry(),
                ],
              ),
              // const TitleOfEntryAlso(),
              IpaUK(),
              IpaUS(),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleOfEntry extends StatelessWidget {
  const TitleOfEntry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const EntryTitle(word: "culture");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: culture");
  }
}

class IpaUK extends StatelessWidget {
  const IpaUK({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUK(),
        const IpaUKtext(),
      ],
    );
  }
}

class IpaUKtext extends StatelessWidget {
  const IpaUKtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUK: /ˈkʌltʃə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakculture(String languageCode) async {
    // DOPSUM: CHANGE speakculture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("culture"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakculture("en-GB"),
    );
  }
}

class IpaUS extends StatelessWidget {
  const IpaUS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TTSUS(),
        const IpaUStext(),
      ],
    );
  }
}

class IpaUStext extends StatelessWidget {
  const IpaUStext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IPAofEnglish(text: "IpaUS: /ˈkʌltʃər/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakculture(String languageCode) async {
    // DOPSUM: CHANGE speakculture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("culture"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakculture("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcultures1(String languageCode) async {
    // DOPSUM: CHANGE speakculture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Cooking is a hugely important part of French culture."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcultures2(String languageCode) async {
    // DOPSUM: CHANGE speakculture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He is no longer in touch with youth culture."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcultures3(String languageCode) async {
    // DOPSUM: CHANGE speakculture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The film examines the culture clash between the generations."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcultures4(String languageCode) async {
    // DOPSUM: CHANGE speakculture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "These ideas have always been central to Western culture."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcultures5(String languageCode) async {
    // DOPSUM: CHANGE speakculture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The Romans gradually assimilated the culture of the people they had conquered."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcultures6(String languageCode) async {
    // DOPSUM: CHANGE speakculture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The children are taught to respect different cultures."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcultures7(String languageCode) async {
    // DOPSUM: CHANGE speakculture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "In some cultures children have an important place."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcultures8(String languageCode) async {
    // DOPSUM: CHANGE speakculture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Venice is a beautiful city, full of culture and history."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcultures9(String languageCode) async {
    // DOPSUM: CHANGE speakculture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The political cultures of the United States and Europe are very different."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcultures10(String languageCode) async {
    // DOPSUM: CHANGE speakculture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You can't change the culture of an organization overnight."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcultures11(String languageCode) async {
    // DOPSUM: CHANGE speakculture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She believes the media have created a culture of fear."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcultures12(String languageCode) async {
    // DOPSUM: CHANGE speakculture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The company promotes a culture of innovation."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakcultures13(String languageCode) async {
    // DOPSUM: CHANGE speakculture
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakcultures1300"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: چاند، فەرهەنگ، کولتوور، ڕۆشنبیری، ڕووناکبیری، هونەر و ئەدەبیات پێکەوە،	ڕاهێنان، بارهێنان، پەروەردە(کردن)، بەخێوکردن، پەروەراندن
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) نەریت و باوەڕ، هونەر، شێوازی ژیان و شێوازی ڕێکخستنی کۆمەڵایەتی وڵاتێک یان گرووپێکی دیاریکراو"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Cooking is a hugely important part of French culture."),
                    ExampleSentenceKurdish(
                        text:
                            "خواردن لێنان بەشێکی زۆر گرنگی کەلتووری فەرەنسایە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "culture", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcultures1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcultures1("en-US"),
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
                        text: "He is no longer in touch with youth culture."),
                    ExampleSentenceKurdish(
                        text:
                            "چیتر لە پەیوەندیدا نییە لەگەڵ کەلتووری گەنجاندا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcultures2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcultures2("en-US"),
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
                                    "The film examines the culture clash between the generations."),
                            ExampleSentenceKurdish(
                                text:
                                    "فیلمەکە لێکۆڵینەوە دەکات لە بەرکەوتنی کەلتووری نێوان نەوەکاندا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcultures3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcultures3("en-US"),
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
                                    "These ideas have always been central to Western culture."),
                            ExampleSentenceKurdish(
                                text:
                                    "ئەم بیرۆکانە هەمیشە سەرەکی بوونە لە چاندی ڕۆژئاوادا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcultures4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcultures4("en-US"),
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
                                    "The Romans gradually assimilated the culture of the people they had conquered."),
                            ExampleSentenceKurdish(
                                text:
                                    "ڕۆمەکان کەم کەم تێکەڵی کەلتووری ئەو خەڵکانە بوون کە داگیریان کردن."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcultures5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcultures5("en-US"),
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
              text: "٢. (ناو) وڵاتێک، گرووپێک، هتد کە باوەڕ، هتد ـی خۆی هەیە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The children are taught to respect different cultures."),
                    ExampleSentenceKurdish(
                        text:
                            "منداڵان فێردەکرێن کە ڕێزی کەلتوورە جیاوازەکان بگرن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcultures6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcultures6("en-US"),
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
                            "In some cultures children have an important place."),
                    ExampleSentenceKurdish(
                        text:
                            "لە هەندێک کەلتووردا منداڵان پێگەی تایبەتیان هەیە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcultures7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcultures7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) هونەر، میوزیک، ئەدەب، هتد پێکەوە"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Venice is a beautiful city, full of culture and history."),
                    ExampleSentenceKurdish(
                        text: "ڤێنیس شارێکی جوانە، پڕ لە چاند و مێژووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcultures8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcultures8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) باوەڕ و بۆچوون سەبارەت بە شتێک کە کەسانی گرووپێک یان دامەزراوەیەکی دیاریکراو باوەڕیان پێیەتی"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The political cultures of the United States and Europe are very different."),
                    ExampleSentenceKurdish(
                        text: "ڕەوشی سیاسی ئەمریکا و ئەورووپا زۆر جیاوازن."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcultures9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcultures9("en-US"),
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
                            "You can't change the culture of an organization overnight."),
                    ExampleSentenceKurdish(
                        text:
                            "ناتوانیت کەلتووری دامەزراوەیەک لە شەو و ڕۆژێکدا بگۆڕیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcultures10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcultures10("en-US"),
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
                            "She believes the media have created a culture of fear."),
                    ExampleSentenceKurdish(
                        text:
                            "باوەڕی وایە میدیا کەلتوورێک لە ترسی درووست کردووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcultures11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcultures11("en-US"),
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
                        text: "The company promotes a culture of innovation."),
                    ExampleSentenceKurdish(
                        text: "کۆمپانیاکە فەرهەنگی نوێگەری بڵاودەکاتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakcultures12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakcultures12("en-US"),
                  ),
                ],
              ),
            ],
          ),
        ],
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
- Noun: culture (Derived forms: cultures)
1. (archeology) a particular society at a particular time and place (= civilization, civilisation [Brit])
"early Mayan culture";
 
2. The tastes in art and manners that are favoured by a social group
 
3. All the knowledge and values shared by a society (= acculturation)
 
4. (biology) the growing of microorganisms in a nutrient medium (such as gelatin or agar)
"the culture of cells in a Petri dish"
 
5. A highly developed state of perfection; having a flawless or impeccable quality (= polish, refinement, cultivation, finish, finesse)
"they performed with great culture";
 
6. The attitudes and behaviour that are characteristic of a particular social group or organization
"the developing drug culture"; "the reason that the agency is doomed to inaction has something to do with the FBI culture"
 
7. The raising of plants or animals
"the culture of oysters"

- Verb: culture (Derived forms: cultured, cultures, culturing)
1. Grow in a special preparation
"optimal conditions for culturing stem cell lines"
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
    videoId: 'https://youtu.be/4VSx2E7WE50?t=',
    startSeconds: 232,
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
    videoId: 'https://youtu.be/544DTGHIBM0?t=',
    startSeconds: 179,
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
    videoId: 'https://youtu.be/Cqbleas1mmo?t=',
    startSeconds: 237,
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
    videoId: 'https://youtu.be/SrDEtSlqJC4?t=',
    startSeconds: 50,
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
    videoId: 'https://youtu.be/xXvgT-AgLAo?t=',
    startSeconds: 155,
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
    videoId: 'https://youtu.be/D2ZvUJrMZio?t=',
    startSeconds: 712,
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
    videoId: 'https://youtu.be/Fr-qagv7ig0?t=',
    startSeconds: 897,
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

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return YouTubeScroller(
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
    );
  }
}

// end WORD_WEB