// import 'package:flutter_one/utils/exception/exception.dart';
//
// mixin CustomResponseDecoder {
//   T decode<T>(Map<String, dynamic> response) {
//     int? status = 0;
//     String? code;
//     String? message;
//
//     status = response["status"];
//     code = response["code"];
//     message = response["message"];
//
//     if (status == 0) {
//       throw BadRequestException(
//         message: message,
//         extra: code,
//       );
//     }
//
//     try {
//       return response["result"] as T;
//     } catch (ex) {
//       throw BadRequestException();
//     }
//   }
//
//   Map<String, dynamic> decodeAsMap(Map<String, dynamic> response) {
//     int? status = 0;
//     String? code;
//     String? message;
//
//     status = response["status"];
//     code = response["code"];
//     message = response["message"];
//
//     if (status == 0) {
//       throw BadRequestException(
//         message: message,
//         extra: code,
//       );
//     }
//
//     try {
//       return response["result"] as Map<String, dynamic>;
//     } catch (ex) {
//       throw BadRequestException();
//     }
//   }
//
//   List<T> decodeAsList<T>(Map<String, dynamic> response) {
//     int? status = 0;
//     String? code;
//     String? message;
//
//     status = response["status"];
//     code = response["code"];
//     message = response["message"];
//
//     if (status == 0) {
//       throw BadRequestException(
//         message: message,
//         extra: code,
//       );
//     }
//
//     try {
//       return (response["result"] as List).cast<T>();
//     } catch (ex) {
//       throw BadRequestException();
//     }
//   }
//
//   List<Map<String, dynamic>> decodeAsListMap(Map<String, dynamic> response) {
//     int? status = 0;
//     String? code;
//     String? message;
//
//     status = response["status"];
//     code = response["code"];
//     message = response["message"];
//
//     if (status == 0) {
//       throw BadRequestException(
//         message: message,
//         extra: code,
//       );
//     }
//
//     try {
//       return (response["result"] as List).cast<Map<String, dynamic>>();
//     } catch (ex) {
//       throw BadRequestException();
//     }
//   }
// }
