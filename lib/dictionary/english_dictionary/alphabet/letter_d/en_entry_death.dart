import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydeath extends StatefulWidget {
  const EnglishEntrydeath({super.key});

  @override
  State<EnglishEntrydeath> createState() => _EnglishEntrydeathState();
}

class _EnglishEntrydeathState extends State<EnglishEntrydeath> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const ZeetionaryAppbar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: EntryAndIPA(),
                ),
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
    return const EntryTitle(word: "death");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: death");
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
    return const IPAofEnglish(text: "IpaUK: /deθ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeath(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("death");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdeath("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /deθ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeath(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("death");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdeath("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeaths1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It is believed she died a violent death.");
  }

  Future<void> speakdeaths2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He suffered a slow and painful death.");
  }

  Future<void> speakdeaths3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He met his death two years later.");
  }

  Future<void> speakdeaths4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He witnessed the death of his mother from tuberculosis.");
  }

  Future<void> speakdeaths5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her death came at the age of 82.");
  }

  Future<void> speakdeaths6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("How far would they go to avenge the death of their friend?");
  }

  Future<void> speakdeaths7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("More deaths occur in winter.");
  }

  Future<void> speakdeaths8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Obesity is a leading cause of preventable deaths.");
  }

  Future<void> speakdeaths9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("On Samuel's death, the farm passed to his sons.");
  }

  Future<void> speakdeaths10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Police are not treating the death as suspicious.");
  }

  Future<void> speakdeaths11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Women accounted for 2% of all combat deaths.");
  }

  Future<void> speakdeaths12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She faked her own death so he couldn't find her.");
  }

  Future<void> speakdeaths13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The annual total of road deaths is falling.");
  }

  Future<void> speakdeaths14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Police are trying to establish the cause of death.");
  }

  Future<void> speakdeaths15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The disease can cause death unless the patient is treated promptly.");
  }

  Future<void> speakdeaths16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Do you believe in life after death?");
  }

  Future<void> speakdeaths17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was sentenced to death.");
  }

  Future<void> speakdeaths18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Millions of people starved to death.");
  }

  Future<void> speakdeaths19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Four prisoners were under sentence of death.");
  }

  Future<void> speakdeaths20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Touching the wires means instant death.");
  }

  Future<void> speakdeaths21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("This process becomes irreversible and leads to cell death.");
  }

  Future<void> speakdeaths22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("By 1740 European feudalism was in its death throes.");
  }

  Future<void> speakdeaths23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Delivering on time is a matter of life and death for a small company.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: مردن، مەرگ، ئاووگڵ، کوژران، تیاچوون،	کوشتن،	مایەی کوژران، گیان‌گر،	کۆتایی، تیاچوون، نەمان،	ئاکام
"""),
          const DefinitionKurdish(text: "١. (ناو) مردن یان کوژرانی کەسێک"),
          SentencesRow(
            englishText: "It is believed she died a violent death.",
            kurdishText: "باوەڕ وایە بە کوشتنێکی دڕندانە مرد.",
            onPressedBritish: () => speakdeaths1("en-GB"),
            onPressedAmerican: () => speakdeaths1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He suffered a slow and painful death.",
            kurdishText: "تووشی مەرگێکی ھێواش و بەئازار بوو.",
            onPressedBritish: () => speakdeaths2("en-GB"),
            onPressedAmerican: () => speakdeaths2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: "He met his death two years later.",
                    kurdishText: "دوای دوو ساڵ بە مەرگی خۆی گەشت.",
                    onPressedBritish: () => speakdeaths3("en-GB"),
                    onPressedAmerican: () => speakdeaths3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "He witnessed the death of his mother from tuberculosis.",
                    kurdishText: "شایەتحاڵی مەرگی دایکی بوو بە نەخۆشی سیل.",
                    onPressedBritish: () => speakdeaths4("en-GB"),
                    onPressedAmerican: () => speakdeaths4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "Her death came at the age of 82.",
                    kurdishText: "لە تەمەنی ٨٢ ساڵیدا کۆچی دوایی کرد.",
                    onPressedBritish: () => speakdeaths5("en-GB"),
                    onPressedAmerican: () => speakdeaths5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "How far would they go to avenge the death of their friend?",
                    kurdishText:
                        "تا چەند دەچن بۆ تۆڵەکردنەوەی مەرگی ھاوڕێکەیان؟",
                    onPressedBritish: () => speakdeaths6("en-GB"),
                    onPressedAmerican: () => speakdeaths6("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "More deaths occur in winter.",
                    kurdishText: "مەرگی زیاتر لە زستاندا ڕوودەدەن.",
                    onPressedBritish: () => speakdeaths7("en-GB"),
                    onPressedAmerican: () => speakdeaths7("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "Obesity is a leading cause of preventable deaths.",
                    kurdishText: "قەڵەوی ھۆکاری سەرەکی مردنی پێشپێگیراوە.",
                    onPressedBritish: () => speakdeaths8("en-GB"),
                    onPressedAmerican: () => speakdeaths8("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "On Samuel's death, the farm passed to his sons.",
                    kurdishText:
                        "لەگەڵ مردنی ساموێل، کێڵگەکە بەر کوڕەکانی کەوت.",
                    onPressedBritish: () => speakdeaths9("en-GB"),
                    onPressedAmerican: () => speakdeaths9("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "Police are not treating the death as suspicious.",
                    kurdishText: "پۆلیس مردنەکە بە گوماناوی سەیر ناکەن.",
                    onPressedBritish: () => speakdeaths10("en-GB"),
                    onPressedAmerican: () => speakdeaths10("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "Women accounted for 2% of all combat deaths.",
                    kurdishText: "ژنان ڕێژەی ٢٪ ـی مردنەکانی جەنگ بوون.",
                    onPressedBritish: () => speakdeaths11("en-GB"),
                    onPressedAmerican: () => speakdeaths11("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "She faked her own death so he couldn't find her.",
                    kurdishText: "مردنی خۆی ساختە کرد بۆ ئەوەی نەیدۆزێتەوە.",
                    onPressedBritish: () => speakdeaths12("en-GB"),
                    onPressedAmerican: () => speakdeaths12("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The annual total of road deaths is falling.",
                    kurdishText: "مردنی گشتی ساڵانەی سەر شەقامەکان دادەبەزێت.",
                    onPressedBritish: () => speakdeaths13("en-GB"),
                    onPressedAmerican: () => speakdeaths13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (ناو) کۆتایی ژیان"),
          SentencesRow(
            englishText: "Police are trying to establish the cause of death.",
            kurdishText: "پۆلیس ھەوڵ دەدەن ھۆکاری مردن دیاری بکەن.",
            onPressedBritish: () => speakdeaths14("en-GB"),
            onPressedAmerican: () => speakdeaths14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The disease can cause death unless the patient is treated promptly.",
            kurdishText:
                "نەخۆشییەکە دەکرێت ببێتە ھۆکاری مردن مەگەر ئەوەی نەخۆشەکە بەزووی چارەسەر بکرێت.",
            onPressedBritish: () => speakdeaths15("en-GB"),
            onPressedAmerican: () => speakdeaths15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Do you believe in life after death?",
            kurdishText: "باوەڕت بە ژیانی دوای مردن ھەیە؟",
            onPressedBritish: () => speakdeaths16("en-GB"),
            onPressedAmerican: () => speakdeaths16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He was sentenced to death (= to be executed).",
            kurdishText: "بە مردن سزا درا.",
            onPressedBritish: () => speakdeaths17("en-GB"),
            onPressedAmerican: () => speakdeaths17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Millions of people starved to death (= were killed by lack of food).",
            kurdishText: "ملیۆنان کەس لە برسییەتیدا مردن.",
            onPressedBritish: () => speakdeaths18("en-GB"),
            onPressedAmerican: () => speakdeaths18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Four prisoners were under sentence of death.",
            kurdishText: "چوار زیندانی سزای مەرگیان ھەبوو.",
            onPressedBritish: () => speakdeaths19("en-GB"),
            onPressedAmerican: () => speakdeaths19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Touching the wires means instant death.",
            kurdishText: "دەستدان لە وایەرەکان واتا مردنی دەستبەجێ.",
            onPressedBritish: () => speakdeaths20("en-GB"),
            onPressedAmerican: () => speakdeaths20("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٣. (ناو) وەستاندنی پڕۆسەی زیندەکیمیایی ژیان لە خانە یان شانەدا"),
          SentencesRow(
            englishText:
                "This process becomes irreversible and leads to cell death.",
            kurdishText:
                "پڕۆسەکە ھەڵنەوەشاوە دەبێت و دەبێتە ھۆکاری مردنی خانە.",
            onPressedBritish: () => speakdeaths21("en-GB"),
            onPressedAmerican: () => speakdeaths21("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (ناو) کۆتایی یان لەناوچوونی ھەمیشەیی شتێک"),
          SentencesRow(
            englishText: "By 1740 European feudalism was in its death throes.",
            kurdishText:
                "لە ساڵی ١٧٤٠ دەرەبەگایەتی لە ئەورووپا لە ژانی مەرگدا بوو.",
            onPressedBritish: () => speakdeaths22("en-GB"),
            onPressedAmerican: () => speakdeaths22("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Delivering on time is a matter of life and death for a small company.",
            kurdishText:
                "گەیاندن لەکاتی خۆیدا بابەتی ژیان و مردنە بۆ کۆمپانیایەکی بچووک.",
            onPressedBritish: () => speakdeaths23("en-GB"),
            onPressedAmerican: () => speakdeaths23("en-US"),
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
- Noun: death (derived forms: deaths)
1. The event of dying or departure from life (= decease, expiry)
"her death came as a terrible shock";
 
2. The permanent end of all life functions in an organism or part of an organism
"the animal died a painful death"
 
3. The absence of life or state of being dead
"he seemed more content in death than he had ever been in life"
 
4. The time when something ends (= dying, demise)
"it was the death of all his plans";
 
5. The time at which life ends; continuing until dead (= last)
"she stayed until his death";
 
6. A final state (= end, destruction)
"he came to a bad death";
 
7. The act of killing
"he had two deaths on his conscience"

- Noun: Death 
1. The personification of death
"Death walked the streets of the plague-bound city"
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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

  final String _videoId = 'tsE1rMH18Tk';
  final double _startSeconds = 431;

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

  final String _videoId = 'L81XWiDgmTk';
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

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = 'tpOsDC0KNjw';
  final double _startSeconds = 90;

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

  final String _videoId = 'R_fZjGm2OrM';
  final double _startSeconds = 395;

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

  final String _videoId = '_wNsZEqpKUA';
  final double _startSeconds = 1156;

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

  final String _videoId = 'LAOoF2gyQaA';
  final double _startSeconds = 272;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1595;

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