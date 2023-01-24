import 'package:ecommerce/units/Data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:imageview360/imageview360.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List<ImageProvider> rotationList = [];
  bool autoRotation = false;
  int rotationCount = 22;
  int swipeSensibility = 2;
  bool allowSwipeRotate = true;

  @override
  void initState() {
    updateImage(context);
    super.initState();
  }

  void updateImage(BuildContext context) {
    for (int image = 22; image >= 1; image--) {
      rotationList.add(AssetImage('assets/images/360/s$image.png'));

    }
  }

  int selectedvar = 0;
  int selectedSize = 2;

  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: InkWell(
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.black,
                )),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Men\'s Shoes',
            style: TextStyle(color: Colors.deepOrange),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/ic_shop.png',
                  color: Colors.black,
                )),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: SizedBox(
                  height: mediaSize.width - 120,
                  child: Stack(
                    children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 110,
                              ),
                              Image.network(
                                'https://raw.githubusercontent.com/gilangarinata/flutter_shoecommerce/master/assets/ring.png',
                                width: mediaSize.width - 30,
                                fit: BoxFit.cover,
                              ),
                            ],
                          )),
                      Positioned(
                        top: -70,
                        right: 0,
                        left: 0,
                        child: ImageView360(
                            key: UniqueKey(),
                            autoRotate: autoRotation,
                            allowSwipeToRotate: allowSwipeRotate,
                            swipeSensitivity: swipeSensibility,
                            rotationCount: rotationCount,
                            imageList: rotationList),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: mediaSize.height,
                width: mediaSize.width,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Nike Air Max Pre-Day',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 23,
                            color: Colors.amber,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '5.0',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            '(1,125 Reviews)',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: const [
                          ReadMoreText(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ',
                            trimLines: 2,
                            colorClickableText: Colors.pink,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Show more',
                            trimExpandedText: 'Show less',
                            moreStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold),
                            lessStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Select Color: ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          ...List.generate(imageList.length,
                              (index) => buildContainer(index))
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Size: ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          RichText(
                              text: TextSpan(
                                  text: 'EU  ',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                  children: [
                                TextSpan(
                                    text: 'US  ',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5)),
                                    children: [
                                      TextSpan(
                                          text: 'UK',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.5)))
                                    ])
                              ]))
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...List.generate(
                                productSize.length, (index) => buildSize(index))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      bottomNavigationBar: Container(
        height: 90,
        width: mediaSize.width,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
        ),
        child:
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top:  20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Price', style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 18, fontWeight: FontWeight.w500)),
                  Text('\$137,50', style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.w500),),
                ],
              ),
              TextButton(style: TextButton.styleFrom(
                padding: EdgeInsets.only(left: 45, right: 45, top: 15, bottom: 15),
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
              ),onPressed: (){}, child: Text('Add To Bag', style: TextStyle(color: Colors.white,),))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedvar = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            border: Border.all(
                color: selectedvar == index
                    ? Colors.deepOrange
                    : Colors.white.withOpacity(0.8),
                width: 1.5),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 0.5,
                blurRadius: 10,
              )
            ],
            color: selectedvar == index
                ? Colors.white
                : Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(12)),
        child: Image.asset(imageList[index]['path']),
      ),
    );
  }

  Widget buildSize(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            border: Border.all(
                color: selectedSize == index
                    ? Colors.deepOrange
                    : Colors.white.withOpacity(0.2),
                width: 1.5),
            color: selectedSize == index
                ? Colors.deepOrange
                : Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              productSize[index],
              style: TextStyle(
                  color: selectedSize == index ? Colors.white : Colors.black.withOpacity(0.5),
                  fontWeight: FontWeight.w400,
                  fontSize: 20),
            )),
          ],
        ),
      ),
    );
  }

}
