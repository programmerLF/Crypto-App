import 'package:kib_design_system/gen/assets.gen.dart';

class SessionsModel {
  final String bankName;
  final SvgGenImage bankIcon;
  final String sessionRequestDate;
  final List<String> permissions;
  final String otp;
  final String otpTime;

  SessionsModel(this.bankIcon, this.permissions,
      {required this.bankName,
      required this.sessionRequestDate,
      required this.otp,
      required this.otpTime});


  static List<SessionsModel> activeSessionsList = [
    SessionsModel(Assets.icons.bank,
        ["Account balance", "Account details", "Transaction details"],
        bankName: "BBK bank",
        sessionRequestDate: "10 July 2023",
        otp: "26790",
        otpTime: "5:00 minutes"),
    SessionsModel(Assets.icons.wallet,
        ["Account balance", "Transaction details"],
        bankName: "Yolt wallet",
        sessionRequestDate: "01 November 2023",
        otp: "26790",
        otpTime: "5:00 minutes"),
  ];
}
