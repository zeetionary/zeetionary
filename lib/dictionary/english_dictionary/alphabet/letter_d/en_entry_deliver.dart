import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydeliver extends StatefulWidget {
  const EnglishEntrydeliver({super.key});

  @override
  State<EnglishEntrydeliver> createState() => _EnglishEntrydeliverState();
}

class _EnglishEntrydeliverState extends State<EnglishEntrydeliver> {
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
                bottom: CustomTabBarNew(
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
    return const EntryTitle(word: "deliver");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: deliver");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈlɪvə(r)/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeliver(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("deliver");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdeliver("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈlɪvər/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdeliver(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("deliver");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdeliver("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdelivers1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I get my food delivered from the supermarket to save time.");
  }

  Future<void> speakdelivers2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Leaflets have been delivered to every household.");
  }

  Future<void> speakdelivers3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We promise to deliver within 48 hours.");
  }

  Future<void> speakdelivers4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We deliver to our stores seven days a week.");
  }

  Future<void> speakdelivers5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The company will deliver free of charge.");
  }

  Future<void> speakdelivers6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Let me deliver the good news first.");
  }

  Future<void> speakdelivers7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The video delivers a clear message about road safety.");
  }

  Future<void> speakdelivers8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Our courses are delivered via the internet.");
  }

  Future<void> speakdelivers9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She will deliver a major speech on foreign policy tomorrow.");
  }

  Future<void> speakdelivers10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She is due to deliver a lecture on genetic engineering.");
  }

  Future<void> speakdelivers11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The Court delivered its judgement earlier this month.");
  }

  Future<void> speakdelivers12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He has promised to finish the job by June and I am sure he will deliver.");
  }

  Future<void> speakdelivers13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She always delivers on her promises.");
  }

  Future<void> speakdelivers14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The team delivered a stunning victory last night.");
  }

  Future<void> speakdelivers15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She delivered the kids on time at their father's house.");
  }

  Future<void> speakdelivers16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The taxi delivered us to our hotel.");
  }

  Future<void> speakdelivers17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They delivered their prisoner over to the invading army.");
  }

  Future<void> speakdelivers18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The baby was delivered by Caesarean section.");
  }

  Future<void> speakdelivers19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The baby was delivered safely on Tuesday night.");
  }

  Future<void> speakdelivers20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The number of women delivering their babies in hospital increased.");
  }

  Future<void> speakdelivers21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was delivered of a healthy boy.");
  }

  Future<void> speakdelivers22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He delivered the blow with all his force.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
//           const KurdishVocabulary(text: """
// کوردی: ئازاد کردن، پێدان، وتاردان، ڕزگار کردن، نەجات‌دان
// """),
          const DefinitionKurdish(
              text: "١. (کردار) گەیاندن لە جێگایەکەوە بۆ یەکێکی دیکە"),
          SentencesRow(
            englishText:
                "I get my food delivered from the supermarket to save time.",
            kurdishText:
                "بۆ گەڕاندنەوەی کات خواردنەکەم لە سوپەرمارکێتەکەوە بۆ دەنێردرێت.",
            onPressedBritish: () => speakdelivers1("en-GB"),
            onPressedAmerican: () => speakdelivers1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Leaflets have been delivered to every household.",
            kurdishText: "نامیلکە نێردراوە بۆ ھەموو ماڵێک.",
            onPressedBritish: () => speakdelivers2("en-GB"),
            onPressedAmerican: () => speakdelivers2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We promise to deliver within 48 hours.",
            kurdishText: "بەڵێن دەدەین لە ماوەی ٤٨ کاتژمێردا گەیاندن بکەین.",
            onPressedBritish: () => speakdelivers3("en-GB"),
            onPressedAmerican: () => speakdelivers3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We deliver to our stores seven days a week.",
            kurdishText: "حەوت ڕۆژی ھەفتە گەیاندن دەکەین بۆ کۆگاکانمان.",
            onPressedBritish: () => speakdelivers4("en-GB"),
            onPressedAmerican: () => speakdelivers4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The company will deliver free of charge.",
            kurdishText: "کۆمپانیاکە بە بێ‌بەرامبەر گەیاندن دەکات.",
            onPressedBritish: () => speakdelivers5("en-GB"),
            onPressedAmerican: () => speakdelivers5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) پێدان یان ناردنی زانیاری بە کەسێک"),
          SentencesRow(
            englishText: "Let me deliver the good news first.",
            kurdishText: "بھێڵە سەرەتا ھەواڵە خۆشەکە بڵێم.",
            onPressedBritish: () => speakdelivers6("en-GB"),
            onPressedAmerican: () => speakdelivers6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The video delivers a clear message about road safety.",
            kurdishText:
                "ڤیدیۆکە پەیامێکی ڕوون سەبارەت بە سەلامەتی سەر شەقام دەگەیەنێت.",
            onPressedBritish: () => speakdelivers7("en-GB"),
            onPressedAmerican: () => speakdelivers7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Our courses are delivered via the internet.",
            kurdishText: "کۆرسەکەمان لە ڕێگەی ئینتەرنێتەوە پێشکەش دەکرێن.",
            onPressedBritish: () => speakdelivers8("en-GB"),
            onPressedAmerican: () => speakdelivers8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) پێشکەشکردنی وتارێک، نمایشێک، ڕاگەیاندنێک، ھتد"),
          SentencesRow(
            englishText:
                "She will deliver a major speech on foreign policy tomorrow.",
            kurdishText: "سبەی ڕاگەیاندنێکی گرنگی لەسەر سیاسەتی دەرەوە دەبێت.",
            onPressedBritish: () => speakdelivers9("en-GB"),
            onPressedAmerican: () => speakdelivers9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She is due to deliver a lecture on genetic engineering.",
            kurdishText: "وانەیەک لەسەر ئەندازیاری جینات پێشکەش دەکات.",
            onPressedBritish: () => speakdelivers10("en-GB"),
            onPressedAmerican: () => speakdelivers10("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The Court delivered its judgement earlier this month.",
            kurdishText: "دادگا سەرەتای ئەم مانگە بڕیاری دا.",
            onPressedBritish: () => speakdelivers11("en-GB"),
            onPressedAmerican: () => speakdelivers11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) کردنی ئەوەی کە بەڵێنت داوە یان چاوەڕوان دەکرێت بیکەیت"),
          SentencesRow(
            englishText:
                "He has promised to finish the job by June and I am sure he will deliver.",
            kurdishText:
                "بەڵێنی داوە تاوەکو حوزەیران کارەکە تەواو بکات و دڵنیام پابەند دەبێت.",
            onPressedBritish: () => speakdelivers12("en-GB"),
            onPressedAmerican: () => speakdelivers12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She always delivers on her promises.",
            kurdishText: "ھەمیشە پابەندی بەڵێنەکانی دەبێت.",
            onPressedBritish: () => speakdelivers13("en-GB"),
            onPressedAmerican: () => speakdelivers13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The team delivered a stunning victory last night.",
            kurdishText: "تیمەکە شەوی ڕابردوو سەرکەوتنێکی ناوازەی پێشکەش کرد.",
            onPressedBritish: () => speakdelivers14("en-GB"),
            onPressedAmerican: () => speakdelivers14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (کردار) بردنی کەسێک بۆ شوێنێک"),
          SentencesRow(
            englishText:
                "She delivered the kids on time at their father's house.",
            kurdishText: "لە کاتی خۆیدا منداڵەکانی بردە ماڵی باوکیان.",
            onPressedBritish: () => speakdelivers15("en-GB"),
            onPressedAmerican: () => speakdelivers15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The taxi delivered us to our hotel.",
            kurdishText: "تەکسییەکە گەیاندمانییە ھوتێلەکە.",
            onPressedBritish: () => speakdelivers16("en-GB"),
            onPressedAmerican: () => speakdelivers16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "They delivered their prisoner over to the invading army.",
            kurdishText: "زیندانییەکەیان دا بەدەست سوپای داگیرکەرەوە.",
            onPressedBritish: () => speakdelivers17("en-GB"),
            onPressedAmerican: () => speakdelivers17("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) یارمەتیدانی ژنێک لە منداڵبووندا"),
          SentencesRow(
            englishText: "The baby was delivered by Caesarean section.",
            kurdishText: "منداڵەکە بە نەشتەرگەری لەدایکبوو.",
            onPressedBritish: () => speakdelivers18("en-GB"),
            onPressedAmerican: () => speakdelivers18("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The baby was delivered safely on Tuesday night.",
            kurdishText: "منداڵەکە بە سەلامەتی لە ڕۆژی سێشەممە لەدایکبوو.",
            onPressedBritish: () => speakdelivers19("en-GB"),
            onPressedAmerican: () => speakdelivers19("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (کردار) منداڵبوون"),
          SentencesRow(
            englishText:
                "The number of women delivering their babies in hospital increased.",
            kurdishText:
                "ژمارەی ئەو ژنانەی لە نەخۆشخانە منداڵیان  بوو زیادی کردووە.",
            onPressedBritish: () => speakdelivers20("en-GB"),
            onPressedAmerican: () => speakdelivers20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She was delivered of a healthy boy.",
            kurdishText: "کوڕێکی تەندرووستی بوو.",
            onPressedBritish: () => speakdelivers21("en-GB"),
            onPressedAmerican: () => speakdelivers21("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) فڕێدان یان ئامانجگرتنەوە لە شتێک"),
          SentencesRow(
            englishText:
                "He delivered the blow (= hit somebody hard) with all his force.",
            kurdishText: "بە ھەموو توانای مشتێکی وەشاند.",
            onPressedBritish: () => speakdelivers22("en-GB"),
            onPressedAmerican: () => speakdelivers22("en-US"),
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
- Verb: deliver (derived forms: delivers, delivered, delivering)
1. Bring to a destination, make a delivery
"our local super market delivers"
 
2. Express clearly or formally in words (a speech, oration, or idea) (= present)
 
3. To surrender someone or something to another (= hand over, turn in, render)
"the guard delivered the criminal to the police";
 
4. Free from harm or evil (= rescue)
 
5. Hand over to the authorities of another country (= extradite, deport)
"They delivered the fugitive to his native country so he could be tried there";
 
6. Pass down (= render, return)
"deliver a judgment";
 
7. Utter (an exclamation, noise, etc.)
"The students delivered a cry of joy"
 
8. (religion) Prevent committing sins (= redeem, save)
 
9. Carry out or perform (= drive home)
"deliver an attack";
 
10. Relinquish possession or control over (= surrender, cede, give up)
"The squatters had to deliver the building after the police moved in";
 
11. Throw or hurl from the mound to the batter, as in baseball (= pitch)
"The pitcher delivered the ball";
 
12. Cause to be born (= give birth, bear, birth, have)
"My wife delivered twins yesterday!";
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

  final String _videoId = 'a_TSR_v07m0';
  final double _startSeconds = 753;

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

  final String _videoId = 'kXShLPXfWZA';
  final double _startSeconds = 123;

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

  final String _videoId = 'NFtQOxjWfaA';
  final double _startSeconds = 342;

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

  final String _videoId = 'Cqbleas1mmo';
  final double _startSeconds = 814;

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

  final String _videoId = 'bHIhgxav9LY';
  final double _startSeconds = 799;

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

  final String _videoId = 'sV6uuMAnJUE';
  final double _startSeconds = 72;

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

  final String _videoId = 'Gv4Af83KFrE';
  final double _startSeconds = 299;

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