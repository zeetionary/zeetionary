import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

enum TtsState { playing }

class EnglishEntrydrop extends StatefulWidget {
  const EnglishEntrydrop({super.key});

  @override
  State<EnglishEntrydrop> createState() => _EnglishEntrydropState();
}

class _EnglishEntrydropState extends State<EnglishEntrydrop> {
  @override
  void initState() {
    super.initState();
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
                    SentencesIconForTab(),
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
              const SentencesFromDatabase(),
              const YoutubeVideos(),
            ],
          ),
        ),
      ),
    );
  }
}

class SentencesFromDatabase extends StatefulWidget {
  const SentencesFromDatabase({super.key});

  @override
  State<SentencesFromDatabase> createState() => _SentencesFromDatabaseState();
}

class _SentencesFromDatabaseState extends State<SentencesFromDatabase> {
  final String keyword = "drop";
  late FlutterTts flutterTts;
  List<Map<String, dynamic>> filteredSentences = [];

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-GB");
    fetchSentences();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          if (filteredSentences.isEmpty) {
            return const NoSentencesFromDatabase();
          } else {
            return ListView.builder(
              itemCount: filteredSentences.length,
              itemBuilder: (context, index) {
                final sentence = filteredSentences[index];
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: DatabaseUtils.instance.highlightText(
                                      sentence['english'].toString(),
                                      keyword,
                                      ref,
                                      context,
                                    ),
                                  ),
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child:
                                          DatabaseUtils.instance.highlightText(
                                        sentence['french'].toString(),
                                        keyword,
                                        ref,
                                        context,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const CustomSizedBoxForTTS(),
                            Column(
                              children: [
                                CustomIconButtonBritish(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-GB",
                                  ),
                                ),
                                CustomIconButtonAmerican(
                                  onPressed: () => speakEnglish(
                                    sentence['english'].toString(),
                                    languageCode: "en-US",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (filteredSentences.length > 1 &&
                            index != filteredSentences.length - 1)
                          const DividerSentences(),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
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
    return const EntryTitle(word: "drop");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: drop");
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
    return const IPAofEnglish(text: "IpaUK: /drɒp/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrop(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("drop");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdrop("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /drɑːp/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrop(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("drop");
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdrop("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrops1(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Be careful not to drop that plate.");
  }

  Future<void> speakdrops2(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I accidentally dropped my glasses into the water.");
  }

  Future<void> speakdrops3(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The climber slipped and dropped.");
  }

  Future<void> speakdrops4(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Her mouth dropped open in disbelief.");
  }

  Future<void> speakdrops5(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He slowly dropped to the floor.");
  }

  Future<void> speakdrops6(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Medical supplies are being dropped into the stricken area.");
  }

  Future<void> speakdrops7(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She lifted the bag then dropped it down again.");
  }

  Future<void> speakdrops8(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He dropped his trousers.");
  }

  Future<void> speakdrops9(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Catch me when I drop.");
  }

  Future<void> speakdrops10(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I dropped to my knees beside her.");
  }

  Future<void> speakdrops11(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She expects everyone to work till they drop.");
  }

  Future<void> speakdrops12(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He staggered in and dropped into a chair.");
  }

  Future<void> speakdrops13(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The temperature has dropped considerably.");
  }

  Future<void> speakdrops14(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("At last the wind dropped.");
  }

  Future<void> speakdrops15(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Error rates have dropped dramatically.");
  }

  Future<void> speakdrops16(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The Dutch team have dropped to fifth place.");
  }

  Future<void> speakdrops17(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The price of shares dropped by 14p.");
  }

  Future<void> speakdrops18(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The dollar dropped against the euro.");
  }

  Future<void> speakdrops19(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("It's a long time since we dropped a game.");
  }

  Future<void> speakdrops20(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They didn't drop any points until halfway through the season.");
  }

  Future<void> speakdrops21(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She dropped the second set but came back to win the match.");
  }

  Future<void> speakdrops22(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He smiled and let his eyes drop again.");
  }

  Future<void> speakdrops23(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("In front of them the valley dropped away from the road.");
  }

  Future<void> speakdrops24(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The land dropped away into a small valley.");
  }

  Future<void> speakdrops25(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Can you drop me near the bank?");
  }

  Future<void> speakdrops26(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "You left your jacket, but I can drop it off on my way to work tomorrow.");
  }

  Future<void> speakdrops27(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Drop me a line when you get there.");
  }

  Future<void> speakdrops28(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Don't hesitate to drop me an email or give me a call.");
  }

  Future<void> speakdrops29(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("You can easily drag and drop files into a folder.");
  }

  Future<void> speakdrops30(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She's been dropped from the team because of injury.");
  }

  Future<void> speakdrops31(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("He spoke with a cockney accent and dropped his aitches.");
  }

  Future<void> speakdrops32(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("She's dropped most of her old friends.");
  }

  Future<void> speakdrops33(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I dropped German when I was 14.");
  }

  Future<void> speakdrops34(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Drop everything and come at once!");
  }

  Future<void> speakdrops35(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Look, can we just drop it?");
  }

  Future<void> speakdrops36(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("I think we'd better drop the subject.");
  }

  Future<void> speakdrops37(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("The first drops of rain fell.");
  }

  Future<void> speakdrops38(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Mix a few drops of milk into the cake mixture.");
  }

  Future<void> speakdrops39(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("Could I have a drop more milk in my coffee, please?");
  }

  Future<void> speakdrops40(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("She carried it across the room without spilling a drop.");
  }

  Future<void> speakdrops41(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Would you like a drop of brandy?");
  }

  Future<void> speakdrops42(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We mustn't waste a single drop.");
  }

  Future<void> speakdrops43(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("He didn't let a drop fall.");
  }

  Future<void> speakdrops44(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("We've seen a 15 per cent drop in price since May.");
  }

  Future<void> speakdrops45(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("They reported a significant drop in passenger traffic.");
  }

  Future<void> speakdrops46(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("The pound has suffered a big drop against the euro.");
  }

  Future<void> speakdrops47(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts
        .speak("There was a sheer drop of fifty metres to the rocks below.");
  }

  Future<void> speakdrops48(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak("Use the drops three times a day.");
  }

  Future<void> speakdrops49(String languageCode) async {
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(ttsPitch);
    await flutterTts.setSpeechRate(ttsSpeechRate);
    await flutterTts.speak(
        "Aid agencies are organizing food drops to civilians in the war zone.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomColumnWidget(
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: تکە، دڵۆپ، زیپک، تنۆک، تیف، سافان،	بڕێکی کەم، نەختێ، بڕێ، چکێ، تۆزقاڵێ،	(ئارەق‌خواردنەوە) پیاڵە، گێلاس، لیوانی ئارەق‌خۆری،	خواردنەوەی ئارەق،	شیرینی، نوقڵ، حوبی مژین، شتی بە شێوەی دڵۆپ (شیرینی، نوقڵ و ھتد)،	(گوارە و...) پەرەنگ، پرپرە،	داشکان، شکان، کەم‌بوونەوە، نیشتنەوە، ھاتنەخوارەوە، دابەزین، نشوستی، داکەوتن، بەربوونەوە، کەوتنەخوارەوە،	شتی بەرەوەبوو، کەوتە،	باربەردانەوە لە حەواوە،	پەردە،	درگای تەڵە،	ھەڵدێر، ھەڵەت، دەرمانی تکاندن یان دڵۆپاندن،	(لە سێدارە) ژێرپێ، کون
"""),
          const DefinitionKurdish(text: "١. (کردار) بەربوونەوە بە ڕێکەوت"),
          SentencesRow(
            englishText: "Be careful not to drop that plate.",
            kurdishText: "وریابە ئەو دەورییە بەرنەدەیتەوە.",
            onPressedBritish: () => speakdrops1("en-GB"),
            onPressedAmerican: () => speakdrops1("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I accidentally dropped my glasses into the water.",
            kurdishText: "بە ڕێکەوت چاویلکەکەم بەردایەوە ناو ئاوەکە.",
            onPressedBritish: () => speakdrops2("en-GB"),
            onPressedAmerican: () => speakdrops2("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The climber slipped and dropped.",
            kurdishText: "شاخەوانەکە خزا و بەربوویەوە.",
            onPressedBritish: () => speakdrops3("en-GB"),
            onPressedAmerican: () => speakdrops3("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Her mouth dropped open in disbelief.",
            kurdishText: "لە بێ‌بڕواییدا دەمی داچەقا.",
            onPressedBritish: () => speakdrops4("en-GB"),
            onPressedAmerican: () => speakdrops4("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He slowly dropped to the floor.",
            kurdishText: "بەھێواشی کەوت بە زەوییەکەدا.",
            onPressedBritish: () => speakdrops5("en-GB"),
            onPressedAmerican: () => speakdrops5("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (کردار) خستنی شتێک بە ئەنقەست"),
          SentencesRow(
            englishText:
                "Medical supplies are being dropped into the stricken area.",
            kurdishText:
                "ئازووقەی پزیشکی بەردەدرێیەوە بەسەر ناوچە گیرۆدەبووەکەدا.",
            onPressedBritish: () => speakdrops6("en-GB"),
            onPressedAmerican: () => speakdrops6("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "She lifted the bag then dropped it down again.",
            kurdishText: "جانتاکەی ھەڵگرت و دووبارە داینایەوە.",
            onPressedBritish: () => speakdrops7("en-GB"),
            onPressedAmerican: () => speakdrops7("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He dropped his trousers (= undid them and let them fall).",
            kurdishText: "پانتۆڵەکەی داکەند.",
            onPressedBritish: () => speakdrops8("en-GB"),
            onPressedAmerican: () => speakdrops8("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Catch me when I drop.",
            kurdishText: "بمگرەوە کە دەکەوم.",
            onPressedBritish: () => speakdrops9("en-GB"),
            onPressedAmerican: () => speakdrops9("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I dropped to my knees beside her.",
            kurdishText: "لە تەنیشتیدا کەوتمە سەر ئەژنۆ.",
            onPressedBritish: () => speakdrops10("en-GB"),
            onPressedAmerican: () => speakdrops10("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (کردار) کەوتن بەھۆی ماندوێتییەوە"),
          SentencesRow(
            englishText: "She expects everyone to work till they drop.",
            kurdishText:
                "چاوەڕێی ئەوە لە ھەموان دەکات کاربکەن تاوەکو دەکەون بە زەویدا.",
            onPressedBritish: () => speakdrops11("en-GB"),
            onPressedAmerican: () => speakdrops11("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He staggered in and dropped into a chair.",
            kurdishText: "بە تلاوتل دەڕۆشت تاوەکو کەوتە سەر کورسییەک.",
            onPressedBritish: () => speakdrops12("en-GB"),
            onPressedAmerican: () => speakdrops12("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) لاوازکردن یان کەمکردنی شتێک"),
          SentencesRow(
            englishText: "The temperature has dropped considerably.",
            kurdishText: "پلەی گەرمی بەشێوەیەکی بەرچاو دابەزیبوو.",
            onPressedBritish: () => speakdrops13("en-GB"),
            onPressedAmerican: () => speakdrops13("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "At last the wind dropped.",
            kurdishText: "لە کۆتاییدا بایەکە دایمرکاند.",
            onPressedBritish: () => speakdrops14("en-GB"),
            onPressedAmerican: () => speakdrops14("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Error rates have dropped dramatically.",
            kurdishText: "ڕێژەی ھەڵە بە ئاستێکی بەرز کەمی کردووە.",
            onPressedBritish: () => speakdrops15("en-GB"),
            onPressedAmerican: () => speakdrops15("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The Dutch team have dropped to fifth place.",
            kurdishText: "تیمە ھۆڵەندییەکە بۆ پلەی پێنجەم دابەزیون.",
            onPressedBritish: () => speakdrops16("en-GB"),
            onPressedAmerican: () => speakdrops16("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The price of shares dropped by 14p.",
            englishNote: "Also: Shares dropped in price by 14p.",
            kurdishText: "بەھای پشکەکان بە ڕێژەی ١٤ پێنس دابەزین.",
            onPressedBritish: () => speakdrops17("en-GB"),
            onPressedAmerican: () => speakdrops17("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The dollar dropped against the euro.",
            kurdishText: "دۆلار بەرامبەر یۆرۆ بە ئاستێکی بەرز داشکا.",
            onPressedBritish: () => speakdrops18("en-GB"),
            onPressedAmerican: () => speakdrops18("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) شکستھێنان لە بردنەوەی شتێک"),
          SentencesRow(
            englishText: "It's a long time since we dropped a game.",
            kurdishText: "ماوەیەکی زۆر تێپەڕیوە لەوەتەی یارییەکمان دۆڕاندبێت.",
            onPressedBritish: () => speakdrops19("en-GB"),
            onPressedAmerican: () => speakdrops19("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "They didn't drop any points until halfway through the season.",
            kurdishText: "ھیچ خاڵێکیان نەدۆڕاند تاوەکو نیوەی وەرزەکە.",
            onPressedBritish: () => speakdrops20("en-GB"),
            onPressedAmerican: () => speakdrops20("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She dropped the second set but came back to win the match.",
            kurdishText:
                "دووەم کۆمەڵەی دۆڕاند بەڵام گەڕایەوە بۆ بردنەوەی یارییەکە.",
            onPressedBritish: () => speakdrops21("en-GB"),
            onPressedAmerican: () => speakdrops21("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (کردار) سەیرکردنی خوارەوە"),
          const DividerSentences(),
          SentencesRow(
            englishText: "He smiled and let his eyes drop again.",
            kurdishText: "پێکەنی و چاوەکانی داخست.",
            onPressedBritish: () => speakdrops22("en-GB"),
            onPressedAmerican: () => speakdrops22("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (کردار) لێژبوونەوە بە ئاستێکی زۆر"),
          SentencesRow(
            englishText:
                "In front of them the valley dropped away from the road.",
            kurdishText: "لە پێشیانەوە دۆڵەکە لێژدەبوویەوە بەرامبەر بە ڕێگاکە.",
            onPressedBritish: () => speakdrops23("en-GB"),
            onPressedAmerican: () => speakdrops23("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The land dropped away into a small valley.",
            kurdishText: "زەوییەکە لێژدەبوویەوە بۆ دۆڵێکی بچووک.",
            onPressedBritish: () => speakdrops24("en-GB"),
            onPressedAmerican: () => speakdrops24("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (کردار) وەستان بۆ ئەوەی کەسێک لە ئۆتۆمبێلێک دابەزێت؛ گەیاندنی شتێک بۆ شوێنێک"),
          SentencesRow(
            englishText: "Can you drop me near the bank?",
            kurdishText: "دەتوانیت لە نزیک بانکەکە دامبەزێنیت؟",
            onPressedBritish: () => speakdrops25("en-GB"),
            onPressedAmerican: () => speakdrops25("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "You left your jacket, but I can drop it off on my way to work tomorrow.",
            kurdishText:
                "چاکەتەکەتت جێھێشت، بەڵام سبەی لەسەر ڕێگام بۆ کار دەتوانم بیگەیەنم.",
            onPressedBritish: () => speakdrops26("en-GB"),
            onPressedAmerican: () => speakdrops26("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (کردار) ناردنی ئیمەیڵ یان نامەیەکی کورت بۆ کەسێک"),
          SentencesRow(
            englishText: "Drop me a line when you get there.",
            kurdishText: "دوو دێڕم بۆ بنێرە کە گەشتیتە ئەوێ.",
            onPressedBritish: () => speakdrops27("en-GB"),
            onPressedAmerican: () => speakdrops27("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "Don't hesitate to drop me an email or give me a call.",
            kurdishText:
                "دوودڵ مەبە لە ناردنی ئیمەیڵێک یان پەیوەندی کردن پێوەم.",
            onPressedBritish: () => speakdrops28("en-GB"),
            onPressedAmerican: () => speakdrops28("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٠. (کردار) دانانی نووسینێک، ئایکۆنێک، ھتد لە فایلێک، فۆڵدەرێک، یان شاشەی کۆمپیوتەرێک بە بەکارھێنانی ماوسەکە"),
          SentencesRow(
            englishText: "You can easily drag and drop files into a folder.",
            kurdishText:
                "دەتوانیت بە ئاسانی فایل ڕابکێشیت و دایبنێیت لە فۆڵدەرێک.",
            onPressedBritish: () => speakdrops29("en-GB"),
            onPressedAmerican: () => speakdrops29("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (کردار) ئەوەی شتێک نەکەیت بە ڕێکەوت یان بە ئەنقەست"),
          SentencesRow(
            englishText: "She's been dropped from the team because of injury.",
            kurdishText: "لە تیمەکە دەرکراوە بەھۆی برینێکەوە.",
            onPressedBritish: () => speakdrops30("en-GB"),
            onPressedAmerican: () => speakdrops30("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "He spoke with a cockney accent and dropped his aitches (= did not pronounce the letter ‘h’ at the start of words).",
            kurdishText:
                "بە شێوەزارێکی کۆکنی قسەی دەکرد و پیتە H ــەکانی نەدەخوێندەوە.",
            onPressedBritish: () => speakdrops31("en-GB"),
            onPressedAmerican: () => speakdrops31("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (کردار) وازھێنانی لە بینینی کەسێک لە ڕووی کۆمەڵایەتییەوە"),
          SentencesRow(
            englishText: "She's dropped most of her old friends.",
            kurdishText: "وازی لە زۆرێک لە ھاوڕێ کۆنەکانی ھێنا.",
            onPressedBritish: () => speakdrops32("en-GB"),
            onPressedAmerican: () => speakdrops32("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٣. (کردار) وەستان لە کردن یان باسکردنی شتێک"),
          SentencesRow(
            englishText:
                "I dropped German (= stopped studying it) when I was 14.",
            kurdishText: "وازم لە خوێندنی ئەڵمانی ھێنا کە ١٤ ساڵان بووم.",
            onPressedBritish: () => speakdrops33("en-GB"),
            onPressedAmerican: () => speakdrops33("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Drop everything and come at once!",
            kurdishText: "واز لە ھەموو شت بھێنە و زوو وەرە.",
            onPressedBritish: () => speakdrops34("en-GB"),
            onPressedAmerican: () => speakdrops34("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Look, can we just drop it (= stop talking about it)?",
            kurdishText: "بوەستە، دەکرێت کۆتایی پێبھێنین؟",
            onPressedBritish: () => speakdrops35("en-GB"),
            onPressedAmerican: () => speakdrops35("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "I think we'd better drop the subject.",
            kurdishText: "پێموایە وا باشترە واز لە بابەتەکە بھێنین.",
            onPressedBritish: () => speakdrops36("en-GB"),
            onPressedAmerican: () => speakdrops36("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٤. (ناو) دڵۆپە"),
          SentencesRow(
            englishText: "The first drops of rain fell.",
            kurdishText: "یەکەمین دڵۆپەکانی باران بارین.",
            onPressedBritish: () => speakdrops37("en-GB"),
            onPressedAmerican: () => speakdrops37("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Mix a few drops of milk into the cake mixture.",
            kurdishText: "چەند دڵۆپە شیرێک تێکەڵ بکە لەگەڵ تێکەڵەکە.",
            onPressedBritish: () => speakdrops38("en-GB"),
            onPressedAmerican: () => speakdrops38("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٥. (ناو) ڕێژەیەکی کەم لە شلە"),
          SentencesRow(
            englishText: "Could I have a drop more milk in my coffee, please?",
            kurdishText: "تکایە دەکرێت کەمێک شیری زیاترم ھەبێت لە قاوەکەم؟",
            onPressedBritish: () => speakdrops39("en-GB"),
            onPressedAmerican: () => speakdrops39("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "She carried it across the room without spilling a drop.",
            kurdishText: "بە ژوورەکەدا ھەڵیگرت بەبێ ڕژاندنی کەمێکی.",
            onPressedBritish: () => speakdrops40("en-GB"),
            onPressedAmerican: () => speakdrops40("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "Would you like a drop of brandy?",
            kurdishText: "حەزت بە کەمێک براندییە؟",
            onPressedBritish: () => speakdrops41("en-GB"),
            onPressedAmerican: () => speakdrops41("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "We mustn't waste a single drop.",
            kurdishText: "نابێت یەک کەمیش لەدەست بدەین.",
            onPressedBritish: () => speakdrops42("en-GB"),
            onPressedAmerican: () => speakdrops42("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "He didn't let a drop fall.",
            kurdishText: "نەیھێشت یەک کەمیش بکەوێت.",
            onPressedBritish: () => speakdrops43("en-GB"),
            onPressedAmerican: () => speakdrops43("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٦. (ناو) کەمبوونی بڕ، ژمارە، یان ڕێژەی شتێک"),
          SentencesRow(
            englishText: "We've seen a 15 per cent drop in price since May.",
            kurdishText:
                "ڕێژەی داشکانی ١٥ لە سەدمان لە نرخدا دیوە لە ئایارەوە.",
            onPressedBritish: () => speakdrops44("en-GB"),
            onPressedAmerican: () => speakdrops44("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText:
                "They reported a significant drop in passenger traffic.",
            kurdishText: "کەمبوونێکی زۆریان لە ھاتووچۆی گەشتیار ڕاگەیاندووە.",
            onPressedBritish: () => speakdrops45("en-GB"),
            onPressedAmerican: () => speakdrops45("en-US"),
          ),
          const DividerSentences(),
          SentencesRow(
            englishText: "The pound has suffered a big drop against the euro.",
            kurdishText: "پاوەند داشکانێکی بەرچاوی دژ بە یۆرۆ دیوە.",
            onPressedBritish: () => speakdrops46("en-GB"),
            onPressedAmerican: () => speakdrops46("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٧. (ناو) مەودایەک لە خاڵێکی بەرزەوە بۆ نزم"),
          SentencesRow(
            englishText:
                "There was a sheer drop of fifty metres to the rocks below.",
            kurdishText:
                "کەوتنێکی گەورەی پەنجا مەتری بۆ سەر بەردەکانی خوارەوە بوو.",
            onPressedBritish: () => speakdrops47("en-GB"),
            onPressedAmerican: () => speakdrops47("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٨. (ناو) قەترەی چاو، لووت، یان گوێ"),
          SentencesRow(
            englishText: "Use the drops three times a day.",
            kurdishText: "قەترەکە سێ ڕۆژ لە ڕۆژێکدا بەکاربھێنە.",
            onPressedBritish: () => speakdrops48("en-GB"),
            onPressedAmerican: () => speakdrops48("en-US"),
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٩. (ناو) گەیاندنی شتێک بە ئۆتۆمبێل یان فڕۆکە"),
          SentencesRow(
            englishText:
                "Aid agencies are organizing food drops to civilians in the war zone.",
            kurdishText:
                "ئاژانسەکانی بەھاناوەچوون گەیاندنی خواردن ڕێکدەخەن بۆ ھاولاتیانی زۆنی جەنگ.",
            onPressedBritish: () => speakdrops49("en-GB"),
            onPressedAmerican: () => speakdrops49("en-US"),
          ),
          // drops_60drops50
          // drops51drops51
          // drops52drops52
          // drops53drops53
          // drops54drops54
          // drops55drops55
          // drops56drops56
          // drops57drops57
          // drops58drops58
          // drops59drops59
          // drops60drops60
          // drops61drops61
          // drops62drops62
          // drops63drops63
          // drops64drops65
          // drops66drops66
          // drops67drops67
          // drops68drops68
          // drops69drops69
          // drops70drops70
          // drops71drops71
          // drops72drops72
          // drops73drops73
          // drops74drops75
          // drops77drops76
          // drops77drops77
          // drops78drops79
          // drops80drops80
          // drops81drops81
          // drops82drops82
          // drops83drops83
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
- Verb: drop (derived forms: drops, dropped, dropping)
1. Let fall to the ground
"Don't drop the dishes"
 
2. To fall vertically
"the bombs are dropping on enemy targets"
 
3. Go down in value
"Stock prices dropped"
 
4. Fall or descend to a lower place or level (= sink, drop down)
"He dropped to his knees";
 
5. Terminate an association with
"drop him from the Republican ticket"
 
6. Utter with seeming casualness
"drop a hint"; "drop names"
 
7. Stop pursuing or acting (= knock off [informal])
"drop a lawsuit";
 
8. Remove (cargo, people, etc.) from and leave (= drop off, set down, put down, unload, discharge)
"drop off the passengers at the hotel";
 
9. Cause to fall by or as if by delivering a blow (= fell, strike down, cut down)
"drop a tree";
 
10. (sport) lose (a game)
"The Giants dropped 11 of their first 13"
 
11. Pay out (= spend, expend)
"drop money";
 
12. (music) lower the pitch of (musical notes) (= flatten)
 
13. Hang loosely (= dangle, swing)
"The light dropped from the ceiling";
 
14. Stop associating with (= dismiss, send packing, send away)
"They dropped her after she had a child out of wedlock";
 
15. Let or cause to fall in drops (= dribble, drip)
"drop oil into the mixture";
 
16. To remove (= shed, cast, cast off, shake off, throw, throw off, throw away, lose)
 
17. Take (a drug, especially LSD), by mouth
"She dropped acid when she was a teenager"
 
18. Omit (a letter or syllable) in speaking or writing
"New Englanders drop their post-vocalic r's"
 
19. Leave undone or leave out (= neglect, pretermit, omit, miss, leave out, overlook, overleap)
 
20. Change from one level to another
"She dropped into army jargon"
 
21. Fall or sink into a state of exhaustion or death
"shop til you drop"
 
22. Grow progressively worse (= devolve, deteriorate, degenerate)
 
23. Give birth; used for animals
"The cow dropped her calf this morning"

- Noun: drop (derived forms: drops)
1. A shape that is spherical and small (= bead, pearl)
"he studied the shapes of low-viscosity drops";
 
2. A small indefinite quantity (especially of a liquid) (= drib, driblet)
"he had a drop too much to drink"; "a drop of each sample was analysed"; "there is not a drop of pity in that man";

3. A sudden sharp decrease in some quantity (= dip, fall, free fall)
"a drop of 57 points on the Dow Jones index"; "there was a drop in pressure in the pulmonary artery";
 
4. A steep high face of rock (= cliff, drop-off)
"a steep drop"; "he stood on a high drop-off overlooking the town";
 
5. A predetermined hiding place for the deposit and distribution of illicit goods (such as drugs or stolen property)
 
6. A free and rapid descent by the force of gravity (= fall)
"it was a miracle that he survived the drop from that height";
 
7. A curtain that can be lowered and raised onto a stage from the flies; often used as background scenery (= drop curtain, drop cloth)
 
8. A central depository where things can be left or picked up
 
9. The act of dropping something
"they expected the drop would be successful"
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

  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 269;

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

  final String _videoId = '8HEfIJlcFbs';
  final double _startSeconds = 42;

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

  final String _videoId = 'D-2799Y07Zc';
  final double _startSeconds = 3;

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

  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 896;

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

  final String _videoId = '47MNn4bsmSw';
  final double _startSeconds = 5342;

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

  final String _videoId = 'cAPgFzMA7LQ';
  final double _startSeconds = 90;

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

  final String _videoId = '8wewPn7TZfs';
  final double _startSeconds = 224;

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