import 'package:flutter/material.dart';
import 'package:email_password_login/theme.dart';
import 'package:email_password_login/model/book_model.dart';
import 'package:email_password_login/screens/pages/book_detail.dart';

class BookTemplate extends StatelessWidget {
  const BookTemplate({ Key? key, required this.info }) : super(key: key);

  final BookList info;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, BookDetail.nameRoute, arguments: {
              'imageUrl': info.imageUrl,
              'writers': info.writers,
              'title': info.title,
              'fileRead': info.fileRead}
            );
          },
          child: Container(
            height: 160,
            width: 110,
            margin: EdgeInsets.only(top: 12, right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(info.imageUrl),
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          info.writers,
          style: mediumText12.copyWith(color: greyColor),
        ),
        Text(
          info.title,
          style: semiBoldText14.copyWith(color: blackColor),
        ),
      ],
    );
  }
}