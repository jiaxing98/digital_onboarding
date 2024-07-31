// import 'dart:convert';
//
// import 'package:digital_onboarding/core/dependency_injection/_dependency_injection.dart';
// import 'package:digital_onboarding/core/exceptions/registration_exception.dart';
// import 'package:digital_onboarding/core/helpers/image_compress_helper.dart';
//
// mixin EkycDataConversion {
//   static String getMyKad(String icNumber) {
//     RegExp exp = RegExp(r'\d+');
//     var match = exp.allMatches(icNumber);
//     if (match.isEmpty) {
//       throw const InvalidRequestException('Invalid identification no');
//     }
//     return match.map((e) => e.group(0)).toList().join();
//   }
//
//   static int getGenderId(String genderStr) {
//     return genderStr.toLowerCase() == 'f' ? 0 : 1;
//   }
//
//   static String getGenderStr(String genderStr) {
//     return genderStr.toLowerCase() == 'f' ? "Female" : "Male";
//   }
//
//   static Future<String> compressImage(String imageStr) async {
//     final compressor = helpers.get<ImageCompressHelper>();
//     var result = await compressor.compressWithList(
//       base64Decode(imageStr),
//       minHeight: 1920,
//       minWidth: 1080,
//       quality: 5,
//     );
//     return base64Encode(result);
//   }
//
//   static ({String address1, String address2}) formatAddress(String addressStr) {
//     var address = addressStr.split('\n');
//     if (address.length >= 5) {
//       if (address[0].length <= 4) {
//         return (street1: '${address[0]} ${address[1]}', street2: address[2]);
//       } else {
//         return (street1: address[0], street2: '${address[1]} ${address[2]}');
//       }
//     }
//
//     return (street1: address[0], street2: address[1]);
//   }
//
//   static String getPostcode(String addressStr) {
//     var address = addressStr.split('\n');
//     return address[address.length - 2].split(' ')[0];
//   }
//
//   static String getCity(String addressStr) {
//     var address = addressStr.split('\n');
//     return address[address.length - 2].split(' ')[1];
//   }
//
//   static String getState(String addressStr) {
//     var address = addressStr.split('\n');
//     return address[address.length - 1];
//   }
// }
