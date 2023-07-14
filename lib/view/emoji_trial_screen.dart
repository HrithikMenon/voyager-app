// import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
// import 'package:flutter/foundation.dart' as foundation;
// import 'package:flutter/material.dart';

// class EmojiTrialScreen extends StatefulWidget {
//    const EmojiTrialScreen({super.key});

//   @override
//   State<EmojiTrialScreen> createState() => _EmojiTrialScreenState();
// }

// class _EmojiTrialScreenState extends State<EmojiTrialScreen> {
//   final TextEditingController _controller = TextEditingController();
//   bool emojiShowing = false;

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }


//    _onBackspacePressed() {
//     _controller
//       ..text = _controller.text.characters.toString()
//       ..selection = TextSelection.fromPosition(
//           TextPosition(offset: _controller.text.length));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: EmojiPicker(
//          textEditingController: _controller,
//                     onBackspacePressed: _onBackspacePressed,
//                     config: Config(
//                       columns: 7,
//                       // Issue: https://github.com/flutter/flutter/issues/28894
//                       emojiSizeMax: 32 *
//                           (foundation.defaultTargetPlatform ==
//                                   TargetPlatform.iOS
//                               ? 1.30
//                               : 1.0),
//                       verticalSpacing: 0,
//                       horizontalSpacing: 0,
//                       gridPadding: EdgeInsets.zero,
//                       initCategory: Category.RECENT,
//                       bgColor: const Color(0xFFF2F2F2),
//                       indicatorColor: Colors.blue,
//                       iconColor: Colors.grey,
//                       iconColorSelected: Colors.blue,
//                       backspaceColor: Colors.blue,
//                       skinToneDialogBgColor: Colors.white,
//                       skinToneIndicatorColor: Colors.grey,
//                       enableSkinTones: true,
//                       recentTabBehavior: RecentTabBehavior.RECENT,
//                       recentsLimit: 28,
//                       replaceEmojiOnLimitExceed: false,
//                       noRecents: const Text(
//                         'No Recents',
//                         style: TextStyle(fontSize: 20, color: Colors.black26),
//                         textAlign: TextAlign.center,
//                       ),
//                       loadingIndicator: const SizedBox.shrink(),
//                       tabIndicatorAnimDuration: kTabScrollDuration,
//                       categoryIcons: const CategoryIcons(),
//                       buttonMode: ButtonMode.MATERIAL,
//                       checkPlatformCompatibility: true,)
//       ),
//     );
//   }
// }