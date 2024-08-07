// import 'package:flutter/material.dart';
// import 'package:flutter_one/extension/theme_extension.dart';
// import 'package:redone_dob/core/constants/colors.dart';
// import 'package:redone_dob/core/constants/layout.dart';
//
// class ChoosePlan extends StatelessWidget {
//   final String label;
//   final List<String> planTypes;
//   final String selectedPlan;
//   final void Function(String) onSelected;
//
//   const ChoosePlan({
//     super.key,
//     required this.label,
//     required this.planTypes,
//     required this.selectedPlan,
//     required this.onSelected,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: context.textStyle.bold,
//         ),
//         const SizedBox(
//           height: 5.0,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: List.generate(
//             planTypes.length,
//             (index) => PlanCard(
//               plan: planTypes[index],
//               isSelected: selectedPlan == planTypes[index],
//               onSelected: onSelected,
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
//
// class PlanCard extends StatefulWidget {
//   final String plan;
//   final bool isSelected;
//   final void Function(String) onSelected;
//
//   const PlanCard({
//     super.key,
//     required this.plan,
//     required this.isSelected,
//     required this.onSelected,
//   });
//
//   @override
//   State<PlanCard> createState() => _PlanCardState();
// }
//
// class _PlanCardState extends State<PlanCard> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         widget.onSelected(widget.plan);
//       },
//       child: Padding(
//         padding: const EdgeInsets.only(right: kSpacingMedium),
//         child: Container(
//           decoration: BoxDecoration(
//             color: widget.isSelected ? context.color.primary : Colors.transparent,
//             border: Border.all(color: kBorderGreyColor),
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Text(
//               widget.plan,
//               style: context.textStyle.bold.copyWith(
//                 color: widget.isSelected ? Colors.white : null,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
