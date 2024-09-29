import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydark extends StatefulWidget {
  const EnglishEntrydark({super.key});

  @override
  State<EnglishEntrydark> createState() => _EnglishEntrydarkState();
}

class _EnglishEntrydarkState extends State<EnglishEntrydark> {
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
    return const EntryTitle(word: "dark");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: dark");
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
    return const IPAofEnglish(text: "IpaUK: /dɑːk/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdark(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("dark");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdark("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dɑːrk/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdark(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("dark");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdark("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdarks1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("What time does it get dark in summer?");
  }

  Future<void> speakdarks2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It was dark outside and I couldn't see much.");
  }

  Future<void> speakdarks3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The sky was still dark.");
  }

  Future<void> speakdarks4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The sky was still dark.");
  }

  Future<void> speakdarks5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Use lights to illuminate dark corners.");
  }

  Future<void> speakdarks6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("As it grew dark, they gathered round the fire.");
  }

  Future<void> speakdarks7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She has dark hair.");
  }

  Future<void> speakdarks8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was tall, dark and handsome.");
  }

  Future<void> speakdarks9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He wore a dark suit and a plain tie.");
  }

  Future<void> speakdarks10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The dark clouds in the sky meant that a storm was coming.");
  }

  Future<void> speakdarks11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was handsome with dark eyes.");
  }

  Future<void> speakdarks12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Sue has long dark hair.");
  }

  Future<void> speakdarks13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Even if you have dark skin, you still need protection from the sun.");
  }

  Future<void> speakdarks14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was a dark handsome stranger.");
  }

  Future<void> speakdarks15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There are no dark secrets in our family.");
  }

  Future<void> speakdarks16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("There was a darker side to his nature.");
  }

  Future<void> speakdarks17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("My mind was full of dark thoughts.");
  }

  Future<void> speakdarks18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The film is a dark vision of the future.");
  }

  Future<void> speakdarks19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Are the children afraid of the dark?");
  }

  Future<void> speakdarks20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("All the lights went out and we were left in the dark.");
  }

  Future<void> speakdarks21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I hate getting up in the dark.");
  }

  Future<void> speakdarks22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("We could just make out some figures in the gathering dark.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: تاریک، ئەنگوستەچاو، زەنگ، بێ‌شەوق، تار، ناڕۆشن،	(ڕەنگ) تۆخ، توند، تێر، پڕڕەنگ،	(پێست، قژ و ھتد) سەوزە، ڕەشتاڵە، مەیلەوڕەش، ڕەشباو.	ڕەش،	نھێنی، پەنامەکی،	تێگەیشتن‌سەخت، شاراوە، تەماوی، نادیار، لێڵ، ڕوون نییە، نامەعلووم،	خەماوی، مایەی خەمباری، دڵتەنگ‌کەر، خەفەتاوی، جێی‌خەم،	خراپ، ترسناک، شەیتانی، پیس،	نەناسراو،	تاریکی، تاری، ناڕۆشنی،	ئاوابوون، خۆراوابوون، شەوداھاتن،	ڕەشی،	(وێنەکێشی) سێبەر،	ڕەنگی تۆخ یان توند،	نەزانی، نائاگاداری، بێ‌خەبەری،	شاراوەیی، نادیاری، نھێنی‌بوون، پشت‌پەردە 
"""),
          const DefinitionKurdish(text: "١. (ھاوەڵناو) تاریک"),
          SentencesRow(
            englishText: "What time does it get dark in summer?",
            kurdishText: "کاتژمێر چەند لە ھاویندا تاریک دادێت؟",
            onPressedBritish: () => speakdarks1("en-GB"),
            onPressedAmerican: () => speakdarks1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "It was dark outside and I couldn't see much.",
            kurdishText: "دەرەوە تاریک بوو و نەمدەتوانی زۆر ببینم.",
            onPressedBritish: () => speakdarks2("en-GB"),
            onPressedAmerican: () => speakdarks2("en-US"),
          ),
          Column(
            children: [
              MyExpansionTile(
                children: [
                  SentencesRow(
                    englishText: "The sky was still dark.",
                    kurdishText: "ئاسمان ھێشتا تاریک بوو.",
                    onPressedBritish: () => speakdarks3("en-GB"),
                    onPressedAmerican: () => speakdarks3("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "The sky was still dark.",
                    kurdishText: "ئاسمان ھێشتا تاریک بوو.",
                    onPressedBritish: () => speakdarks4("en-GB"),
                    onPressedAmerican: () => speakdarks4("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText: "Use lights to illuminate dark corners.",
                    kurdishText:
                        "ڕۆشنایی بەکاربھێنە بۆ ڕۆشنکردنەوەی سووچە تاریکەکان.",
                    onPressedBritish: () => speakdarks5("en-GB"),
                    onPressedAmerican: () => speakdarks5("en-US"),
                  ),
                  const DividerSentences(),
                  SentencesRow(
                    englishText:
                        "As it grew dark, they gathered round the fire.",
                    kurdishText: "کە تاریکی کرد، لە دەوری ئاگرەکە کۆبوونەوە.",
                    onPressedBritish: () => speakdarks6("en-GB"),
                    onPressedAmerican: () => speakdarks6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ھاوەڵناو) ڕەنگی تۆخ؛ ڕەنگی نزیک لە ڕەش وەک لە سپی"),
          SentencesRow(
            englishText: "She has dark hair.",
            kurdishText: "قژێکی تاریکی ھەیە.",
            onPressedBritish: () => speakdarks7("en-GB"),
            onPressedAmerican: () => speakdarks7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He was tall, dark (= with black/brown hair) and handsome.",
            kurdishText: "درێژ و ئەسمەر و قۆز بوو.",
            onPressedBritish: () => speakdarks8("en-GB"),
            onPressedAmerican: () => speakdarks8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ھاوەڵناو) ھەبوونی ڕەنگی تاریک"),
          SentencesRow(
            englishText: "He wore a dark suit and a plain tie.",
            kurdishText: "قاتێکی تۆخ و بۆینباخێکی سادەی لەبەرکرد.",
            onPressedBritish: () => speakdarks9("en-GB"),
            onPressedAmerican: () => speakdarks9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "The dark clouds in the sky meant that a storm was coming.",
            kurdishText:
                "ھەورە تاریکەکان لە ئاسماندا واتای ئەوە بوون کە زریانێک بەڕێوەیە.",
            onPressedBritish: () => speakdarks10("en-GB"),
            onPressedAmerican: () => speakdarks10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ھاوەڵناو) ڕەنگی قاوەیی یان ڕەش"),
          SentencesRow(
            englishText: "He was handsome with dark eyes.",
            kurdishText: "قۆز و چاو ڕەش بوو.",
            onPressedBritish: () => speakdarks11("en-GB"),
            onPressedAmerican: () => speakdarks11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Sue has long dark hair.",
            kurdishText: "قژی درێژی ڕەشی ھەیە.",
            onPressedBritish: () => speakdarks12("en-GB"),
            onPressedAmerican: () => speakdarks12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Even if you have dark skin, you still need protection from the sun.",
            kurdishText:
                "ئەگەرچی پێستی تاریکت ھەیە، ھێشتا پێویستیت بە پارێزەر لە خۆر ھەیە.",
            onPressedBritish: () => speakdarks13("en-GB"),
            onPressedAmerican: () => speakdarks13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ھاوەڵناو) کەسێک کە قژ، چاو، ھتد ـی ڕەشی ھەیە"),
          SentencesRow(
            englishText: "He was a dark handsome stranger.",
            kurdishText: "نەناسێکی قۆزی ڕەشتاڵ بوو.",
            onPressedBritish: () => speakdarks14("en-GB"),
            onPressedAmerican: () => speakdarks14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ھاوەڵناو) شاراوە و نەزانراو"),
          SentencesRow(
            englishText: "There are no dark secrets in our family.",
            kurdishText: "ھیچ نھێنییەکی شاراوە لە ماڵماندا نییە.",
            onPressedBritish: () => speakdarks15("en-GB"),
            onPressedAmerican: () => speakdarks15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (ھاوەڵناو) ترسناک و خراپ"),
          SentencesRow(
            englishText: "There was a darker side to his nature.",
            kurdishText: "لایەنێکی شەیتانی ھەبوو لە سرووشتیدا.",
            onPressedBritish: () => speakdarks16("en-GB"),
            onPressedAmerican: () => speakdarks16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "My mind was full of dark thoughts.",
            kurdishText: "مێشکم پڕ لە بیرکردنەوەی شەیتانی بوو.",
            onPressedBritish: () => speakdarks17("en-GB"),
            onPressedAmerican: () => speakdarks17("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٨. (ھاوەڵناو) ناخۆش و بێ‌ھیوا"),
          SentencesRow(
            englishText: "The film is a dark vision of the future.",
            kurdishText: "فیلمەکە وێنایەکی تاریکی داھاتووە.",
            onPressedBritish: () => speakdarks18("en-GB"),
            onPressedAmerican: () => speakdarks18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (ناو) تاریکی"),
          SentencesRow(
            englishText: "Are the children afraid of the dark?",
            kurdishText: "منداڵەکان لە تاریکی دەترسن؟",
            onPressedBritish: () => speakdarks19("en-GB"),
            onPressedAmerican: () => speakdarks19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "All the lights went out and we were left in the dark.",
            kurdishText: "ھەموو لایتەکان کوژانەوە و لە تاریکییەکە ماینەوە.",
            onPressedBritish: () => speakdarks20("en-GB"),
            onPressedAmerican: () => speakdarks20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I hate getting up in the dark.",
            kurdishText: "ڕقم لێیە لە تاریکتدا ھەستم.",
            onPressedBritish: () => speakdarks21("en-GB"),
            onPressedAmerican: () => speakdarks21("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "We could just make out some figures in the gathering dark.",
            kurdishText:
                "دەمانتوانی تەنھا شێوەی چەند کەسێک بناسینەوە لە تاریکییەکەدا.",
            onPressedBritish: () => speakdarks22("en-GB"),
            onPressedAmerican: () => speakdarks22("en-US"),
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

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Adjective: dark (derived forms: darker, darkest)
1. Brunet (used of hair, skin or eyes)
"dark eyes"
 
2. Devoid of or deficient in light or brightness; shadowed or black
"sitting in a dark corner"; "a dark day"; "dark shadows"; "dark as the inside of a black cat"
 
3. (used of colour) having a dark hue
"dark green"; "dark glasses"; "dark colours like wine red or navy blue"
 
4. Stemming from evil characteristics or forces; wicked or dishonourable (= black, sinister)
"Darth Vader of the dark side"; "a dark purpose"; "dark undercurrents of ethnic hostility";
 
5. Secret
"keep it dark"
 
6. Showing a brooding ill humour (= dour, glowering, glum, moody, morose, saturnine, sour, sullen)
"a dark scowl";
 
7. Lacking enlightenment, knowledge or culture (= benighted)
"the dark ages"; "a dark age in the history of education";
 
8. Marked by difficulty of style or expression (= obscure)
"much that was dark is now quite clear to me";
 
9. Causing dejection (= blue [informal], dingy, disconsolate, dismal, gloomy, grim, sorry, drab, drear, dreary)
"the dark days of the war"; "a dark gloomy day";
 
10. Not giving performances; closed
"the theatre is dark on Mondays"

- Noun: dark (derived forms: darks)
1. Absence of light or illumination (= darkness)
 
2. Absence of moral or spiritual values (= wickedness, darkness)
"the powers of dark";
 
3. An unilluminated area (= darkness, shadow)
"he moved off into the dark";
 
4. The time after sunset and before sunrise while it is dark outside (= night, nighttime)
 
5. An unenlightened state (= darkness)
"he was in the dark concerning their intentions";
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

  final String _videoId = 'mvY7VtKvf7o';
  final double _startSeconds = 353;

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

  final String _videoId = 'hTqtGJwsJVE';
  final double _startSeconds = 2704;

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

  final String _videoId = 'zmEv7vTOQGE';
  final double _startSeconds = 3503;

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

  final String _videoId = 'r5cqa9V0mUo';
  final double _startSeconds = 210;

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

  final String _videoId = 'U1KGRnWjllg';
  final double _startSeconds = 332;

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

  final String _videoId = 'UYce-bq89eI';
  final double _startSeconds = 189;

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

  final String _videoId = 'N3IV7ZJkmj0';
  final double _startSeconds = 38;

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