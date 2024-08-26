import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycrush extends StatefulWidget {
  const EnglishEntrycrush({super.key});

  @override
  State<EnglishEntrycrush> createState() => _EnglishEntrycrushState();
}

class _EnglishEntrycrushState extends State<EnglishEntrycrush> {
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
    return const EntryTitle(word: "crush");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crush");
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
    return const IPAofEnglish(text: "IpaUK: /krʌʃ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrush(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("crush");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrush("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /krʌʃ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrush(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("crush");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrush("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrushs1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The car was completely crushed under the truck.");
  }

  Future<void> speakcrushs2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("His hand was badly crushed in the accident.");
  }

  Future<void> speakcrushs3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He was crushed beneath a bus.");
  }

  Future<void> speakcrushs4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Add two cloves of crushed garlic.");
  }

  Future<void> speakcrushs5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Crush the biscuits finely before adding them to the mixture.");
  }

  Future<void> speakcrushs6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She was crushed against the wall.");
  }

  Future<void> speakcrushs7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Over twenty prisoners were crushed into a small dark cell.");
  }

  Future<void> speakcrushs8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She crushed the scrap of paper in her hand.");
  }

  Future<void> speakcrushs9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The army was sent in to crush the rebellion.");
  }

  Future<void> speakcrushs10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Attempts to crush serious popular unrest led to civil war.");
  }

  Future<void> speakcrushs11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She felt completely crushed by the teacher's criticism.");
  }

  Future<void> speakcrushs12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I couldn't find a way through the crush.");
  }

  Future<void> speakcrushs13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("66 fans died in the crush on the steps of the stadium.");
  }

  Future<void> speakcrushs14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It's only a schoolgirl crush, it'll pass.");
  }

  Future<void> speakcrushs15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I had a huge crush on her.");
  }

  Future<void> speakcrushs16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He thought you were flirting with his crush.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: کۆمەڵ، دەستە، گروپ، خەڵک،	چڕەبەندان، قەرەباڵغی، شانەچرکێ، پاڵەپەستۆ، شانەترنجێ، شلووقایی، تێ‌ڕژاوی، گوڕمۆرە، جەنجاڵ، ئاپۆرە،	خۆشاو، شەربەت،	مایەدانان، خاترویستن،	حەز یان دڵداری کورت‌ماوە،	ئاوی میوە، خۆشاو
"""),
          const DefinitionKurdish(
              text:
                  "١. (کردار) پەستان خستنە سەر شتێک بەشێوەیەک کە زیانی پێدەگات یان شێوەی دەگۆڕێت"),
          SentencesRow(
            englishText: "The car was completely crushed under the truck.",
            kurdishText: "ئۆتۆمبێلەکە بە تەواوی لەژێر بارھەڵگرەکەدا تلیقا.",
            onPressedBritish: () => speakcrushs1("en-GB"),
            onPressedAmerican: () => speakcrushs1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "His hand was badly crushed in the accident.",
            kurdishText: "دەستەکانی بەخراپی لە ڕووداوەکەدا فلیقان.",
            onPressedBritish: () => speakcrushs2("en-GB"),
            onPressedAmerican: () => speakcrushs2("en-US"),
          ),
          SentencesRow(
            englishText: "He was crushed beneath a bus.",
            kurdishText: "لەژێر پاسەکەدا جلیقایەوە.",
            onPressedBritish: () => speakcrushs3("en-GB"),
            onPressedAmerican: () => speakcrushs3("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (کردار) شکاندن بۆ پارچەی بچووک یان کردن بە ھاڕاوە"),
          SentencesRow(
            englishText: "Add two cloves of crushed garlic.",
            kurdishText: "دوو سەلکی وردکراوی سیر زیاد بکە.",
            onPressedBritish: () => speakcrushs4("en-GB"),
            onPressedAmerican: () => speakcrushs4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Crush the biscuits finely before adding them to the mixture.",
            kurdishText:
                "بسکیتەکان بە باشی ورد بکە پێش ئەوەی زیادیان بکەیت بۆ تێکەڵەکە.",
            onPressedBritish: () => speakcrushs5("en-GB"),
            onPressedAmerican: () => speakcrushs5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (کردار) پاڵنان یان پەستاندنە ناو شوێنێکی بچووک"),
          SentencesRow(
            englishText: "She was crushed against the wall.",
            kurdishText: "پاڵنرایە دیوارەکەوە.",
            onPressedBritish: () => speakcrushs6("en-GB"),
            onPressedAmerican: () => speakcrushs6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Over twenty prisoners were crushed into a small dark cell.",
            kurdishText:
                "زیاد لە بیست زیندانی پەستێنرانە ناو بەندێکی بچووکی تاریک.",
            onPressedBritish: () => speakcrushs7("en-GB"),
            onPressedAmerican: () => speakcrushs7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) وابکەیت شتێک پڕ لە چرچ و لۆچی بێت"),
          SentencesRow(
            englishText: "She crushed the scrap of paper in her hand.",
            kurdishText: "پارچە کاغەزەکەی لۆچ کرد لە دەستیدا.",
            onPressedBritish: () => speakcrushs8("en-GB"),
            onPressedAmerican: () => speakcrushs8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٥. (کردار) بەکارھێنانی ڕێگای توندوتیژانە بۆ بەزاندنی کەسێک"),
          SentencesRow(
            englishText: "The army was sent in to crush the rebellion.",
            kurdishText: "سوپا نێردرا بۆ ئەوەی شۆڕشەکە سەرکوت بکات.",
            onPressedBritish: () => speakcrushs9("en-GB"),
            onPressedAmerican: () => speakcrushs9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Attempts to crush serious popular unrest led to civil war.",
            kurdishText:
                "ھەوڵەکان بۆ دامرکاندنەوەی پشێوەی ڕای گشتی گەشت بە شەڕی ناوخۆ.",
            onPressedBritish: () => speakcrushs10("en-GB"),
            onPressedAmerican: () => speakcrushs10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) لەناوبردنی متمانە و خۆشبەختی کەسێک"),
          SentencesRow(
            englishText:
                "She felt completely crushed by the teacher's criticism.",
            kurdishText:
                "تەواو ھەستی بە تێکشکاوی کرد بەھۆی سەرزەنشتی مامۆستاکەی.",
            onPressedBritish: () => speakcrushs11("en-GB"),
            onPressedAmerican: () => speakcrushs11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (ناو) ژمارەیەک خەڵکی کە پێکەوە لە شوێنێکی تەنگدا کۆکراونەتەوە"),
          SentencesRow(
            englishText: "I couldn't find a way through the crush.",
            kurdishText: "نەمتوانی ڕێگایەک بەناو قەرەباڵغییەکەدا بدۆمەوە.",
            onPressedBritish: () => speakcrushs12("en-GB"),
            onPressedAmerican: () => speakcrushs12("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "66 fans died in the crush on the steps of the stadium.",
            kurdishText: "٦٦ ھاندەر مردن لە جەنجاڵیدا لەسەر پلەکانی یاریگاکە.",
            onPressedBritish: () => speakcrushs13("en-GB"),
            onPressedAmerican: () => speakcrushs13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (کردار) ھەستێکی خۆشەویستی کە بۆ کەسێکت ھەیە و زۆر ناخایەنێت؛ کەسێک کە ئەم جۆرە خۆشەویستییە ھەیە بۆی"),
          SentencesRow(
            englishText: "It's only a schoolgirl crush, it'll pass.",
            kurdishText: "تەنھا  دڵدارییە بۆ کچە قوتابییەک، زوو تێدەپەڕێت.",
            onPressedBritish: () => speakcrushs14("en-GB"),
            onPressedAmerican: () => speakcrushs14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I had a huge crush on her.",
            kurdishText: "ئەویندارییەکی زۆرم بۆی ھەبوو.",
            onPressedBritish: () => speakcrushs15("en-GB"),
            onPressedAmerican: () => speakcrushs15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He thought you were flirting with his crush.",
            kurdishText: "وای بیردەکردەوە لەگەڵ دڵدارەکەی ڕادەبوێریت.",
            onPressedBritish: () => speakcrushs16("en-GB"),
            onPressedAmerican: () => speakcrushs16("en-US"),
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
- Verb: crush (derived forms: crushed, crushing, crushes)
1. Use force to compress, making out of normal shape or condition (= squash, squelch, mash, squeeze, squidge [informal], squish [informal])
"crush an aluminium can";
 
2. Dominate or subjugate by unjust use of one's authority and power (= oppress, suppress)
"The government crushes political activists";
 
3. Come out better in a competition, race, or conflict (= beat, beat out, shell, trounce, vanquish)
 
4. Break into small pieces
"The car crushed the toy"
 
5. Humiliate or depress completely (=smash)
"She was crushed by his refusal of her invitation";
 
6. Hurt or bruise with a squashing force (= jam)
"crush a toe";
 
7. Make ineffective (= break down)
"Martin Luther King tried to crush racial discrimination";
 
8. Become injured, broken, or distorted by pressure
"The plastic bottle crushed against the wall"

- Noun: crush (derived forms: crushes)
1. Leather that has had its grain pattern accentuated (= crushed leather)
 
2. A dense crowd of people (= jam, press)
 
3. [informal] Temporary love of an adolescent (= puppy love, calf love, infatuation)
 
4. The act of crushing (= crunch, compaction)
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

  final String _videoId = 'tK-tq3OfPF8';
  final double _startSeconds = 134;

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

  final String _videoId = 'zqllxbPWKNI';
  final double _startSeconds = 1485;

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

  final String _videoId = 'lsFPbgK1v9I';
  final double _startSeconds = 325;

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
  final double _startSeconds = 968;

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

  final String _videoId = 'AwhBTrzzqeg';
  final double _startSeconds = 53;

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

  final String _videoId = 'xVQxvthAcLU';
  final double _startSeconds = 820;

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

  final String _videoId = '10FiSsim_a4';
  final double _startSeconds = 271;

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