import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child:  Column(
          children: [
            Container(
              color: Colors.white60,
              height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                child:  Padding(
                  padding: EdgeInsets.fromLTRB(8.0,50,8,8),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Cryptocurrency Market", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,8.0,0,8),
                          child: Row(
                            children: [

                            Expanded(
                              child: GestureDetector(

                                child: Center(
                                  child: Container(
                                    child: Text("Coins List", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800)),
                                  ),
                                ),

                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                child: Center(
                                  child: Container(
                                    child: Text("Trending", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800)),
                                  ),
                                ),
                              ),
                            ),Expanded(
                              child: GestureDetector(
                                child: Center(
                                  child: Container(
                                    child: Text("Top Gainers", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800)),
                                  ),
                                ),
                              ),
                            ),Expanded(
                              child: GestureDetector(
                                child: Center(
                                  child: Container(
                                    child: Text("Top Losers", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800)),
                                  ),
                                ),
                              ),
                            ),
                          ],),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
