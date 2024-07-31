// import 'package:flutter/material.dart';
// import 'package:fpdart/fpdart.dart';
//
// extension ColumnExtension on Column {
//   Widget separated(Widget separator) {
//     return Column(
//       key: key,
//       mainAxisAlignment: mainAxisAlignment,
//       mainAxisSize: mainAxisSize,
//       crossAxisAlignment: crossAxisAlignment,
//       textDirection: textDirection,
//       verticalDirection: verticalDirection,
//       textBaseline: textBaseline,
//       children: children.fold(
//         [],
//         (previousValue, element) {
//           if (previousValue.length == children.length * 2 - 2) {
//             return previousValue.append(element).toList();
//           }
//           return previousValue.append(element).append(separator).toList();
//         },
//       ),
//     );
//   }
// }
