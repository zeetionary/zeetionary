// // reddit_pages.dart
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:routemaster/routemaster.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class RedditNotifier extends StateNotifier<RedditState> {
//   RedditNotifier() : super(RedditState());

//   final String clientId = 'ljXXAckgtYTRFEpgotb4rA';
//   final String clientSecret = 'o-8nKnDcjxiAoyvAvm8LXVhB79oaQQ';
//   final String username = 'uphjfda';
//   final String password = 'jjj55jj773&&??555ggijj__55tjhaj5';

//   Future<void> fetchAccessToken() async {
//     final response = await http.post(
//       Uri.parse('https://www.reddit.com/api/v1/access_token'),
//       headers: {
//         'Authorization':
//             'Basic ${base64Encode(utf8.encode('$clientId:$clientSecret'))}'
//       },
//       body: {
//         'grant_type': 'password',
//         'username': username,
//         'password': password
//       },
//     );

//     if (response.statusCode == 200) {
//       state = state.copyWith(
//           accessToken: json.decode(response.body)['access_token']);
//     } else {
//       throw Exception('Failed to get access token');
//     }
//   }

//   Future<List<dynamic>> fetchPosts({bool loadMore = false}) async {
//     if (state.accessToken == null) await fetchAccessToken();

//     final url = loadMore && state.after != null
//         ? 'https://oauth.reddit.com/r/EnglishLearning/hot?after=${state.after}'
//         : 'https://oauth.reddit.com/r/EnglishLearning/hot';

//     final response = await http.get(
//       Uri.parse(url),
//       headers: {'Authorization': 'bearer ${state.accessToken}'},
//     );

//     if (response.statusCode == 200) {
//       final data = json.decode(response.body)['data'];
//       state = state.copyWith(after: data['after']);
//       return data['children']
//           .where((post) => !post['data']['stickied'])
//           .toList();
//     } else {
//       throw Exception('Failed to load posts');
//     }
//   }

//   Future<Map<String, dynamic>> fetchPost(String postId) async {
//     if (state.accessToken == null) await fetchAccessToken();
//     final response = await http.get(
//       Uri.parse('https://oauth.reddit.com/by_id/t3_$postId'),
//       headers: {'Authorization': 'bearer ${state.accessToken}'},
//     );

//     if (response.statusCode == 200) {
//       return json.decode(response.body)['data']['children'][0]['data'];
//     } else {
//       throw Exception('Failed to load post');
//     }
//   }

//   Future<List<dynamic>> fetchComments(String postId) async {
//     if (state.accessToken == null) await fetchAccessToken();
//     final response = await http.get(
//       Uri.parse('https://oauth.reddit.com/comments/$postId'),
//       headers: {'Authorization': 'bearer ${state.accessToken}'},
//     );

//     if (response.statusCode == 200) {
//       final data = json.decode(response.body)[1]['data']['children'];
//       return data.where((comment) => comment['kind'] == 't1').toList();
//     } else {
//       throw Exception('Failed to load comments');
//     }
//   }
// }

// class RedditState {
//   final String? accessToken;
//   final String? after;

//   RedditState({this.accessToken, this.after});

//   RedditState copyWith({String? accessToken, String? after}) {
//     return RedditState(
//       accessToken: accessToken ?? this.accessToken,
//       after: after ?? this.after,
//     );
//   }
// }

// final redditProvider =
//     StateNotifierProvider<RedditNotifier, RedditState>((ref) {
//   return RedditNotifier();
// });

// class RedditFeed extends ConsumerStatefulWidget {
//   const RedditFeed({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _RedditFeedState();
// }

// class _RedditFeedState extends ConsumerState<RedditFeed> {
//   List<dynamic> _posts = [];
//   bool _isLoading = false;

//   @override
//   void initState() {
//     super.initState();
//     _loadPosts();
//   }

//   Future<void> _loadPosts({bool loadMore = false}) async {
//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       final newPosts = await ref
//           .read(redditProvider.notifier)
//           .fetchPosts(loadMore: loadMore);
//       setState(() {
//         if (loadMore) {
//           _posts.addAll(newPosts);
//         } else {
//           _posts = newPosts;
//         }
//       });
//     } catch (e) {
//       print('Error loading posts: $e');
//     } finally {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('r/EnglishLearning')),
//       body: _isLoading && _posts.isEmpty
//           ? const Center(child: CircularProgressIndicator())
//           : ListView.builder(
//               itemCount: _posts.length + 1,
//               itemBuilder: (context, index) {
//                 if (index == _posts.length) {
//                   return Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 20.0, horizontal: 10.0),
//                     child: ElevatedButton(
//                       onPressed:
//                           _isLoading ? null : () => _loadPosts(loadMore: true),
//                       child: _isLoading
//                           ? const CircularProgressIndicator()
//                           : const Text('Load More'),
//                     ),
//                   );
//                 }
//                 final post = _posts[index]['data'];
//                 return Card(
//                   margin: const EdgeInsets.all(8.0),
//                   child: ListTile(
//                     title: Text(post['title']),
//                     subtitle: post['thumbnail'] != null &&
//                             post['thumbnail'] != '' &&
//                             post['thumbnail'] != 'self'
//                         ? Padding(
//                             padding: const EdgeInsets.symmetric(vertical: 8.0),
//                             child: Image.network(post['thumbnail']),
//                           )
//                         : null,
//                     onTap: () {
//                       Routemaster.of(context).push('/post/${post['id']}');
//                     },
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }

// class RedditComments extends ConsumerWidget {
//   final String postId;

//   const RedditComments({required this.postId, super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Post Details')),
//       body: FutureBuilder(
//         future: Future.wait([
//           ref.read(redditProvider.notifier).fetchPost(postId),
//           ref.read(redditProvider.notifier).fetchComments(postId),
//         ]),
//         builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return const Center(child: Text('No data available'));
//           } else {
//             final post = snapshot.data![0] as Map<String, dynamic>;
//             final comments = snapshot.data![1] as List<dynamic>;

//             return ListView(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         post['title'],
//                         style: const TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 20),
//                       ),
//                       const SizedBox(height: 10),
//                       Text(post['selftext'] ?? ''),
//                       if (post['url_overridden_by_dest'] != null &&
//                           post['post_hint'] == 'image')
//                         Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 8.0),
//                           child: Image.network(post['url_overridden_by_dest']),
//                         ),
//                       const Divider(height: 30),
//                       const Text(
//                         'Answers',
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                       if (comments.isEmpty)
//                         const Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: Text('No answers yet'),
//                         ),
//                     ],
//                   ),
//                 ),
//                 ...comments.map((comment) {
//                   final data = comment['data'];
//                   return Card(
//                     margin: const EdgeInsets.all(8.0),
//                     child: Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(data['body']),
//                         ],
//                       ),
//                     ),
//                   );
//                 }),
//               ],
//             );
//           }
//         },
//       ),
//     );
//   }
// }
