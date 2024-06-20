import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';

class IrregularVerbsScreen extends ConsumerStatefulWidget {
  const IrregularVerbsScreen({super.key});

  // @override
  // _IrregularVerbsScreenState createState() => _IrregularVerbsScreenState();

  // @override
  // State<IrregularVerbsScreen> createState() => _IrregularVerbsScreenState();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _IrregularVerbsScreenState();
}

class _IrregularVerbsScreenState extends ConsumerState<IrregularVerbsScreen>
    with SingleTickerProviderStateMixin {
  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController _searchController = TextEditingController();
  String _searchText = "";
  String _selectedLetter = 'All';

  final List<Map<String, String>> allVerbs = [
    {
      'base': 'be',
      'past': 'was/were',
      'participle': 'been',
      'کوردی': 'بوون',
    },
    {
      'base': 'become',
      'past': 'became',
      'participle': 'become',
      'کوردی': 'بوون بە',
    },
    {
      'base': 'begin',
      'past': 'began',
      'participle': 'begun',
      'کوردی': 'دەست پێکردن',
    },
    {
      'base': 'catch',
      'past': 'caught',
      'participle': 'caught',
      'کوردی': 'گیران',
    },
    {
      'base': 'drive',
      'past': 'drove',
      'participle': 'driven',
      'کوردی': 'شۆفێری کردن',
    },
    {
      'base': 'eat',
      'past': 'ate',
      'participle': 'eaten',
      'کوردی': 'خواردن',
    },
  ];

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _searchText = _searchController.text;
      });
    });
  }

  Future<void> _speakBritish(String text) async {
    await flutterTts.setLanguage("en-GB");
    await flutterTts.speak(text);
  }

  Future<void> _speakAmerican(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.speak(text);
  }

  void _clearSearch() {
    _searchController.clear();
    setState(() {
      _searchText = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    final textSize = ref.watch(textSizeProvider);
    List<Map<String, String>> filteredVerbs = allVerbs
        .where(
          (verb) =>
              verb['base']!
                  .toLowerCase()
                  .startsWith(_searchText.toLowerCase()) ||
              verb['past']!.toLowerCase().contains(_searchText.toLowerCase()) ||
              verb['participle']!.toLowerCase().contains(
                    _searchText.toLowerCase(),
                  ) ||
              verb['کوردی']!.toLowerCase().contains(
                    _searchText.toLowerCase(),
                  ),
        )
        .toList();

    if (_searchText.isEmpty && _selectedLetter != 'All') {
      filteredVerbs = allVerbs
          .where((verb) => verb['base']!
              .toLowerCase()
              .startsWith(_selectedLetter.toLowerCase()))
          .toList();
    }

    return Scaffold(
      appBar: const ZeetionaryAppbar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      // labelText: 'Search',
                      hintText: "Search for sentences...",
                      hintStyle: TextStyle(fontSize: textSize),
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: _clearSearch,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                DropdownButton<String>(
                  value: _selectedLetter,
                  items: ['All', ...'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('')]
                      .map((String letter) {
                    return DropdownMenuItem<String>(
                      value: letter,
                      child: Text(
                        letter,
                        style: TextStyle(fontSize: textSize),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedLetter = newValue!;
                      _searchController.clear();
                      _searchText = "";
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'No',
                      style: TextStyle(fontSize: textSize),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'TTS',
                      style: TextStyle(fontSize: textSize),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Base Form',
                      style: TextStyle(fontSize: textSize),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Past Simple',
                      style: TextStyle(fontSize: textSize),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Past Participle',
                      style: TextStyle(fontSize: textSize),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'کوردی',
                      style: TextStyle(fontSize: textSize),
                    ),
                  ),
                ],
                rows: List<DataRow>.generate(
                  filteredVerbs.length,
                  (index) => DataRow(
                    cells: <DataCell>[
                      DataCell(Text(
                        (index + 1).toString(),
                        style: TextStyle(fontSize: textSize),
                      )),
                      DataCell(
                        Row(
                          children: [
                            CustomIconButtonBritish(
                              onPressed: () {
                                String text =
                                    '${filteredVerbs[index]['base']}, ${filteredVerbs[index]['past']}, ${filteredVerbs[index]['participle']}';
                                _speakBritish(text);
                              },
                            ),
                            CustomIconButtonAmerican(
                              onPressed: () {
                                String text =
                                    '${filteredVerbs[index]['base']}, ${filteredVerbs[index]['past']}, ${filteredVerbs[index]['participle']}';
                                _speakAmerican(text);
                              },
                            ),
                          ],
                        ),
                      ),
                      DataCell(Text(
                        filteredVerbs[index]['base']!,
                        style: TextStyle(fontSize: textSize),
                      )),
                      DataCell(Text(
                        filteredVerbs[index]['past']!,
                        style: TextStyle(fontSize: textSize),
                      )),
                      DataCell(Text(
                        filteredVerbs[index]['participle']!,
                        style: TextStyle(fontSize: textSize),
                      )),
                      DataCell(Text(
                        filteredVerbs[index]['کوردی']!,
                        style: TextStyle(fontSize: textSize),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
