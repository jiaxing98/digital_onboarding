// import 'package:digital_onboarding/features/check_port_in/data/models/submission_result_model.dart';
//
// abstract class MnpException implements Exception {
//   final String code;
//   final bool canResubmit;
//   final String? message;
//   final SubmissionResultModel? result;
//
//   const MnpException(this.code, this.canResubmit, [this.message, this.result]);
// }
//
// class RecordNotFoundException extends MnpException {
//   const RecordNotFoundException(String code, String? message)
//       : super(code, false, message);
// }
//
// class InProgressException extends MnpException {
//   const InProgressException(String code, String? message)
//       : super(code, false, message);
// }
//
// class ResubmissionFailedException extends MnpException {
//   const ResubmissionFailedException(
//       String code, String? message, SubmissionResultModel? result)
//       : super(code, true, message, result);
// }
//
// class MnpGenericException extends MnpException {
//   const MnpGenericException(String code, String? message)
//       : super(code, false, message);
// }
//
// class ResubmissionInProgressException extends MnpException {
//   const ResubmissionInProgressException(String code, String? message)
//       : super(code, false, message);
// }
//
// class ResubmissionGenericException extends MnpException {
//   const ResubmissionGenericException(
//       String code, String? message, SubmissionResultModel? result)
//       : super(code, true, message, result);
// }
//
// class MnpUnknownException extends MnpException {
//   const MnpUnknownException() : super(MnpExceptionCode.unknownError, false);
// }
//
// class MnpExceptionCode {
//   static const recordNotFound = 'query_mnp_status_record_not_found_error';
//   static const inProgress = 'query_mnp_status_in_progress_error';
//   static const resubmissionFailed = 'query_mnp_status_resubmissionable_error';
//   static const genericError = 'query_mnp_status_generic_error';
//   static const resubmissionInProgress = 'resubmission_in_progress_error';
//   static const resubmissionGenericError = 'resubmission_generic_error';
//   static const unknownError = 'mnp_unknown_error';
// }
