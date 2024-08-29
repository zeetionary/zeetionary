import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntryhang extends StatefulWidget {
  const EnglishEntryhang({super.key});

  @override
  State<EnglishEntryhang> createState() => _EnglishEntryhangState();
}

class _EnglishEntryhangState extends State<EnglishEntryhang> {
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
- Verb: hang (Derived forms: hung, hangs, hanging)
1. Be suspended from above
"The flag hung on the wall"
 
2. Cause to be hanging or suspended (- hang up)
"Hang that picture on the wall"; "hang up that picture on the wall";
 
3. Let drop or droop
"Hang one's head in shame"
 
4. Fall or flow in a certain way (- fall, flow)
"This dress hangs well";
 
5. Be menacing, burdensome, or oppressive
"This worry hangs on my mind"; "The cloud of suspicion hangs over her"
 
6. Give heed (to) (- attend, advert [rare], pay heed, give ear)
"She hung on his every word";
 
7. Be suspended or poised
"Heavy fog hung over the valley"
 
8. Hold on tightly or tenaciously (- cling)
"hang on to your father's hands";
 
9. Be exhibited
"Picasso hangs in this new wing of the museum"
 
10. Prevent from reaching a verdict, of a jury
 
11. Decorate or furnish with something suspended
"Hang wallpaper"
 
12. Be placed in position as by a hinge
"This cabinet door doesn't hang right!"
 
13. Place in position as by a hinge so as to allow free movement in one direction
"hang a door"
 
14. Suspend (meat) in order to get a gamey taste
"hang the venison for a few days"
 
15. (of a computer) stop responding to input devices such as keyboard or mouse
"when I press return the computer hangs"

- Noun: hang (Derived forms: hangs)
1. A special way of doing something (- bent, knack)
"he couldn't get the hang of it";
 
2. The way a garment hangs
"he adjusted the hang of his coat"
 
3. A gymnastic exercise performed on the rings or horizontal bar or parallel bars when the gymnast's weight is supported by the arms

- Interjection: hang
Usage: informal
1. Exclamation of annoyance (- blast, bother [Brit], botheration, bummer [informal], curses, dang [N. Amer, informal], damn, damnation, dammit [informal], damn it [informal], darn [informal], dash [Brit, informal], durn [US, dialect], drat [informal], tarnation [N. Amer, informal], shoot [N. Amer, informal])

- Verb: hang (Derived forms: hangs, hanging, hanged)
1. Kill by hanging (- string up)
""",
  );

  final String keyword = "hang";
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
    await flutterTts.speak("""hang""");
  }

  Future<void> speaksentence1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Activists hung a banner from the roof of the building.""");
  }

  Future<void> speaksentence2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Shall I hang your coat up?""");
  }

  Future<void> speaksentence3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Have you hung out the washing?""");
  }

  Future<void> speaksentence4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""His school bag was still hanging on the back of the door.""");
  }

  Future<void> speaksentence5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Her hair hung down to her waist.""");
  }

  Future<void> speaksentence6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""He had lost weight and the suit hung loosely on him.""");
  }

  Future<void> speaksentence7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The dog's tongue was hanging out.""");
  }

  Future<void> speaksentence8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She hung her head in shame.""");
  }

  Future<void> speaksentence9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""Large leaves hung down from the branches of the trees.""");
  }

  Future<void> speaksentence10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""She had tried to hang herself.""");
  }

  Future<void> speaksentence11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""At that time you could hang for stealing.""");
  }

  Future<void> speaksentence12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Do you wanna come hang with us?""");
  }

  Future<void> speaksentence13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""We hung her portrait above the fireplace.""");
  }

  Future<void> speaksentence14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""The rooms were hung with tapestries.""");
  }

  Future<void> speaksentence15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("""Smoke hung in the air above the city.""");
  }

  Future<void> speaksentence16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("""That coat fits you so well - the hang is perfect.""");
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
                      word: """hang""",
                      // alsoEnglishWord: "also: hang",
                      britshText: """IpaUK: /hæŋ/""",
                      americanText: """IpaUS: /hæŋ/""",
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
کوردی: هەڵواسران، شێوەی هەڵواسران، دالەقان، شۆڕبوونەوە، داهێڵران، ئاوێزان‌بوون،	سەرەوخواری، سەرەوژێری، لێژ
"""),
// With short examples define "hang", please follow LX instructions
                    const DefinitionKurdish(text: """١. (کردار) هەڵواسین"""),
                    SentencesRow(
                      englishText:
                          """Activists hung a banner from the roof of the building.""",
                      kurdishText:
                          """چالاکوانان درووشمێکیان هەڵواسی بە سەربانی بیناکەوە.""",
                      onPressedBritish: () => speaksentence1("en-GB"),
                      onPressedAmerican: () => speaksentence1("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Shall I hang your coat up?""",
                      kurdishText: """پاڵتۆوەکەت هەڵبواسم؟""",
                      onPressedBritish: () => speaksentence2("en-GB"),
                      onPressedAmerican: () => speaksentence2("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Have you hung out the washing?""",
                      kurdishText: """جلە شۆراوەکانت هەڵواسیوە؟""",
                      englishNote:
                          """American English: Have you hung the wash?""",
                      onPressedBritish: () => speaksentence3("en-GB"),
                      onPressedAmerican: () => speaksentence3("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """His school bag was still hanging on the back of the door.""",
                      kurdishText:
                          """جانتای قوتابخانەی هێشتا لە پشتەی دەرگاکە هەڵواسرابوو.""",
                      onPressedBritish: () => speaksentence4("en-GB"),
                      onPressedAmerican: () => speaksentence4("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٢. (کردار) کەوتن بە ئاراستەیەکی دیاریکراودا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Her hair hung down to her waist.""",
                      kurdishText: """قژی بەرەو شانی شۆڕبووەوە.""",
                      onPressedBritish: () => speaksentence5("en-GB"),
                      onPressedAmerican: () => speaksentence5("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """He had lost weight and the suit hung loosely on him.""",
                      kurdishText:
                          """کێشی کەمی کردبوو و قاتەکەی بە فشی لەبەریدا شۆڕبووبوویەوە.""",
                      onPressedBritish: () => speaksentence6("en-GB"),
                      onPressedAmerican: () => speaksentence6("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٣. (کردار) چەمانەوە یان چەماندنەوە بەرەو خوارەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The dog's tongue was hanging out.""",
                      kurdishText: """زمانی سەگەکە شۆڕبووبوویەوە.""",
                      onPressedBritish: () => speaksentence7("en-GB"),
                      onPressedAmerican: () => speaksentence7("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She hung her head in shame.""",
                      kurdishText: """لە شەرمدا سەری شۆڕکردەوە.""",
                      onPressedBritish: () => speaksentence8("en-GB"),
                      onPressedAmerican: () => speaksentence8("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """Large leaves hung down from the branches of the trees.""",
                      kurdishText:
                          """گەڵای گەورە لە لقی دارەکەوە شۆڕبووبوونەوە.""",
                      onPressedBritish: () => speaksentence9("en-GB"),
                      onPressedAmerican: () => speaksentence9("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٤. (کردار) کووشتن بە هەڵواسین"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """She had tried to hang herself.""",
                      kurdishText: """هەوڵیدا بوو خۆی هەڵبواسێت.""",
                      onPressedBritish: () => speaksentence10("en-GB"),
                      onPressedAmerican: () => speaksentence10("en-US"),
                    ),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """At that time you could hang for stealing.""",
                      kurdishText: """لەو کاتەدا دەکرا بۆ دزین هەڵبواسرێیت.""",
                      onPressedBritish: () => speaksentence11("en-GB"),
                      onPressedAmerican: () => speaksentence11("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٥. (کردار) بەسەربردنی کات بە حەسانەوە"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Do you wanna come hang with us?""",
                      kurdishText: """دەتەوێت بێیت لەگەڵمان بحەسێیتەوە؟""",
                      onPressedBritish: () => speaksentence12("en-GB"),
                      onPressedAmerican: () => speaksentence12("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٦. (کردار) هەڵواسین بە قولاپێکەوە لەسەر دیوارێک"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """We hung her portrait above the fireplace.""",
                      kurdishText:
                          """پۆرترەیتەکەیمانی لەسەر ئاگردانەکە هەڵواسی.""",
                      onPressedBritish: () => speaksentence13("en-GB"),
                      onPressedAmerican: () => speaksentence13("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٧. (کردار) ڕازاندنەوەی شوێنێک بە هەڵواسینی وێنە، هتد لەسەر دیوار"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """The rooms were hung with tapestries.""",
                      kurdishText:
                          """ژوورەکان بە فەرشی سەر دیواری ڕازێندرابوونەوە.""",
                      onPressedBritish: () => speaksentence14("en-GB"),
                      onPressedAmerican: () => speaksentence14("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text: """٨. (کردار) مانەوە لە هەوادا"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText: """Smoke hung in the air above the city.""",
                      kurdishText: """دووکەڵ سەرەوەی شارەکەی داپۆشیبوو.""",
                      onPressedBritish: () => speaksentence15("en-GB"),
                      onPressedAmerican: () => speaksentence15("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(
                        text:
                            """٩. (کردار) شێوازی جووڵان یان شۆڕبوونەوەی پارچە جلێک، هتد"""),
                    const DividerSentences(),
                    SentencesRow(
                      englishText:
                          """That coat fits you so well - the hang is perfect.""",
                      kurdishText:
                          """قەمسەڵەکە باش لێت دێت ـ شۆڕبوونەوەکەی ناوازەیە.""",
                      onPressedBritish: () => speaksentence16("en-GB"),
                      onPressedAmerican: () => speaksentence16("en-US"),
                    ),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
                    const DividerDefinition(),
                    const DefinitionKurdish(text: """ژممر. (کردار) پننسە"""),
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

// 188888880002200
const String _videoIdend = 'https://youtu.be/HDntl7yzzVI?t=';
const double _startSecondsend = 000000000000000000000000000559;
const String _videoIdone = 'https://youtu.be/rPe4yziWiOg?t=';
const double _startSecondsone = 000000000000000000000000000863;
const String _videoIdtwo = 'https://youtu.be/gngPQ771Ahk?t=';
const double _startSecondstwo = 000000000000000000000000000855;
const String _videoIdthree = 'https://youtu.be/sDmeXdC3myg?t=';
const double _startSecondsthree = 000000000000000000000000000465;
const String _videoIdfour = 'https://youtu.be/EdQxtsTwHHs?t=';
const double _startSecondsfour = 00000000000000000000000000055;
const String _videoIdfive = 'https://youtu.be/CvjoXdC-WkM?t=';
const double _startSecondsfive = 000000000000000000000000000468;

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