import 'package:flutter/material.dart';
import 'package:email_password_login/theme.dart';
import 'package:email_password_login/model/book_model.dart';
import 'package:email_password_login/screens/pages/book_detail.dart';

class ListBookItem extends StatelessWidget {
  const ListBookItem({ Key? key, required this.info }) : super(key: key);

  final BookList info;
  @override
  Widget build(BuildContext context) {
    return Row(
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
            height: 100,
            width: 340,
            child: Card(
              child: Row(
                children: [
                  Image(image: AssetImage(info.imageUrl)),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          info.title,
                          style: semiBoldText14.copyWith(color: blackColor),
                        ),
                        Text(
                          'Writer : ' + info.writers,
                          style: mediumText12.copyWith(color: greyColor),
                        ),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }
}