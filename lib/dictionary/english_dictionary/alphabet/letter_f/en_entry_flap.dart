import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryflap extends StatefulWidget {
  const EnglishEntryflap({super.key});

  @override
  State<EnglishEntryflap> createState() => _EnglishEntryflapState();
}

class _EnglishEntryflapState extends State<EnglishEntryflap> {
  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    flutterTts.setLanguage("en-US");
    fetchSentences();
  }

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

  Future<void> stopSpeaking() async {
    await flutterTts.stop();

    setState(() {
      isSpeaking = false;
    });
  }

  final EnglishMeaningConst englishMeaningConst = const EnglishMeaningConst(
    text: """
- Verb: flap (derived forms: flapped, flaps, flapping)
1. (of wings) move up and down with a thrashing motion (= beat)
"The bird flapped its wings";
 
2. Move in a wavy pattern or with a rising and falling motion (= roll, undulate, wave)
"the waves flapped towards the beach";
 
3. To flutter noisily when moved by the wind
"flags flapped in the strong wind"
 
4. Move with a flapping motion (= beat)
"The bird's wings were flapping";
 
5. Make a fuss; be agitated (= dither, pother)
 
6. Pronounce with a flap, of alveolar sounds

- Noun: flap (derived forms: flaps)
1. Any broad thin and limber covering attached at one edge; hangs loose or projects freely
"he wrote on the flap of the envelope"
 
2. [informal] An excited state of agitation (= dither, pother, fuss, tizzy [informal], tizz [informal])
"there was a terrible flap about the theft";
 
3. The motion made by flapping up and down (= flapping, flutter, fluttering)
 
4. A movable piece of tissue partly connected to the body
 
5. A movable airfoil that is part of an aircraft wing; used to increase lift or drag (= flaps)
""",
  );

  final String keyword = "flap";
  List<Map<String, dynamic>> filteredSentences = [];

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

  Future<void> speakheadword(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""flap""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """The officer undid the flap of his holster and drew his gun.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""He was wearing a hat with flaps to cover the ears.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""With a flap of its wings, the bird was gone.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""She gets in a flap over the slightest thing.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Harry’s in a bit of a flap over this interview tomorrow.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """She claimed to have had an affair with the candidate, which produced a huge media flap.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """The pilot lowered the flaps as the aircraft came into land.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The bird flapped its wings and flew away.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The sails flapped in the breeze.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""His coat flapped open.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak("""The man was flapping a large white sheet.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts.speak(
        """There's no need to flap—I've got everything under control.""");
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
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """flap""",
                      // alsoEnglishWord: "also: flap",
                      britshText: """IpaUK: /flæp/""",
                      americanText: """IpaUS: /flæp/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                automaticallyImplyLeading: false,
                bottom: const TabBar(
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
              SingleChildScrollView(
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
              ),
              SingleChildScrollView(
                child: CustomColumnWidget(
                  children: [
                    const DividerDefinition(),
                    const KurdishVocabulary(text: """
کوردی: درگا، سەر، زمانە (گیرفان، بەرگ و ھتد)،	دەنگی شەقەشەق، شەق‌وکوت،	فلەپ، پەردەباڵ، باڵۆچکەی زیادی جووڵۆک، باڵەجووڵە، شەقەباڵ، دەربیجەی باڵ (بەشێ لە باڵی فڕۆکە بۆ کۆنتڕۆڵی بەرز یان نەوی‌بووەنەوەی بەکاردێ)،	پەشۆکان، گێژی، سەرسامی، باری نیگەرانی، ھەژان، ورووژان،	(میز، فڕۆکە) لا، باڵ، بەشی ھەڵواسراوی میز(ی قەدکراو)
"""),
// With short examples define "flap", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) پارچەیەک لە پەڕۆ، کانزا، کاغەز، ھتد کە لە لایەکەوە دەبەسترێتەوە و دادەدرێتەوە یان شتێک دادەپۆشێت"""),
                    SentencesRow(
                      englishText:
                          """The officer undid the flap of his holster and drew his gun.""",
                      kurdishText:
                          """ئەفسەرەکە سەری جێ‌دەمانچەکەی کردەوە و چەکەکەی ڕاکێشا.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He was wearing a hat with flaps to cover the ears.""",
                      kurdishText:
                          """کڵاوێکی گوێداری لەسەر کردبوو بۆ داپۆشینی گوێیەکانی .""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) جوڵەیەکی خێرای دەنگداری شتێک کە بە سەرەوخوار یان لابەلا دەچووڵێت"""),
                    SentencesRow(
                      englishText:
                          """With a flap of its wings, the bird was gone.""",
                      kurdishText: """بە شەقەیەکی باڵەکانی، باڵندەکە ڕۆشت.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (ناو) دۆخی نیگەرانی یان بەجۆشی"""),
                    SentencesRow(
                      englishText:
                          """She gets in a flap over the slightest thing.""",
                      kurdishText: """لەسەر بچووکترین شت دەھەژێت.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Harry’s in a bit of a flap over this interview tomorrow.""",
                      kurdishText:
                          """ھاری لە کەمێک شڵەژاندایە بۆ چاوپێکەوتنەکەی سبەی.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (ناو) ڕەخنە یان تووڕەیی گشتی بۆ شتێک کە کەسێکی ناسراو کردوویەتی یان گوتوویەتی"""),
                    SentencesRow(
                      englishText:
                          """She claimed to have had an affair with the candidate, which produced a huge media flap.""",
                      kurdishText:
                          """بانگەشەی ئەوەی کرد کە پەیوەندیی سۆزداری ھەبووبێت لەگەڵ بەربژێرەکە کە ڕەخنەیەکی توندی میدیای لێکەوتەوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٥. (ناو) بەشێکی باڵی فڕۆکە لە کۆتایی باڵی ڕاست و چەپ کە بۆ سەرەوە و خوارەوە دەجووڵێن کۆنترۆڵی جووڵە دەکات"""),
                    SentencesRow(
                      englishText:
                          """The pilot lowered the flaps as the aircraft came into land.""",
                      kurdishText:
                          """فڕۆکەوانەکە فلاپەکانی داگرت کە فڕۆکەکە ھاتە سەر زەوی.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) کە باڵی باڵندە بۆ سەرەوە و خوارەوە دەجووڵێت"""),
                    SentencesRow(
                      englishText:
                          """The bird flapped its wings and flew away.""",
                      kurdishText: """باڵدەکە دای لە شەقەی باڵ و فڕی.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) جوڵاندنی شتێک بەرەو سەرەوە و خوارەوە یان لە لایەک بۆ لایەکی دیکە"""),
                    SentencesRow(
                      englishText: """The sails flapped in the breeze.""",
                      kurdishText: """چارۆکەکان لە کزە باکەدا دەشەکانەوە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """His coat flapped open.""",
                      kurdishText: """پاڵتۆوەکەی بە لاکاندا کرایەوە.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The man was flapping a large white sheet.""",
                      kurdishText:
                          """پیاوەکە پەڕۆیەکی گەورەی سپی دەشەکاندەوە.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) ڕەفتارکردن بەشێوەیەکی شڵەژاوی یان بەجۆشی"""),
                    SentencesRow(
                      englishText:
                          """There's no need to flap—I've got everything under control.""",
                      kurdishText:
                          """ھیچ ھۆکارێک بۆ شڵەژان نییە ـ ھەموو شتێک لەژێر کۆنترۆڵمە.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                  ],
                ),
              ),
              Consumer(
                builder: (context, ref, child) {
                  if (filteredSentences.isEmpty) {
                    return const NoSentencesFromDatabase();
                  } else {
                    return ListView.builder(
                      itemCount: filteredSentences.length,
                      itemBuilder: (context, index) {
                        final sentence = filteredSentences[index];
                        final showDivider = filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1;
                        return CustomSentenceWidget(
                          englishText: sentence['english'].toString(),
                          frenchText: sentence['french'].toString(),
                          keyword: keyword,
                          onPressedBritish: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-GB",
                          ),
                          onPressedAmerican: () => speakEnglish(
                            sentence['english'].toString(),
                            languageCode: "en-US",
                          ),
                          showDivider: showDivider,
                        );
                      },
                    );
                  }
                },
              ),
              const YouTubeScroller(
                children: [
                  YoutubeEmbeddedone(),
                  YoutubeEmbeddedtwo(),
                  YoutubeEmbeddedthree(),
                  YoutubeEmbeddedfour(),
                  YoutubeEmbeddedfive(),
                  // YoutubeEmbeddedsix(),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const String _videoIdend = '_RSojioTtUU';
const double _startSecondsend = 720;
const String _videoIdone = 'LDP08F3op80';
const double _startSecondsone = 107;
const String _videoIdtwo = '9TugA_z5vQE';
const double _startSecondstwo = 1128;
const String _videoIdthree = 'erDE9B-X7mk';
const double _startSecondsthree = 320;
const String _videoIdfour = 'B35E8QleVhg';
const double _startSecondsfour = 109;
const String _videoIdfive = 'KQWGHE7NTUA';
const double _startSecondsfive = 634;

class YoutubeEmbeddedend extends StatelessWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdend,
      startSeconds: _startSecondsend,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdend,
        startSeconds: _startSecondsend,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdone,
      startSeconds: _startSecondsone,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdone,
        startSeconds: _startSecondsone,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdtwo,
      startSeconds: _startSecondstwo,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdtwo,
        startSeconds: _startSecondstwo,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdthree,
      startSeconds: _startSecondsthree,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdthree,
        startSeconds: _startSecondsthree,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfour,
      startSeconds: _startSecondsfour,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfour,
        startSeconds: _startSecondsfour,
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

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: _videoIdfive,
      startSeconds: _startSecondsfive,
      autoPlay: true,
      params: defaultYoutubePlayerParams,
    );

    void reloadVideo() {
      controller.loadVideoById(
        videoId: _videoIdfive,
        startSeconds: _startSecondsfive,
      );
    }

    return YouTubeVideosScaffold(
      controller: controller,
      onReloadVideo: reloadVideo,
    );
  }
}

// end WORD_WEB