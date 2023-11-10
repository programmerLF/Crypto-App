import 'package:kib_design_system/gen/assets.gen.dart';


class BankItemsModel {
  final String bankName;
  final SvgGenImage bankLogo;

  BankItemsModel({required this.bankName, required this.bankLogo});

  static final itemsModels = [
    BankItemsModel(bankName: "Al Ahli Bank of Kuwait",
        bankLogo: Assets.images.flags.countryAD),
    BankItemsModel(bankName: "Ahli United Bank",
        bankLogo:  Assets.images.flags.countryAE),
    BankItemsModel(bankName: "Boubyan Bank",
        bankLogo:  Assets.images.flags.countryAF),
  ];

}