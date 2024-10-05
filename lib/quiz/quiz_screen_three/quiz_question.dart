// // models/question.dart

// enum QuestionType { multipleChoice, fillInBlank, videoFillInBlank, videoOptions } // Added videoOptions

// class Question {
//   final int id;
//   final String question;
//   final List<String>? options;
//   final String answer;
//   final List<String> tags;
//   final QuestionType type;
//   final String? videoId;
//   final int? start;
//   final int? end;

//   Question({
//     required this.id,
//     required this.question,
//     this.options,
//     required this.answer,
//     required this.tags,
//     required this.type,
//     this.videoId,
//     this.start,
//     this.end,
//   });

//   factory Question.fromJson(Map<String, dynamic> json) {
//     QuestionType qType;
//     switch (json['type']) {
//       case 'multiple_choice':
//         qType = QuestionType.multipleChoice;
//         break;
//       case 'fill_in_blank':
//         qType = QuestionType.fillInBlank;
//         break;
//       case 'video_fill_in_blank':
//         qType = QuestionType.videoFillInBlank;
//         break;
//       case 'video_options': // Added handling for video_options
//         qType = QuestionType.videoOptions;
//         break;
//       default:
//         qType = QuestionType.multipleChoice;
//     }

//     return Question(
//       id: json['id'],
//       question: json['question'],
//       options: json['options'] != null ? List<String>.from(json['options']) : null,
//       answer: json['answer'],
//       tags: List<String>.from(json['tags']),
//       type: qType,
//       videoId: json['videoId'],
//       start: json['start'],
//       end: json['end'],
//     );
//   }
// }
