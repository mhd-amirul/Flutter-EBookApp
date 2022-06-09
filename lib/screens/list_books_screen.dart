import 'package:flutter/material.dart';
import 'package:email_password_login/screens/component/book_list.dart';
import 'package:email_password_login/model/book_model.dart';
import 'package:email_password_login/theme.dart';

class ListBook extends StatefulWidget {
  const ListBook({ Key? key }) : super(key: key);

  @override
  State<ListBook> createState() => _ListBookState();
}

class _ListBookState extends State<ListBook> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 30),
              child: Text(
                'BOOK LIST',
                style: semiBoldText16.copyWith(color: blackColor),
              ),
            ),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: bookLists
                        .asMap()
                        .entries
                        .map((MapEntry map) => 
                          ListBookItem(info: bookLists[map.key],
                          ),
                        ).toList(), 
          ),
        ),
      ],
    );
  }
}