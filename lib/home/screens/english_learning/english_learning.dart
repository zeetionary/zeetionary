// import 'package:flutter/material.dart';
// import 'package:routemaster/routemaster.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class RedditFeed extends ConsumerStatefulWidget {
//   const RedditFeed({super.key});

//   // @override
//   // _RedditFeedState createState() => _RedditFeedState();
//   @override
//   // State<RedditFeed> createState() => _RedditFeedState();
//   ConsumerState<ConsumerStatefulWidget> createState() => _RedditFeedState();
// }

// class _RedditFeedState extends ConsumerState<RedditFeed> {
// static const String clientId =
//       'ljXXAckgtYTRFEpgotb4rA'; // Replace with your client ID
//   static const String clientSecret =
//       'o-8nKnDcjxiAoyvAvm8LXVhB79oaQQ'; // Replace with your client secret
//   static const String username = 'uphjfda'; // Replace with your Reddit username
//   static const String password =
//       'jjj55jj773&&??555ggijj__55tjhaj5'; // Replace with your Reddit password

//   String? accessToken;
//   List<dynamic> posts = [];
//   int currentPage = 1;

//   @override
//   void initState() {
//     super.initState();
//     _authenticate();
//   }

//   Future<void> _authenticate() async {
//     final response = await http.post(
//       Uri.parse('https://www.reddit.com/api/v1/access_token'),
//       headers: {
//         'Authorization':
//             'Basic ${base64Encode(utf8.encode('$clientId:$clientSecret'))}',
//         'Content-Type': 'application/x-www-form-urlencoded',
//       },
//       body: {
//         'grant_type': 'password',
//         'username': username,
//         'password': password,
//       },
//     );

//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       setState(() {
//         accessToken = data['access_token'];
//       });
//       fetchPosts();
//     } else {
//       throw Exception('Failed to authenticate');
//     }
//   }

//   Future<void> fetchPosts() async {
//     if (accessToken == null) {
//       throw Exception('Access token is null');
//     }
//     final response = await http.get(
//       Uri.parse(
//           // 'https://oauth.reddit.com/r/EnglishLearning/hot?limit=25&page=$currentPage'),
//           'https://oauth.reddit.com/r/EnglishLearning/?count=25&after=t3_1d1qekf'),
//       headers: {
//         'Authorization': 'Bearer $accessToken',
//         'User-Agent': 'FlutterApp by /u/$username',
//       },
//     );

//     if (response.statusCode == 200) {
//       var data = json.decode(response.body);
//       var newPosts = data['data']['children'];
//       // Filter out pinned posts
//       newPosts = newPosts.where((post) => !post['data']['stickied']).toList();
//       setState(() {
//         posts.addAll(newPosts);
//         currentPage++;
//       });
//     } else {
//       throw Exception('Failed to load posts');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('r/EnglishLearning'),
//       ),
//       body: accessToken == null
//           ? const Center(child: CircularProgressIndicator())
//           : Column(
//               children: [
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: posts.length,
//                     itemBuilder: (context, index) {
//                       var post = posts[index]['data'];
//                       if (post['post_hint'] == 'image') {
//                         return Column(
//                           children: [
//                             ListTile(
//                               title: Text(post['title']),
//                               onTap: () {
//                                 final postJson = jsonEncode(post);
//                                 debugPrint('Post JSON: $postJson');
//                                 final encodedPostJson =
//                                     Uri.encodeComponent(postJson);
//                                 debugPrint(
//                                     'Encoded Post JSON: $encodedPostJson');
//                                 Routemaster.of(context).push(
//                                   '/post/${post['id']}?post=$encodedPostJson&token=$accessToken',
//                                 );
//                               },
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 120, vertical: 10),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(
//                                     10), // Adjust the border radius as needed
//                                 child: Image.network(
//                                   post['url'],
//                                   width: double
//                                       .infinity, // Ensure the image takes the full width
//                                   fit: BoxFit
//                                       .cover, // Ensure the image fills the space within the rounded border
//                                 ),
//                               ),
//                             ),
//                             const Divider(), // Divider between posts
//                           ],
//                         );
//                       } else {
//                         return Column(
//                           children: [
//                             ListTile(
//                               title: Text(post['title']),
//                               onTap: () {
//                                 final postJson = jsonEncode(post);
//                                 debugPrint('Post JSON: $postJson');
//                                 final encodedPostJson =
//                                     Uri.encodeComponent(postJson);
//                                 debugPrint(
//                                     'Encoded Post JSON: $encodedPostJson');
//                                 Routemaster.of(context).push(
//                                   '/post/${post['id']}?post=$encodedPostJson&token=$accessToken',
//                                 );
//                               },
//                             ),
//                             const Divider(), // Divider between posts
//                           ],
//                         );
//                       }
//                     },
//                   ),
//                 ),
//                 // ElevatedButton(
//                 //   onPressed: fetchPosts,
//                 //   child: const Text('Load More'),
//                 // ),
//               ],
//             ),
//     );
//   }
// }

// class PostDetail extends StatelessWidget {
//   final dynamic post;
//   final String accessToken;
//   final String postId;

//   const PostDetail(this.post, this.accessToken, this.postId, {super.key});

//   Future<List<dynamic>> fetchComments(String postId) async {
//     final response = await http.get(
//       Uri.parse('https://oauth.reddit.com/comments/$postId'),
//       headers: {
//         'Authorization': 'Bearer $accessToken',
//         'User-Agent': 'FlutterApp by /u/uphjfda',
//       },
//     );

//     if (response.statusCode == 200) {
//       var data = json.decode(response.body);
//       return data[1]['data']['children'];
//     } else {
//       throw Exception('Failed to load comments');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('r/EnglishLearning'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 post['title'],
//                 style:
//                     const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               if (post['post_hint'] == 'image') Image.network(post['url']),
//               const SizedBox(height: 10),
//               Text(post['selftext'] ?? ''),
//               const SizedBox(height: 20),
//               const Divider(thickness: 2),
//               const Text(
//                 'Answers',
//                 style: TextStyle(
//                     color: Colors.blue,
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               FutureBuilder<List<dynamic>>(
//                 future: fetchComments(post['id']),
//                 builder: (context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.waiting) {
//                     return const Center(child: CircularProgressIndicator());
//                   } else if (snapshot.hasError) {
//                     return Center(child: Text('Error: ${snapshot.error}'));
//                   } else {
//                     return ListView.builder(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemCount: snapshot.data?.length ?? 0,
//                       itemBuilder: (context, index) {
//                         var comment = snapshot.data![index]['data'];
//                         return Column(
//                           children: [
//                             ListTile(
//                               title: Text(comment['body'] ?? ''),
//                             ),
//                             const Divider(),
//                           ],
//                         );
//                       },
//                     );
//                   }
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
