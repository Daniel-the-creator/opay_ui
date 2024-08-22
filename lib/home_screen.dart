import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [git
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height:50,
                  width:50,
                  decoration: BoxDecoration(
                      image: const DecorationImage(image: AssetImage("assets/images/img1.jpeg")),
                      borderRadius:BorderRadius.circular(100),
                  ),
                ),
                 ],
            ),
           Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: 150,
              height: 100,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green,),
                padding: EdgeInsets.only(top: 10),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.verified_user,
                              color: Colors.white,
                            ),
                            Text(
                              'Available Balance',
                              style: TextStyle(color: Colors.blue),
                            ),
                            Icon(
                              Icons.remove_red_eye,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('\u20A6',style: TextStyle(color: Colors.white,fontSize: 14),),
                            Text('1,804,588.69',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          'Transaction History',
                          style: TextStyle(color: Colors.blue),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              '+ Add Money',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
            )
          ],
        ));
  }
}
