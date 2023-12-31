import 'package:flutter/material.dart';
import 'package:zeetionary/dictionary/english_dictionary/alphabet/letter_a/letters_ab/en_entry_aback.dart';
// import 'package:zeetionary/grammar/grammar_screen.dart';

class GrammarScreen extends StatefulWidget {
  const GrammarScreen({super.key});

  @override
  State<GrammarScreen> createState() => _GrammarScreenState();
}

class _GrammarScreenState extends State<GrammarScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> allGrammarSubjects = [
    "present simple",
    "past simple",
  ];
  List<String> filteredsubjects = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredsubjects = List.from(allGrammarSubjects);
  }

  void filterResults(String query) {
    setState(() {
      filteredsubjects = allGrammarSubjects
          .where(
              (subject) => subject.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void clearSearch() {
    _searchController.clear();
    filterResults('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Directionality(
            textDirection: TextDirection.ltr,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 60,
                child: TextField(
                  controller: _searchController,
                  onChanged: filterResults,
                  decoration: InputDecoration(
                    labelText: "Search here",
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: _searchController.text.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: clearSearch,
                          )
                        : null,
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: EnglishGrammar(
              subjects: filteredsubjects,
              onTapSubject: (subjectsEnglish) {
                if (subjectsEnglish == "present simple") {
                  // Handle the onTap event for the word "dog" here.
                  // You can navigate to a different screen or perform any desired action.
                  // For example:
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EnglishEntryaback(),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}

class EnglishGrammar extends StatelessWidget {
  final List<String> subjects;
  final Function(String) onTapSubject;

  const EnglishGrammar({
    super.key,
    required this.subjects,
    required this.onTapSubject,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: subjects.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTileEnglishGrammar(
          subjectsEnglish: subjects[index],
          onTap: () {
            onTapSubject(subjects[index]);
          },
        );
      },
    );
  }
}

class ListTileEnglishGrammar extends StatelessWidget {
  final String subjectsEnglish;
  final VoidCallback? onTap;

  const ListTileEnglishGrammar({
    super.key,
    required this.subjectsEnglish,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        key: key,
        title: Text(subjectsEnglish),
        trailing: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

class CardButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const CardButton({
    super.key,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Card(
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
