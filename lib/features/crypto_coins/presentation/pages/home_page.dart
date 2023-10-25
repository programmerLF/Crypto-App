import 'package:crypto_app/config/init_getit.dart';
import 'package:crypto_app/features/crypto_coins/data/models/crypto_coins_model.dart';
import 'package:crypto_app/features/crypto_coins/presentation/cubit/crypto_coins_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../widgets/menu_bar_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Column(
          children: [
            HomePageTop(),
            BlocProvider<CryptoCoinsCubit>(
              create: (_) => getIt<CryptoCoinsCubit>()..getCoinsList(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // height: MediaQuery.of(context).size.height / 4,
                  child: BlocBuilder<CryptoCoinsCubit,CryptoCoinsState>(
                    builder: (context, state) {
                      if( state is CryptoCoinsLoading){
                        //context.read<CryptoCoinsCubit>().getCryptoCoinsList();
                        return LoadingList();
                      }
                      else if( state is CryptoCoinsLoaded){
                        return Container(
                          height: MediaQuery.of(context).size.height - 300,
                          child: ListView.builder(
                            itemCount:state.coinsList.length,
                            itemBuilder: (context, index) {
                              List coinsList = state.coinsList;
                              CryptoCoinsModel coin = coinsList[index];
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.white60,
                                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                                      ),
                                  height: 50,
                                  child: Container(

                                      child: Text(coin.name)),
                                ),
                              );
                            },

                          ),
                        );
                      }
                      else if( state is Error){
                        return Text(state.errorMsg);
                      }
                      else{
                        return Text("something went wrong");
                      }
                    },

                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomePageTop extends StatelessWidget {
  const HomePageTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            )),
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.fromLTRB(8.0, 70, 8, 8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cryptocurrency Market",
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w800),
                ),
            Container(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MenuBarItem(
                    title: "Coins List",
                    borderColor: Colors.white60,
                    onTapFunction: () {},
                  ),
                  MenuBarItem(
                      title: "Trending",
                      borderColor: Colors.white60,
                      onTapFunction: () {}),
                  MenuBarItem(
                      title: "Top Gainers",
                      borderColor: Colors.white60,
                      onTapFunction: () {}),
                  MenuBarItem(
                      title: "Top Losers",
                      borderColor: Colors.white60,
                      onTapFunction: () {}),
                  MenuBarItem(
                      title: "Most Visited",
                      borderColor: Colors.white60,
                      onTapFunction: () {}),
                  MenuBarItem(
                      title: "Newly Listed",
                      borderColor: Colors.white60,
                      onTapFunction: () {}),
                ],
              ),
            ),


              ],
            ),
          ),
        ));
  }
}

class LoadingList extends StatelessWidget {
  const LoadingList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: Center(child:  Container(
          height: 40,
          width: 40,
          child: CircularProgressIndicator(color: Colors.grey, ))),

    );
  }
}



