// import 'package:flutter/material.dart';
// import 'package:flutter_one/extension/translation_extension.dart';
// import 'package:oneapp_shared/theme/prepaid_theme.dart';
// import 'package:redone_dob/core/extensions/column_extension.dart';
// import 'package:redone_dob/features/_shared/widgets/s_number_list_item.dart';
// import 'package:redone_dob/translations/port_in_details_translation.dart';
//
// class PortInDescription extends StatelessWidget {
//   const PortInDescription({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           context.string(TPortInDetails.instructionTitle),
//           style: context.prepaidTheme.textStyle.medium,
//         ),
//         SNumberListItem(
//           number: '1.',
//           text: Text(context.string(TPortInDetails.instructionOne)),
//         ),
//         SNumberListItem(
//           number: '2.',
//           text: Text(context.string(TPortInDetails.instructionTwo)),
//         ),
//         SNumberListItem(
//           number: '3.',
//           text: Text(context.string(TPortInDetails.instructionThree)),
//         ),
//         SNumberListItem(
//           number: '4.',
//           text: Text(
//             context.string(TPortInDetails.instructionFour),
//           ),
//         ),
//       ],
//     ).separated(
//       const SizedBox(height: 4.0),
//     );
//   }
// }
