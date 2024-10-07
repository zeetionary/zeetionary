import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrycrown extends StatefulWidget {
  const EnglishEntrycrown({super.key});

  @override
  State<EnglishEntrycrown> createState() => _EnglishEntrycrownState();
}

class _EnglishEntrycrownState extends State<EnglishEntrycrown> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 90,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EntryAndIPA(),
                          ],
                        ),
                      ],
                    ),
                  ),
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
    return const EntryTitle(word: "crown");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: crown");
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
    return const IPAofEnglish(text: "IpaUK: /kraʊn/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrown(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("crown");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakcrown("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /kraʊn/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrown(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("crown");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakcrown("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakcrowns1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The crown was placed upon the new monarch's head.");
  }

  Future<void> speakcrowns2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Who's appearing for the Crown in this case?");
  }

  Future<void> speakcrowns3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She refused the crown.");
  }

  Future<void> speakcrowns4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He succeeded to the crown of Spain.");
  }

  Future<void> speakcrowns5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("In 1553 the crown passed from Edward VI to Mary.");
  }

  Future<void> speakcrowns6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The princess wore a crown of roses at the party.");
  }

  Future<void> speakcrowns7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She is determined to retain her Wimbledon crown.");
  }

  Future<void> speakcrowns8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She swept her hair into a bun on the crown of her head.");
  }

  Future<void> speakcrowns9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "The castle was built on the crown of the hill for strategic advantage.");
  }

  Future<void> speakcrowns10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Roses bloom on shoots that sprout from the crown of the plant.");
  }

  Future<void> speakcrowns11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Nests were built high in the crowns of trees.");
  }

  Future<void> speakcrowns12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "After the accident, he needed a crown to repair the fractured tooth.");
  }

  Future<void> speakcrowns13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Queen Elizabeth was crowned in 1953.");
  }

  Future<void> speakcrowns14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The prince was soon to be crowned King of England.");
  }

  Future<void> speakcrowns15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The church was crowned with golden domes.");
  }

  Future<void> speakcrowns16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Their efforts were finally crowned with success.");
  }

  Future<void> speakcrowns17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I felt like crowning him.");
  }

  Future<void> speakcrowns18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I've had one of my teeth crowned.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const KurdishVocabulary(text: """
کوردی: تاج،	پاتشایەتی، تاج‌وتەخت، تەخت‌وتاج،	تاجەگوڵ،	نیشان یان دروشمی تاج،	بەڕێوەبەرایەتی یان ھێز و دەسەڵاتی شا یان شاژن،	سەرناوی قارەمانی،	خەڵات،	نووک، سەر، بەشی سەرەوە، سەرکەل، تەوق، نووچکە، تەپڵ،	تاجی ددان، ڕووپۆشی ددان،	ترۆپک، دوند، لووتکە
"""),
          const DefinitionKurdish(text: "١. (ناو) تاجی پاشا و شاژن"),
          SentencesRow(
            englishText: "The crown was placed upon the new monarch's head.",
            kurdishText: "تاجەکە لەسەری پاشا/شاژنە تازەکە دانرا.",
            onPressedBritish: () => speakcrowns1("en-GB"),
            onPressedAmerican: () => speakcrowns1("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٢. (ناو) حکومەتی وڵاتێک کە پاشا یان شاژنێکی ھەیە"),
          SentencesRow(
            englishText:
                "Who's appearing for the Crown (= bringing a criminal charge against somebody on behalf of the state) in this case?",
            kurdishText: "کێ لەم کەیسەدا نوێنەری حکومەت دەکات؟",
            onPressedBritish: () => speakcrowns2("en-GB"),
            onPressedAmerican: () => speakcrowns2("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (ناو) پێگەی پاشایەتی یان شاژنی"),
          SentencesRow(
            englishText: "She refused the crown (= refused to become queen).",
            kurdishText: "تەختەکەی ڕەتکردەوە.",
            onPressedBritish: () => speakcrowns3("en-GB"),
            onPressedAmerican: () => speakcrowns3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He succeeded to the crown of Spain.",
            kurdishText: "چووە سەر تەختی شاھانەی ئیسپانیا.",
            onPressedBritish: () => speakcrowns4("en-GB"),
            onPressedAmerican: () => speakcrowns4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "In 1553 the crown passed from Edward VI to Mary.",
            kurdishText:
                "لە ساڵی ١٥٣٣ تەختەکە لە ئێدواردەوە بۆ ماری گوازرایەوە.",
            onPressedBritish: () => speakcrowns5("en-GB"),
            onPressedAmerican: () => speakcrowns5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٤. (ناو) تاجە گوڵینە کە لەسەر دەکرێت"),
          SentencesRow(
            englishText: "The princess wore a crown of roses at the party.",
            kurdishText: "شازادە خاتوون تاجەگوڵینەیەکی لەسەر کرد لە ئاھەنگەکە.",
            onPressedBritish: () => speakcrowns6("en-GB"),
            onPressedAmerican: () => speakcrowns6("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (ناو) پێگەی بردنەوەی پێشبڕکێیەکی وەرزشی"),
          SentencesRow(
            englishText: "She is determined to retain her Wimbledon crown.",
            kurdishText: "سوورە لەسەر ئەوەی نازناوی ویمبڵدۆنی بپارێزێت.",
            onPressedBritish: () => speakcrowns7("en-GB"),
            onPressedAmerican: () => speakcrowns7("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (ناو) بەشی سەرەوەی سەر یان کڵاوێک"),
          SentencesRow(
            englishText:
                "She swept her hair into a bun on the crown of her head.",
            kurdishText: "قوتکەقژێکی دانا لەسەر تەپڵە سەری دانا.",
            onPressedBritish: () => speakcrowns8("en-GB"),
            onPressedAmerican: () => speakcrowns8("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (ناو) بەرزترین بەشی شتێک"),
          SentencesRow(
            englishText:
                "The castle was built on the crown of the hill for strategic advantage.",
            kurdishText:
                "قەڵاکە لەسەر لوتکەی گردەکە بنیات نرابوو بۆ سوودی ستراتیژی.",
            onPressedBritish: () => speakcrowns9("en-GB"),
            onPressedAmerican: () => speakcrowns9("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (ناو) بەشێکی ڕووەکێک کە ڕاستەوخۆ لەسەر یان ژێری خاکەوەیە"),
          SentencesRow(
            englishText:
                "Roses bloom on shoots that sprout from the crown of the plant.",
            kurdishText:
                "گوڵ گەشەی کردووە لەو نەمامانەوەی کە لە چەکەرەی ڕووەکەکەوە چرۆیان کردووە.",
            onPressedBritish: () => speakcrowns10("en-GB"),
            onPressedAmerican: () => speakcrowns10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (ناو) بەشی سەرەوەی ڕووەکێک"),
          SentencesRow(
            englishText: "Nests were built high in the crowns of trees.",
            kurdishText: "ھێلانە بەرز لە ترۆپکی دارەکان درووستکران.",
            onPressedBritish: () => speakcrowns11("en-GB"),
            onPressedAmerican: () => speakcrowns11("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٠. (ناو) ڕووپۆشێک بۆ ددانێک شکاو"),
          SentencesRow(
            englishText:
                "After the accident, he needed a crown to repair the fractured tooth.",
            kurdishText:
                "لە دوای ڕووداوەکە، پێویستی بە ڕووکەشێکی ددان بوو بۆ چاککردنەوەی ددانە شکاوەکەی.",
            onPressedBritish: () => speakcrowns12("en-GB"),
            onPressedAmerican: () => speakcrowns12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (کردار) ناساندن وەک پاشا یان شاژن"),
          SentencesRow(
            englishText: "Queen Elizabeth was crowned in 1953.",
            kurdishText: "شاژن ئیلیزابێس لە ساڵی ١٩٥٣ تاجی لەسەر نرا.",
            onPressedBritish: () => speakcrowns13("en-GB"),
            onPressedAmerican: () => speakcrowns13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The prince was soon to be crowned King of England.",
            kurdishText: "شازادەکە زوو دەبوو بە شازادەی جێنشینی ئینگلتەرە.",
            onPressedBritish: () => speakcrowns14("en-GB"),
            onPressedAmerican: () => speakcrowns14("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٢. (کردار) داپۆشین یان پێکھێنانی بەشی سەرەوە شتێک"),
          SentencesRow(
            englishText: "The church was crowned with golden domes.",
            kurdishText: "کڵێساکە گومەزەیەکی زێڕینی لەسەر دانرا.",
            onPressedBritish: () => speakcrowns15("en-GB"),
            onPressedAmerican: () => speakcrowns15("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٣. (کردار) تەواوکردنی شتێک یان وای لێ بکەیت بێ‌خەوش بێت"),
          SentencesRow(
            englishText: "Their efforts were finally crowned with success.",
            kurdishText: "ھەوڵەکانیان لە کۆتاییدا بە سەرکەوتن پاداشت درایەوە.",
            onPressedBritish: () => speakcrowns16("en-GB"),
            onPressedAmerican: () => speakcrowns16("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٣. (کردار) لێدان لەسەر سەر"),
          SentencesRow(
            englishText: "I felt like crowning him.",
            kurdishText: "حەزم دەکرد بکێشم پێیدا.",
            onPressedBritish: () => speakcrowns17("en-GB"),
            onPressedAmerican: () => speakcrowns17("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٤. (کردار) دانانی داپۆشەرێک لەسەر ددان"),
          SentencesRow(
            englishText: "I've had one of my teeth crowned.",
            kurdishText: "یەکێک لە ددانەکانم تاجکراوە.",
            onPressedBritish: () => speakcrowns18("en-GB"),
            onPressedAmerican: () => speakcrowns18("en-US"),
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
- Verb: crown (derived forms: crowning, crowned, crowns)
1. Invest with regal power; enthrone (= coronate)
"The prince was crowned in Westminster Abbey";
 
2. Be the culminating event (= top)
"The speech crowned the meeting";
 
3. Form the topmost part of
"A weather vane crowns the building"
 
4. Put an enamel cover on
"crown my teeth"

- Noun: crown (derived forms: crowns)
1. The part of a tooth above the gum that is covered with enamel
 
2. A wreath or garland worn on the head to signify victory
 
3. An ornamental jewelled headdress signifying sovereignty (= diadem)
 
4. The part of a hat (the vertex) that covers the crown of the head
 
5. An English coin worth 5 shillings
 
6. The upper branches and leaves of a tree or other plant (= treetop)
 
7. The highest or extreme point of something (usually a mountain or hill) (= peak, crest, top, tip, summit)
"the view from the crown was magnificent";
 
8. The award given to the champion (= pennant)
 
9. The top of the head (= pate, poll, vertex)
 
10. (dentistry) dental appliance consisting of an artificial crown for a broken or decayed tooth (= crownwork, jacket, jacket crown, cap)
"tomorrow my dentist will fit me for a crown";
 
11. The centre of a cambered road (= crest)

- Noun: Crown (derived forms: Crowns)
1. The Crown (or the reigning monarch) as the symbol of the power and authority of a monarchy
"the colonies revolted against the Crown"
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

  final String _videoId = 'Iwa39iZ0zHo';
  final double _startSeconds = 1241;

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

  final String _videoId = '2A1VhtcDYNQ';
  final double _startSeconds = 61;

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

  final String _videoId = 'kZLKLQwsh6A';
  final double _startSeconds = 483;

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

  final String _videoId = '9sjyMZfijFI';
  final double _startSeconds = 85;

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

  final String _videoId = 'HDntl7yzzVI';
  final double _startSeconds = 1613;

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

  final String _videoId = 'D-2799Y07Zc';
  final double _startSeconds = 631;

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
  final double _startSeconds = 1183;

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