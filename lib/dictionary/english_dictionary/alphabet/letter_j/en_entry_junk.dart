import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryjunk extends StatefulWidget {
  const EnglishEntryjunk({super.key});

  @override
  State<EnglishEntryjunk> createState() => _EnglishEntryjunkState();
}

class _EnglishEntryjunkState extends State<EnglishEntryjunk> {
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
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
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
- Noun: junk (Derived forms: junks)
1. A collection of miscellaneous items of little value
 
2. [informal] Worthless material that is to be disposed of (- rubbish, trash, scrap)
 
3. [informal] A product or production of poor quality (- trash, clinker [N. Amer, informal])
 
4. The remains of something that has been destroyed or broken up (- debris, dust, rubble, detritus)
 
5. Any of various Chinese boats with a high poop and lugsails
 
6. [informal] Statements or beliefs that are untrue or make no sense (- bunk [informal], bunkum [informal], buncombe [informal], guff [informal], rot [informal], hogwash [informal], flapdoodle [N. Amer, informal], rhubarb [Brit, informal], Irish bull [slang], bull [slang], bilge [informal], nonsense, jive [N. Amer, informal], folderol, rubbish [informal], tripe [informal], trumpery [archaic], trash [informal], wish-wash [informal], applesauce [N. Amer, informal], codswallop [Brit, informal], falderal)
 
7. [informal] A narcotic that is considered a hard drug; a highly addictive morphine derivative; intravenous injection provides the fastest and most intense rush (- heroin, diacetylmorphine, diamorphine)

- Verb: junk (Derived forms: junked, junks, junking)
Usage: informal
1. Dispose of (something useless or old) (- trash, scrap)
"junk an old car";
""",
  );

  final String keyword = "junk";
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
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""junk""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""I've cleared out all that old junk in the room.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""There's nothing but junk on the TV.""");
  }

  @override
  Widget build(BuildContext context) {
    // 188888880002200000000000
    const String videoIdend = 'https://youtu.be/T48_SrFCdaQ?t=379';
    const double startSecondsend = 0;
    const String videoIdone = 'https://youtu.be/8eq2vGEEbB4?t=456';
    const double startSecondsone = 0;
    const String videoIdtwo = 'https://youtu.be/lGSOWwUvJiU?t=787';
    const double startSecondstwo = 0;
    const String videoIdthree = 'https://youtu.be/mBbOF8LVCj4?t=175';
    const double startSecondsthree = 0;
    const String videoIdfour = 'https://youtu.be/Ir3eJ1t13fk?t=1404';
    const double startSecondsfour = 0;
    const String videoIdfive = 'https://youtu.be/GYCI58pMGuQ?t=529';
    const double startSecondsfive = 0;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """junk""",
                      // alsoEnglishWord: "also: junk",
                      britshText: """IpaUK: /dʒʌŋk/""",
                      americanText: """IpaUS: /dʒʌŋk/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
                bottom: const CustomTabBarNew(
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
                    const KurdishVocabulary(text: """
کوردی: شڕەوشاتاڵ، شڕەوبڕە، کرت‌مرت، هیچەکەوپووچەکە، کۆنە، وردەوپردە،	ئاسنەواڵە
"""),
// With short examples define "junk", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ئەو شتانەی کە بەبێ نرخ و بەها سەیر دەکرێن"""),
                    const AlsoEnglishckb(word: "ھەروەھا: rubbish"),
                    SentencesRow(
                      englishText:
                          """I've cleared out all that old junk in the room.""",
                      kurdishText:
                          """گەموو ئەو شڕەوشاتاڵانەی ژوورەکەم پاککردووە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (ناو) پننسە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """There's nothing but junk on the TV.""",
                      kurdishText:
                          """هیچ لەسەر تەلەفیزیۆنەکە نییە جگە لە شتی هیچ.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerDefinition(),
                    CustomRichText(
                      textBeforeLink: "٢. بڕوانە لە ",
                      linkText: "junk food",
                      textAfterLink: "",
                      onTap: () {
                        Routemaster.of(context).push("/english-junk/junkfood");
                      },
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
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdend),
                    videoId: videoIdend,
                    startSeconds: startSecondsend,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdone),
                    videoId: videoIdone,
                    startSeconds: startSecondsone,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdtwo),
                    videoId: videoIdtwo,
                    startSeconds: startSecondstwo,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdthree),
                    videoId: videoIdthree,
                    startSeconds: startSecondsthree,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfour),
                    videoId: videoIdfour,
                    startSeconds: startSecondsfour,
                  ),
                  YoutubeEmbeddingWidget(
                    key: ValueKey(videoIdfive),
                    videoId: videoIdfive,
                    startSeconds: startSecondsfive,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// end WORD_WEB
// end junk