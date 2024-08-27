// https://chatgpt.com/c/e114bb9c-44e5-4beb-a2cb-a7e5aaa9ed91

// // Variables and initialization
// Database? _database;
// List<Map<String, dynamic>> _sentences = [];
// final TextEditingController _controller = TextEditingController();

// @override
// void initState() {
//   super.initState();
//   _initializeDb();
// }

// void _initializeDb() async {
//   _database = await initializeDatabase();
//   _search(''); // Load all sentences initially
// }

// // String normalization function
// String _normalizeString(String input) {
//   input = input.replaceAll('ise', 'ize');
//   input = input.replaceAll('sy', 'zy');
//   input = input.replaceAll('tre', 'ter');
//   input = input.replaceAll('our', 'or');
//   input = input.replaceAll('lling', 'ling');
//   input = input.replaceAll('yse', 'yze');
//   input = input.replaceAll('ourite', 'orite');
//   input = input.replaceAll('ce', 'se');
//   input = input.replaceAll('sation', 'zation');
//   input = input.replaceAll('amme', 'am');
//   input = input.replaceAll('haem', 'hem');
//   input = input.replaceAll('mme', 'm');
//   input = input.replaceAll('ogue', 'og');
//   input = input.replaceAll('llery', 'lry');
//   input = input.replaceAll('naec', 'nec');
//   input = input.replaceAll('nes', 'ns');
//   input = input.replaceAll('nium', 'num');
//   input = input.replaceAll('è', 'e');
//   input = input.replaceAll('ê', 'e');
//   input = input.replaceAll('hoea', 'hea');

//   return input.replaceAll('-', ' ').toLowerCase();
// }

// // Exact match function
// bool _isExactMatch(String word, String query) {
//   word = _normalizeString(word);
//   query = _normalizeString(query);

//   return word == query;
// }

// // Function to count consecutive matching characters
// int _countConsecutiveMatches(String word, String query) {
//   int count = 0;
//   for (int i = 0; i < word.length && i < query.length; i++) {
//     if (word[i] == query[i]) {
//       count++;
//     } else {
//       break;
//     }
//   }
//   return count;
// }

// // Fuzzy match function
// bool _fuzzyMatch(String word, String query) {
//   word = word.toLowerCase();
//   query = query.toLowerCase();

//   if (word == query) {
//     return true;
//   }

//   int maxEditDistance = 2;
//   int editDistance = _calculateEditDistance(word, query);

//   return editDistance <= maxEditDistance;
// }

// // Edit distance calculation (Levenshtein distance or another algorithm can be implemented here)
// int _calculateEditDistance(String word, String query) {
//   // This function should implement an edit distance algorithm.
//   // Placeholder for now:
//   return word.length > query.length ? word.length - query.length : query.length - word.length;
// }

// Modified search function
// void _search(String query) async {
//   if (_database == null) return;

//   final results = await _database!.query('sentences');

//   setState(() {
//     _sentences = results.where((sentence) {
//       String sentenceText = sentence['sentence'] as String? ?? '';
//       String keywords = sentence['keywords'] as String? ?? '';
//       return _fuzzyMatch(sentenceText, query) || _fuzzyMatch(keywords, query);
//     }).toList();
//   });

//   if (_sentences.isEmpty) {
//     print("No results found for '$query'");
//   } else {
//     print("Found ${_sentences.length} sentences for '$query'");
//   }
// }

// // Highlight function remains the same, utilizing _normalizeString for case-insensitive matching
// Widget _highlightedText(String sentence, String query, WidgetRef ref, BuildContext context) {
//   final textSize = ref.watch(textSizeProvider);
//   String normalizedSentence = _normalizeString(sentence);
//   String normalizedQuery = _normalizeString(query);

//   int startIndex = normalizedSentence.indexOf(normalizedQuery);
//   if (startIndex == -1) {
//     return Text(sentence);
//   }

//   String beforeMatch = sentence.substring(0, startIndex);
//   String match = sentence.substring(startIndex, startIndex + query.length);
//   String afterMatch = sentence.substring(startIndex + query.length);

//   return RichText(
//     text: TextSpan(
//       children: [
//         TextSpan(
//           text: beforeMatch,
//           style: TextStyle(
//             color: Theme.of(context).primaryColor,
//             fontSize: textSize + 5,
//           ),
//         ),
//         TextSpan(
//           text: match,
//           style: TextStyle(
//             color: Theme.of(context).highlightColor,
//             fontWeight: FontWeight.bold,
//             fontSize: textSize + 5,
//           ),
//         ),
//         TextSpan(
//           text: afterMatch,
//           style: TextStyle(
//             color: Theme.of(context).primaryColor,
//             fontSize: textSize + 5,
//           ),
//         ),
//       ],
//     ),
//   );
// }
