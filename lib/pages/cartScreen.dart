import 'package:ecommerce/units/Data/cartData.dart';
import 'package:flutter/material.dart';

class cartScreen extends StatefulWidget {
  const cartScreen({Key? key}) : super(key: key);

  @override
  State<cartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {




  @override
  Widget build(BuildContext context) {





    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Cart Page',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          Icon(Icons.delete, color: Colors.black.withOpacity(0.3)),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Container(
                color: Colors.white,
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentDirectional.topStart,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 35, 35, 0),
                      child: ListView.builder(
                          primary: true,
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 120,
                                    width: 350,
                                    decoration: BoxDecoration(
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //       color: Colors.black
                                        //           .withOpacity(0.1),
                                        //       blurRadius: 50,
                                        //     spreadRadius: 5
                                        //   )
                                        // ],
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Row(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                20, 0, 0, 0),
                                            child: Container(
                                              height: 65,
                                              width: 65,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.2),
                                                      blurRadius: 12.1,
                                                      spreadRadius: 5)
                                                ],
                                                color: Colors.orange,
                                                shape: BoxShape.circle,
                                              ),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(50),
                                                child: Image.network(cartData[index]['image']),
                                              ),
                                              // child: Image(
                                              //   image: NetworkImage(cartData[index]['image']),
                                              //   height: 50,
                                              //   width: 50,
                                              // ),
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20, 0, 0, 0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(cartData[index]['name'],
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.indigoAccent),
                                              ),
                                              RichText(
                                                text: const TextSpan(
                                                  text: '\$ ',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.indigoAccent,
                                                      fontSize: 15),
                                                  children: [
                                                    TextSpan(
                                                      text: '240.00',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .indigoAccent,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  side: BorderSide(
                                                      color: Colors.white,
                                                      width: 3),
                                                  backgroundColor: Colors.red,
                                                  shape: const CircleBorder(),
                                                  elevation: 1),
                                              child: const Icon(
                                                Icons.remove,
                                                size: 25,
                                              ),
                                              onPressed: () {
                                                // setState(() {
                                                //   cartItems[index]--;
                                                // });
                                              },
                                            ),
                                            Text(
                                              '5',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.green,
                                                  side: BorderSide(
                                                      color: Colors.white,
                                                      width: 3),
                                                  shape: const CircleBorder(),
                                                  elevation: 1),
                                              child: const Icon(
                                                Icons.add,
                                                size: 25,
                                              ),
                                              onPressed: () {
                                                // setState(() {
                                                //   cartItems[index]++;
                                                // });
                                              },
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Subtotal:  ',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.4),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            children: [
                              TextSpan(
                                text: '\$1290',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Taxes:  ',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.4),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            children: [
                              TextSpan(
                                text: '\$40',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Container(
            color: Colors.grey.withOpacity(0.1),
            child: Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: '\$ ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        children: [
                          TextSpan(
                            text: '1290.00',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            elevation: 10,
                            shadowColor: Colors.black,
                            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                            backgroundColor: Colors.indigo,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.exit_to_app_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Check Out',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
