import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydisplay extends StatefulWidget {
  const EnglishEntrydisplay({super.key});

  @override
  State<EnglishEntrydisplay> createState() => _EnglishEntrydisplayState();
}

class _EnglishEntrydisplayState extends State<EnglishEntrydisplay> {
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
    return const EntryTitle(word: "display");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: display");
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
    return const IPAofEnglish(text: "IpaUK: /dɪˈspleɪ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisplay(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("display");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdisplay("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɪˈspleɪ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisplay(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("display");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdisplay("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdisplays1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The exhibition gives local artists an opportunity to display their work.");
  }

  Future<void> speakdisplays2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "His football trophies were prominently displayed in the kitchen.");
  }

  Future<void> speakdisplays3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She displayed her bruises for all to see.");
  }

  Future<void> speakdisplays4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She proudly displayed her certificate to her parents.");
  }

  Future<void> speakdisplays5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I have rarely seen her display any sign of emotion.");
  }

  Future<void> speakdisplays6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("These statistics display a definite trend.");
  }

  Future<void> speakdisplays7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Many animals in stressful conditions display this behaviour.");
  }

  Future<void> speakdisplays8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "From 1811 until his death in 1820, George III displayed symptoms of insanity.");
  }

  Future<void> speakdisplays9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He displayed remarkable courage.");
  }

  Future<void> speakdisplays10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "A group of artists will be displaying their skills to the students.");
  }

  Future<void> speakdisplays11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Giant screens displayed images of cheering crowds.");
  }

  Future<void> speakdisplays12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The medals can be seen in a display cabinet on the first floor.");
  }

  Future<void> speakdisplays13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The display includes examples of her work in progress.");
  }

  Future<void> speakdisplays14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The museum has a display of old medical instruments.");
  }

  Future<void> speakdisplays15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There was a prominent display of her photographs in the living room.");
  }

  Future<void> speakdisplays16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("They put on a spectacular firework display.");
  }

  Future<void> speakdisplays17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The team produced an impressive display.");
  }

  Future<void> speakdisplays18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Most of the local people attended the firework display.");
  }

  Future<void> speakdisplays19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "There may be specific events which trigger aggressive displays in your dog.");
  }

  Future<void> speakdisplays20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Despite his outward display of friendliness, I sensed he was concealing something.");
  }

  Future<void> speakdisplays21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("I witnessed a rare display of affection between them.");
  }

  Future<void> speakdisplays22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The display shows the time in hours and minutes.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: پیشان‌دان، نیشان‌دان، ڕانان، نواندن، نانەبەر، خستنەڕوو، خستنەبەرچاو،	ئاشکراکردن، دەربڕین، خستنەڕوو، دەرخستن،	سەرجەم ئەو شتانەی خراونەتەڕوو
"""),
          const DefinitionKurdish(text: "١. (کردار) نمایشکردنی شتێک"),
          SentencesRow(
            englishText:
                "The exhibition gives local artists an opportunity to display their work.",
            kurdishText:
                "پێشانگاکە ھەلێک بە ھونەرمەندە خۆجێییەکان دەدات کە کارەکانیان نمایش بکەن.",
            onPressedBritish: () => speakdisplays1("en-GB"),
            onPressedAmerican: () => speakdisplays1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "His football trophies were prominently displayed in the kitchen.",
            kurdishText:
                "مەدالیاکانی تۆپی‌پێی بە شێوەیەکی دیار لە چێشتخانەکە نمایش کرابوون.",
            onPressedBritish: () => speakdisplays2("en-GB"),
            onPressedAmerican: () => speakdisplays2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She displayed her bruises for all to see.",
            kurdishText: "شین‌بوونەوەکانیی پیشانی ھەموان دا کە بیبینن.",
            onPressedBritish: () => speakdisplays3("en-GB"),
            onPressedAmerican: () => speakdisplays3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She proudly displayed her certificate to her parents.",
            kurdishText:
                "بە شانازییەوە بڕوانامەکەی پیشانی دایک و باوکی دا کە بیبینن.",
            onPressedBritish: () => speakdisplays4("en-GB"),
            onPressedAmerican: () => speakdisplays4("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٢. (کردار) پیشاندانی خاسیەتێک، ھەستێک، شارەزاییەک، یان ڕەفتارێک"),
          SentencesRow(
            englishText: "I have rarely seen her display any sign of emotion.",
            kurdishText: "بە دەگمەن دیومە ھیچ ھەستێک پیشان بدات.",
            onPressedBritish: () => speakdisplays5("en-GB"),
            onPressedAmerican: () => speakdisplays5("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "These statistics display a definite trend.",
            kurdishText: "ئەم ئامارانە ترێندێکی گومان‌لێ‌نەکراو پیشان دەدەن.",
            onPressedBritish: () => speakdisplays6("en-GB"),
            onPressedAmerican: () => speakdisplays6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Many animals in stressful conditions display this behaviour.",
            kurdishText:
                "زۆر ئاژەڵ کە لە دۆخی پڕگوشاریدا ئەم ھەڵسوکەوتە پیشان دەدەن.",
            onPressedBritish: () => speakdisplays7("en-GB"),
            onPressedAmerican: () => speakdisplays7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "From 1811 until his death in 1820, George III displayed symptoms of insanity.",
            kurdishText:
                "لە ساڵی ١٨١١ تاوەکو مەرگی لە ١٨٢٩ جۆرجی سێیەم نیشانەکانی شێتیی ھەبوو.",
            onPressedBritish: () => speakdisplays8("en-GB"),
            onPressedAmerican: () => speakdisplays8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He displayed remarkable courage.",
            kurdishText: "بوێری بێ وێنەی پیشان دا.",
            onPressedBritish: () => speakdisplays9("en-GB"),
            onPressedAmerican: () => speakdisplays9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "A group of artists will be displaying their skills to the students.",
            kurdishText:
                "کۆمەڵێک ھونەرمەند تواناکانیان پیشانی خوێندکاران دەدەن.",
            onPressedBritish: () => speakdisplays10("en-GB"),
            onPressedAmerican: () => speakdisplays10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (کردار) پیشاندانی زانیاری"),
          SentencesRow(
            englishText: "Giant screens displayed images of cheering crowds.",
            kurdishText:
                "شاشەی زەبەلاح وێنەی جەماوەرە ھیوابەخشەکەیان پیشان دەدا.",
            onPressedBritish: () => speakdisplays11("en-GB"),
            onPressedAmerican: () => speakdisplays11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) نمایشکی کۆمەڵە شتێک لە شوێنێکی گشتیدا بۆ زانیاری، خۆشی، یان ڕیکلام کردن"),
          SentencesRow(
            englishText:
                "The medals can be seen in a display cabinet on the first floor.",
            kurdishText:
                "مەدالیاکان لە کابینەیەکی پیشان‌داندا دەبینرێن لە نھۆمی یەکەم.",
            onPressedBritish: () => speakdisplays12("en-GB"),
            onPressedAmerican: () => speakdisplays12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The display includes examples of her work in progress.",
            kurdishText:
                "پێشانگاکە نموونەی کارەکانی پیشان دەدات کە لە ژێر کارکرداندان.",
            onPressedBritish: () => speakdisplays13("en-GB"),
            onPressedAmerican: () => speakdisplays13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The museum has a display of old medical instruments.",
            kurdishText:
                "مۆزەخانەکە پێشانگایەکی کەرەستە کۆنە پزیشکییەکانی ھەیە.",
            onPressedBritish: () => speakdisplays14("en-GB"),
            onPressedAmerican: () => speakdisplays14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "There was a prominent display of her photographs in the living room.",
            kurdishText:
                "خستنەڕوویەکی لەبەرچاوی وێنەکانی لە ژووری میوانییەکە بوو.",
            onPressedBritish: () => speakdisplays15("en-GB"),
            onPressedAmerican: () => speakdisplays15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) پیشاندانی شتێک یان ئەنجامدانی شارەزاییەک"),
          SentencesRow(
            englishText: "They put on a spectacular firework display.",
            kurdishText: "نمایشێکی یاری ئاگرینی ناوازە دەخەنەڕوو.",
            onPressedBritish: () => speakdisplays16("en-GB"),
            onPressedAmerican: () => speakdisplays16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The team produced an impressive display.",
            kurdishText: "تیمەکە نمایشێکی بەشکۆی پیشاندا.",
            onPressedBritish: () => speakdisplays17("en-GB"),
            onPressedAmerican: () => speakdisplays17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Most of the local people attended the firework display.",
            kurdishText:
                "زۆرێک لە خەڵکە ناوخۆییەکە بەژداری نمایشی یارییە ئاگرینەکە بوون.",
            onPressedBritish: () => speakdisplays18("en-GB"),
            onPressedAmerican: () => speakdisplays18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٦. (ناو) دۆخێک کە تێیدا خاسیەتێک، ھەستێک، توانایەک، ھتد پیشان دەدەیت"),
          SentencesRow(
            englishText:
                "There may be specific events which trigger aggressive displays in your dog.",
            kurdishText:
                "ڕەنگە بۆنەی دیاریکراو ھەبێت ببێتە ھۆی پیشاندانی توندوتیژی لە سەگەکەتدا.",
            onPressedBritish: () => speakdisplays19("en-GB"),
            onPressedAmerican: () => speakdisplays19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Despite his outward display of friendliness, I sensed he was concealing something.",
            kurdishText:
                "سەرەڕای نمایشی دۆستانەی ڕووکەشی، ھەستم کرد کە شتێکی دەشاردەوە.",
            onPressedBritish: () => speakdisplays20("en-GB"),
            onPressedAmerican: () => speakdisplays20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "I witnessed a rare display of affection between them.",
            kurdishText:
                "چاوم بە پیشاندانێکی دەگمەنی ھەست و سۆز کەوت لە نێوانیاندا.",
            onPressedBritish: () => speakdisplays21("en-GB"),
            onPressedAmerican: () => speakdisplays21("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٧. (ناو) ئەوەی لەسەر شاشەی کۆمپیوتەرێک دەردەکەوێت"),
          SentencesRow(
            englishText: "The display shows the time in hours and minutes.",
            kurdishText: "شاشەکە کات بە کاتژمێر و خولەک پیشان دەدات.",
            onPressedBritish: () => speakdisplays22("en-GB"),
            onPressedAmerican: () => speakdisplays22("en-US"),
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
- Verb: display (derived forms: displaying, displayed, displays)
1. To show, make visible or apparent (= expose, exhibit)
"National leaders will have to display the highest skills of statesmanship";
 
2. Attract attention by displaying some body part or posing; of animals

- Noun: display (derived forms: displays)
1. Something intended to communicate a particular impression (= show)
"made a display of strength";
 
2. Something shown to the public (= exhibit, showing)
"the museum had many displays of oriental art";
 
3. A visual representation of something (= presentation)
 
4. Behaviour that makes your feelings public
"a display of emotion"
 
5. Exhibiting openly in public view
"a display of courage"
 
6. An electronic device that represents information in visual form (= video display)
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

  final String _videoId = 'BxWw8AO4ZmI';
  final double _startSeconds = 16;

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

  final String _videoId = 'AF8d72mA41M';
  final double _startSeconds = 1656;

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

  final String _videoId = 's3B-qp3U5G0';
  final double _startSeconds = 163;

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

  final String _videoId = 's3B-qp3U5G0';
  final double _startSeconds = 161;

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

  final String _videoId = 'P8m-KThvtxA';
  final double _startSeconds = 613;

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

  final String _videoId = 'dtp6b76pMak';
  final double _startSeconds = 93;

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

  final String _videoId = 'oD9BaNAH-eE';
  final double _startSeconds = 1592;

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