import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/home/screens/settings_screens/settings.dart';

import 'package:feedback/feedback.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
// import 'package:flutter/foundation.dart' show kIsWeb;
// import 'package:flutter_email_sender/flutter_email_sender.dart';
// import 'package:flutter_markdown/flutter_markdown.dart';
// import 'package:zeetionary/theme/pallete.dart';
// import 'package:share_plus/share_plus.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

Future<String> writeImageToStorage(Uint8List feedbackScreenshot) async {
  final Directory output = await getTemporaryDirectory();
  final String screenshotFilePath = '${output.path}/feedback.png';
  final File screenshotFile = File(screenshotFilePath);
  await screenshotFile.writeAsBytes(feedbackScreenshot);
  return screenshotFilePath;
}

Future<void> createGitlabIssueFromFeedback(BuildContext context) async {
  BetterFeedback.of(context).show((feedback) async {
    const projectId = '61998017';
    const apiToken = 'glpat-Ka4F7a__doGqZVez3erc';

    final screenshotFilePath = await writeImageToStorage(feedback.screenshot);

    // Upload screenshot
    final uploadRequest = http.MultipartRequest(
      'POST',
      Uri.https(
        'gitlab.com',
        '/api/v4/projects/$projectId/uploads',
      ),
    )
      ..files.add(await http.MultipartFile.fromPath(
        'file',
        screenshotFilePath,
      ))
      ..headers.putIfAbsent('PRIVATE-TOKEN', () => apiToken);
    final uploadResponse = await uploadRequest.send();

    final dynamic uploadResponseMap = jsonDecode(
      await uploadResponse.stream.bytesToString(),
    );

    // Create issue
    await http.post(
      Uri.https(
        'gitlab.com',
        '/api/v4/projects/$projectId/issues',
        <String, String>{
          'title': feedback.text.padRight(80),
          'description': '${feedback.text}\n'
              "${uploadResponseMap["markdown"] ?? "Missing image!"}",
        },
      ),
      headers: {
        'PRIVATE-TOKEN': apiToken,
      },
    );
  });
}

class CustomFeedback {
  CustomFeedback({
    this.feedbackText,
    this.rating,
  });

  String? feedbackText;
  FeedbackRating? rating;

  @override
  String toString() {
    return {
      if (rating != null) 'rating': rating.toString(),
      'feedback_text': feedbackText,
    }.toString();
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (rating != null) 'rating': rating.toString(),
      'feedback_text': feedbackText,
    };
  }
}

/// A user-provided sentiment rating.
enum FeedbackRating {
  bad,
  neutral,
  good,
}

// //
// //
// //
// //
// //
// //
// //
// //

// class CustomFeedbackForm extends StatefulWidget {
//   const CustomFeedbackForm({
//     super.key,
//     required this.onSubmit,
//     required this.scrollController,
//   });

//   final OnSubmit onSubmit;
//   final ScrollController? scrollController;

//   @override
//   State<CustomFeedbackForm> createState() => _CustomFeedbackFormState();
// }

// class _CustomFeedbackFormState extends State<CustomFeedbackForm> {

// //
// //
// //
// //
// //
// //
// //

class CustomFeedbackForm extends ConsumerStatefulWidget {
  const CustomFeedbackForm({
    super.key,
    required this.onSubmit,
    required this.scrollController,
  });

  final OnSubmit onSubmit;
  final ScrollController? scrollController;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomFeedbackFormState();
}

class _CustomFeedbackFormState extends ConsumerState<CustomFeedbackForm> {
  _CustomFeedbackFormState();

  final CustomFeedback _customFeedback = CustomFeedback();
  String? selectedBugType; // Rename variable for clarity

  @override
  Widget build(BuildContext context) {
    // final currentTheme = ref.watch(themeNotifierProvider);
    final textSize = ref.watch(textSizeProvider) + 10;
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              if (widget.scrollController != null)
                const FeedbackSheetDragHandle(),
              ListView(
                controller: widget.scrollController,
                padding: EdgeInsets.fromLTRB(
                    16, widget.scrollController != null ? 12 : 16, 16, 0),
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      // canvasColor: Colors.white,
                      canvasColor: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    child: DropdownButton<String>(
                      iconEnabledColor: Colors.blue[300],
                      value: selectedBugType,
                      hint: Text(
                        "Feedback type",
                        style: TextStyle(
                          color: Colors.blue[300],
                          fontSize: textSize - 6,
                        ),
                      ),
                      items: <String>[
                        'Translation Error',
                        'Android bug',
                        'iOS bug',
                        'Other',
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              color: Colors.blue[300],
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selectedBugType = newValue;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Text(
                  //   'What is your feedback?',
                  //   style: TextStyle(
                  //     color: Colors.green,
                  //     fontSize: textSize,
                  //   ),
                  // ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(63, 33, 149,
                              243), // Define border color when not focused
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(63, 33, 149,
                              243), // Define border color when focused
                          width: 1.5,
                        ),
                      ),
                      hintText: "Type explanation",
                      hintStyle: TextStyle(
                        color: Colors.blue[300],
                        fontSize: textSize - 6,
                      ),
                    ),
                    maxLines: null,
                    onChanged: (newFeedback) =>
                        _customFeedback.feedbackText = newFeedback,
                  ),
                ],
              ),
            ],
          ),
        ),
        // TextButton(
        //   onPressed: selectedBugType != null
        //       ? () {
        //           String title =
        //               '$selectedBugType: ${_customFeedback.feedbackText ?? ''}';
        //           widget.onSubmit(
        //             title, // Use the title as the feedback text
        //             extras: {
        //               'bug_type': selectedBugType,
        //               ..._customFeedback.toMap(),
        //             },
        //           );
        //         }
        //       : null,
        //   child: Text(
        //     'Submit',
        //     style: TextStyle(
        //       color: Colors.blue[300],
        //       // color: Theme.of(context).primaryColor,
        //       fontSize: textSize - 3,
        //     ),
        //   ),
        // ),
        TextButton(
          onPressed: selectedBugType != null
              ? () {
                  String title =
                      '$selectedBugType: ${_customFeedback.feedbackText ?? ''}';
                  widget.onSubmit(
                    title, // Use the title as the feedback text
                    extras: {
                      'bug_type': selectedBugType,
                      ..._customFeedback.toMap(),
                    },
                  );
                }
              : null,
          style: ButtonStyle(
            // Set the text color based on whether the button is enabled or disabled
            foregroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return Colors.green; // Green color when disabled
                }
                return Colors.blue[300]!; // Light blue color when enabled
              },
            ),
          ),
          child: Text(
            'Submit',
            style: TextStyle(
              fontSize: textSize - 3,
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  // Widget _ratingToIcon(FeedbackRating rating) {
  //   final bool isSelected = _customFeedback.rating == rating;
  //   late IconData icon;
  //   switch (rating) {
  //     case FeedbackRating.bad:
  //       icon = Icons.sentiment_dissatisfied;
  //       break;
  //     case FeedbackRating.neutral:
  //       icon = Icons.sentiment_neutral;
  //       break;
  //     case FeedbackRating.good:
  //       icon = Icons.sentiment_satisfied;
  //       break;
  //   }
  //   return IconButton(
  //     color: isSelected ? Theme.of(context).colorScheme.secondary : Colors.grey,
  //     onPressed: () => setState(() => _customFeedback.rating = rating),
  //     icon: Icon(icon),
  //     iconSize: 36,
  //   );
  // }
}
