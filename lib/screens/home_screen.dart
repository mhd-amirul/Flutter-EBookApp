// import 'package:email_password_login/screens/component/recent_book.dart';
import 'package:flutter/material.dart';
import 'package:email_password_login/model/book_model.dart';
import 'package:email_password_login/screens/component/trending_book.dart';
import 'package:email_password_login/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Find Your Favorite Book',
              hintStyle: TextStyle(color: Color.fromARGB(255, 209, 192, 192)),
              fillColor: Color.fromARGB(255, 228, 221, 221),
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              isCollapsed: true,
              contentPadding: EdgeInsets.all(18),
              suffixIcon: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 184, 45, 45),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Icon(
                    Icons.search_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),

        Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Text(
              'Recent Book',
              style: semiBoldText16.copyWith(color: blackColor),
            ),
          ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: bookLists
                        .asMap()
                        .entries
                        .map((MapEntry map) => 
                          BookTemplate(info: bookLists[map.key],
                          ),
                        ).toList(), 
          ),
        ),

        Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Text(
              'Trending Now',
              style: semiBoldText16.copyWith(color: blackColor),
            ),
          ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: bookLists
                        .asMap()
                        .entries
                        .map((MapEntry map) => 
                          BookTemplate(info: bookLists[map.key],
                          ),
                        ).toList(), 
          ),
        ),
      ],
    );
  }
}