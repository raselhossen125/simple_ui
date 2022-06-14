// ignore_for_file: prefer_const_declarations, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

final String bgImageUrl =
    'https://img.freepik.com/free-photo/surprised-happy-girl-pointing-left-recommend-product-advertisement-make-okay-gesture_176420-20191.jpg?w=996&t=st=1655113390~exp=1655113990~hmac=eff68a001a84a801925fd8be60d5874d4e4860a44b0f77485cb7437652aeaacb';
final String fb = 'https://cdn-icons.flaticon.com/png/512/3128/premium/3128304.png?token=exp=1655132265~hmac=811cfac2112ccc7f898b3b7becbb753e';
final String text = '''Here’s an example of a lightbox popup on LoveOhLou, which clearly offers the user the options to enter their email address or click the close button.''';
final String twiter = 'https://cdn-icons-png.flaticon.com/512/733/733579.png';
final String instagram = 'https://cdn-icons-png.flaticon.com/512/2111/2111463.png';
final String pintarest = 'https://cdn-icons-png.flaticon.com/512/733/733566.png';
final String ball = 'https://cdn-icons.flaticon.com/png/512/5537/premium/5537729.png?token=exp=1655132368~hmac=099868cab01ff256a904e3982e103722';
final String img1 = 'https://img.freepik.com/free-photo/portrait-young-beautiful-playful-woman-with-bun-posing_176420-12392.jpg?t=st=1655130784~exp=1655131384~hmac=a66e8df902f57ad1560c45c9d691ba4c05141d132a89093b6be08adbef01ff92&w=740';
final String img2 = 'https://img.freepik.com/free-photo/confident-attractive-caucasian-guy-beige-pullon-smiling-broadly-while-standing-against-gray_176420-44508.jpg?t=st=1655111851~exp=1655112451~hmac=fececd5335105a8eac9460c7c17b028e457a40e1233e23304122ba9eef30cbd1&w=740';
final String img3 = 'https://img.freepik.com/free-photo/beautiful-girl-stands-near-walll-with-leaves_8353-5374.jpg?t=st=1655113207~exp=1655113807~hmac=35d33d1780c8a9b8e181ee013b1a6fc6b29cf61327a3068d9219500e51d75746&w=740';
final String img4 = 'https://img.freepik.com/free-photo/beautiful-woman-with-curls-makeup_144627-5073.jpg?t=st=1655130784~exp=1655131384~hmac=dc0b0f5cd332d5eaf01fa693fac732eb4aacc23bcbf61e915c2b2705b473d54a&w=740';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double totalWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            // alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Image.network(
                bgImageUrl,
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    Spacer(),
                    Icon(
                      Icons.notifications,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.edit,
                      color: Colors.black,
                      size: 20,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -240,
                left: 40,
                child: Container(
                  height: 300,
                  width: totalWidth - 80,
                  child: Card(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 25, right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'julianne V. Crow',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.9,
                            ),
                          ),
                          SizedBox(height: 2,),
                          Text(
                            'UI Designer',
                            style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 0.2,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            'ABOUT JULIANNE',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 15,),
                          Text(
                            text,textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.network(fb,height: 25, width: 25, fit: BoxFit.cover,),
                                Image.network(twiter,height: 23, width: 23, fit: BoxFit.cover,),
                                Image.network(instagram,height: 20, width: 20, fit: BoxFit.cover,),
                                Image.network(pintarest,height: 25, width: 25, fit: BoxFit.cover,),
                                Image.network(ball,height: 25, width: 25, fit: BoxFit.cover,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Spacer(),
          Container(
            height: 120,
            width: totalWidth - 80,
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("MUTUAL FRIENDS", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(img1,height: 50, width: 50, fit: BoxFit.cover,),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(img2,height: 50, width: 50, fit: BoxFit.cover,),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(img3,height: 50, width: 50, fit: BoxFit.cover,),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(img4,height: 50, width: 50, fit: BoxFit.cover,),
                        ),
                      ],
                    )
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
