// import 'package:digital_onboarding/domain/entities/verify_package_tag_result.dart';
// import 'package:flutter/material.dart';
//
//
// class ScanPackageTagButton extends StatelessWidget {
//   final String label;
//   final Future<VerifyPackageTagResult?> Function(String) onVerify;
//   final Future<void> Function() onSuccess;
//
//   const ScanPackageTagButton({
//     super.key,
//     required this.label,
//     required this.onVerify,
//     required this.onSuccess,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ActionButton(
//       action: context.string(label),
//       leading: Image.asset(context.prepaidImage.iconScanQrCode),
//       onTap: () {
//         final helper = helpers.get<ScanQrCodeHelper>();
//         helper.startScanning(
//           onResultScanned: (qrCode) {
//             _verifyPackageTag(context, qrCode);
//           },
//         );
//       },
//     );
//   }
//
//   Future<void> _verifyPackageTag(BuildContext context, String qrCode) async {
//     final result = await onVerify(qrCode);
//     if (result == null) return;
//     if (!context.mounted) return;
//
//     if (!result.success) {
//       utils.navigation.pushNamed(
//         context,
//         name: PageName.verifySimFailed,
//         arguments: result.exception?.message ?? "",
//       );
//     }
//
//     onSuccess();
//   }
// }
