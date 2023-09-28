import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/home/screens/home_screen.dart';

enum TtsState { playing }

class EnglishEntryDopsum extends StatelessWidget {
  EnglishEntryDopsum({Key? key}) : super(key: key);
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakDopsum(String languageCode) async {
    // DOPSUM: CHANGE speakDopsum
    await flutterTts.setLanguage(languageCode);
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak("dopsum"); // DOPSUM: CHANGE TEXT
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const ZeetionaryAppbar(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Dopsum', // DOPSUM: CHANGE WORD ENTRY
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            const Text(
                              'IpaUK: Dopsum', // DOPSUM: WITE IPA IN BRITISH ENGLISH
                              style: TextStyle(fontSize: 16),
                            ),
                            IconButton(
                              iconSize: 18,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.blue,
                              ),
                              onPressed: () =>
                                  speakDopsum(// DOPSUM: CHANGE THE WORD
                                      "en-GB"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'IpaUS: Dopsum', // DOPSUM: WRITE IPA IN AMERICAN ENGLISH
                              style: TextStyle(fontSize: 16),
                            ),
                            IconButton(
                              iconSize: 18,
                              icon: const Icon(
                                Icons.record_voice_over,
                                color: Colors.red,
                              ),
                              onPressed: () => speakDopsum("en-US"),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'A large, nocturnal, burrowing mammal native to central and southern Africa, with a long, extensile tongue and strong claws, which feeds on ants and termites.',
                    ),
                  ],
                ),
              ),
              TabBar(
                tabs: [
                  Tab(
                    icon: Image.asset(
                      'assets/images/uk_one.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  Tab(
                    icon: Image.asset(
                      'assets/images/kurd_one.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  Tab(
                    icon: Image.asset(
                      'assets/images/zeetionary_one.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
                indicator: BoxDecoration(
                  color: const Color.fromARGB(110, 162, 239, 20),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.all(8.0),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // DOPSUM: WRITE DEFINITION IN ENGLISH
                          Text('''
Dopsum

Dopsum
'''),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            // DOPSUM: WRITE DEFINITION IN KURDISH. COPY FOR ANOTHER DEFINITION
                            '١. پێناسە',
                            style: TextStyle(fontSize: 18),
                          ),
                          Row(
                            children: [
                              // DOPSUM: WRITE A SENTENCE BELOW. COPY ROW FOR ANOTHER
                              const Text('''
- Dopsum write sentence
بە کوردی
                              '''),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.blue,
                                ),
                                onPressed: () =>
                                    speakDopsum(// DOPSUM: CHANGE THE WORD
                                        "en-GB"),
                              ),
                              IconButton(
                                iconSize: 18,
                                icon: const Icon(
                                  Icons.record_voice_over,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    speakDopsum(// DOPSUM: CHANGE THE WORD
                                        "en-US"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Dopsum'), // DOPSUM: ADD A VIDEO
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
