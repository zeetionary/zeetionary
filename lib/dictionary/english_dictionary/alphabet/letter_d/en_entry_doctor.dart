import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydoctor extends StatefulWidget {
  const EnglishEntrydoctor({super.key});

  @override
  State<EnglishEntrydoctor> createState() => _EnglishEntrydoctorState();
}

class _EnglishEntrydoctorState extends State<EnglishEntrydoctor> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
                    SentencesIconForTab(),
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
              const SentencesFromDatabase(),
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
  }
}

class SentencesFromDatabase extends StatefulWidget {
  const SentencesFromDatabase({super.key});

  @override
  State<SentencesFromDatabase> createState() => _SentencesFromDatabaseState();
}

class _SentencesFromDatabaseState extends State<SentencesFromDatabase> {
  final String keyword = "doctor";
  late FlutterTts flutterTts;
  List<Map<String, dynamic>> filteredSentences = [];

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    fetchSentences();
  }

  Future<void> fetchSentences() async {
    final sentences =
        await DatabaseUtils.instance.fetchFilteredSentences(keyword: keyword);
    setState(() {
      filteredSentences = sentences;
    });
  }

  void speakEnglish(String text, {String? languageCode}) async {
    await flutterTts.setLanguage(languageCode ?? "en-GB");
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          if (filteredSentences.isEmpty) {
            return const NoSentencesFromDatabase();
          } else {
            return ListView.builder(
              itemCount: filteredSentences.length,
              itemBuilder: (context, index) {
                final sentence = filteredSentences[index];
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: DatabaseUtils.instance.highlightText(
                                      sentence['english'].toString(),
                                      keyword,
                                      ref,
                                      context,
                                    ),
                                  ),
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child:
                                          DatabaseUtils.instance.highlightText(
                                        sentence['french'].toString(),
                                        keyword,
                                        ref,
                                        context,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(),
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-GB",
                                  ),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-US",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1)
                          const DividerSentences(),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
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
              // TitleOfEntryAlso(),
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
    return const EntryTitle(word: "doctor");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: doctor");
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
    return const IPAofEnglish(text: "IpaUK: /ˈdɒktə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdoctor(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("doctor");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdoctor("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /ˈdɑːktər/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdoctor(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("doctor");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdoctor("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdoctors1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You'd better see a doctor about that cough.");
  }

  Future<void> speakdoctors2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The doctor prescribed antibiotics.");
  }

  Future<void> speakdoctors3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The doctor told me to stay in bed.");
  }

  Future<void> speakdoctors4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's training to be a doctor.");
  }

  Future<void> speakdoctors5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("If you're worried about your blood pressure, ask your doctor.");
  }

  Future<void> speakdoctors6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("My mother never visited the doctor.");
  }

  Future<void> speakdoctors7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The doctor advised me to rest.");
  }

  Future<void> speakdoctors8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The doctor will see you now.");
  }

  Future<void> speakdoctors9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We called the doctor immediately.");
  }

  Future<void> speakdoctors10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Thank you, doctor.");
  }

  Future<void> speakdoctors11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The doctors and nurses restarted his heart.");
  }

  Future<void> speakdoctors12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Why won't he go to the doctor?");
  }

  Future<void> speakdoctors13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Who is your family doctor?");
  }

  Future<void> speakdoctors14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Why don't you go to the doctor's?");
  }

  Future<void> speakdoctors15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "After years of hard work, she finally became a doctor of psychology.");
  }

  Future<void> speakdoctors16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He was accused of doctoring the figures.");
  }

  Future<void> speakdoctors17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The wine had been doctored.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: دوکتور، دوکتۆرا (بەرزترین پلەی زانکۆیی)،	پزشک، حەکیم، نۆژدار، دوختور، دوکتور
"""),
          const DefinitionKurdish(
              text:
                  "١. (ناو) کەسێک کە شارەزایی لە زانستی پزیشكی ھەیە و کاری چارەسەری نەخۆشە"),
          SentencesRow(
            englishText: "You'd better see a doctor about that cough.",
            kurdishText: "باشترە پزیشکێک ببینیت سەبارەت بەو کۆکەیە.", // doctor
            onPressedBritish: () => speakdoctors1("en-GB"),
            onPressedAmerican: () => speakdoctors1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The doctor prescribed antibiotics.",
            kurdishText: "پزیشکەکە دژە بەکتریای بۆ نووسی.",
            onPressedBritish: () => speakdoctors2("en-GB"),
            onPressedAmerican: () => speakdoctors2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: "The doctor told me to stay in bed.",
                    kurdishText: "پزیشکەکە پێی گوتم لە جێخەودا بمێنمەوە.",
                    onPressedBritish: () => speakdoctors3("en-GB"),
                    onPressedAmerican: () => speakdoctors3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "He's training to be a doctor.",
                    kurdishText: "ڕاھێنان دەکات بۆ ئەوەی ببێت بە پزیشک.",
                    onPressedBritish: () => speakdoctors4("en-GB"),
                    onPressedAmerican: () => speakdoctors4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "If you're worried about your blood pressure, ask your doctor.",
                    kurdishText:
                        "ئەگەر نیگەرانیت سەبارەت بە پەستانی خوێنت، پەیوەندی بە پزیشکێکەوە بکە.",
                    onPressedBritish: () => speakdoctors5("en-GB"),
                    onPressedAmerican: () => speakdoctors5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "My mother never visited the doctor.",
                    kurdishText: "دایکم ھەرگیز سەردانی پزیشکی نەکرد.",
                    onPressedBritish: () => speakdoctors6("en-GB"),
                    onPressedAmerican: () => speakdoctors6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The doctor advised me to rest.",
                    kurdishText: "پزیشکەکە ئامۆژگاری کردم بحەسێمەوە.",
                    onPressedBritish: () => speakdoctors7("en-GB"),
                    onPressedAmerican: () => speakdoctors7("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The doctor will see you now.",
                    kurdishText: "پزیشکەکە ئێستا دەتبینێت.",
                    onPressedBritish: () => speakdoctors8("en-GB"),
                    onPressedAmerican: () => speakdoctors8("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "We called the doctor immediately.",
                    kurdishText: "دەستبەجێ پەیوەندیمان بە پزیش.",
                    onPressedBritish: () => speakdoctors9("en-GB"),
                    onPressedAmerican: () => speakdoctors9("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "Thank you, doctor.",
                    kurdishText: "سوپاس، دکتۆر.",
                    onPressedBritish: () => speakdoctors10("en-GB"),
                    onPressedAmerican: () => speakdoctors10("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The doctors and nurses restarted his heart.",
                    kurdishText: "پزیشکەکان و پەرستارەکان دڵیان خستەوە کار.",
                    onPressedBritish: () => speakdoctors11("en-GB"),
                    onPressedAmerican: () => speakdoctors11("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "Why won't he go to the doctor?",
                    kurdishText: "بۆچی ناچێتە لای پزیشک؟",
                    onPressedBritish: () => speakdoctors12("en-GB"),
                    onPressedAmerican: () => speakdoctors12("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "Who is your family doctor?",
                    kurdishText: "کێ پزیشکی خێزانەکەتە؟",
                    onPressedBritish: () => speakdoctors13("en-GB"),
                    onPressedAmerican: () => speakdoctors13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) شوێنی پزیشک کە تێیدا نەخۆش دەبینێت"),
          SentencesRow(
            englishText: "Why don't you go to the doctor's?",
            kurdishText: "بۆچی ناچیت بۆ لای پزیشکەکە؟",
            onPressedBritish: () => speakdoctors14("en-GB"),
            onPressedAmerican: () => speakdoctors14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) کەسێک کە بەرزترین بڕوانامەی زانکۆی ھەیە"),
          SentencesRow(
            englishText:
                "After years of hard work, she finally became a doctor of psychology.",
            kurdishText:
                "لە دوای چەندین ساڵ ھەوڵی سەخت، لە کۆتاییدا بوو بە دکتۆری دەروونناسی.",
            onPressedBritish: () => speakdoctors15("en-GB"),
            onPressedAmerican: () => speakdoctors15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) گۆڕینی شتێک بۆ خەڵەتاندنی کەسێک"),
          SentencesRow(
            englishText: "He was accused of doctoring the figures.",
            kurdishText: "تاوانبارکرا بە چەواشەکردنی ئامارەکان.",
            onPressedBritish: () => speakdoctors16("en-GB"),
            onPressedAmerican: () => speakdoctors16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) زیادکردنی شتێکی زیانبەخش یان ژەھراوی بۆ خواردن یان خواردنەوە"),
          SentencesRow(
            englishText: "The wine had been doctored.",
            kurdishText: "شەرابەکە ژەھراوی کرابوو.",
            onPressedBritish: () => speakdoctors17("en-GB"),
            onPressedAmerican: () => speakdoctors17("en-US"),
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
- Noun: doctor (derived forms: doctors)
1. A licensed medical practitioner (= doc [informal], physician, MD, Dr., medico [informal])
"I felt so bad I went to see my doctor";
 
2. A person who holds Ph.D. degree (or the equivalent) from an academic institution (= Dr.)
"she is a doctor of philosophy in physics";
 
3. A game in which children take the roles of physician, nurse or patient and pretend they are at the doctor's
"the children explored each other's bodies by playing the game of doctor"

- Verb: doctor (derived forms: doctors, doctored, doctoring)
1. Alter and make impure, as with the intention to deceive (= sophisticate, doctor up)
"doctor up rose water with geraniol";
 
2. (medicine) give medical treatment to
 
3. [informal] Restore by replacing a part or putting together what is torn or broken (= repair, mend, fix, bushel [US], furbish up, restore, touch on)

- Noun: Doctor (derived forms: Doctors)
1. (Roman Catholic Church) a title conferred on 33 saints who distinguished themselves through the orthodoxy of their theological teaching (= Doctor of the Church)
"the Doctors of the Church greatly influenced Christian thought down to the late Middle Ages";
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

  final String _videoId = 'jsrGLo3_Afk';
  final double _startSeconds = 20;

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

  final String _videoId = '5Vi-PL1HPb8';
  final double _startSeconds = 18;

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

  final String _videoId = 'gngPQ771Ahk';
  final double _startSeconds = 1446;

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

  final String _videoId = '8wewPn7TZfs';
  final double _startSeconds = 73;

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

  final String _videoId = 'GsG3Z29E1rM';
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

  final String _videoId = '-7d1zRIVG94';
  final double _startSeconds = 216;

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

  final String _videoId = 'mhH0Sf2Yor8';
  final double _startSeconds = 30;

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