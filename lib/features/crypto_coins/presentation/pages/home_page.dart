// import 'package:crypto_app/common_widgets/common_widgets.dart';
// import 'package:crypto_app/config/init_getit.dart';
// import 'package:crypto_app/features/crypto_coins/data/models/crypto_coins_model.dart';
// import 'package:crypto_app/features/crypto_coins/presentation/cubit/crypto_coins_cubit.dart';
// import 'package:crypto_app/features/crypto_coins/presentation/cubit/crypto_coins_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../../../home_view/presentation/pages/home_page.dart';
// import '../../../../home_view/presentation/widgets/widgets.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.grey.shade200,
//         body: Center(
//             child: Column(children: [
//           HomePageTop(),
//           BlocProvider<CryptoCoinsCubit>(
//             create: (_) => getIt<CryptoCoinsCubit>()..getCoinsList(),
//             child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   // height: MediaQuery.of(context).size.height / 4,
//                   child: BlocConsumer<CryptoCoinsCubit, CryptoCoinsState>(
//                     listener: (context, state) {
//
//                     },
//                     builder: (context, state) {
//                       return state.maybeMap(
//                         loaded: (data) => Container(
//                           height: MediaQuery.of(context).size.height - 300,
//                           child: ListView.builder(
//                             itemCount: data.coinsList.length,
//                             itemBuilder: (context, index) {
//                               List coinsList = data.coinsList;
//                               CryptoCoinsModel coin = coinsList[index];
//                               return Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Container(
//                                   decoration: const BoxDecoration(
//                                       color: Colors.white60,
//                                       borderRadius: BorderRadius.all(
//                                           Radius.circular(10.0))),
//                                   height: 50,
//                                   child: Container(
//                                       child: Row(
//                                     children: [
//                                       Column(
//                                         children: [
//                                           Text(coin.rank.toString()),
//                                         ],
//                                       ),
//                                     ],
//                                   )),
//                                 ),
//                               );
//                             },
//                           ),
//                         ),
//                         error: (message) => Text(message.errorMsg),
//                         loading: (_) => const LoadingIndicator(),
//                         orElse: () => Container(),
//                       );
//                     },
//                   ),
//                 )),
//           ),
//         ])));
//   }
// }
//
//
