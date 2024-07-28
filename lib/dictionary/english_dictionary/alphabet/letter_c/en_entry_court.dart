import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycourt extends StatefulWidget {
  const EnglishEntrycourt({super.key});

  @override
  State<EnglishEntrycourt> createState() => _EnglishEntrycourtState();
}

class _EnglishEntrycourtState extends State<EnglishEntrycourt> {
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
    return const EntryTitle(word: "court");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: court");
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
    return const IPAofEnglish(text: "IpaUK: /kɔːt/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcourt(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("court");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcourt("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kɔːrt/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcourt(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("court");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcourt("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcourts1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her lawyer made a statement outside the court.");
  }

  Future<void> speakcourts2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Relatives of the victims were in court.");
  }

  Future<void> speakcourts3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She will appear in court tomorrow.");
  }

  Future<void> speakcourts4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The case took five years to come to court.");
  }

  Future<void> speakcourts5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There wasn't enough evidence to bring the case to court.");
  }

  Future<void> speakcourts6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "During the court hearing, the prosecutor said she would seek maximum prison sentences.");
  }

  Future<void> speakcourts7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Please tell the court what happened.");
  }

  Future<void> speakcourts8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This is not a case to be decided by the courts.");
  }

  Future<void> speakcourts9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("This evidence was not put before the court.");
  }

  Future<void> speakcourts10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He won after only 52 minutes on court.");
  }

  Future<void> speakcourts11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The players are good friends off court and train together.");
  }

  Future<void> speakcourts12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was presented to the queen at court.");
  }

  Future<void> speakcourts13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The painting shows the emperor with his court.");
  }

  Future<void> speakcourts14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Both candidates have spent the last month courting the media.");
  }

  Future<void> speakcourts15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He has never courted popularity.");
  }

  Future<void> speakcourts16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("As a politician he has often courted controversy.");
  }

  Future<void> speakcourts17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He had been courting Jane for six months.");
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
کوردی: دادگا، دادگە، بارەگا، دەربار، سەرا، کۆشک، دیوەشا،	(وەرزش) یاریگا،	حەوشە، حەسار،	لقێ لە کۆمەڵێ،	دەستەی قانوون‌دانەران،	(لە بریتانیا) لاشەقامی بنبەست،	زمان‌لووسی، مەرایی، نەرمەبڕی،	دەربڕینی خۆشەویستی
"""),
          const DefinitionKurdish(text: "١. (ناو) دادگا"),
          SentencesRow(
            englishText: "Her lawyer made a statement outside the court.",
            kurdishText:
                "پارێزەرەکەی لێدوانێکی لە دەرەوەی دادگا دا.", // court", please follow LX instructions
            onPressedBritish: () => speakcourts1("en-GB"),
            onPressedAmerican: () => speakcourts1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Relatives of the victims were in court.",
            kurdishText: "خزمەکانی قوربانییەکە لە دادگا بوون.",
            onPressedBritish: () => speakcourts2("en-GB"),
            onPressedAmerican: () => speakcourts2("en-US"),
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
                                text: "She will appear in court tomorrow."),
                            ExampleSentenceKurdish(
                                text: "سبەی لە دادگا ئامادە دەبێت."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourts3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourts3("en-US"),
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
                                    "The case took five years to come to court (= to be heard by the court)."),
                            ExampleSentenceKurdish(
                                text:
                                    "کەیسەکە پێنج ساڵی پێچوو تا بھێنرێتە دادگا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourts4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourts4("en-US"),
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
                                    "There wasn't enough evidence to bring the case to court (= start a trial)."),
                            ExampleSentenceKurdish(
                                text:
                                    "بەڵگەی پێویست نەبوو تاوەکو کەیسەکە بھێنرێتە دادگا."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourts5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourts5("en-US"),
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
                                    "During the court hearing, the prosecutor said she would seek maximum prison sentences."),
                            ExampleSentenceKurdish(
                                text:
                                    "لە ماوەی دانیشتنی دادگاییەکە، لێکۆڵەرەکە گوتی داوای سەختترین سزا دەکات."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcourts6("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcourts6("en-US"),
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
          const DefinitionKurdish(text: "٢. (ناو) ئەندامانی دادگا"),
          SentencesRow(
            englishText: "Please tell the court what happened.",
            kurdishText: "تکایە بە دادگا بڵێ چی ڕوویدا.",
            onPressedBritish: () => speakcourts7("en-GB"),
            onPressedAmerican: () => speakcourts7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "This is not a case to be decided by the courts.",
            kurdishText: "ئەمە بڕیارێک نییە دادگاکان بڕیاری لەسەر بدەن.",
            onPressedBritish: () => speakcourts8("en-GB"),
            onPressedAmerican: () => speakcourts8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "This evidence was not put before the court.",
            kurdishText: "ئەم بەڵگەیە پیشانی دادگا نەدرا.",
            onPressedBritish: () => speakcourts9("en-GB"),
            onPressedAmerican: () => speakcourts9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) یاریگای ھەندێک یاری، بۆ نموونە تێنس و باسکە"),
          SentencesRow(
            englishText: "He won after only 52 minutes on court.",
            kurdishText: "لە دوای تەنھا ٥٢ خولەک لە یاریگادا بردییەوە.",
            onPressedBritish: () => speakcourts10("en-GB"),
            onPressedAmerican: () => speakcourts10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The players are good friends off court and train together.",
            kurdishText:
                "یاریزانەکان ھاوڕێی نزیکن لە دەرەوەی یاریگا و پێکەوە ڕاھێنان دەکەن.",
            onPressedBritish: () => speakcourts11("en-GB"),
            onPressedAmerican: () => speakcourts11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) شوێنی ژیانی پاشا و شاژنەکان"),
          SentencesRow(
            englishText: "He was presented to the queen at court.",
            kurdishText: "بردرا بۆ لای شاژن لە کۆشکدا.",
            onPressedBritish: () => speakcourts12("en-GB"),
            onPressedAmerican: () => speakcourts12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (ناو) پاشا و شاژن، خێزانەکانیان، و ئەو کەسانەی کاریان بۆ دەکەن"),
          SentencesRow(
            englishText: "The painting shows the emperor with his court.",
            kurdishText: "تابلۆکە ئیمپراتۆر لەگەڵ دەربارەکەی پیشان دەدات.",
            onPressedBritish: () => speakcourts13("en-GB"),
            onPressedAmerican: () => speakcourts13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (کردار) ھەوڵدان بۆ دڵخۆشکردنی کەسێک بۆ بەدەستھێنانی ئەوەی دەتەوێت"),
          SentencesRow(
            englishText:
                "Both candidates have spent the last month courting the media.",
            kurdishText:
                "ھەردوو کاندیدەکە چەند مانگی ڕابردوویان بەسەر بردووە بە مەرایی کردن بۆ میدیاکان.",
            onPressedBritish: () => speakcourts14("en-GB"),
            onPressedAmerican: () => speakcourts14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (کردار) ھەوڵدان بۆ بەدەستھێنانی شتێک"),
          SentencesRow(
            englishText: "He has never courted popularity.",
            kurdishText: "ھەرگیز بە شوێن ناوبانگەوە نەبووە.",
            onPressedBritish: () => speakcourts15("en-GB"),
            onPressedAmerican: () => speakcourts15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) کردنی شتێک کە دەکرێت شتێکی خراپی لێبکەوێتەوە"),
          SentencesRow(
            englishText: "As a politician he has often courted controversy.",
            kurdishText: "وەک سیاسەتمەدارێک زۆرجار مشتومڕی درووستکردووە.",
            onPressedBritish: () => speakcourts16("en-GB"),
            onPressedAmerican: () => speakcourts16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٩. (کردار) ھەبوونی پەیوەندی سۆزداری لەگەڵ کەسێک کە دەتەوێت ھاوسەرگیری لەگەڵ بکەیت"),
          SentencesRow(
            englishText: "He had been courting Jane for six months.",
            kurdishText: "بۆ شەش مانگە پەیوەندی لەگەڵ جەین ھەیە.",
            onPressedBritish: () => speakcourts17("en-GB"),
            onPressedAmerican: () => speakcourts17("en-US"),
          ),
        ],
      ),
    );
  }
}

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
    String textToSpeak = """
${englishMeaningConst.text}
""";

    await flutterTts.setLanguage(languageCode);
    await flutterTts.speak(textToSpeak);

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
- Noun: court (derived forms: courts)
1. An assembly (including one or more judges) to conduct judicial business (= tribunal, judicature)
 
2. (law) a room in which a law court sits (= courtroom)
"television cameras were admitted in the court";
 
3. The sovereign and his advisers who are the governing power of a state (= royal court)
 
4. A specially marked horizontal area within which a game is played
"players had to reserve a court in advance"
 
5. The family and retinue of a sovereign or prince (= royal court)
 
6. A hotel for motorists; provides direct access from rooms to parking area (= motor hotel, motor inn, motor lodge, tourist court)
 
7. The residence of a sovereign or nobleman
"the king will visit the duke's court"
 
8. An area wholly or partly surrounded by walls or buildings (= courtyard)
"the house was built around an inner court";
 
9. Respectful deference (= homage)
"pay court to the emperor";

- Verb: court (derived forms: courting, courted, courts)
1. Make amorous advances towards (= woo, romance, solicit)
"John is courting Mary";
 
2. Seek someone's favour (= woo)
"China is courting Russia";
 
3. Engage in social activities leading to marriage
"We were courting for over ten years"

- Noun: Court
1. Australian woman tennis player who won many major championships (born in 1947) (= Margaret Court)
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          EnglishButtonTTS(
            onBritishPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onAmericanPressed: (languageCode) =>
                startSpeaking(languageCode, englishMeaningConst),
            onStopPressed: stopSpeaking,
          ),
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  final String _videoId = 'ZQNLP1_Xmcw';
  final double _startSeconds = 6;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffoldEnd(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  const YoutubeEmbeddedone({super.key});

  final String _videoId = 'tsxmyL7TUJg';
  final double _startSeconds = 465;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'DgAoy7XaFgk';
  final double _startSeconds = 166;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = '_XBfpv9XADk';
  final double _startSeconds = 442;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  const YoutubeEmbeddedfour({super.key});

  final String _videoId = 'A5fKAqLeaBo';
  final double _startSeconds = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  const YoutubeEmbeddedfive({super.key});

  final String _videoId = 'raSeaAeryWE';
  final double _startSeconds = 1769;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  const YoutubeEmbeddedsix({super.key});

  final String _videoId = 'wdLzMyqDuDY';
  final double _startSeconds = 23;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoId,
        startSeconds: _startSeconds,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeVideos extends StatelessWidget {
  const YoutubeVideos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const YouTubeScroller(
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