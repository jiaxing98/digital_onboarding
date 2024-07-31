// class AuthenticateService {
//   final String _bearer = 'bearer_token';
//
//   Future<bool> get isTokenValid async {
//     final token = await bearerToken;
//     if (token.isEmpty || JwtDecoder.isExpired(token)) {
//       await deleteBearer();
//       return false;
//     }
//
//     return true;
//   }
//
//   Future<void> saveBearer(String token) async {
//     await utils.secureStorage.saveString(_bearer, token);
//   }
//
//   Future<void> deleteBearer() async {
//     await utils.secureStorage.deleteKey(_bearer);
//   }
//
//   Future<String> get bearerToken async => await utils.secureStorage.readString(_bearer);
//
//   Future<Map<String, dynamic>> get authHeader async => {
//         "Authorization": "Bearer ${await bearerToken}",
//       };
//
//   Map<String, dynamic> getAuth2Header(String basicToken) {
//     return {
//       "Authorization2": "Basic $basicToken",
//     };
//   }
// }
