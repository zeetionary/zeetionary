import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycrop extends StatefulWidget {
  const EnglishEntrycrop({super.key});

  @override
  State<EnglishEntrycrop> createState() => _EnglishEntrycropState();
}

class _EnglishEntrycropState extends State<EnglishEntrycrop> {
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
    return const EntryTitle(word: "crop");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crop");
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
    return const IPAofEnglish(text: "IpaUK: /krɒp/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrop(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("crop");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrop("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /krɑːp/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrop(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("crop");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrop("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrops1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Sugar cane is an important crop on the island.");
  }

  Future<void> speakcrops2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The crops are regularly sprayed with pesticides.");
  }

  Future<void> speakcrops3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Crops are sprayed with highly toxic chemicals to prevent insect damage.");
  }

  Future<void> speakcrops4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Isolated communities were extremely vulnerable if crops failed.");
  }

  Future<void> speakcrops5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Rice is a staple crop for more than half of the world's population.");
  }

  Future<void> speakcrops6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Australia's wheat crop is likely to be lower than forecast this year.");
  }

  Future<void> speakcrops7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We are looking forward to a bumper crop.");
  }

  Future<void> speakcrops8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We had a very good crop of apples last year.");
  }

  Future<void> speakcrops9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She is really the cream of the crop.");
  }

  Future<void> speakcrops10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "He held the reins in one hand and the riding crop in the other.");
  }

  Future<void> speakcrops11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She has her hair cut in a short crop.");
  }

  Future<void> speakcrops12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("His hair had been cropped short and he looked different.");
  }

  Future<void> speakcrops13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He cropped the photo so that only the face remained.");
  }

  Future<void> speakcrops14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The horses were quietly cropping the grass.");
  }

  Future<void> speakcrops15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The potatoes cropped well this year.");
  }

  Future<void> speakcrops16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The river valley is intensively cropped.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: بەرھەم، بەروبۆ، بەروبوو، بەربێڵ، بەرجفت، ڕێژان، ئاژار، داھات، ھاورد، حاسڵ،	دەستە، گروپ، کۆمەڵ، تاقم،	زنجیرە، لیزگە، خێزەرە، ڕێچکە،	چیکڵدانە، گورچوو، جیکەڵدانە، کاسینۆک، ھێڕک، چکڵانە،	شێلاق، تاژان، جەڵدە،	دەسک یان قوڵفەی شێلاق،	قژی کورت، سەری تاشراو
"""),
          const DefinitionKurdish(
              text: "١. (ناو) ڕووەکێک کە بۆ ڕێژەیەکی زۆر دەچێندرێت"),
          SentencesRow(
            englishText: "Sugar cane is an important crop on the island.",
            kurdishText: "قامیشی شەکر بەروبوویەکی گرنگە لە دوورگەکە.",
            onPressedBritish: () => speakcrops1("en-GB"),
            onPressedAmerican: () => speakcrops1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The crops are regularly sprayed with pesticides.",
            kurdishText: "بەروبووەکان زووزوو مێرووکوژیان بەسەردا دەڕژێندرێت.",
            onPressedBritish: () => speakcrops2("en-GB"),
            onPressedAmerican: () => speakcrops2("en-US"),
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
                                    "Crops are sprayed with highly toxic chemicals to prevent insect damage."),
                            ExampleSentenceKurdish(
                                text:
                                    "بەروبووەکان مادەی کیمیایی زۆر ژاراوییان پێدا دەڕژێندرێت بۆ ڕێگری لە زیانی مێروو."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrops3("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrops3("en-US"),
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
                                    "Isolated communities were extremely vulnerable if crops failed."),
                            ExampleSentenceKurdish(
                                text:
                                    "کۆمەڵگە دابڕاوەکان بە تەواوی لە مەترسیدا دەبوون ئەگەر دانەوێڵە لەناوبچوایە."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrops4("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrops4("en-US"),
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
                                    "Rice is a staple crop for more than half of the world's population."),
                            ExampleSentenceKurdish(
                                text:
                                    "برنج بەروبوویەکی سەرەتاییە بۆ زیاتر لە نیوەی دانیشتووانی جیھان."),
                          ],
                        ),
                      ),
                      const CustomSizedBoxForTTS(),
                      Column(
                        children: [
                          CustomIconButtonBritish(
                            onPressed: () => speakcrops5("en-GB"),
                          ),
                          CustomIconButtonAmerican(
                            onPressed: () => speakcrops5("en-US"),
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
              text:
                  "٢. (ناو) ئەو ڕێژەیە لە دانەوێڵە کە لە یەک وەرزدا چێندراوە"),
          SentencesRow(
            englishText:
                "Australia's wheat crop is likely to be lower than forecast this year.",
            kurdishText:
                "بەرھەمی گەنمی ئوسترالیا ئەگەری ھەیە کەمتر بێت لەوەی ئەمساڵ پێشبینی کراوە.",
            onPressedBritish: () => speakcrops6("en-GB"),
            onPressedAmerican: () => speakcrops6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "We are looking forward to a bumper crop (= a very large one).",
            kurdishText: "ئەمساڵ چاوەڕێی بەرھەمێکی زۆر دەکەین.",
            onPressedBritish: () => speakcrops7("en-GB"),
            onPressedAmerican: () => speakcrops7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We had a very good crop of apples last year.",
            kurdishText: "ساڵی پار بەرھەمێکی باشی گەنممان ھەبوو.",
            onPressedBritish: () => speakcrops8("en-GB"),
            onPressedAmerican: () => speakcrops8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٣. (ناو) کۆمەڵە کەسێک کە شتێک لە ھەمان کاتدا دەکەن"),
          SentencesRow(
            englishText:
                "She is really the cream of the crop (= the best in her group).",
            kurdishText: "بە ڕاستی باشترینی گرووپەکەیەتی.",
            onPressedBritish: () => speakcrops9("en-GB"),
            onPressedAmerican: () => speakcrops9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (ناو) جەڵدەیەکی بچووک کە لەلایەن ئەسپسوارانەوە بەکاردێت"),
          SentencesRow(
            englishText:
                "He held the reins in one hand and the riding crop in the other.",
            kurdishText:
                "جڵەوەکە لە دەستێکیدا بوو و شەلاقەکە لە ئەوەکەی دیکەدا.",
            onPressedBritish: () => speakcrops10("en-GB"),
            onPressedAmerican: () => speakcrops10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (ناو) جۆرە قژێکی کورت"),
          SentencesRow(
            englishText: "She has her hair cut in a short crop.",
            kurdishText: "قژی بە کورتی بڕی بوو.",
            onPressedBritish: () => speakcrops11("en-GB"),
            onPressedAmerican: () => speakcrops11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (کردار) بڕینی قژی کەسێک بە کورتی"),
          SentencesRow(
            englishText:
                "His hair had been cropped short and he looked different.",
            kurdishText: "قژی بە کورتی بڕدرابوو و جیاواز دیاربوو.",
            onPressedBritish: () => speakcrops12("en-GB"),
            onPressedAmerican: () => speakcrops12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (کردار) بڕینی بەشێکی وێنەیەک"),
          SentencesRow(
            englishText: "He cropped the photo so that only the face remained.",
            kurdishText: "وێنەکەی بڕی بەشێوەیەک کە تەنھا ڕووخساری مایەوە.",
            onPressedBritish: () => speakcrops13("en-GB"),
            onPressedAmerican: () => speakcrops13("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) خواردنی بەشی سەرەوەی ڕووەک"),
          SentencesRow(
            englishText: "The horses were quietly cropping the grass.",
            kurdishText: "ئەسپەکان بە ھێمنی لە ناو سەوزەگیاکەدا دەلەوەڕین.",
            onPressedBritish: () => speakcrops14("en-GB"),
            onPressedAmerican: () => speakcrops14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (کردار) ھەبوونی بەروبووم"),
          SentencesRow(
            englishText: "The potatoes cropped well this year.",
            kurdishText: "پەتاتەکە ئەمساڵ بەرھەمی باشی بوو.",
            onPressedBritish: () => speakcrops15("en-GB"),
            onPressedAmerican: () => speakcrops15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٠. (کردار) بەکارھێنانی زەوی بۆ بەروبووم"),
          SentencesRow(
            englishText: "The river valley is intensively cropped.",
            kurdishText: "دۆڵی ڕووبارەکە بە گشتگیری چێندراوە.",
            onPressedBritish: () => speakcrops16("en-GB"),
            onPressedAmerican: () => speakcrops16("en-US"),
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
- Noun: crop (derived forms: crops)
1. The yield from plants in a single growing season (= harvest)
 
2. A cultivated plant that is grown commercially on a large scale
 
3. A collection of people or things appearing together
"the annual crop of students brings a new crop of ideas"
 
4. The output of something in a season
"the latest crop of fashions is about to hit the stores"
 
5. The stock or handle of a whip
 
6. A pouch in many birds and some lower animals that resembles a stomach for storage and preliminary maceration of food (= craw)
 
7. A short haircut

- Verb: crop (derived forms: cropped, crops, cropping)
1. Cut short
"She wanted her hair cropped short"
 
2. (farming) prepare for crops (= cultivate, work)
"crop the land";
 
3. Yield crops
"This land crops well"
 
4. Let feed in a field, pasture or meadow (= graze, pasture)
 
5. Feed as in a meadow or pasture (= browse, graze, range, pasture)
"the herd was cropping";
 
6. Cultivate, tend, and cut back the growth of (= snip, clip, trim, lop, dress, prune, cut back)
"crop the plants in the garden";
 
7. To reduce the size of an image by removing undesirable or unnecessary elements
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

  final String _videoId = 'DS8swCK8jq4';
  final double _startSeconds = 19;

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

  final String _videoId = 'wQes-xTzO00';
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

class YoutubeEmbeddedtwo extends StatelessWidget {
  const YoutubeEmbeddedtwo({super.key});

  final String _videoId = '9Amh6yzFwB0';
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

class YoutubeEmbeddedthree extends StatelessWidget {
  const YoutubeEmbeddedthree({super.key});

  final String _videoId = 'bSef4Svuy-M';
  final double _startSeconds = 566;

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

  final String _videoId = 'g8z3A1CUxlw';
  final double _startSeconds = 488;

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

  final String _videoId = 'dxBlE3rwVwc';
  final double _startSeconds = 65;

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

  final String _videoId = 'HKwcc_7S4-k';
  final double _startSeconds = 560;

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