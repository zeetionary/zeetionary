import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryflood extends StatefulWidget {
  const EnglishEntryflood({super.key});

  @override
  State<EnglishEntryflood> createState() => _EnglishEntryfloodState();
}

class _EnglishEntryfloodState extends State<EnglishEntryflood> {
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
- Verb: flood (derived forms: floods, flooded, flooding)
1. Fill quickly beyond capacity; as with a liquid (= deluge, inundate, swamp)
"The images flooded his mind";
 
2. Cover with liquid, usually water
"The swollen river flooded the village"; "The broken vein had flooded blood in her eyes"
 
3. Supply with an excess of (= oversupply, glut)
"flood the market with tennis shoes";
 
4. Become filled to overflowing
"Our basement flooded during the heavy rains"

- Noun: flood (derived forms: floods)
1. The rising of a body of water and its overflowing onto normally dry land (= inundation, deluge, alluvion)
"plains fertilized by annual floods";
 
2. An overwhelming number or amount (= inundation, deluge, torrent)
"a flood of requests";
 
3. Light that is a source of artificial illumination having a broad beam; used in photography (= floodlight, flood lamp, photoflood)
 
4. A large flow (= overflow, outpouring)
 
5. The act of flooding; filling to overflowing (= flowage)
 
6. The occurrence of incoming water (between a low tide and the following high tide) (= flood tide, rising tide)
"a tide in the affairs of men which, taken at the flood, leads on to fortune";
""",
  );

  final String keyword = "flood";
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
    await flutterTts.speak("""flood""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """The heavy rain has caused floods in many parts of the country.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """There have been delays to filming as a result of the floods.""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Police have issued flood warnings for Nevada.""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Much had been done in recent years to improve flood defences.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""No one knew that the flood was coming.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """We are unable to compete with a flood of cheap food imports.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The child was in floods of tears.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """There has been a flood of tributes on social media from fans.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """Authorities are struggling to cope with the flood of refugees.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The cellar floods whenever it rains heavily.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""If the pipe bursts it could flood the whole house.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The area near the river is liable to flood.""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The village had been badly flooded.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The river flooded the valley.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""When the Ganges floods, it causes considerable damage.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The home fans flooded onto the pitch at the finish.""");
  }

  Future<void> speaksentence17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""Refugees continue to flood into neighbouring countries.""");
  }

  Future<void> speaksentence18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);

    await flutterTts
        .speak("""The office was flooded with applications for the job.""");
  }

  Future<void> speaksentence19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We’ve been flooded with complaints.""");
  }

  Future<void> speaksentence20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Cheap imported goods are flooding the market.""");
  }

  Future<void> speaksentence21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        """A man who planned to flood Britain with cocaine was jailed for 15 years.""");
  }

  Future<void> speaksentence22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Memories of her childhood came flooding back.""");
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
              CustomSliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  background: SingleChildScrollView(
                    child: EntryPageColumn(
                      word: """flood""",
                      // alsoEnglishWord: "also: flood",
                      britshText: """IpaUK: /flʌd/""",
                      americanText: """IpaUS: /flʌd/""",
                      onPressedBritish: () => speakheadword("en-GB"),
                      onPressedAmerican: () => speakheadword("en-US"),
                    ),
                  ),
                ),
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
کوردی: سێڵاو، لافاو، شیپ، لەھی، لێمشت،	ئاوکشان، ئاوھەستان، ڕابوونی ئاو،	ھەڵڕشتنی فرمێسک یان ھەست و سۆز،	(خوازە) سێڵاو، لافاو، لێشاو، ڕەھێڵە
"""),
// With short examples define "flood", please follow LX instructions
                    const DefinitionKurdish(
                        text:
                            """١. (ناو) ڕێژەیەکی زۆر ئاو کە کۆبووەتەوە لە شوێنێک کە زۆرجار وشکە"""),
                    SentencesRow(
                      englishText:
                          """The heavy rain has caused floods in many parts of the country.""",
                      kurdishText:
                          """بارانە دژوارەکە بووە بەھۆی لافاو لە زۆر بەشی وڵاتەکە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There have been delays to filming as a result of the floods.""",
                      kurdishText:
                          """دواکەوتن لە وێنەگرتندا ڕوویداوە لە ئەنجامی لافاو.""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Police have issued flood warnings for Nevada.""",
                      kurdishText:
                          """پۆلیس ئاگاداریی لافاویان بۆ نیڤادا ڕاگەیاندووە.""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Much had been done in recent years to improve flood defences.""",
                      kurdishText:
                          """لەم چەند ساڵەی ڕابردوودا زۆر کار کراوە بۆ بەھێزکردنی بەرگری لە لافاو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """No one knew that the flood was coming.""",
                      kurdishText: """کەس نەیدەزانی لافاوەکە دەھات.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (ناو) ڕێژەیەکی زۆر لە خەڵکی یان شت کە پێکەوە دەردەکەون"""),
                    SentencesRow(
                      englishText:
                          """We are unable to compete with a flood of cheap food imports.""",
                      kurdishText:
                          """ناتوانین ڕکابەری لەگەڵ لێشاوی ھاوردەی خواردنی ھەرزان بکەین.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The child was in floods of tears (= crying a lot).""",
                      kurdishText: """منداڵەکە لە ڕەھێڵەی فرمێسکدا بوو.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """There has been a flood of tributes on social media from fans.""",
                      kurdishText:
                          """لێشاوێکی ھاوخەمی لە ھەوادارانەوە لەسەر تۆڕە کۆمەڵایەتییەکان ھەبوو.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Authorities are struggling to cope with the flood of refugees.""",
                      kurdishText:
                          """بەرپرسان دەستەوەستانن بۆ مامەڵە لەگەڵ لێشاوی پەنابەران.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٣. (کردار) کەوتنە بەر لافاو؛ پڕبوون لە ئاو"""),
                    SentencesRow(
                      englishText:
                          """The cellar floods whenever it rains heavily.""",
                      kurdishText:
                          """ژێرزەمینەکە پڕ دەبێت لە ئاو کە باران زۆر دەبارێت.""",
                      englishNote:
                          "This means the basement (cellar) fills with water every time it rains a lot (heavily).",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """If the pipe bursts it could flood the whole house.""",
                      kurdishText:
                          """ئەگەر بۆرییەکە بتەقێت دەکرێت خانووەکە پڕ بکات لە ئاو.""",
                      englishNote:
                          """This means if the pipe breaks open, it could cause water to fill the entire house. "Burst" means to break open suddenly, and "flood" means to cover with water.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """The area near the river is liable to flood.""",
                      kurdishText:
                          """ناوچەی تەنیشت ڕووبارەکە ئەگەری بەرکەوتن بە لافاوی ھەیە.""",
                      englishNote:
                          """This means the area close to the river is likely to be covered with water during heavy rains. "Liable" means likely or prone, and "flood" means to become filled with water.""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The village had been badly flooded.""",
                      kurdishText: """گوندەکە بە خراپی بەر لافاو کەتووە.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٤. (کردار) کە ڕووبارێک ھێندە ئاوی تێدایە دەڕأێتە خاکی دەرووبەری"""),
                    SentencesRow(
                      englishText: """The river flooded the valley.""",
                      kurdishText: """ڕووبارەکە ڕژایە دۆڵەکە.""",
                      englishNote:
                          """This means the river overflowed and caused the valley to be covered with water. "Flooded" means to overflow with water, and "valley" is a low area of land between hills or mountains.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """When the Ganges floods, it causes considerable damage.""",
                      kurdishText:
                          """کە ڕوباری گەنجیز پڕ دەبێت دەبێتە ھۆکاری زیانی گەورە.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (کردار) چوونە شوێنێک بە ژمارەی زۆر"""),
                    SentencesRow(
                      englishText:
                          """The home fans flooded onto the pitch at the finish.""",
                      kurdishText:
                          """لە کۆتایی یاریگاکە ھەوادارانی خاوەن یاریگاکە ڕژانە یاریگاکە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Refugees continue to flood into neighbouring countries.""",
                      kurdishText:
                          """پەنابەران بەردەوام بوون لە ڕژانە وڵاتانی دراوسێ.""",
                      onPressedBritish: () => speaksentence17("en-GB"),
                      onPressedAmerican: () => speaksentence17("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٦. (کردار) ناردنی شتێک بە ژمارەیەکی زۆرەوە"""),
                    SentencesRow(
                      englishText:
                          """The office was flooded with applications for the job.""",
                      kurdishText: """ئۆفیسەکە پڕ بوو لە داواکاری بۆ کارەکە.""",
                      onPressedBritish: () => speaksentence18("en-GB"),
                      onPressedAmerican: () => speaksentence18("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """We’ve been flooded with complaints.""",
                      kurdishText: """دراوینەتە بەر ڕەخنە.""",
                      onPressedBritish: () => speaksentence19("en-GB"),
                      onPressedAmerican: () => speaksentence19("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) ئەوەی شتێک بەردەست بێت بە ڕێژەیەکی زۆر لە شوێنێک"""),
                    SentencesRow(
                      englishText:
                          """Cheap imported goods are flooding the market.""",
                      kurdishText:
                          """کەلووپەلی ھاوردەی ھەرزان ڕژاونەتە بازاڕ.""",
                      onPressedBritish: () => speaksentence20("en-GB"),
                      onPressedAmerican: () => speaksentence20("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """A man who planned to flood Britain with cocaine was jailed for 15 years.""",
                      kurdishText:
                          """پیاوێک کە ھەوڵی دا کۆکاینی زۆر بھێنێتە بەریتانیا بۆ ١٥ ساڵ زیندانی کرا.""",
                      onPressedBritish: () => speaksentence21("en-GB"),
                      onPressedAmerican: () => speaksentence21("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٨. (کردار) کاریگەری کردن لە کەسێک لەناکاو و بەتوندی"""),
                    SentencesRow(
                      englishText:
                          """Memories of her childhood came flooding back.""",
                      kurdishText: """یادەوەریی منداڵیی دووبارە گەڕایەوە.""",
                      onPressedBritish: () => speaksentence22("en-GB"),
                      onPressedAmerican: () => speaksentence22("en-US"),
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

const String _videoIdend = 'AF8d72mA41M';
const double _startSecondsend = 1497;
const String _videoIdone = '-cPdImejxEQ';
const double _startSecondsone = 222;
const String _videoIdtwo = 'pHGweqJCx2s';
const double _startSecondstwo = 3;
const String _videoIdthree = 'Xzv84ZdtlE0';
const double _startSecondsthree = 1206;
const String _videoIdfour = 'T48_SrFCdaQ';
const double _startSecondsfour = 377;
const String _videoIdfive = 'hRSGxw2AQnk';
const double _startSecondsfive = 57;

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