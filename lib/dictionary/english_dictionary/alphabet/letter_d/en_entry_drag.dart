import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:zeetionary/constants.dart';

// DefaultTabController TabBarView YoutubeEmbeddedone YouTubeScroller
// scrollDirection: Axis.vertical,

// More sentences is NOT done

enum TtsState { playing }

class EnglishEntrydrag extends StatefulWidget {
  const EnglishEntrydrag({super.key});

  @override
  State<EnglishEntrydrag> createState() => _EnglishEntrydragState();
}

class _EnglishEntrydragState extends State<EnglishEntrydrag> {
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
                    SentencesIconForTab(), // New tab for SentencesFromDatabase
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
              const SentencesFromDatabase(), // New SentencesFromDatabase tab
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
  final String keyword = "drag";
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
    return const EntryTitle(word: "drag");
  }
}

class TitleOfEntryAlso extends StatelessWidget {
  const TitleOfEntryAlso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlsoEnglish(word: "also: drag");
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
    return const IPAofEnglish(text: "IpaUK: /dræɡ/");
  }
}

class TTSUK extends StatelessWidget {
  TTSUK({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrag(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("drag"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonBritish(
      onPressed: () => speakdrag("en-GB"),
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
    return const IPAofEnglish(text: "IpaUS: /dræɡ/");
  }
}

class TTSUS extends StatelessWidget {
  TTSUS({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrag(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("drag"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return CustomIconButtonAmerican(
      onPressed: () => speakdrag("en-US"),
    );
  }
}

class KurdishMeaning extends StatelessWidget {
  KurdishMeaning({
    super.key,
  });

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakdrags1(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The sack is too heavy to lift—you’ll have to drag it."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags2(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I dragged the chair over to the window."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags3(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("They dragged her from her bed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags4(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He quickly dragged a comb through his hair."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags5(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She managed to drag him clear of the wreckage."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags6(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The child dragged at his mother's sleeve, begging her to stay."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags7(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("I managed to drag myself out of bed."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags8(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "She always drags behind when we walk anywhere."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags9(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "I'm sorry to drag you all this way in the heat."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags10(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "The party was so good I couldn't drag myself away."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags11(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "My parents used to drag me to piano lessons when I was a kid."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags12(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("Time dragged terribly."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags13(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("The meeting really dragged."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags14(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "This dress is too long—it drags on the ground when I walk."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags15(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "They dragged the canal for the murder weapon."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags16(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Click on the file and drag it across."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags17(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He's such a drag."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags18(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("Walking's a drag—let's drive there."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags19(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(
        "He came to be seen as a drag on his own party's prospects."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags20(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts
        .speak("She took a long drag on her cigarette."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags21(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("He performed in drag."); // DOPSUM: CHANGE TEXT
  }

  Future<void> speakdrags22(String languageCode) async {
    // DOPSUM: CHANGE speakdrag
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("speakdrags2200"); // DOPSUM: CHANGE TEXT
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
کوردی: کێشان، ڕاکێشان، کێشمان، ڕاکێش‌کردن، کێش‌کردن،	مرۆی یان شتی ماندووکەر، شتی وەڕەزکەر،	هێزی بەرگری هەوا، هێزی کشێنەرەوە، لەمپەر، کۆسپ، تەگەرە،	(پیاو) لەبەرکردنی جلی ژنانە، بە جلی ژنانەوە.	جووڵانەوەی خاو یان سووک،	مایەی دەردەسەر، مڵۆزم، مایەی گێروکێشە، مایەی زەحمەت یان کێشە،	مژ،	جۆرێ کالیسکەی چەپەری کە بە ٤ ئەسپ ڕادەکێشرا،	قولاپ،	ئامێرێ بۆ خاوکردنەوەی پێچکە یان چەرخ، ڕێگا، ڕێ، شەقام،	کاریگەری، باندۆر (لەسەر خەڵک)،	(مێژوویی) ماڵوو، زەویڕن، خێشک، لێسە، کوڵوکوت، جەنجەڕ
"""),
          const DefinitionKurdish(text: "١. (کردار) ڕاکێشانی کەسێک/شتێک"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The sack is too heavy to lift—you’ll have to drag it."),
                    ExampleSentenceKurdish(
                        text:
                            "فەردەکە زۆر قوورسە تا بەرزی بکەیتەوە ـ دەبێت ڕایبکێشیت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(), // With short examples define "drag", please follow LX instructions
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags1("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags1("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I dragged the chair over to the window."),
                    ExampleSentenceKurdish(
                        text: "کورسییەکەم ڕاکێشا بۆ لای پەنجەرەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags2("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags2("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "They dragged her from her bed."),
                    ExampleSentenceKurdish(text: "لە جێخەوەکەی ڕایانکێشا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags3("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags3("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "He quickly dragged a comb through his hair."),
                    ExampleSentenceKurdish(
                        text: "بەپەلە شانەیەکی هێنا بە قژیدا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags4("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags4("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She managed to drag him clear of the wreckage."),
                    ExampleSentenceKurdish(
                        text: "توانی لە وێرانەکە ڕایبکێشێت."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags5("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags5("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٢. (کردار) گرتنی شتێک و ڕاکێشانی"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The child dragged at his mother's sleeve, begging her to stay."),
                    ExampleSentenceKurdish(
                        text:
                            "منداڵەکە قۆڵی دایکی ڕاکێشا و لێی دەپاڕایەوە بمێنێتەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags6("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags6("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٣. (کردار) ڕێکردن بە هێواشی و سەختی"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "I managed to drag myself out of bed."),
                    ExampleSentenceKurdish(
                        text: "توانیم خۆم لە جێخەوەکە بێنمە دەرەوە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags7("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags7("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She always drags behind when we walk anywhere."),
                    ExampleSentenceKurdish(
                        text:
                            "هەمیشە لە دواوە جێدەمێنیت کە دەچینە هەر شوێنێک."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags8("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags8("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٤. (کردار) ڕازیکردنی کەسێک کە بێت یان بچێت بۆ شوێنێک کە نایەوێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "I'm sorry to drag you all this way in the heat."),
                    ExampleSentenceKurdish(
                        text:
                            "بمبوورە کە ئەم هەموو ڕێگایە لەبەر گەرمایەکە هێناومی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags9("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags9("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "The party was so good I couldn't drag myself away."),
                    ExampleSentenceKurdish(
                        text: "ئاهەنگەکە هێندە باش بوو نەمدەتوانی جێیبهێڵم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags10("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags10("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "My parents used to drag me to piano lessons when I was a kid."),
                    ExampleSentenceKurdish(
                        text:
                            "دایک و باوکم جاران دەیانبردمە وانەی پیانۆ کە نەمدەویست بچم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags11("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags11("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٥. (کردار) تێپەڕبوون بە هێواشی"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "Time dragged terribly."),
                    ExampleSentenceKurdish(text: "کات زۆر هێواش تێدەپەڕی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags12("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags12("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "The meeting really dragged."),
                    ExampleSentenceKurdish(text: "چاوپێکەوتنەکە زۆری خایاند."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags13("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags13("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٦. (کردار) جوڵاندنی شتێک کە بە کەمی بەر زەوی بکەوێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "This dress is too long—it drags on the ground when I walk."),
                    ExampleSentenceKurdish(
                        text:
                            "ئەم جلە زۆر درێژە ـ دەخشێت بە زەویدا کە بە ڕێگا دەچم."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags14("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags14("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "٧. (کردار) گەڕان بە بنی ڕووبارێک، دەریاچەیەک، هتد بە تۆڕ یان قولاپ"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "They dragged the canal for the murder weapon."),
                    ExampleSentenceKurdish(
                        text: "نۆکەندەکە گەڕان بۆ چەکی پیاوکوژی."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags15("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags15("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text: "٨. (کردار) جوڵاندن لەسەر شاشەی کۆمپیوتەر بە ماوس"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Click on the file and drag it across."),
                    ExampleSentenceKurdish(
                        text: "کلیک لەسەر فایلەکە بکە و ڕایبکێشە ئەمبەر."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags16("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags16("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "٩. (ناو) شت یان کەسێکی بێزارکەر"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "He's such a drag."),
                    ExampleSentenceKurdish(text: "زۆر بێزارکەرە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags17("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags17("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "Walking's a drag—let's drive there."),
                    ExampleSentenceKurdish(
                        text: "ڕێکردن ناخۆشە ـ با ئۆتۆمبێل ببەین."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags18("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags18("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٠. (ناو) کەسێک یان شتێک کە پەرەسەندن و چوونەپێشەوە سەخت دەکات"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text:
                            "He came to be seen as a drag on his own party's prospects."),
                    ExampleSentenceKurdish(
                        text: "بە ئەرقەلەیەک بیندرا بۆ پاشەڕۆژی پارتەکە."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags19("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags19("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(text: "١١. (ناو) قومدان لە جگەرە"),
          // const DividerSentences(),
          const AlsoEnglishckb(word: "ھەروەھا: draw"),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(
                        text: "She took a long drag on her cigarette."),
                    ExampleSentenceKurdish(
                        text: "قومێکی قووڵی لە جگەرەکەی دا."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags20("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags20("en-US"),
                  ),
                ],
              ),
            ],
          ),
          const DividerDefinition(),
          const DefinitionKurdish(
              text:
                  "١٢. (ناو) ئەو جلانەی کە لەلایەن ڕەگەزی بەرامبەرەوە لەبەر دەکرێت"),
          // const DividerSentences(),
          Row(
            children: [
              const Expanded(
                child: Column(
                  children: [
                    ExampleSentenceEnglish(text: "He performed in drag."),
                    ExampleSentenceKurdish(text: "بە جلی ژنانەوە نمایشی کرد."),
                  ],
                ),
              ),
              const CustomSizedBoxForTTS(),
              Column(
                children: [
                  CustomIconButtonBritish(
                    onPressed: () => speakdrags21("en-GB"),
                  ),
                  CustomIconButtonAmerican(
                    onPressed: () => speakdrags21("en-US"),
                  ),
                ],
              ),
            ],
          ),
          // const DividerDefinition(),
          // const DefinitionKurdish(text: "ژممارە. (ناو) پێنناسە"),
          // const DividerSentences(),
          // Row(
          //   children: [
          //     const Expanded(
          //       child: Column(
          //         children: [
          //           ExampleSentenceEnglish(text: "speakdrags2200"),
          //           ExampleSentenceKurdish(text: "رستە_رستە_رستە_رستە."),
          //         ],
          //       ),
          //     ),
          //     const CustomSizedBoxForTTS(),
          //     Column(
          //       children: [
          //         CustomIconButtonBritish(
          //           onPressed: () => speakdrags22("en-GB"),
          //         ),
          //         CustomIconButtonAmerican(
          //           onPressed: () => speakdrags22("en-US"),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

// DOPSUM: ENGLISH MEANING

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
    // Extract text from EnglishMeaningConst and store it in textToSpeak
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
- Verb: drag (Derived forms: dragged, dragging, drags)
1. Pull, as against a resistance
"He dragged the big suitcase behind him"; "These worries were dragging at him"
 
2. Draw slowly or heavily (= haul, hale [archaic], cart)
"drag stones";
 
3. Force into some kind of situation, condition, or course of action (= embroil, tangle, sweep, sweep up, drag in)
"don't drag me into this business";
 
4. Move slowly and as if with great effort
 
5. To lag or linger behind (= trail, get behind, hang back, drop behind, drop back)
"But in so many other areas we still are dragging";
 
6. Suck in or take (air) (= puff, draw)
 
7. Use an input device to move objects on the screen, or to select items (such as commands from a menu); drag the slider to increase or decrease rate; drag the handles on the image to resize it
"drag this icon to the lower right hand corner of the screen"
 
8. Walk without lifting the feet (= scuff)
 
9. Search (as the bottom of a body of water) for something valuable or lost (= dredge)

10. Persuade to come away from something attractive or interesting
"He dragged me away from the television set"
 
11. Proceed for an extended period of time (= drag on, drag out)
"The speech dragged on for two hours";

- Noun: drag (Derived forms: drags)
1. The phenomenon of resistance to motion through a fluid (= retarding force)
 
2. Something that slows or delays progress
"taxation is a drag on the economy"; "too many laws are a drag on the use of new land"
 
3. [informal] Something tedious and boring
"peeling potatoes is a drag"
 
4. Clothing that is conventionally worn by the opposite sex (especially women's clothing when worn by a man)
"he went to the party dressed in drag"; "the waitresses looked like missionaries in drag"
 
5. [informal] A slow inhalation (as of tobacco smoke) (= puff, pull)
"he took a drag on his cigarette and expelled the smoke slowly";
 
6. The act of dragging (pulling with force)
"the drag up the hill exhausted him"
""",
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DividerDefinition(),
          // Using the EnglishButtonTTS class
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

class YoutubeEmbeddedend extends StatelessWidget {
  YoutubeEmbeddedend({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/hFZFjoX2cGg?t=',
    startSeconds: 714,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignEnd(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedone extends StatelessWidget {
  YoutubeEmbeddedone({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/0zwNZJbM-Gw?t=',
    startSeconds: 119,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedtwo extends StatelessWidget {
  YoutubeEmbeddedtwo({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/BZbChKzedEk?t=',
    startSeconds: 293,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedthree extends StatelessWidget {
  YoutubeEmbeddedthree({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/dtp6b76pMak?t=',
    startSeconds: 600,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfour extends StatelessWidget {
  YoutubeEmbeddedfour({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/yRmOWcWdQAo?t=',
    startSeconds: 1400,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedfive extends StatelessWidget {
  YoutubeEmbeddedfive({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/W2hRTTTpmr8?t=',
    startSeconds: 1394,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
      ),
    );
  }
}

class YoutubeEmbeddedsix extends StatelessWidget {
  YoutubeEmbeddedsix({super.key});

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'https://youtu.be/cqidD7kVnxY?t=',
    startSeconds: 320,
    autoPlay: true,
    params: const YoutubePlayerParams(
      enableCaption: true,
      captionLanguage: 'en',
      showControls: false,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: YouTubeContainerDesignNew(controller: _controller),
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
    return YouTubeScroller(
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