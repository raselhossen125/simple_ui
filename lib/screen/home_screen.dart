// ignore_for_file: prefer_const_constructors, prefer_const_declarations, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../widget/buildContainer_widget.dart';
import '../widget/buildRow_widget.dart';
import 'profile_screen.dart';

final String bgImageUrl =
    'https://images.unsplash.com/photo-1500622944204-b135684e99fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1161&q=80';
final String profileImage4Url =
    'https://img.freepik.com/free-photo/ecstatic-white-girl-beret-posing-with-amazement-elegant-caucasian-female-model-t-shirt-standing-red-wall_197531-11462.jpg?t=st=1655117283~exp=1655117883~hmac=6124b00f1faf376e816ad69528f0ccb625007d66ca39315e74e5b6c103b7d3ce&w=740';
final String detalstext =
    '''To free the country around 30 lacks people sacrificed their lives Now Bangladesh is a sovereign and independent country like many other countries of the world. The capital city of Bangladesh is Dhaka.''';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0091EA),
      body: Column(
        children: [
          Stack(
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
                      color: Colors.white,
                    ),
                    Spacer(),
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      profileImage4Url,
                      fit: BoxFit.cover,
                      height: 80,
                      width: 80,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 155,
                left: 0,
                right: 0,
                bottom: 20,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Suzie Centore',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white),
                      ),
                      Text(
                        'UI Designer',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildRow(Icons.copy, '254', 'Photos'),
                Container(
                  height: 50,
                  width: 0.5,
                  color: Colors.white,
                ),
                BuildRow(Icons.supervisor_account, '564', 'Flowers'),
                Container(
                  height: 50,
                  width: 0.5,
                  color: Colors.white,
                ),
                BuildRow(Icons.favorite, '512', 'Likes'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            height: 51,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Color(0xff0091EA),
              ),
              label: Text(
                'Follow',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff0091EA),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              detalstext,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          Spacer(),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  'More Information',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )),
          Row(
            children: [
              Expanded(
                  child: BuildContainer(
                icon: Icons.camera,
                title: 'Camera',
              )),
              Expanded(
                  child: BuildContainer(
                onPreased: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
                icon: Icons.person,
                title: 'Profile',
                bgColor: Colors.blue.shade400,
                color: Colors.white,
              )),
              Expanded(
                  child: BuildContainer(
                icon: Icons.favorite,
                title: 'Likes',
              )),
              Expanded(
                  child: BuildContainer(
                icon: Icons.settings,
                title: 'Setting',
              )),
            ],
          )
        ],
      ),
    );
  }
}
