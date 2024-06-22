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
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
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
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
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
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Be careful not to drop that plate.");
  }

  Future<void> speakdrops2(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I accidentally dropped my glasses into the water.");
  }

  Future<void> speakdrops3(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The climber slipped and dropped.");
  }

  Future<void> speakdrops4(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Her mouth dropped open in disbelief.");
  }

  Future<void> speakdrops5(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He slowly dropped to the floor.");
  }

  Future<void> speakdrops6(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Medical supplies are being dropped into the stricken area.");
  }

  Future<void> speakdrops7(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She lifted the bag then dropped it down again.");
  }

  Future<void> speakdrops8(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He dropped his trousers.");
  }

  Future<void> speakdrops9(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Catch me when I drop.");
  }

  Future<void> speakdrops10(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I dropped to my knees beside her.");
  }

  Future<void> speakdrops11(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She expects everyone to work till they drop.");
  }

  Future<void> speakdrops12(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He staggered in and dropped into a chair.");
  }

  Future<void> speakdrops13(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The temperature has dropped considerably.");
  }

  Future<void> speakdrops14(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("At last the wind dropped.");
  }

  Future<void> speakdrops15(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Error rates have dropped dramatically.");
  }

  Future<void> speakdrops16(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The Dutch team have dropped to fifth place.");
  }

  Future<void> speakdrops17(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The price of shares dropped by 14p.");
  }

  Future<void> speakdrops18(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The dollar dropped against the euro.");
  }

  Future<void> speakdrops19(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("It's a long time since we dropped a game.");
  }

  Future<void> speakdrops20(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They didn't drop any points until halfway through the season.");
  }

  Future<void> speakdrops21(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She dropped the second set but came back to win the match.");
  }

  Future<void> speakdrops22(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He smiled and let his eyes drop again.");
  }

  Future<void> speakdrops23(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("In front of them the valley dropped away from the road.");
  }

  Future<void> speakdrops24(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The land dropped away into a small valley.");
  }

  Future<void> speakdrops25(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Can you drop me near the bank?");
  }

  Future<void> speakdrops26(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "You left your jacket, but I can drop it off on my way to work tomorrow.");
  }

  Future<void> speakdrops27(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Drop me a line when you get there.");
  }

  Future<void> speakdrops28(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Don't hesitate to drop me an email or give me a call.");
  }

  Future<void> speakdrops29(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("You can easily drag and drop files into a folder.");
  }

  Future<void> speakdrops30(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She's been dropped from the team because of injury.");
  }

  Future<void> speakdrops31(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("He spoke with a cockney accent and dropped his aitches.");
  }

  Future<void> speakdrops32(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("She's dropped most of her old friends.");
  }

  Future<void> speakdrops33(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I dropped German when I was 14.");
  }

  Future<void> speakdrops34(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Drop everything and come at once!");
  }

  Future<void> speakdrops35(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Look, can we just drop it?");
  }

  Future<void> speakdrops36(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("I think we'd better drop the subject.");
  }

  Future<void> speakdrops37(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("The first drops of rain fell.");
  }

  Future<void> speakdrops38(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Mix a few drops of milk into the cake mixture.");
  }

  Future<void> speakdrops39(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Could I have a drop more milk in my coffee, please?");
  }

  Future<void> speakdrops40(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She carried it across the room without spilling a drop.");
  }

  Future<void> speakdrops41(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Would you like a drop of brandy?");
  }

  Future<void> speakdrops42(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We mustn't waste a single drop.");
  }

  Future<void> speakdrops43(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He didn't let a drop fall.");
  }

  Future<void> speakdrops44(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("We've seen a 15 per cent drop in price since May.");
  }

  Future<void> speakdrops45(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They reported a significant drop in passenger traffic.");
  }

  Future<void> speakdrops46(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The pound has suffered a big drop against the euro.");
  }

  Future<void> speakdrops47(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("There was a sheer drop of fifty metres to the rocks below.");
  }

  Future<void> speakdrops48(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Use the drops three times a day.");
  }

  Future<void> speakdrops49(String languageCode) async {
    // DOPSUM: CHANGE speakdrop
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "Aid agencies are organizing food drops to civilians in the war zone.");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // DOPSUM: KURDISH MEANING
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const DividerDefinition(),
          const KurdishVocabulary(text: """
کوردی: تکە، دڵۆپ، زیپک، تنۆک، تیف، سافان،	بڕێکی کەم، نەختێ، بڕێ، چکێ، تۆزقاڵێ،	(ئارەق‌خواردنەوە) پیاڵە، گێلاس، لیوانی ئارەق‌خۆری،	خواردنەوەی ئارەق،	شیرینی، نوقڵ، حوبی مژین، شتی بە شێوەی دڵۆپ (شیرینی، نوقڵ و ھتد)،	(گوارە و...) پەرەنگ، پرپرە،	داشکان، شکان، کەم‌بوونەوە، نیشتنەوە، ھاتنەخوارەوە، دابەزین، نشوستی، داکەوتن، بەربوونەوە، کەوتنەخوارەوە،	شتی بەرەوەبوو، کەوتە،	باربەردانەوە لە حەواوە،	پەردە،	درگای تەڵە،	ھەڵدێر، ھەڵەت، دەرمانی تکاندن یان دڵۆپاندن،	(لە سێدارە) ژێرپێ، کون
"""),
          const DefinitionKurdish(text: "١. (کردار) بەربوونەوە بە ڕێکەوت"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Be careful not to drop that plate."),
                    ExampleSentenceKurdish(
                        text: "وریابە ئەو دەورییە بەرنەدەیتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "drop", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops1("en-US"),
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
                            "I accidentally dropped my glasses into the water."),
                    ExampleSentenceKurdish(
                        text: "بە ڕێکەوت چاویلکەکەم بەردایەوە ناو ئاوەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops2("en-US"),
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
                        text: "The climber slipped and dropped."),
                    ExampleSentenceKurdish(
                        text: "شاخەوانەکە خزا و بەربوویەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops3("en-US"),
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
                        text: "Her mouth dropped open in disbelief."),
                    ExampleSentenceKurdish(text: "لە بێ‌بڕواییدا دەمی داچەقا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops4("en-US"),
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
                        text: "He slowly dropped to the floor."),
                    ExampleSentenceKurdish(
                        text: "بەھێواشی کەوت بە زەوییەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (کردار) خستنی شتێک بە ئەنقەست"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Medical supplies are being dropped into the stricken area."),
                    ExampleSentenceKurdish(
                        text:
                            "ئازووقەی پزیشکی بەردەدرێیەوە بەسەر ناوچە گیرۆدەبووەکەدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops6("en-US"),
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
                        text: "She lifted the bag then dropped it down again."),
                    ExampleSentenceKurdish(
                        text: "جانتاکەی ھەڵگرت و دووبارە داینایەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops7("en-US"),
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
                            "He dropped his trousers (= undid them and let them fall)."),
                    ExampleSentenceKurdish(text: "پانتۆڵەکەی داکەند."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops8("en-US"),
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
                    ExampleSentenceEnglish(text: "Catch me when I drop."),
                    ExampleSentenceKurdish(text: "بمگرەوە کە دەکەوم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops9("en-US"),
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
                        text: "I dropped to my knees beside her."),
                    ExampleSentenceKurdish(
                        text: "لە تەنیشتیدا کەوتمە سەر ئەژنۆ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (کردار) کەوتن بەھۆی ماندوێتییەوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She expects everyone to work till they drop."),
                    ExampleSentenceKurdish(
                        text:
                            "چاوەڕێی ئەوە لە ھەموان دەکات کاربکەن تاوەکو دەکەون بە زەویدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops11("en-US"),
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
                        text: "He staggered in and dropped into a chair."),
                    ExampleSentenceKurdish(
                        text: "بە تلاوتل دەڕۆشت تاوەکو کەوتە سەر کورسییەک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٤. (کردار) لاوازکردن یان کەمکردنی شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The temperature has dropped considerably."),
                    ExampleSentenceKurdish(
                        text: "پلەی گەرمی بەشێوەیەکی بەرچاو دابەزیبوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops13("en-US"),
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
                    ExampleSentenceEnglish(text: "At last the wind dropped."),
                    ExampleSentenceKurdish(
                        text: "لە کۆتاییدا بایەکە دایمرکاند."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops14("en-US"),
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
                        text: "Error rates have dropped dramatically."),
                    ExampleSentenceKurdish(
                        text: "ڕێژەی ھەڵە بە ئاستێکی بەرز کەمی کردووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops15("en-US"),
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
                        text: "The Dutch team have dropped to fifth place."),
                    ExampleSentenceKurdish(
                        text: "تیمە ھۆڵەندییەکە بۆ پلەی پێنجەم دابەزیون."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops16("en-US"),
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
                      text: "The price of shares dropped by 14p.",
                      note: "Also: Shares dropped in price by 14p.",
                    ),
                    ExampleSentenceKurdish(
                        text: "بەھای پشکەکان بە ڕێژەی ١٤ پێنس دابەزین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops17("en-US"),
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
                        text: "The dollar dropped against the euro."),
                    ExampleSentenceKurdish(
                        text: "دۆلار بەرامبەر یۆرۆ بە ئاستێکی بەرز داشکا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٥. (کردار) شکستھێنان لە بردنەوەی شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "It's a long time since we dropped a game."),
                    ExampleSentenceKurdish(
                        text:
                            "ماوەیەکی زۆر تێپەڕیوە لەوەتەی یارییەکمان دۆڕاندبێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops19("en-US"),
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
                            "They didn't drop any points until halfway through the season."),
                    ExampleSentenceKurdish(
                        text: "ھیچ خاڵێکیان نەدۆڕاند تاوەکو نیوەی وەرزەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops20("en-US"),
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
                            "She dropped the second set but came back to win the match."),
                    ExampleSentenceKurdish(
                        text:
                            "دووەم کۆمەڵەی دۆڕاند بەڵام گەڕایەوە بۆ بردنەوەی یارییەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٦. (کردار) سەیرکردنی خوارەوە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He smiled and let his eyes drop again."),
                    ExampleSentenceKurdish(text: "پێکەنی و چاوەکانی داخست."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops22("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops22("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٧. (کردار) لێژبوونەوە بە ئاستێکی زۆر"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "In front of them the valley dropped away from the road."),
                    ExampleSentenceKurdish(
                        text:
                            "لە پێشیانەوە دۆڵەکە لێژدەبوویەوە بەرامبەر بە ڕێگاکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops23("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops23("en-US"),
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
                        text: "The land dropped away into a small valley."),
                    ExampleSentenceKurdish(
                        text: "زەوییەکە لێژدەبوویەوە بۆ دۆڵێکی بچووک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops24("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops24("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٨. (کردار) وەستان بۆ ئەوەی کەسێک لە ئۆتۆمبێلێک دابەزێت؛ گەیاندنی شتێک بۆ شوێنێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Can you drop me near the bank?"),
                    ExampleSentenceKurdish(
                        text: "دەتوانیت لە نزیک بانکەکە دامبەزێنیت؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops25("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops25("en-US"),
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
                            "You left your jacket, but I can drop it off on my way to work tomorrow."),
                    ExampleSentenceKurdish(
                        text:
                            "چاکەتەکەتت جێھێشت، بەڵام سبەی لەسەر ڕێگام بۆ کار دەتوانم بیگەیەنم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops26("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops26("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٩. (کردار) ناردنی ئیمەیڵ یان نامەیەکی کورت بۆ کەسێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Drop me a line when you get there."),
                    ExampleSentenceKurdish(
                        text: "دوو دێڕم بۆ بنێرە کە گەشتیتە ئەوێ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops27("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops27("en-US"),
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
                            "Don't hesitate to drop me an email or give me a call."),
                    ExampleSentenceKurdish(
                        text:
                            "دوودڵ مەبە لە ناردنی ئیمەیڵێک یان پەیوەندی کردن پێوەم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops28("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops28("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٠. (کردار) دانانی نووسینێک، ئایکۆنێک، ھتد لە فایلێک، فۆڵدەرێک، یان شاشەی کۆمپیوتەرێک بە بەکارھێنانی ماوسەکە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "You can easily drag and drop files into a folder."),
                    ExampleSentenceKurdish(
                        text:
                            "دەتوانیت بە ئاسانی فایل ڕابکێشیت و دایبنێیت لە فۆڵدەرێک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops29("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops29("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١١. (کردار) ئەوەی شتێک نەکەیت بە ڕێکەوت یان بە ئەنقەست"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "She's been dropped from the team because of injury."),
                    ExampleSentenceKurdish(
                        text: "لە تیمەکە دەرکراوە بەھۆی برینێکەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops30("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops30("en-US"),
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
                            "He spoke with a cockney accent and dropped his aitches (= did not pronounce the letter ‘h’ at the start of words)."),
                    ExampleSentenceKurdish(
                        text:
                            "بە شێوەزارێکی کۆکنی قسەی دەکرد و پیتە H ــەکانی نەدەخوێندەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops31("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops31("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (کردار) وازھێنانی لە بینینی کەسێک لە ڕووی کۆمەڵایەتییەوە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She's dropped most of her old friends."),
                    ExampleSentenceKurdish(
                        text: "وازی لە زۆرێک لە ھاوڕێ کۆنەکانی ھێنا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops32("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops32("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٣. (کردار) وەستان لە کردن یان باسکردنی شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I dropped German (= stopped studying it) when I was 14."),
                    ExampleSentenceKurdish(
                        text: "وازم لە خوێندنی ئەڵمانی ھێنا کە ١٤ ساڵان بووم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops33("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops33("en-US"),
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
                        text: "Drop everything and come at once!"),
                    ExampleSentenceKurdish(
                        text: "واز لە ھەموو شت بھێنە و زوو وەرە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops34("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops34("en-US"),
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
                            "Look, can we just drop it (= stop talking about it)?"),
                    ExampleSentenceKurdish(
                        text: "بوەستە، دەکرێت کۆتایی پێبھێنین؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops35("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops35("en-US"),
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
                        text: "I think we'd better drop the subject."),
                    ExampleSentenceKurdish(
                        text: "پێموایە وا باشترە واز لە بابەتەکە بھێنین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops36("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops36("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٤. (ناو) دڵۆپە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "The first drops of rain fell."),
                    ExampleSentenceKurdish(
                        text: "یەکەمین دڵۆپەکانی باران بارین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops37("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops37("en-US"),
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
                        text: "Mix a few drops of milk into the cake mixture."),
                    ExampleSentenceKurdish(
                        text: "چەند دڵۆپە شیرێک تێکەڵ بکە لەگەڵ تێکەڵەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops38("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops38("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٥. (ناو) ڕێژەیەکی کەم لە شلە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Could I have a drop more milk in my coffee, please?"),
                    ExampleSentenceKurdish(
                        text:
                            "تکایە دەکرێت کەمێک شیری زیاترم ھەبێت لە قاوەکەم؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops39("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops39("en-US"),
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
                            "She carried it across the room without spilling a drop."),
                    ExampleSentenceKurdish(
                        text: "بە ژوورەکەدا ھەڵیگرت بەبێ ڕژاندنی کەمێکی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops40("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops40("en-US"),
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
                        text: "Would you like a drop of brandy?"),
                    ExampleSentenceKurdish(text: "حەزت بە کەمێک براندییە؟"),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops41("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops41("en-US"),
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
                        text: "We mustn't waste a single drop."),
                    ExampleSentenceKurdish(
                        text: "نابێت یەک کەمیش لەدەست بدەین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops42("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops42("en-US"),
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
                    ExampleSentenceEnglish(text: "He didn't let a drop fall."),
                    ExampleSentenceKurdish(text: "نەیھێشت یەک کەمیش بکەوێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops43("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops43("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٦. (ناو) کەمبوونی بڕ، ژمارە، یان ڕێژەی شتێک"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "We've seen a 15 per cent drop in price since May."),
                    ExampleSentenceKurdish(
                        text:
                            "ڕێژەی داشکانی ١٥ لە سەدمان لە نرخدا دیوە لە ئایارەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops44("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops44("en-US"),
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
                            "They reported a significant drop in passenger traffic."),
                    ExampleSentenceKurdish(
                        text:
                            "کەمبوونێکی زۆریان لە ھاتووچۆی گەشتیار ڕاگەیاندووە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops45("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops45("en-US"),
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
                            "The pound has suffered a big drop against the euro."),
                    ExampleSentenceKurdish(
                        text: "پاوەند داشکانێکی بەرچاوی دژ بە یۆرۆ دیوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops46("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops46("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٧. (ناو) مەودایەک لە خاڵێکی بەرزەوە بۆ نزم"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "There was a sheer drop of fifty metres to the rocks below."),
                    ExampleSentenceKurdish(
                        text:
                            "کەوتنێکی گەورەی پەنجا مەتری بۆ سەر بەردەکانی خوارەوە بوو."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops47("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops47("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١٨. (ناو) قەترەی چاو، لووت، یان گوێ"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Use the drops three times a day."),
                    ExampleSentenceKurdish(
                        text: "قەترەکە سێ ڕۆژ لە ڕۆژێکدا بەکاربھێنە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops48("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops48("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "١٩. (ناو) گەیاندنی شتێک بە ئۆتۆمبێل یان فڕۆکە"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "Aid agencies are organizing food drops to civilians in the war zone."),
                    ExampleSentenceKurdish(
                        text:
                            "ئاژانسەکانی بەھاناوەچوون گەیاندنی خواردن ڕێکدەخەن بۆ ھاولاتیانی زۆنی جەنگ."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrops49("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrops49("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // drops_6000"),
          // speakdrops50
          // drops50
          // drops5100"),
          // speakdrops51
          // drops51
          // drops5200"),
          // speakdrops52
          // drops52
          // drops5300"),
          // speakdrops53
          // drops53
          // drops5400"),
          // speakdrops54
          // drops54
          // drops5500"),
          // speakdrops55
          // drops55
          // drops5600"),
          // speakdrops56
          // drops56
          // drops5700"),
          // speakdrops57
          // drops57
          // drops5800"),
          // speakdrops58
          // drops58
          // drops5900"),
          // speakdrops59
          // drops59
          // drops6000"),
          // speakdrops60
          // drops60
          // drops6100"),
          // speakdrops61
          // drops61
          // drops6200"),
          // speakdrops62
          // drops62
          // drops6300"),
          // speakdrops63
          // drops63
          // drops6400"),
          // speakdrops65
          // drops65
          // drops6600"),
          // speakdrops66
          // drops66
          // drops6700"),
          // speakdrops67
          // drops67
          // drops6800"),
          // speakdrops68
          // drops68
          // drops6900"),
          // speakdrops69
          // drops69
          // drops7000"),
          // speakdrops70
          // drops70
          // drops7100"),
          // speakdrops71
          // drops71
          // drops7200"),
          // speakdrops72
          // drops72
          // drops7300"),
          // speakdrops73
          // drops73
          // drops7400"),
          // speakdrops75
          // drops75
          // drops7700"),
          // speakdrops76
          // drops76
          // drops7700"),
          // speakdrops77
          // drops77
          // drops7800"),
          // speakdrops79
          // drops79
          // drops8000"),
          // speakdrops80
          // drops80
          // drops8100"),
          // speakdrops81
          // drops81
          // drops8200"),
          // speakdrops82
          // drops82
          // drops8300"),
          // speakdrops83
          // drops83
          // drops8400"),
          // speakdrops84
          // drops84("en-US"),
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

    // Update the state to reflect that TTS is in progress
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
          // Speaker icon for American English
          englishMeaningConst,
        ],
      ),
    );
  }
}

// DOPSUM: FIRST YOUTUBE VIDEO

class YoutubeEmbeddedend extends StatefulWidget {
  const YoutubeEmbeddedend({super.key});

  @override
  State<YoutubeEmbeddedend> createState() => _YoutubeEmbeddedendState();
}

class _YoutubeEmbeddedendState extends State<YoutubeEmbeddedend> {
  late YoutubePlayerController _controller;
  final String _videoId = 'khOUvmOQExc';
  final double _startSeconds = 269;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainerEnd(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatefulWidget {
  const YoutubeEmbeddedone({super.key});

  @override
  State<YoutubeEmbeddedone> createState() => _YoutubeEmbeddedoneState();
}

class _YoutubeEmbeddedoneState extends State<YoutubeEmbeddedone> {
  late YoutubePlayerController _controller;
  final String _videoId = '8HEfIJlcFbs';
  final double _startSeconds = 42;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatefulWidget {
  const YoutubeEmbeddedtwo({super.key});

  @override
  State<YoutubeEmbeddedtwo> createState() => _YoutubeEmbeddedtwoState();
}

class _YoutubeEmbeddedtwoState extends State<YoutubeEmbeddedtwo> {
  late YoutubePlayerController _controller;
  final String _videoId = 'D-2799Y07Zc';
  final double _startSeconds = 3;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatefulWidget {
  const YoutubeEmbeddedthree({super.key});

  @override
  State<YoutubeEmbeddedthree> createState() => _YoutubeEmbeddedthreeState();
}

class _YoutubeEmbeddedthreeState extends State<YoutubeEmbeddedthree> {
  late YoutubePlayerController _controller;
  final String _videoId = 'qWAagS_MANg';
  final double _startSeconds = 896;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatefulWidget {
  const YoutubeEmbeddedfour({super.key});

  @override
  State<YoutubeEmbeddedfour> createState() => _YoutubeEmbeddedfourState();
}

class _YoutubeEmbeddedfourState extends State<YoutubeEmbeddedfour> {
  late YoutubePlayerController _controller;
  final String _videoId = '47MNn4bsmSw';
  final double _startSeconds = 5342;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatefulWidget {
  const YoutubeEmbeddedfive({super.key});

  @override
  State<YoutubeEmbeddedfive> createState() => _YoutubeEmbeddedfiveState();
}

class _YoutubeEmbeddedfiveState extends State<YoutubeEmbeddedfive> {
  late YoutubePlayerController _controller;
  final String _videoId = 'cAPgFzMA7LQ';
  final double _startSeconds = 90;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatefulWidget {
  const YoutubeEmbeddedsix({super.key});

  @override
  State<YoutubeEmbeddedsix> createState() => _YoutubeEmbeddedsixState();
}

class _YoutubeEmbeddedsixState extends State<YoutubeEmbeddedsix> {
  late YoutubePlayerController _controller;
  final String _videoId = '8wewPn7TZfs';
  final double _startSeconds = 224;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    _controller = YoutubePlayerController.fromVideoId(
      videoId: _videoId,
      startSeconds: _startSeconds,
      autoPlay: true,
      params: const YoutubePlayerParams(
        enableCaption: true,
        captionLanguage: 'en',
        showControls: false,
        strictRelatedVideos: true,
      ),
    );
  }

  void _reloadVideo() {
    _controller.loadVideoById(
      videoId: _videoId,
      startSeconds: _startSeconds,
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YouTubeVideosContainer(
        controller: _controller,
        onReloadVideo: _reloadVideo,
      ),
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